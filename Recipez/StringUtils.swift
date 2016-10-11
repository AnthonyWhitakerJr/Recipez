//
//  String+isBlank.swift
//  Recipez
//
//  Created by Anthony Whitaker on 8/2/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation

extension String {
    var isBlank: Bool {
        return isEmpty || trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty
    }
    
    var trim: String {
        return trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
}
