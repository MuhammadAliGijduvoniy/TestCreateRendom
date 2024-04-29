//
//  MainVC+Cell+Extension.swift
//  Test(AI)
//
//  Created by MuhammadAli on 14/02/24.
//

import Foundation


extension MainVC_Cell_1 : CalculateProtocol {
    
    func sendRound(_ round: Int) {
        self.roundLbl.text = "\(round)/100"
    }
    
    
    func sendRoundScore(_ round: Int, _ achko: Int) {
        self.roundLbl.text = "\(round)/100"
        self.scoreLbl.text = "\(achko)"
    }
    
    
    func updateUI(_ items: (String, String, String,String, String, String, String)) {
        self.questionDescribtion.text = "\(items.0) \(items.1) \(items.2) = ?"
        
        self.aBtn.setTitle(items.3, for: .normal)
        self.bBtn.setTitle(items.4, for: .normal)
        self.cBtn.setTitle(items.5, for: .normal)
        self.dBtn.setTitle(items.6, for: .normal)
    }
    
    
    
}
