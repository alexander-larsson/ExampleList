//
//  ContentView.swift
//  ListExample
//
//  Created by Alexander Larsson on 2020-09-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<4) { i in
                    Section(header: Text("Section \(i)"), content: {
                        ForEach(1..<4) { j in
                            HStack {
                                VStack {
                                    Text("Example content")
                                    Text("Awesomeness")
                                }
                                Spacer()
                                Image(systemName: "gear")
                            }
                        }
                    })
                }
            }
            .listSeparatorStyle(.none) // <-- This makes the list disappear!
            .navigationTitle("Example")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
