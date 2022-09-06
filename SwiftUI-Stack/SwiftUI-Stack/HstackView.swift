import SwiftUI

struct Hstack: View {
    var body: some View {
        HStack(alignment: .top) {
            
            Divider().opacity(0)
            
            Rectangle() //사각형
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 100, height: 100)
            
            Spacer()
        }
        .frame(width: 400, height: 300)
        .background(.indigo)
        
        
    }
}

struct Hstack_Previews: PreviewProvider {
    static var previews: some View {
        Hstack()
    }
}
