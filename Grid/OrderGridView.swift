import SwiftUI

struct OrderGridView: View {
    @State var name = "Alison"
    
    var body: some View {
        VStack {

            ScrollView(.horizontal) {

                LazyHGrid(
                    rows: [GridItem()],
                    spacing: 15
                ) {

                    ForEach(OrderList) { item in
                        
                        VStack() {

                          NavigationLink() {
                                fire()
                            } label: {
                                Text(item.name)
                                
                            }
                                
                        }
                        .frame(width: 130, height: 160)
                        .background(Color(.systemGray6))
                        .cornerRadius(16)
                        .foregroundStyle(.black)

                       
                    }
                }
                .padding()
            }

           
        }
    }
}

#Preview {
    OrderGridView()
}
