//
//  ContentView.swift
//  ListExample
//
//  Created by Alexander Larsson on 2020-09-19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expanded: [Int: Bool] = [:]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<4) { i in
                    Section(header: EventListHeader(text: "Section \(i)", isExpanded: self.expanded[i] ?? false).onTapGesture {
                        withAnimation {
                            let isExpanded = expanded[i] ?? false
                            expanded[i] = !isExpanded
                        }
                    }
                    , content: {
                        if expanded[i] ?? false {
                            ForEach(1..<4) { j in
                                HStack {
                                    VStack {
                                        Text("Example content")
                                        Text("Awesomeness")
                                    }
                                    Spacer()
                                    Image(systemName: "gear")
                                }.roundedCard()
                            }
                        }
                    }).background(Color.white)
                }
            }
            .background(Color.white) // <-- This makes the lines re-appear!
            .listSeparatorStyle(.none)
            .navigationTitle("Example")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
