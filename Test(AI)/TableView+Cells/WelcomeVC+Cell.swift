//
//  WelcomeVC+Cell1.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import UIKit

class WelcomeVC_Cell1: UITableViewCell {
    
    var openerMainVC : (() -> Void)?
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init() {
        super.init(style: .default, reuseIdentifier: "WelcomeVC_Cell1")
        self.initView()
    }
    
    private func initView() {
                
        let img = UIImageView(
            frame: CGRect(
                x: spacing_global,
                y: window_height / 10,
                width: width_global,
                height: width_global))
        img.image = UIImage(systemName: "graduationcap.circle")
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 12
        img.layer.shadowColor = UIColor.black.cgColor
        img.layer.shadowOpacity = 0.3
        img.layer.shadowOffset = .init(width: -20, height: 20)
        self.contentView.addSubview(img)
        
        
        let  startBtn = UIButton(frame: CGRect(x: spacing_global, y: img.frame.maxY + 60, width: width_global, height: height_btn))
        startBtn.setTitle("Let's Go", for: .normal)
        startBtn.setTitleColor(.white, for: .normal)
        startBtn.layer.cornerRadius = 12
        startBtn.backgroundColor = .systemBlue
        startBtn.titleLabel?.font = .boldSystemFont(ofSize: 30)
        startBtn.layer.cornerRadius = 12
        startBtn.layer.shadowColor = UIColor.black.cgColor
        startBtn.layer.shadowOpacity = 0.3
        startBtn.addTarget(self, action: #selector(onStart), for: .touchUpInside)
        startBtn.layer.shadowOffset = .init(width: -20, height: 20)
        self.contentView.addSubview(startBtn)
    }
    
    @objc func onStart() {
        print("Let's Go pressed")
        self.openerMainVC?()
    }
    
}
