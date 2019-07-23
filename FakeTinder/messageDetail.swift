//
//  messageDetail.swift
//  FakeTinder
//
//  Created by pearl on 18.07.2019.
//  Copyright © 2019 pearl. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase
import SwiftKeychainWrapper


class messageDetail {
    
    private var _recipient : String!
    private var _messageKey : String!
    private var _messageRef : DatabaseReference!
    
    var currentUser = KeychainWrapper.standard.string(forKey: "uid")
    var recipient:String{
        return _recipient
    }
    var messageKey :String {
        return _messageKey
    }
    var messageRef : DatabaseReference {
        return messageRef
    }
    init ( messageKey : String , messageData : Dictionary < String , AnyObject >){
       
        _messageKey = messageKey
        
        if let recipient = postData["recipient"]  as? String {
            _recipient = recipient
            
        }
        
        _messageRef =  Database.database().reference().child("recipient").child("messageKey")
        
    }
    
}
