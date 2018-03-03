//
//  Item.swift
//  Todoey
//
//  Created by Ryuji Ganaha on 3/2/18.
//  Copyright © 2018 Ryuji Ganaha. All rights reserved.
//

import Foundation

class Item: Encodable, Decodable {
    
    var title: String = ""
    var done: Bool = false
}
