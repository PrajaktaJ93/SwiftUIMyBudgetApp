//
//  SpendingsViewModel.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 01/03/24.
//

import Foundation
import SwiftUI
class SpendingsViewModel: ObservableObject {
    
    @Published var planArr = [MyPlanModel(planColor: Color(UIColor.colorBills), plan: "Bills", planDetails: "Electricity", maxAmount: 500, minAmount: 200),
                              MyPlanModel(planColor: Color(UIColor.colorEatingOut), plan: "Eating out", planDetails: "Sunday Eating Out", maxAmount: 100, minAmount: 50),
                              MyPlanModel(planColor: Color(UIColor.colorEntertainment), plan: "Entertainment", planDetails: "Movie Time", maxAmount: 50, minAmount: 40),
                              MyPlanModel(planColor: Color(UIColor.colorGifts), plan: "Gifts", planDetails: "Birthday Gifts", maxAmount: 50, minAmount: 50),
                              MyPlanModel(planColor: Color(UIColor.colorGroceries), plan: "Groceries", planDetails: "Weekly Groceries", maxAmount: 200, minAmount: 180),
                              MyPlanModel(planColor: Color(UIColor.colorPersonalCare), plan: "Personal Care", planDetails: "Skin Care and Spa", maxAmount: 50, minAmount: 50),
                              MyPlanModel(planColor: Color(UIColor.colorShopping), plan: "Shopping", planDetails: "Shoes and Cloths", maxAmount: 100, minAmount: 80),
                              MyPlanModel(planColor: Color(UIColor.colorTransport), plan: "Transport", planDetails: "London Trip", maxAmount: 1000, minAmount: 800)]
    
    
    @Published var transactionArr = [TransactionModel(type:.income, spendingName: "Birthday Gift from friend", amount: 30, date: "March 1, 2024"),
                                     TransactionModel(type:.income, spendingName: "Dinner Contribution", amount: 20, date: "Feb 20, 2024"),
                                     TransactionModel(type:.spending, spendingName: "Trip to science center", amount: 50, date: "Feb 1, 2024"),
                                     TransactionModel(type:.income, spendingName: "Salary", amount: 150, date: "Jan 15, 2023"),
                                     TransactionModel(type:.spending, spendingName: "Eating out with family", amount: 50, date: "Dec 30, 2023"),
                                     TransactionModel(type:.spending, spendingName: "Groceries from CO-OP", amount: 30, date: "Dec 20, 2023"),
                                     TransactionModel(type:.spending, spendingName: "Bus pass for family ", amount: 15, date: "Dec 1, 2023"),
                                     TransactionModel(type:.income, spendingName: "Cashback from Amazon", amount: 15, date: "Nov 30, 2023")]
    
}
