//
//  College.swift
//  Study Owl
//
//  Created by Arvin Mohanty on 7/12/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit
import RealmSwift

class Event1: Object {
    dynamic var event1 = String()
    
    convenience init(name: String)
    {
        self.init()
        self.event1 = name

    }


}
