//
//  MemberDetailView.swift
//  TestProject
//
//  Created by Mac on 03/03/26.
//

import Foundation
import SwiftUI

struct MemberDetailView: View {
    
    let member: Member
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Name: \(member.name)")
            Text("Email: \(member.email)")
            Text("Phone: \(member.phone)")
            Text("Gender: \(member.gender)")
            
            Button("Delete") {
                deleteMember()
            }
            .foregroundStyle(Color.red)
        }
        .navigationTitle("Details")
    }
    
    func deleteMember() {
        MemberStore.shared.delete(member: member)
        dismiss()
    }
}
