//
//  TestProjectApp.swift
//  TestProject
//
//  Created by Mac on 03/03/26.
//

import SwiftUI

@main
struct TestProjectApp: App {
    
    @StateObject private var store = MemberStore.shared
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MemberListView()
            }
            .environmentObject(store)
        }
    }
}
