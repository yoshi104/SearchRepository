//
//  ViewCompornents.swift
//  SearchRepository
//
//  Created by Yoshiyuki Kato on 2020/10/31.
//

import SwiftUI

struct CardView: View {
    
    struct Input: Identifiable {
        let id: UUID = UUID()
        let iconImage: UIImage
        let title: String
        let language: String?
        let star: Int
        let description: String?
        let url: String
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
        }
    }
    
}




