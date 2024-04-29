//
//  ScoreVC+Cell.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import UIKit

class ScoreVC_Cell: UITableViewCell {
    
    var scoreLbl = UILabel()
    
    var restartPressInfo : (() -> Void)?
    

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
        super.init(style: .default, reuseIdentifier: "ScoreVC_Cell")
        
        initView()
    }
    
    private func initView() {
        
        let contView = UIView(frame: CGRect(x: spacing_global, y: window_height / 8, width: width_global, height: width_global))
        contView.layer.shadowColor = UIColor.black.cgColor
        contView.layer.shadowRadius = 10
        contView.layer.shadowOpacity = btns_shadow_opocity
        contView.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(contView)
        
        
        self.scoreLbl = UILabel(frame: CGRect(x: 0 , y: 0 , width: width_global, height: width_global))
        self.scoreLbl.text = "Your Score: 0"
        self.scoreLbl.font = .boldSystemFont(ofSize: 30)
        self.scoreLbl.textAlignment = .center
        self.scoreLbl.textColor = .white
        self.scoreLbl.layer.cornerRadius = 12
        self.scoreLbl.backgroundColor = .systemGreen
        self.scoreLbl.clipsToBounds = true
        
        contView.addSubview(scoreLbl)
        
        let restartBtn = UIButton(
            frame: CGRect(
                x: spacing_global,
                y: contView.frame.maxY + spacing_global * 2,
                width: width_global,
                height: height_btn))
        restartBtn.setTitle("Restart", for: .normal)
        restartBtn.setTitleColor(.white, for: .normal)
        restartBtn.backgroundColor = .systemBlue
        restartBtn.layer.shadowColor = UIColor.black.cgColor
        restartBtn.layer.shadowRadius = 10
        restartBtn.layer.shadowOpacity = btns_shadow_opocity
        restartBtn.layer.shadowOffset = .init(width: -8, height: 8)
        restartBtn.layer.cornerRadius = 12
        restartBtn.addTarget(self, action: #selector(onRestart), for: .touchUpInside)
        restartBtn.titleLabel?.font = .boldSystemFont(ofSize: 30)
        self.contentView.addSubview(restartBtn)
        
    }
    
    @objc func onRestart() {
        self.restartPressInfo?()
    }
    
    
}
