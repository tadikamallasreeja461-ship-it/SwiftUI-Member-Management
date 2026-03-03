//
//  MemberListView.swift
//  TestProject
//
//  Created by Mac on 03/03/26.
//

import Foundation
import SwiftUI

struct MemberListView: View {
    
    @StateObject var viewModel = MemberViewModel()
    @EnvironmentObject var store : MemberStore
    @State private var showAddMember = false
    
    var body: some View {
            VStack {
                if store.members.isEmpty {
                    Text("No Members Added")
                    NavigationLink("Add Member") {
                        AddMemberView()
                    }
                } else {
                    List {
                        ForEach(store.members) { member in
                            NavigationLink(destination: MemberDetailView(member: member)) {
                                Text(member.name)
                            }
                        }
                        NavigationLink {
                            AddMemberView()
                        } label: {
                            HStack {
                                Image(systemName: "plus")
                                Text("Add Member")
                            }
                        }
                    }
                }
            } .navigationTitle(Text("Members"))
        
    }
}

func navigateToAdd() {
    
}
