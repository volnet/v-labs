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
