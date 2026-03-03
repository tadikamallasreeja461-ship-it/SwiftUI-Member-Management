//
//  ListModel.swift
//  TestProject
//
//  Created by Mac on 03/03/26.
//

import Foundation

struct Member: Identifiable {
    let id = UUID()
    var name = String()
    var email = String()
    var phone = String()
    var gender = String()
}
