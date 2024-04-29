//
//  ScoreVC+Delegate.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import UIKit


extension ScoreVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return window_height * 0.7
    }
    
}
