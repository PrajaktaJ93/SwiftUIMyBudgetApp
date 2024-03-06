//
//  ContentView.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 27/02/24.
//

import SwiftUI

struct SpendingsView: View {
    @EnvironmentObject var model: SpendingsViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor.colorLightGray)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(content: {
                        HStack {
                            VStack(alignment:.leading ,content: {
                                Text("Hello_Name_Text")
                                    .font(.system(size: 20, weight: .bold))
                                Text("Hello_Details")
                                    .font(.system(size: 15, weight: .light))
                                    .foregroundStyle(.gray)
                            })
                            Spacer()
                            Image(systemName: "bell")
                                .imageScale(.large)
                                .foregroundStyle(.tint)
                                .padding(10)
                                .frame(width: 40, height: 40)
                                .tint(.black)
                        }
                        .padding(10)
                    })
                    .padding(10)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(UIColor.colorYellow))
                            .padding(10)
                        VStack {
                            BudgetView()
                        }
                        .padding(10)
                    }
                    VStack {
                        MyPlanView()
                    }
                    .padding(10)
                    
                    VStack {
                        HStack {
                            Text("Transactions").padding(5)
                                .font(.headline)
                            Spacer()
                            
                            NavigationLink("View_All", destination: {
                                SpendingsListView(transactionType: .all)
                            })
                            .padding(5)
                            .font(.subheadline)
                            .tint(.black)
                        }
                        TransactionView()
                    }.padding(10)
                }
            }
        }
    }
}

#Preview {
    SpendingsView().environmentObject(SpendingsViewModel())
}


