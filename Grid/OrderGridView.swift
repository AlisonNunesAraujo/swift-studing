import SwiftUI

struct OrderGridView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("Modelos para sonhar alto")
                .font(.title2.weight(.bold))
                .foregroundStyle(.white)
                .padding(.horizontal, 20)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 18) {
                    ForEach(OrderList) { item in
                        NavigationLink {
                            noty(order: item)
                        } label: {
                            VStack(alignment: .leading, spacing: 14) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 22)
                                        .fill(
                                            LinearGradient(
                                                colors: [.orange, .red],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                    
                                    Image(systemName: item.image)
                                        .font(.system(size: 42))
                                        .foregroundStyle(.white)
                                }
                                .frame(height: 150)

                                Text(item.category.uppercased())
                                    .font(.caption.weight(.semibold))
                                    .foregroundStyle(.orange)

                                Text(item.name)
                                    .font(.title3.weight(.bold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.leading)

                                Text(item.price)
                                    .font(.subheadline.weight(.medium))
                                    .foregroundStyle(.white.opacity(0.72))
                            }
                            .padding(18)
                            .frame(width: 260, height: 290, alignment: .topLeading)
                            .background(
                                RoundedRectangle(cornerRadius: 28)
                                    .fill(Color.white.opacity(0.08))
                            )
                            .overlay {
                                RoundedRectangle(cornerRadius: 28)
                                    .stroke(Color.white.opacity(0.08), lineWidth: 1)
                            }
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    OrderGridView()
}
