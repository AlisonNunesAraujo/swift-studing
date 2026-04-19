//
//  noty.swift
//  delivery
//
//  Created by Alison Araújo on 06/04/26.
//

import SwiftUI

struct datail: View {
    let order: OrderType
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.08, green: 0.09, blue: 0.16),
                    Color.black
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 24) {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            LinearGradient(
                                colors: [.orange, .red],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )

                    Image(systemName: order.image)
                        .font(.system(size: 70))
                        .foregroundStyle(.white)
                }
                .frame(height: 260)

                Text(order.category.uppercased())
                    .font(.caption.weight(.bold))
                    .foregroundStyle(.orange)

                Text(order.name)
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)

                Text(order.price)
                    .font(.title3.weight(.medium))
                    .foregroundStyle(.white.opacity(0.75))

                Text("Uma tela simples de detalhe para você estudar navegação, espaçamento, tipografia e blocos visuais no SwiftUI.")
                    .font(.body)
                    .foregroundStyle(.white.opacity(0.72))

                Spacer()
            }
            .padding(20)
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Voltar")
                }
            }
        }
    }
        
}


#Preview {
    datail(order: OrderList[0])
}
