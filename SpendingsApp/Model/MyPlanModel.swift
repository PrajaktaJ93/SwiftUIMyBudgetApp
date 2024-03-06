//
//  MyPlanModel.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 01/03/24.
//

import Foundation
import SwiftUI

struct MyPlanModel: Hashable, Identifiable {
    var id = UUID()
    var planColor: Color
    let plan: String
    var planDetails: String
    let maxAmount: Double
    let minAmount: Double
}


