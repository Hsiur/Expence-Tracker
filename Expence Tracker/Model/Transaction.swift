//
//  Transaction.swift
//  Expence Tracker
//
//  Created by Руслан Ишмухаметов on 03.02.2024.
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID = .init()
    // Properties
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: TintColor) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor.color
    }
    
    var color: Color {
        return tints.first(where: {$0.color == tintColor})?.value ?? appTint
    }
}

//Sample Transactions for UI Building
var sampleTransactions: [Transaction] = [
    .init(title: "Magic Keyboard", remarks: "Apple", amount: 129, dateAdded: .now, category: .expence, tintColor: tints.randomElement()!),
    .init(title: "Apple Music", remarks: "Подписки", amount: 10.99, dateAdded: .now, category: .expence, tintColor: tints.randomElement()!),
    .init(title: "iCloud", remarks: "Подписки", amount: 0.99, dateAdded: .now, category: .expence, tintColor: tints.randomElement()!),
    .init(title: "Зарплата", remarks: "Зарплата", amount: 2999, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
]
