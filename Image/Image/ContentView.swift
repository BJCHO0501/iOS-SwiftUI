import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleImageView()
                .padding(10)
            
            Text("Happy :)")
                .font(.system(size: 70, design: .rounded))
                .fontWeight(.semibold)
                .padding(.top, 50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
