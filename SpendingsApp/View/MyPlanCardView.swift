//
//  MyPlanCardView.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 01/03/24.
//

import Foundation
import SwiftUI

struct MyPlanCardView: View {
    let plan: MyPlanModel
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(width: 220)
            VStack {
                HStack {
                    Text("#\(plan.plan)")
                        .padding(.leading, 10)
                        .foregroundStyle(plan.planColor)
                        .font(.system(size: 15))
                    Spacer()
                }
                HStack {
                    Text(plan.planDetails)
                        .padding(5)
                        .font(.system(size: 15, weight: .medium))
                    Spacer()
                }
                HStack {
                    Text("£" + String(plan.minAmount))
                        .font(.system(size: 15, weight: .bold))
                    Spacer()
                    Text("£" + String(plan.maxAmount))
                        .font(.system(size: 15, weight: .bold))
                        .foregroundStyle(.gray)
                }
                .padding(.leading, 10)
                .padding(.trailing, 10)
                
                ProgressView(value: plan.minAmount, total: plan.maxAmount)
                    .padding(10)
                    .tint(plan.planColor)
                    .scaleEffect(x: 1, y: 2, anchor: .center)
            }
            .padding(10)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        MyPlanCardView(plan: MyPlanModel(planColor:.white , plan: "", planDetails: "", maxAmount: 0, minAmount: 0))
            .environment(\.locale, .init(identifier: "en"))
    }
}
