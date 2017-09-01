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
    
    class func uuidString () -> String{
        var uuid : String! = ""
        let keychain = KeychainSwift()
        if let udidFormKeyChain = keychain.get(SMBUUID.KEY_FOR_UDID){
            uuid = udidFormKeyChain
        }else{
            uuid = UIDevice.current.identifierForVendor?.uuidString
            keychain.set(uuid, forKey: SMBUUID.KEY_FOR_UDID)
        }
        
        return uuid
    }
}
