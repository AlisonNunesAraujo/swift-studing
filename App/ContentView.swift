//
//  ContentView.swift
//  delivery
//
//  Created by Alison Araújo on 29/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Nav()
                ScrollView(.vertical, showsIndicators: false) {
                    OrderGridView()
                }
            }
        }
    }
}
#Preview {
    ContentView()
    
}
