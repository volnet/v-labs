RSA with OpenSSL ／ .NET / Python3
=================================

考虑到跨语言之间RSA转换的问题，包括在C#下使用RSA签名算法，在Python3中使用公钥无法验证的问题，或者是公钥加密跨语言私钥解密的问题。特使用OpenSSL这个标准第三方库生成中间调试相关的代码，进行验证。

单纯的OpenSSL体系内互转
--------------------

### 生成RSA密钥

```
openssl genrsa -out openssltest.key 1024
```

这里-out指定生成文件的。需要注意的是这个文件包含了公钥和密钥两部分，也就是说这个文件即可用来加密也可以用来解密。后面的1024是生成密钥的长度。

### 提取RSA公钥

```
openssl rsa -in openssltest.key -pubout -out openssltest_pub.key
```

-in指定输入文件，-out指定提取生成公钥的文件名。至此，我们手上就有了一个公钥，一个私钥（包含公钥）。现在可以将用公钥来加密文件了。

### 基于RSA公钥加密

```
echo "helloword" > hello.txt
openssl rsautl -encrypt -in hello.txt -inkey openssltest_pub.key -pubin -out hello.en
```
-in指定要加密的文件，-inkey指定密钥，-pubin表明是用纯公钥文件加密，-out为加密后的文件。

且RSA能够加密的文件尺寸不能过大。

```
localhost:rsa-test gongcen$ ls -l
-rw-r--r--  1 gongcen  staff  1414  9 26 21:30 bigfile.txt
-rw-r--r--  1 gongcen  staff   887  9 26 21:16 openssltest.key
-rw-r--r--  1 gongcen  staff   272  9 26 21:20 openssltest_pub.key
localhost:rsa-test gongcen$ openssl rsautl -encrypt -in bigfile.txt -inkey openssltest_pub.key -pubin -out bigfile.en
RSA operation error
140737049457672:error:0406D06E:rsa routines:RSA_padding_add_PKCS1_type_2:data too large for key size:rsa_pk1.c:153:
```
### 基于RSA私钥解密

```
openssl rsautl -decrypt -in hello.en -inkey openssltest.key -out hello.de
```

-in指定被加密的文件，-inkey指定私钥文件，-out为解密后的文件。

以上内容参考[这里](http://www.cnblogs.com/aLittleBitCool/archive/2011/09/22/2185418.html)


利用Python3类库进行处理
--------------------

此处利用[PyCryptodome](https://pycryptodome.readthedocs.io)在Python3下进行处理。

### 使用PyCryptodome自加密解密

源码：[pycryptodome_rsa_encrypt_decrypt.py](pycryptodome_rsa_encrypt_decrypt.py)

```
from Crypto.PublicKey import RSA
from Crypto.Cipher import AES, PKCS1_OAEP

# Encrypt by public key & decrypt by private key

data = b"hello";

key = RSA.generate(2048)
private_key = key.exportKey()
public_key = key.publickey().exportKey();

print(data)

# Encrypt the session key with the public RSA key
cipher_rsa = PKCS1_OAEP.new(RSA.import_key(public_key))
enc_data = cipher_rsa.encrypt(data)

print(enc_data)

# Decrypt the session key with the public RSA key
cipher_rsa = PKCS1_OAEP.new(RSA.import_key(private_key))
dec_data = cipher_rsa.decrypt(enc_data)

print(dec_data)

```

### 使用PyCryptodome解密OpenSSL加密的值

参考[这里](https://www.dlitz.net/software/pycrypto/api/2.6/Crypto.Cipher.PKCS1_v1_5.PKCS115_Cipher-class.html)

源码：[pycryptodome_rsa_decrypt_from_openssl.py](pycryptodome_rsa_decrypt_from_openssl.py)

```
from Crypto.PublicKey import RSA
from Crypto.Cipher import AES, PKCS1_v1_5

encrypt_data = open("hello.en", "rb").read()

print(encrypt_data)

encoded_key = open("openssltest.key", "rb").read()
private_key = RSA.import_key(encoded_key)

sentinel = "--error--"
cipher_rsa = PKCS1_v1_5.new(private_key)
decrypted_data = cipher_rsa.decrypt(encrypt_data, sentinel)

print(decrypted_data)
```

### 使用PyCryptodome解密.NET RSACryptoServiceProvider加密的数据

源码：[pycryptodome_rsa_decrypt_from_dotnet.py](pycryptodome_rsa_decrypt_from_dotnet.py)

```
from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_v1_5
import base64
import encodings

encrypt_data_base64 = "ZimgQSk86Ty9p/EYy7OeaQSpWsMJJge2MQHtUOl3bRgXaqkrEYorCnIxpedCjhttOOkL/l5WmwK9OxFqBCbJN1t6IUoyu3ycaR7u2amvZoBUyyQjewTdvOQvjpQlCFZMo3T26OemZEjhOlJVz01RpGB66HAyZWJZy5kfCgtx38Q=";
encrypt_data = base64.b64decode(encrypt_data_base64);

pem_public_key = "-----BEGIN PUBLIC KEY-----\n\
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLVZxYGGswGkQ2gRAQKRx59MbE\n\
5udvuzjH30uHsyGG3nd21606AU1Nh40zZrZnGyY8w3IdTaOYR5xin//4k8+w6/lP\n\
9t6uAZjZdXqtKOxjOyrXFyi+nNgoKKCUhcWBkfpY7rGnqUHbcVDQIwYSOjNgZai7\n\
fY7/OiGLSH7cC9IgywIDAQAB\n\
-----END PUBLIC KEY-----"

pem_private_key = "-----BEGIN RSA PRIVATE KEY-----\n\
MIICXQIBAAKBgQDLVZxYGGswGkQ2gRAQKRx59MbE5udvuzjH30uHsyGG3nd21606\n\
AU1Nh40zZrZnGyY8w3IdTaOYR5xin//4k8+w6/lP9t6uAZjZdXqtKOxjOyrXFyi+\n\
nNgoKKCUhcWBkfpY7rGnqUHbcVDQIwYSOjNgZai7fY7/OiGLSH7cC9IgywIDAQAB\n\
AoGAG7OTo7rb64dAkM5fglwfeYv8AnpUwHeYwj4tG5UvdaDcVLAIdRUVU4EqnvyY\n\
0A42VOPpqY1YwtfKufMDW/nDOyBaeAhgTetnnmwYb2HKVE2+2CbeXMQWOiVSJ+Qu\n\
gQquKg67HT8gZhOROiKEy7OT4fqgff/03Js/M4n1b59ySlkCQQD5L5AKmRu5X6OC\n\
YRXfY0Ak1JjukB83Ue/CNM0YMoCweXxrz8F3klpgi43rDtOyOgtoxE9RMkXvEmPy\n\
EQfjojDDAkEA0OUQMf4yoCVRMkiHLmuHwNis/CdguHV7v/D/mgE949zoIGNtOBNH\n\
F1tAa2fgdhDTxrPczJ2BxC0bon9GAOFPWQJBAN3TNnIIzIJgHinBjXwYWZCv5Rhy\n\
Giff/ASxhmZlBuSSsW00PDDaizPo58R5pYDCZUe1gjpw+4qQn4JtIM3Go4sCQQDE\n\
zttITpcB3Ma4Gi8KZBL9dObdlngAsedKelNGlF7r/KfSQ/qVt0vmTHnP94k5kzcD\n\
YVfoi4jD/D+qBEE++QfZAkB9FopR1nXU48zUvmssfYwQdctoLdDs4lSLZj4jke6h\n\
rrSWoBnqiqmU/IVWjBDkoN3Tf16ncKJAapoeTOo02XzH\n\
-----END RSA PRIVATE KEY-----"

public_key = RSA.importKey(pem_public_key)
private_key = RSA.importKey(pem_private_key)

sentinel = "--error--"
cipher_rsa = PKCS1_v1_5.new(private_key)
decrypted_data = cipher_rsa.decrypt(encrypt_data, sentinel)
 
print(encodings.utf_8.decode(decrypted_data))
```

### 使用PyCryptodome验证.NET RSACryptoServiceProvider/SHA256签名的数据

参考[这里](http://legrandin.github.io/pycryptodome/Doc/3.4/Crypto.Signature.pkcs1_15-module.html)

源码：[pycryptodome_rsa_verify_from_dotnet.py](pycryptodome_rsa_verify_from_dotnet.py)

```
from Crypto.Signature import pkcs1_15
from Crypto.PublicKey import RSA
from Crypto.Hash import SHA256
import base64

pem_public_key = "-----BEGIN PUBLIC KEY-----\n\
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLVZxYGGswGkQ2gRAQKRx59MbE\n\
5udvuzjH30uHsyGG3nd21606AU1Nh40zZrZnGyY8w3IdTaOYR5xin//4k8+w6/lP\n\
9t6uAZjZdXqtKOxjOyrXFyi+nNgoKKCUhcWBkfpY7rGnqUHbcVDQIwYSOjNgZai7\n\
fY7/OiGLSH7cC9IgywIDAQAB\n\
-----END PUBLIC KEY-----"

pem_private_key = "-----BEGIN RSA PRIVATE KEY-----\n\
MIICXQIBAAKBgQDLVZxYGGswGkQ2gRAQKRx59MbE5udvuzjH30uHsyGG3nd21606\n\
AU1Nh40zZrZnGyY8w3IdTaOYR5xin//4k8+w6/lP9t6uAZjZdXqtKOxjOyrXFyi+\n\
nNgoKKCUhcWBkfpY7rGnqUHbcVDQIwYSOjNgZai7fY7/OiGLSH7cC9IgywIDAQAB\n\
AoGAG7OTo7rb64dAkM5fglwfeYv8AnpUwHeYwj4tG5UvdaDcVLAIdRUVU4EqnvyY\n\
0A42VOPpqY1YwtfKufMDW/nDOyBaeAhgTetnnmwYb2HKVE2+2CbeXMQWOiVSJ+Qu\n\
gQquKg67HT8gZhOROiKEy7OT4fqgff/03Js/M4n1b59ySlkCQQD5L5AKmRu5X6OC\n\
YRXfY0Ak1JjukB83Ue/CNM0YMoCweXxrz8F3klpgi43rDtOyOgtoxE9RMkXvEmPy\n\
EQfjojDDAkEA0OUQMf4yoCVRMkiHLmuHwNis/CdguHV7v/D/mgE949zoIGNtOBNH\n\
F1tAa2fgdhDTxrPczJ2BxC0bon9GAOFPWQJBAN3TNnIIzIJgHinBjXwYWZCv5Rhy\n\
Giff/ASxhmZlBuSSsW00PDDaizPo58R5pYDCZUe1gjpw+4qQn4JtIM3Go4sCQQDE\n\
zttITpcB3Ma4Gi8KZBL9dObdlngAsedKelNGlF7r/KfSQ/qVt0vmTHnP94k5kzcD\n\
YVfoi4jD/D+qBEE++QfZAkB9FopR1nXU48zUvmssfYwQdctoLdDs4lSLZj4jke6h\n\
rrSWoBnqiqmU/IVWjBDkoN3Tf16ncKJAapoeTOo02XzH\n\
-----END RSA PRIVATE KEY-----"

public_key = RSA.importKey(pem_public_key)
private_key = RSA.importKey(pem_private_key)

text = "中文English123321韩国语（한국어）（日语：“日本语”，假名：にほんご（かな）ニホンゴ（カナ））";

signature = base64.b64decode("OUKNSVSNC68oMPDXjt6xmYduh7QG+AofFaFKcvG/eArvdy0Cb0SIErlPCu8p4Nt+w3r8KWnj6ZqQvv4EzHgQyF8A8iM+dcm8CdxY4RFu+qKSOPfXKZvYmAobLnZgarI9dGnl2loIxot0uaDvaFhT2f1qATjZTLr1o7kG5WHdIic=")

h = SHA256.new(text.encode('utf-8'))

try:
    pkcs1_15.new(public_key).verify(h, signature)
    print("The signature is valid.")
except (ValueError, TypeError):
    print("The signature is not valid.") 

```