//
//  MemberViewModel.swift
//  TestProject
//
//  Created by Mac on 03/03/26.
//

import Foundation
import Combine

class MemberViewModel: ObservableObject {
    var objectWillChange: ObservableObjectPublisher?
    
    
    @Published var members: [Member] = []
    
    private var store = MemberStore.shared
    
    init() {
        members = store.members
    }
    
    func refresh() {
        members = store.members
    }
    
    
}
