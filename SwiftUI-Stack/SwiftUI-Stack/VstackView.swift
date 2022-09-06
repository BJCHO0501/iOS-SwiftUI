import SwiftUI

struct Vstack: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Divider().opacity(0) //몰기?
            
            Text("Hello")
                .font(.system(size: 50, design: .serif))
                .fontWeight(.semibold)
            
            Rectangle() //사각형
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 100, height: 100)
            
            Spacer() //공백 추가? 정도
        }
        .padding()
    }
}

struct Vstack_Previews: PreviewProvider {
    static var previews: some View {
        Vstack()
    }
}
