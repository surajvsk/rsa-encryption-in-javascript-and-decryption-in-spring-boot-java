# rsa-encryption-in-javascript-and-decryption-in-spring-boot-java

Transmitting any sensitive information in a plain-text from any client such as Browser or Android client to server is vulnerable to security and hence encryption is a must. In this article, we will learn how to perform RSA encryption in Javascript and decrypt in Java. At the client-side, we will build a sample login form with HTML and Javascript with Angular JS and while submitting the login info to the server, we will RSA encrypt the password. At the server-side, we have  Spring MVC based app that will decrypt the encrypted password and perform authentication. 
In real scenarios, RSA is not the perfect match for this kind of password encryption. RSA encryption is mostly used when there are 2 different endpoints are involved such as VPN client and server, SSH, etc. and performance-wise RSA encryption is slower. With every doubling of the RSA key length, decryption is 6-7 times slower. This use case is best fitted with AES encryption. We are creating this sample app only to demonstrate the interoperability of RSA encryption between Javascript and Java.
What is RSA Encryption

RSA is an asymmetric encryption technique that is mostly used when there are 2 different endpoints that are involved such as VPN client and server, SSH, etc. It uses two different keys as public and private keys. Here, you can encrypt sensitive information with a public key and a matching private key is used to decrypt the same.  The private key is generated in PKCS#8 format and the public key is generated in X.509 format.


I assume that you already know about RSA and here we are just implementing a use case of it. You can follow my previous article to learn RSA encryption in Java.

RSA Public and Private Key

In RSA encryption, we encrypt sensitive information with a public key and a matching private key is used to decrypt the same. Let us first generate those keys programmatically in Java. You can also use this online RSA tool to generate these keys. 


We can use the factory method to generate these keys using KeyPairGenerator. For the demo purpose, we are using a key size of 1024 but this is secured and hence it is suggested to use at least 2048 bits of key size but remember that with every doubling of the RSA key length, decryption is 6-7 times slower. 

By default, the private key is generated in PKCS#8 format and the public key is generated in X.509 format. Here, we are doing a BASE64 encoding of the keys so that the public key can be easily shared with any client. Once, the key is generated, we will hardcode the Base64 encoded public key in JS file and use the private key at server-side.



FOR RUNING THIS PROJECT YOU DONT NEED TO DO ANYTHING JUST DOWNLOAD AND RUN AS SPRING BOOT APPLICATION
