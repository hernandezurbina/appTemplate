//
//  UserModel.swift
//  appTemplate
//
//  Created by Victor Hernandez-Urbina on 20/05/2019.
//  Copyright © 2019 Victor Hernandez-Urbina. All rights reserved.
//

import Foundation

class UserModel {
    var email: String = ""
    var name: String = ""
    var password: String = ""
    
    static let sharedInstance = UserModel()
}

