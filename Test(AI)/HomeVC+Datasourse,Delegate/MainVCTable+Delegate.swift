//
//  MainVCTable+Delegate.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import Foundation
import UIKit


extension MainVC : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return window_width * 1.5
        
    }
    
}
