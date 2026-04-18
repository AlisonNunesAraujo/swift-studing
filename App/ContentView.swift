//
//  ContentView.swift
//  delivery
//
//  Created by Alison Araújo on 29/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [
                        Color(red: 0.08, green: 0.09, blue: 0.16),
                        Color(red: 0.16, green: 0.05, blue: 0.05),
                        Color.black
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 28) {
                        Nav()
                        heroSection
                        statsSection
                        OrderGridView()
                        bottomBanner
                    }
                    .padding(.bottom, 32)
                }
            }
            .toolbar(.hidden, for: .navigationBar)
        }
    }
    

    private var heroSection: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 34)
                .fill(
                    LinearGradient(
                        colors: [.white.opacity(0.16), .white.opacity(0.04)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )

            Circle()
                .fill(.orange.opacity(0.35))
                .frame(width: 180, height: 180)
                .blur(radius: 10)
                .offset(x: 120, y: -80)

            VStack(alignment: .leading, spacing: 14) {
                Text("CATALOGO 2026")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(.orange)

                Text("Seu próximo carro começa no impacto visual.")
                    .font(.system(size: 34, weight: .heavy, design: .rounded))
                    .foregroundStyle(.white)

                Text("Escolha entre máquinas esportivas, elétricos premium e modelos que fazem a entrada da garagem parecer cinema.")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.74))

                HStack(spacing: 12) {
                    Label("Ao vivo", systemImage: "sparkles")
                    Label("5 modelos", systemImage: "car.fill")
                }
                .font(.caption.weight(.semibold))
                .foregroundStyle(.white)
            }
            .padding(24)
        }
        .frame(height: 280)
        .padding(.horizontal, 20)
    }

    private var statsSection: some View {
        HStack(spacing: 14) {
            statCard(value: "320+", title: "cv de emocao")
            statCard(value: "2.9s", title: "0-100 km/h")
            statCard(value: "Elite", title: "selecao premium")
        }
        .padding(.horizontal, 20)
    }

    private func statCard(value: String, title: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(value)
                .font(.title2.weight(.bold))
                .foregroundStyle(.white)

            Text(title)
                .font(.caption)
                .foregroundStyle(.white.opacity(0.68))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 22)
                .fill(Color.white.opacity(0.08))
        )
    }

    private var bottomBanner: some View {
        HStack(spacing: 16) {
            Image(systemName: "steeringwheel.and.lock")
                .font(.system(size: 26))
                .foregroundStyle(.black)
                .padding(16)
                .background(.orange, in: RoundedRectangle(cornerRadius: 18))

            VStack(alignment: .leading, spacing: 6) {
                Text("Experiencia de piloto")
                    .font(.headline)
                    .foregroundStyle(.white)

                Text("Abra qualquer card para ver o detalhe do modelo e continuar a explorar a interface.")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.72))
            }

            Spacer(minLength: 0)
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 28)
                .fill(Color.white.opacity(0.08))
        )
        .padding(.horizontal, 20)
    }
}

#Preview {
    ContentView()
}
