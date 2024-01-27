from cryptography.fernet import Fernet

MY_AES_KEY = b'ykWaetYMhda53pQkaSOjsDHLzousmpH0SUUH6ul-TJM='


def encode_aes(text):
    fernet = Fernet(MY_AES_KEY)
    b_text = str(text).encode()
    text_encrypt = fernet.encrypt(b_text).decode()
    return text_encrypt  # string


def decode_aes(text):
    fernet = Fernet(MY_AES_KEY)
    text_decrypt = fernet.decrypt(text).decode()
    return text_decrypt  # string
