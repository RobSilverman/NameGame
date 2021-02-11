//
//  Employee.swift
//  NameGame
//
//  Created by Robert Silverman on 2/10/21.
//

import Foundation

struct Employee: Codable, Hashable, Identifiable {
    
    var firstName: String
    var headshot: Headshot
    var id: String
    var jobTitle: String
    var lastName: String
    var slug: String
    var type: String
    
    struct Headshot: Codable, Hashable, Identifiable {
        var alt: String
        var height: Int
        var id: String
        var mimeType: String
        var type: String
        var url: String
        var width: Int
    }
    
}
