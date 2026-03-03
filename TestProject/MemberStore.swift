//
//  MemberStore.swift
//  TestProject
//
//  Created by Mac on 03/03/26.
//

import Foundation
import Combine

class MemberStore: ObservableObject {
    
    static let shared = MemberStore()
    
    @Published var members: [Member] = []
    
    private init() {}
    
    func add(member: Member) {
        members.append(member)
    }
    
    func delete(member: Member) {
        members.removeAll { $0.id == member.id }
    }
}
