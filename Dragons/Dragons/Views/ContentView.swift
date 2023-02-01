//
//  ContentView.swift
//  Dragons
//
//  Created by Consultant on 1/29/23.
//

import SwiftUI

struct ContentView: View {
    
    private var pokemon: [Pokemon] = Dragons.allDragons.pokemon
    var body: some View {
        ZStack {
            VStack {
                NavigationView {
                    List {
                        ForEach(pokemon, id: \.pokemon.name) {
                            pokemon in
                            Text("\(pokemon.pokemon.name)".capitalized)
                        }
                    }
                    
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Dragon")
                                .font(.largeTitle.bold())
                                .accessibilityAddTraits(.isHeader)
                        }
                    }
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
