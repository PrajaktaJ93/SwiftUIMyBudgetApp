//
//  MyPlanView.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 04/03/24.
//

import SwiftUI

struct MyPlanView: View {
    @EnvironmentObject var model: SpendingsViewModel
    
    var body: some View {
        HStack {
            Text("My_Plan")
                .padding(5)
                .font(.headline)
            Spacer()
//            Text("View_All")
//                .padding(5)
//                .font(.subheadline)
        }
        
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(model.planArr) { plan in
                    MyPlanCardView(plan: plan)
                        .frame(width: 220)
                }
            }
        }
    }
}

#Preview {
    MyPlanView().environmentObject(SpendingsViewModel())
}
