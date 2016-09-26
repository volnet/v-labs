from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_v1_5

encrypt_data = open("hello.en", "rb").read()

print(encrypt_data)

encoded_key = open("openssltest.key", "rb").read()
private_key = RSA.import_key(encoded_key)

sentinel = "--error--"

cipher_rsa = PKCS1_v1_5.new(private_key)
decrypted_data = cipher_rsa.decrypt(encrypt_data, sentinel)

print(decrypted_data)