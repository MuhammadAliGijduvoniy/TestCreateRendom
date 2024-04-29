//
//  WelcomVCTable+Datasourse.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import Foundation
import UIKit


extension WelcomeVC : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = WelcomeVC_Cell1()
        cell.selectionStyle = .none
        cell.openerMainVC = {
            self.navigationController?.pushViewController(MainVC(), animated: true)
        }
        return cell
        
    }
    
}
