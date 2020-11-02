//
//  CardView.swift
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
    
    let input: Input
    
    init(input: Input) {
        self.input = input
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(uiImage: input.iconImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                .shadow(color: .gray, radius: 1, x: 0, y: 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(input: .init(iconImage: UIImage(named: "rocket")!,
                              title: "SwiftUI",
                              language: "Swift",
                              star: 1000,
                              description: "Declare the user interface and behavior for your app on every platform.", url: "https:exmaple.com"))
            .previewLayout(.sizeThatFits)
    }
}


