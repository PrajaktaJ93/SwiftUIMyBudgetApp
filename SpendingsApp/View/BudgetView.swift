//
//  BudgetView.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 04/03/24.
//

import SwiftUI

struct BudgetView: View {
    var body: some View {
        Text("My_Budget")
            .font(.system(size: 23))
            .padding(5)
        
        Text("£4000")
            .font(.system(size: 23, weight: .bold))
        HStack {
            Button { } label: {
                HStack {
                    Image(systemName: "square.and.arrow.down.on.square")
                        .padding(.leading, 10)
                        .tint(.black)
                    Text("Add_Income")
                        .padding(.horizontal, 10)
                        .padding(.leading, 0)
                        .padding(.vertical, 8)
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.black)
                        .frame(height: 40)
                    
                } 
                .background(Color(UIColor.colorDarkYellow))
                .cornerRadius(20)
            }
            
            Button { } label: {
                HStack {
                    Image(systemName: "square.and.arrow.up.on.square")
                        .padding(.leading, 10)
                        .tint(.black)
                    Text("Add_Spending")
                        .padding(.horizontal, 10)
                        .padding(.leading, 0)
                        .padding(.vertical, 8)
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.black)
                        .frame(height: 40)
                    
                } 
                .background(Color(UIColor.colorDarkYellow))
                .cornerRadius(20)
            }
        }
        .padding(10)
        
        Rectangle()
            .foregroundColor(.gray)
            .frame(height: 0.5)
        
        HStack{
            Text("Budget_Overview")
                .font(.headline)
                .padding(.leading, 10)
            Spacer()
        }
        
        HStack {
            BudgetCardView(transactionType: .income)
            BudgetCardView(transactionType: .spending)
        }
        .padding(10)
    }
}

#Preview {
    BudgetView()
        .environment(\.locale, .init(identifier: "en"))

}
