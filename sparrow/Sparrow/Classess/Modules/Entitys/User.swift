//
//  User.swift
//  Sparrow
//
//  Created by Abraham Abreu on 23/07/18.
//  Copyright © 2018 banregio. All rights reserved.
//

import UIKit

struct User {
    ///Nombre del usuario
    var name: String! = ""
    var age: Int? = 10
    var address: String! = ""
    var email: String? = ""
}
struct Users {
    var user: [User] = [User]()
}
