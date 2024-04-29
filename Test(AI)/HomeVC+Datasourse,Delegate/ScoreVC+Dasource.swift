//
//  ScoreVC+Dasource.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import UIKit


extension ScoreVC : UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = ScoreVC_Cell()
        cell.selectionStyle = .none
        cell.restartPressInfo = {
            self.navigationController?.popToRootViewController(animated: true)
        }
        return cell
        
        
    }
    
}
