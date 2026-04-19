//
//  notification.swift
//  delivery
//
//  Created by Alison Araújo on 19/04/26.
//

import SwiftUI

struct notification: View {
        
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.07, green: 0.08, blue: 0.15),
                    Color(red: 0.13, green: 0.05, blue: 0.05),
                    Color.black
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 24) {
                    headerSection
                    highlightCard
                    notificationList
                }
                .padding(20)
            }
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button{
                    presentationMode.wrappedValue.dismiss()
                }label: {
                        Image(systemName: "xmark")
                        Text("Voltar")
                        .foregroundStyle(.white)
                }
                Text("Central")
                    .font(.headline)
                    .foregroundStyle(.white)
            }
            
        }
        
    }
    
    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Notificacoes")
                .font(.system(size: 34, weight: .heavy, design: .rounded))
                .foregroundStyle(.white)
            
            Text("Aqui voce organiza os avisos do app em blocos simples: titulo, destaque principal e lista de cards.")
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.72))
        }
        .padding(.top, 8)
    }
    
    private var highlightCard: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 30)
                .fill(
                    LinearGradient(
                        colors: [.orange, .red],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            
            Circle()
                .fill(.white.opacity(0.14))
                .frame(width: 170, height: 170)
                .offset(x: 130, y: -70)
            
            VStack(alignment: .leading, spacing: 14) {
                Label("Alerta prioritario", systemImage: "bell.badge.fill")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(.white)
                
                Text("Seu showroom recebeu 3 novas atualizacoes hoje.")
                    .font(.system(size: 28, weight: .heavy, design: .rounded))
                    .foregroundStyle(.white)
                
                Text("Use esse bloco maior para a mensagem mais importante da tela.")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.84))
            }
            .padding(24)
        }
        .frame(height: 220)
    }
    
    private var notificationList: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Hoje")
                .font(.title3.weight(.bold))
                .foregroundStyle(.white)
            
            notificationCard(
                icon: "car.fill",
                title: "Novos modelos adicionados",
                message: "Dois carros esportivos entraram na vitrine principal.",
                time: "Agora"
            )
            
            notificationCard(
                icon: "tag.fill",
                title: "Preco atualizado",
                message: "A secao premium recebeu novos valores para exibicao.",
                time: "14 min"
            )
            
            notificationCard(
                icon: "paintpalette.fill",
                title: "Layout revisado",
                message: "Os cards agora usam mais contraste e uma hierarquia visual melhor.",
                time: "1 h"
            )
        }
    }
    
    private func notificationCard(icon: String, title: String, message: String, time: String) -> some View {
        HStack(alignment: .top, spacing: 14) {
            Image(systemName: icon)
                .font(.headline)
                .foregroundStyle(.orange)
                .frame(width: 44, height: 44)
                .background(Color.white.opacity(0.08), in: RoundedRectangle(cornerRadius: 16))
            
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Text(title)
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Text(time)
                        .font(.caption)
                        .foregroundStyle(.white.opacity(0.5))
                }
                
                Text(message)
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.72))
            }
        }
        .padding(18)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.white.opacity(0.08))
        )
        .overlay {
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.white.opacity(0.06), lineWidth: 1)
        }
    }
}

#Preview {
    NavigationStack {
        notification()
    }
}
