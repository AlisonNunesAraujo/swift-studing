//
//  nav.swift
//  delivery
//
//  Created by Alison Araújo on 29/01/26.
//

import SwiftUI

struct Nav: View {
    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 4) {
                
                
                Text("Carros em destaque")
                    .font(.title3.weight(.semibold))
                    .foregroundStyle(.white)
                    
            }

            Spacer()

            NavigationLink(destination: notification()) {
                ZStack {
                    Circle()
                        .fill(.white.opacity(0.18))
                        .frame(width: 42, height: 42)

                    Image(systemName: "bell.badge.fill")
                        .font(.headline)
                        .foregroundStyle(.white)
                }
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 8)
    }
}

#Preview {
    Nav()
}
