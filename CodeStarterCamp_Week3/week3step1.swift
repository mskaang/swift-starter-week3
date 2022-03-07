//
//  Step 1.swift
//  CodeStarterCamp_Week3
//
//  Created by Minseong Kang on 2022/03/01.
//

import Foundation

class Person {
    var name: String
    var money: Int
    var inventory: Array<String> = []
    
    init(name: String, money: Int) {
        self.name = name
        self.money = money
    }
    
    func order(_ coffee: Coffee, at: CoffeeShop) {
        print("\(self.name)이/가 \(at)에서 \(coffee)를 구입합니다.")
        at.takeOrder(coffee, from: self)
    }
}

class CoffeeShop {
    var salesRevenue: Int = 0
    var menu: [Coffee: Int] = [:]
    var pickUpTable: Array<String> = []
    var baristas: Array<Person> = []
    
    init(baristas: Array<Person>, menu: [Coffee: Int]) {
        self.baristas = baristas
        self.menu = menu
    }
    
    func takeOrder(_ coffee: Coffee, from: Person) {
        print("\(from.name)님의 \(coffee) 주문 접수가 완료되었습니다.")
    }
    
    func make(_ beverage: Coffee) {
        pickUpTable.append("\(beverage)")
        print("주문하신 \(beverage) 나왔습니다.")
    }
}

enum Coffee {
    case espresso
    case americano
    case latte
    case cappuccino
    
    var name: String {
        return "\(self)".capitalized
    }
}
// <비비 피드백 기록용 코멘트>
// var coffee = "\(Coffee.espresso)".capitalized
// "\(self)".capitalized 과 같다. 셀프가 에스프레소로 할당된 경우임
