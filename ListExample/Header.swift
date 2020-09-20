//
//  Header.swift
//  ListExample
//
//  Created by Alexander Larsson on 2020-09-20.
//

import SwiftUI

struct EventListHeader: View {
    
    var text: String
    var isExpanded: Bool
    
    init(text: String, isExpanded: Bool) {
        self.text = text
        self.isExpanded = isExpanded
    }
    
    var body: some View {
        HStack {
            Image(systemName: self.isExpanded ? "chevron.down" : "chevron.right")
            Text(text).font(.headline)
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
        .padding()
        .background(Color.white)
    }
}

struct EventListHeader_Previews: PreviewProvider {
    static var previews: some View {
        EventListHeader(text: "Week 1", isExpanded: true)
    }
}
