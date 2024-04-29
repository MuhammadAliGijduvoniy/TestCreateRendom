//
//  EnumOperation.swift
//  Test(AI)
//
//  Created by MuhammadAli on 14/02/24.
//

import Foundation


enum AmalEnum : Int {
    
    case mull = 1
    case div = 2
    case minus = 3
    case plus = 4
    
    var misolUchunRandomAmalOlish: AmalEnum {
        
        let randomItem: Int = Int.random(in: 1 ..< 4)
        return AmalEnum(rawValue: randomItem) ?? .plus
        
    }
    
    var title: String {
        
        switch self {
        case .mull: return "*"
        case .div: return "/"
        case .minus: return "-"
        case .plus: return "+"
        }
        
    }
    
}
