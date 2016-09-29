from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_OAEP

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