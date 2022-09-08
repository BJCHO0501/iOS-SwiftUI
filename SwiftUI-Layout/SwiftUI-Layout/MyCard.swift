import SwiftUI

struct MyCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            Rectangle()
                .frame(height: 0)
            
            Text("제목제목")
                .font(.system(size: 24))
                .fontWeight(.bold)
            
            Text("부제목")
                .font(.system(size: 17))
                .fontWeight(.light)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
                .padding(.vertical, 8)
            
            HStack(alignment: .center) {
                Image("user1")
                    .resizable()
                        .frame(width: 25, height: 25)
                        .clipShape(
                            Circle()
                        )
                        .overlay(
                            Circle().stroke(lineWidth: 1)
                                .foregroundColor(.gray)
                        )
                        
                Text("사람김")
                    .font(.system(size: 16))
                
                Spacer()
                
                Text("1시간 전")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 3, x: 1, y: 1)
        .onTapGesture(count: 1) {
            print("tap")
        }
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard()
    }
}
