//
//  MainVC+Cell_1.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import UIKit

class MainVC_Cell_1: UITableViewCell {
    
    var questionDescribtion = UILabel()
    var progCountNum = UILabel()
    var roundLbl = UILabel()
    var imlDarajasi = UILabel()
    var scoreLbl = UILabel()
    
    var aBtn = UIButton()
    var bBtn = UIButton()
    var cBtn = UIButton()
    var dBtn = UIButton()
    
    var btns: [UIButton] = []
    
    var confirmBtn = UIButton()
    var skipBtn = UIButton()
    
    var timer : Timer!
    var timeNumber: Int = 10
    private var progressValue : Float = 0.0
    
    var progressView = UIProgressView()
    
    var isClickBtn: Bool = true
    
    internal var viewModel: ViewModel!
    
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
        super.init(style: .default, reuseIdentifier: "MainVC_Cell_1")
        self.viewModel = ViewModel(self)
        self.initView()
        
    }
    
    
    
    
    private func initView() {
        
        let sarlavha = UIView(frame: CGRect(x: spacing_global, y: 0, width: width_global, height: 40))
        
        sarlavha.backgroundColor = .systemBlue
        sarlavha.layer.cornerRadius = 12
        sarlavha.layer.shadowColor = UIColor.black.cgColor
        sarlavha.layer.shadowRadius = 10
        sarlavha.layer.shadowOpacity = btns_shadow_opocity
        sarlavha.layer.shadowOffset = .init(width: -8, height: 8)
        
        self.contentView.addSubview(sarlavha)
        
        let sarlavhaTaxt = UILabel(frame: CGRect(x: 0, y: 0, width: sarlavha.frame.width, height: sarlavha.frame.height))
        sarlavhaTaxt.text = "Test"
        sarlavhaTaxt.textColor = .white
        sarlavhaTaxt.textAlignment = .center
        sarlavhaTaxt.font = .boldSystemFont(ofSize: 25)
        sarlavha.addSubview(sarlavhaTaxt)
        
        
        let containerForQues = UIView(
            frame: CGRect(
                x: spacing_global,
                y: height_btn,
                width: width_global,
                height: height_btn * 2))
        containerForQues.layer.shadowColor = UIColor.black.cgColor
        containerForQues.layer.shadowRadius = 10
        containerForQues.layer.shadowOpacity = btns_shadow_opocity
        containerForQues.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(containerForQues)
        
        questionDescribtion = UILabel(frame: CGRect(x: 0 , y: 0, width: containerForQues.frame.width, height: containerForQues.frame.height))
        questionDescribtion.textAlignment = .center
        questionDescribtion.numberOfLines = 0
        questionDescribtion.textColor = .white
        questionDescribtion.font = .boldSystemFont(ofSize: 25)
        questionDescribtion.backgroundColor = .systemGreen
        questionDescribtion.layer.cornerRadius = 12
        questionDescribtion.clipsToBounds = true
        questionDescribtion.text = "Assalomu Aleykum"
        
        containerForQues.addSubview(questionDescribtion)
        
        let containerProgNum = UIView(frame: CGRect(x: spacing_global, y: containerForQues.frame.maxY + spacing_global, width: 50, height: 50))
        containerProgNum.backgroundColor = .systemBlue
        containerProgNum.layer.cornerRadius = 25
        containerProgNum.layer.shadowColor = UIColor.black.cgColor
        containerProgNum.layer.shadowRadius = 10
        containerProgNum.layer.shadowOpacity = btns_shadow_opocity
        containerProgNum.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(containerProgNum)
        
        progCountNum = UILabel(frame: CGRect(x: 0, y: 0, width: containerProgNum.frame.width, height: containerProgNum.frame.height))
        progCountNum.text = "10"
        progCountNum.textAlignment = .center
        progCountNum.font = .systemFont(ofSize: 25)
        progCountNum.textColor = .white
        containerProgNum.addSubview(progCountNum)
        
        progressView = UIProgressView(
            frame: CGRect(
                x: containerProgNum.frame.maxX + 10,
                y: containerForQues.frame.maxY + spacing_global * 2,
                width: window_width - (spacing_global * 3) - containerProgNum.frame.width,
                height: 50))
        progressView.progress = 1
        progressView.progressTintColor = .systemBlue


        progressView.layer.shadowColor = UIColor.black.cgColor
        progressView.layer.shadowRadius = 10
        progressView.layer.shadowOpacity = btns_shadow_opocity
        progressView.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(progressView)
        
        
        aBtn = UIButton(
            frame: CGRect(
                x: spacing_global,
                y: containerProgNum.frame.maxY + spacing_global,
                width: (width_global - spacing_global) / 2 ,
                height: height_btn * 2))
        aBtn.layer.cornerRadius = 12
        aBtn.setTitle("A", for: .normal)
        aBtn.backgroundColor = .systemGreen
        aBtn.titleLabel?.font = .boldSystemFont(ofSize: 25)
        aBtn.layer.shadowColor = UIColor.black.cgColor
        aBtn.layer.shadowRadius = 10
        aBtn.addTarget(self, action: #selector(anwerBtnPressed(_:)), for: .touchUpInside)
        aBtn.layer.shadowOpacity = btns_shadow_opocity
        aBtn.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(aBtn)
        
        bBtn = UIButton(
            frame: CGRect(
                x: spacing_global * 2 + aBtn.frame.width,
                y: containerProgNum.frame.maxY + spacing_global,
                width: (width_global - spacing_global) / 2 ,
                height: height_btn * 2))
        bBtn.layer.cornerRadius = 12
        bBtn.setTitle("B", for: .normal)
        bBtn.backgroundColor = .systemGreen
        bBtn.addTarget(self, action: #selector(anwerBtnPressed(_:)), for: .touchUpInside)
        bBtn.titleLabel?.font = .boldSystemFont(ofSize: 25)
        bBtn.layer.shadowColor = UIColor.black.cgColor
        bBtn.layer.shadowRadius = 10
        bBtn.layer.shadowOpacity = btns_shadow_opocity
        bBtn.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(bBtn)
        
        
        cBtn = UIButton(
            frame: CGRect(
                x: spacing_global,
                y: containerProgNum.frame.maxY + (spacing_global * 2) + bBtn.frame.height,
                width: (width_global - spacing_global) / 2 ,
                height: height_btn * 2))
        cBtn.layer.cornerRadius = 12
        cBtn.setTitle("C", for: .normal)
        cBtn.backgroundColor = .systemGreen
        cBtn.addTarget(self, action: #selector(anwerBtnPressed(_:)), for: .touchUpInside)
        cBtn.titleLabel?.font = .boldSystemFont(ofSize: 25)
        cBtn.layer.shadowColor = UIColor.black.cgColor
        cBtn.layer.shadowRadius = 10
        cBtn.layer.shadowOpacity = btns_shadow_opocity
        cBtn.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(cBtn)
        
        dBtn = UIButton(
            frame: CGRect(
                x: spacing_global * 2 + aBtn.frame.width,
                y: containerProgNum.frame.maxY + (spacing_global * 2) + bBtn.frame.height,
                width: (width_global - spacing_global) / 2 ,
                height: height_btn * 2))
        dBtn.layer.cornerRadius = 12
        dBtn.setTitle("D", for: .normal)
        dBtn.backgroundColor = .systemGreen
        dBtn.addTarget(self, action: #selector(anwerBtnPressed(_:)), for: .touchUpInside)
        dBtn.titleLabel?.font = .boldSystemFont(ofSize: 25)
        dBtn.layer.shadowColor = UIColor.black.cgColor
        dBtn.layer.shadowRadius = 10
        dBtn.layer.shadowOpacity = btns_shadow_opocity
        dBtn.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(dBtn)
        
        confirmBtn = UIButton(frame: CGRect(x: spacing_global, y: dBtn.frame.maxY + spacing_global, width: (width_global - spacing_global) / 2, height: height_btn))
        confirmBtn.layer.cornerRadius = 12
        confirmBtn.setTitle("Confirm", for: .normal)
        confirmBtn.setTitleColor(.white, for: .normal)
        confirmBtn.backgroundColor = .systemBlue
        confirmBtn.addTarget(self, action: #selector(confirmPressed), for: .touchUpInside)
        confirmBtn.titleLabel?.font = .boldSystemFont(ofSize: 25)
        confirmBtn.layer.shadowColor = UIColor.black.cgColor
        confirmBtn.layer.shadowRadius = 10
        confirmBtn.layer.shadowOpacity = btns_shadow_opocity
        confirmBtn.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(confirmBtn)
        
        skipBtn = UIButton(
            frame: CGRect(
                x: (spacing_global * 2) + confirmBtn.frame.width,
                y: dBtn.frame.maxY + spacing_global,
                width: (width_global - spacing_global) / 2,
                height: height_btn))
        skipBtn.layer.cornerRadius = 12
        skipBtn.setTitle("Skip", for: .normal)
        skipBtn.setTitleColor(.white, for: .normal)
        skipBtn.backgroundColor = .systemBlue
        skipBtn.addTarget(self, action: #selector(skipBtnPressed), for: .touchUpInside)
        skipBtn.titleLabel?.font = .boldSystemFont(ofSize: 25)
        skipBtn.layer.shadowColor = UIColor.black.cgColor
        skipBtn.layer.shadowRadius = 10
        skipBtn.layer.shadowOpacity = btns_shadow_opocity
        skipBtn.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(skipBtn)
        
        let contener = UIView(frame: CGRect(x: spacing_global, y: confirmBtn.frame.maxY + spacing_global, width: (width_global - spacing_global) / 2 , height: height_btn))
        contener.layer.cornerRadius = 12
        contener.layer.shadowColor = UIColor.black.cgColor
        contener.layer.shadowRadius = 10
        contener.layer.shadowOpacity = btns_shadow_opocity
        contener.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(contener)
        
        
        self.roundLbl = UILabel(frame: CGRect(x: 0, y: 0, width: contener.frame.width, height: contener.frame.height))
        self.roundLbl.text = "0/100"
        self.roundLbl.font = .boldSystemFont(ofSize: 25)
        self.roundLbl.textAlignment = .center
        self.roundLbl.textColor = .white
        self.roundLbl.clipsToBounds = true
        self.roundLbl.backgroundColor = .systemBlue
        self.roundLbl.layer.cornerRadius = 12
        
        contener.addSubview(roundLbl)
        
        scoreLbl = UILabel(
            frame: CGRect(
                x: contener.frame.maxX - 35,
                y: contener.frame.minY - 15,
                width: 50,
                height: 50))
        scoreLbl.backgroundColor = .systemGreen
        scoreLbl.layer.cornerRadius = 25
        scoreLbl.clipsToBounds = true
        scoreLbl.text = "0"
        scoreLbl.textColor = .white
        scoreLbl.textAlignment = .center
        scoreLbl.font = .boldSystemFont(ofSize: 20)
        
        self.contentView.addSubview(scoreLbl)
        
        
        let contener2 = UIView(frame: CGRect(x: spacing_global + spacing_global + roundLbl.frame.width, y: confirmBtn.frame.maxY + spacing_global, width: (width_global - spacing_global) / 2 , height: height_btn))
        contener2.layer.cornerRadius = 12
        contener2.layer.shadowColor = UIColor.black.cgColor
        contener2.layer.shadowRadius = 10
        contener2.layer.shadowOpacity = 0.3
        contener2.layer.shadowOffset = .init(width: -8, height: 8)
        self.contentView.addSubview(contener2)
        
        
        self.imlDarajasi = UILabel(frame: CGRect(x: 0, y: 0, width: contener2.frame.width, height: contener2.frame.height))
        self.imlDarajasi.text = "72 %"
        self.imlDarajasi.font = .boldSystemFont(ofSize: 25)
        self.imlDarajasi.textAlignment = .center
        self.imlDarajasi.textColor = .white
        self.imlDarajasi.clipsToBounds = true
        self.imlDarajasi.backgroundColor = .systemBlue
        self.imlDarajasi.layer.cornerRadius = 12
        
        contener2.addSubview(imlDarajasi)
        
        self.viewModel.UyinniBoshlash()
        
        self.initProgressView()
    }
    
    func clearBtnBackGround() {
        self.aBtn.layer.borderWidth = 0
        self.bBtn.layer.borderWidth = 0
        self.cBtn.layer.borderWidth = 0
        self.dBtn.layer.borderWidth = 0
    }
    
    private func initProgressView() {
        self.timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(onProgress),
            userInfo: nil,
            repeats: true)
    }
    
    @objc func onProgress() {
        if self.progressView.progress > 0 {
            self.progressView.progress -= 0.1
            self.timeNumber -= 1
            self.progCountNum.text = "\(timeNumber)"
        } else if self.progressView.progress == 0 {
            timer.invalidate()
            self.viewModel.progresUchun()
            self.clearBtnBackGround()
            self.isClickBtn = true
            self.timeNumber = 10
            self.progCountNum.text = "\(timeNumber)"
            self.progressView.progress = 1.0
            self.initProgressView()
        }
    }
    
    
    
    @objc func skipBtnPressed() {
        self.viewModel.SkipKnopkaUchun()
        self.clearBtnBackGround()
        self.isClickBtn = true
        self.progressView.progress = 1.0
        self.timeNumber = 10
        self.progCountNum.text = "\(timeNumber)"
        print("skipBtnPressed")
    }
    
    @objc func confirmPressed() {
        self.viewModel.confirmKnopkaUchun()
        self.isClickBtn = true
        self.clearBtnBackGround()
        self.progressView.progress = 1.0
        self.timeNumber = 10
        self.progCountNum.text = "\(timeNumber)"
        print("confirmPressed")
    }
    
    
    @objc func anwerBtnPressed(_ sender: UIButton) {
        if isClickBtn {
            sender.layer.borderWidth = 5
            sender.layer.borderColor = UIColor.systemBlue.cgColor
            self.viewModel.userTanlaganJavobniOlish(sender.currentTitle ?? "")
            self.isClickBtn = false
        }
        print("anwerBtnPressed")
    }
}
