//
//  ContentView.swift
//  Shared
//
//  Created by Dan Hart on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    let characters = UIFont.preferredFont(forTextStyle: .title1).characterSet.characters
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(characters, id: \.self) { character in
                        Text(character)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.gray, lineWidth: 1)
                            )
                    }
                }
                .padding(.horizontal)
            }
            
            .navigationTitle("Characters")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
