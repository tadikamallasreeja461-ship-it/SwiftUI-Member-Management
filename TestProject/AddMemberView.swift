//
//  AddMemberView.swift
//  TestProject
//
//  Created by Mac on 03/03/26.
//

import Foundation
import SwiftUI

struct AddMemberView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var gender = "Male"
    @Environment(\.dismiss) var dismiss
    var genders = ["Male", "Female", "Other"]
    
    var body: some View {
        
        Form{
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
            TextField("Phone", text: $phone)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Picker("Gender", selection: $gender) {
                ForEach(genders, id: \.self) {
                    Text($0)
                }
            }
            
            Button("Save") {
                saveMember()
            }
            .disabled(!isFormValid)
        } .navigationTitle("Add Member")
    }
    
}
    
    extension AddMemberView {
        
        var isFormValid: Bool {
            return isValidName &&
            isValidEmail &&
            isValidPhone &&
            isValidGender
        }
        
        var isValidName: Bool {
            return name.trimmingCharacters(in: .whitespaces).count >= 3
        }
        
        var isValidEmail: Bool {
            email.contains("@") && email.contains(".")
        }
        
        var isValidPhone: Bool {
           phone.count == 10 &&
            phone.allSatisfy{ $0.isNumber }
        }
        
        var isValidGender: Bool {
            return !gender.isEmpty
        }
        
        func saveMember() {
            let newMember = Member(name: name, email: email, phone: phone, gender: gender)
            let store = MemberStore.shared
            store.members.append(newMember)
            dismiss()
        }
        
    }

