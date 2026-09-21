//
//  Title.swift
//  Cinenime
//
//  Created by Ery Prasetyo on 21/09/26.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
}

struct Title: Decodable, Identifiable{
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPat: String?
}
