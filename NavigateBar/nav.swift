//
//  nav.swift
//  delivery
//
//  Created by Alison Araújo on 29/01/26.
//

import SwiftUI

struct Nav: View {
    var body: some View {
        HStack {
            Spacer()
            Button("Rua Minas Gerais"){
                
            }.font(.headline).foregroundColor(.black)
            
            Spacer()
            NavigationLink(destination: noty(),
            label: {
                Image(systemName: "bell.badge")
                    
                 
            })
            
            
        }
       
    }
}

#Preview {
    Nav()
       
}
