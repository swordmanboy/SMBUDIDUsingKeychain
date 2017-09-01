//
//  SMBUuid.swift
//  SMBUDIDUsingKeychain
//
//  Created by Apinun Wongintawang on 9/1/17.
//  Copyright © 2017 True. All rights reserved.
//

import Foundation
import KeychainSwift

public class SMBUUID : NSObject{
    static let KEY_FOR_UDID : String! = "aed5e15a047369b821a4d5faa9da2b89"
    static let KEY_SMBUUID : String! = "d5b18175b03ab50495df815f8dcf731c"
    
    class func uuidString () -> String{
        var uuid : String! = ""
        let keychain = KeychainSwift.init(keyPrefix: SMBUUID.KEY_SMBUUID)
        if let udidFormKeyChain = keychain.get(SMBUUID.KEY_FOR_UDID){
            uuid = udidFormKeyChain
        }else{
            uuid = SMBUUID.getUUID()
            keychain.set(uuid, forKey: SMBUUID.KEY_FOR_UDID)
        }
        
        return uuid
    }
    
    class func getUUID()->String{
        var uuid : String! = nil
        if uuid == nil{
            uuid = UIDevice.current.identifierForVendor?.uuidString.lowercased()
        }
        
        if uuid == nil{
            //not oull
            uuid = UUID.init().uuidString
        }
        
        return uuid
    }
}
