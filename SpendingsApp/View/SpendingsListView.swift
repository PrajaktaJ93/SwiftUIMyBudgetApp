//
//  SpendingsListView.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 05/03/24.
//

import SwiftUI

struct SpendingsListView: View {
    
    @State var transactionType = TransactionType.all
    @EnvironmentObject var model: SpendingsViewModel
    
    @State var filteredArr = [TransactionModel]() {
        didSet {
            model.transactionArr = filteredArr
        }
    }
    
    var spendingsArr = ["Income", "Spending", "All"]
    
    var body: some View {
                ZStack {
                    Color(UIColor.colorLightGray)
                        .ignoresSafeArea()
        
        VStack(alignment: .leading, content: {
            Picker("", selection: $transactionType) {
                ForEach(TransactionType.allCases) { spending in
                    Text(spending.rawValue.capitalized)
                }
            }
            
            .onAppear() {
                switch transactionType {
                case .income:
                    model.transactionArr = filteredArr.filter({$0.type == .income})
                case .spending:
                    model.transactionArr = filteredArr.filter({$0.type == .spending})
                case .all:
                    model.transactionArr = filteredArr
                }
            }
            
            .onChange(of: transactionType) { oldState, newState in
                switch newState {
                case .income:
                    model.transactionArr = filteredArr.filter({$0.type == .income})
                case .spending:
                    model.transactionArr = filteredArr.filter({$0.type == .spending})
                case .all:
                    model.transactionArr = filteredArr
                }
            }
            
            .pickerStyle(.segmented)
            .padding(.top, 10)
            
            TransactionView()
                .onAppear {
                    filteredArr = model.transactionArr
                }
                .onDisappear() {
                    model.transactionArr =  filteredArr
                }
        } )
        
    }
        
    }
}

#Preview {
    SpendingsListView().environmentObject(SpendingsViewModel())
}
