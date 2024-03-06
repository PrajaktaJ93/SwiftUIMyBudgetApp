//
//  BudgetCardView.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 04/03/24.
//

import SwiftUI

public enum TransactionType: String, CaseIterable, Identifiable  {
    public var id: Self { self }
    case income
    case spending
    case all
}

struct BudgetCardView: View {
    @EnvironmentObject var model: SpendingsViewModel
    
    var transactionType = TransactionType.income
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 100)
                .cornerRadius(20)
            VStack {
                
                if transactionType == .income {
                    HStack {
                        VStack{
                            Image(systemName: "square.and.arrow.down.on.square.fill")
                                .padding(.leading, 0)
                            Text("Income")
                                .padding(.leading, 20)
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                            Text("£4,000")
                                .padding(.leading, 20)
                                .font(.headline)
                        }
                        Spacer()
                        
                        NavigationLink(destination: SpendingsListView(transactionType: .income), label: {
                            Image(systemName: "arrowshape.zigzag.right.fill")
                                .padding(.trailing, 20)
                                .tint(.black)
                        })
                    }
                    
                } else if transactionType == .spending {
                    HStack {
                        VStack {
                            Image(systemName: "square.and.arrow.up.on.square.fill")
                                .padding(.leading, 0)
                            Text("Spending")
                                .padding(.leading, 20)
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                            Text("£1,000")
                                .padding(.leading, 10)
                                .font(.headline)
                        }
                        Spacer()
                        NavigationLink(destination: SpendingsListView(transactionType: .spending), label: {
                            Image(systemName: "arrowshape.zigzag.right.fill")
                                .padding(.trailing, 20)
                                .tint(.black)
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    BudgetCardView().environmentObject(SpendingsViewModel())
}
