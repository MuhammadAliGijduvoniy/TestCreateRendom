//
//  Model.swift
//  Test(AI)
//
//  Created by MuhammadAli on 14/02/24.
//

import Foundation

class Model {
    //
    private var value1: Double = 0
    
    private var value2: Double = 0
    
    private var tugrijavob: Double = 0
    
    private var randomAmal : AmalEnum = .plus
    
    private var achko : Int = 0
    
    private var round : Int = 0
    
    private var variant1: Int = 0
    
    private var variant2 : Int = 0
    
    private var variant3 : Int = 0
    
    
    var variantFloat : Float = 0
    
    
    
    var achkoniKursatish :  Int {
        return self.achko
    }
    
    var roundniKursatish :  Int {
        return self.round
    }
    
    var tugriJavobStringShaklida : String {
        return String(self.tugrijavob)
    }
    
    var misolniUIgaKursatishJavoblariBilan : (String, String, String, String, String, String, String) {
        return (String(Int(self.value1)),
                self.randomAmal.title,
                String(Int(self.value2)),
                String(self.tugrijavob),
                String(self.variant1),
                String(self.variant2),
                String(self.variant3))
    }
    
    init() {
        
    }
    
    func randomXatoVariantOlish() {
        self.variant1 = Int.random(in: Int(tugrijavob) + 1 ..< Int(tugrijavob) + 3)
        self.variant2 = Int.random(in: Int(tugrijavob) + 3 ..< Int(tugrijavob) + 5)
        self.variant3 = Int.random(in: Int(tugrijavob) + 5 ..< Int(tugrijavob) + 7)
        self.variantFloat = Float.random(in: 0 ... 10)
        print(variantFloat)
    }
    
    
    
    
    func achkoga1Qush() {
        self.achko += 1
    }
    
    func roundga1Qush() {
        self.round += 1
    }
    
    func startUI() {
        UIUchunSonlarVaAmalniYigish()
    }
    
    func tuzilganMisolniYechibJavobniOlish() {
        switch self.randomAmal {
        case .mull: self.tugrijavob = self.value1 * self.value2
        case .div: self.tugrijavob = self.value1 / self.value2
        case .minus: self.tugrijavob = self.value1 - self.value2
        case .plus: self.tugrijavob = self.value1 + self.value2
        }
    }
    
    
    private func UIUchunSonlarVaAmalniYigish() {
        self.randomAmal = self.randomAmal.misolUchunRandomAmalOlish
        self.misolUchunRandomSonlar()
    }
    
    
    private func misolUchunRandomSonlar() {
        self.value1 = Double(Int.random(in: 2 ... 25))
        self.value2 = Double(Int.random(in: 2 ... 25))
        
    }
}
