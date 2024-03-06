//
//  TransactionModel.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 01/03/24.
//

import Foundation
struct TransactionModel: Identifiable, Hashable {
    var id = UUID()
    let type: TransactionType
    let spendingName: String
    let amount: Double
    let date: String
}
