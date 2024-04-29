//
//  MainVCTable+Datasourse.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import Foundation
import UIKit



extension MainVC : UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MainVC_Cell_1()
        cell.selectionStyle = .none
        
        return cell
    }
    
    
}
