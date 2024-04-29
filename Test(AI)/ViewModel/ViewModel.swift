//
//  ViewModel.swift
//  Test(AI)
//
//  Created by MuhammadAli on 14/02/24.
//

import UIKit

class ViewModel : NSObject {
    
    private var Modelcalculator : Model!
        
    private var delegate: CalculateProtocol!
    
    private var userniJavobi : String = ""
    
    init(_ delegate: CalculateProtocol) {
        super.init()
        self.delegate = delegate
        self.Modelcalculator = Model()
    }
    
    func UyinniBoshlash() {
        self.modeldanRaqamVaAmalniOlibUIgAKursatish()
    }
    
    func confirmKnopkaUchun() {
        
        self.natijaniTekshir()
        self.modeldanRaqamVaAmalniOlibUIgAKursatish()
    }
    
    func SkipKnopkaUchun() {
        self.modeldanRaqamVaAmalniOlibUIgAKursatish()
        self.Modelcalculator.roundga1Qush()
        self.delegate.sendRound(self.Modelcalculator.roundniKursatish)
    }
    
    func progresUchun() {
        self.natijaniTekshir()
        self.modeldanRaqamVaAmalniOlibUIgAKursatish()
    }
    
    
    
    private func modeldanRaqamVaAmalniOlibUIgAKursatish() {
        self.Modelcalculator.startUI()
        self.Modelcalculator.tuzilganMisolniYechibJavobniOlish()
        self.Modelcalculator.randomXatoVariantOlish()
        self.delegate?.updateUI(self.Modelcalculator.misolniUIgaKursatishJavoblariBilan)
    }
    
    private func natijaniTekshir() {
        self.Modelcalculator.tuzilganMisolniYechibJavobniOlish()
        if checkAnswer() {
            self.Modelcalculator.achkoga1Qush()
            self.Modelcalculator.roundga1Qush()
        } else {
            self.Modelcalculator.roundga1Qush()
        }
        self.delegate.sendRoundScore(self.Modelcalculator.roundniKursatish, self.Modelcalculator.achkoniKursatish)
    }
    
    
    
    
    func userTanlaganJavobniOlish(_ number: String) {
        self.userniJavobi = number
    }
    
    
    func checkAnswer() -> Bool {
        if self.userniJavobi == self.Modelcalculator.tugriJavobStringShaklida {
            return true
        } else {
            return false
        }
    }
    
    
}
