//
//  Protocol.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import UIKit

protocol CalculateProtocol {
    
    func updateUI(_ items: (String, String, String, String, String, String, String))
    
    func sendRound(_ round: Int)
    
    func sendRoundScore(_ round: Int, _ achko: Int)
}
