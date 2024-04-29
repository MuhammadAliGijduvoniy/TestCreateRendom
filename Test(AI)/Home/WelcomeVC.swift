//
//  WelcomeVC.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import UIKit

class WelcomeVC: UIViewController  {
    
    var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        initTableView()
        
        
    }
    
    private func initTableView() {
        
        self.tableView = UITableView(frame: .defaultFullScreen)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.separatorStyle = .none
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        self.view.addSubview(self.tableView)
        
        
    }
}
