//
//  SpendingsApp.swift
//  SpendingsApp
//
//  Created by Prajakta Jadhav on 27/02/24.
//

import SwiftUI

@main
struct Spendings: App {
    var body: some Scene {
        WindowGroup {
            SpendingsView().environmentObject(SpendingsViewModel())
//                .environment(\.locale, .init(identifier: "en"))
        }
    }
}
