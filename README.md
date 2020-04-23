# KeyChainExample
# Securing user data with Keychain for iOS

https://github.com/evgenyneu/keychain-swift

    Keychain is great because data encryption automatically is taken care of before it is 
    stored in the file system so there is no need to waste time building encryption algorithms.
    
    Keychain is a secure storage. You can store all kind of sensitive data in it: user passwords, 
    credit card numbers, secret tokens etc. Once stored in Keychain this information is only available to your app, 
    other apps can't see it. Besides that, operating system makes sure this information is kept and processed securely. 
    For example, text stored in Keychain can not be extracted from iPhone backup or from its file system. 
    Apple recommends storing only small amount of data in the Keychain. If you need to secure something big you can 
    encrypt it manually, save 
    to a file and store the key in the Keychain.
