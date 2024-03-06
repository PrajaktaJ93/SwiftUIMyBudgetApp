//
//  TransactionView.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 04/03/24.
//

import SwiftUI

struct TransactionView: View {
    
    @EnvironmentObject var model: SpendingsViewModel
    var body: some View {
        
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(model.transactionArr) { transaction in
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                            .padding(.leading, 10)
                            .padding(.top, 5)
                            .padding(.trailing, 10)
                        VStack(spacing: 10, content: {
                            VStack {
                                HStack {
                                    let color = transaction.type == .income ? Color(uiColor: .systemGreen) : Color(uiColor: .red)
                                    let imageName = transaction.type == .income ? "square.and.arrow.down.on.square" : "square.and.arrow.up.on.square"
                                    Image(systemName: imageName)
                                        .foregroundStyle(color)
                                    Spacer()
                                    Text("£" + String(transaction.amount))
                                        .foregroundStyle(color)
                                }
                                .frame(height: 30)
                            }
                            .padding(.leading, 15)
                            .padding(.top, 15)
                            .padding(.trailing, 15)
                            VStack {
                                HStack {
                                    Text(transaction.spendingName)
                                    Spacer()
                                    Text(transaction.date)
                                }
                            }
                            .padding(.leading, 15)
                            .padding(.bottom, 15)
                            .padding(.trailing, 15)
                        })
                    }
                }
            }
            .scrollDisabled(true)
        }
    }
}
#Preview {
    TransactionView().environmentObject(SpendingsViewModel())
}
