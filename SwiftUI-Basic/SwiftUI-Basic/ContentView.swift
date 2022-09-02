import SwiftUI

struct ContentView: View {
    
    @State
    private var click: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyABC()
                    MyABC()
                    MyABC()
                }
                .padding(click ? 60 : 30)
                .background(click ? Color.pink : Color.cyan)
                .onTapGesture {
                    withAnimation {
                        self.click.toggle()
                    }
                }
                
                NavigationLink(destination: MyNextView()) {
                    Text("다음!")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .background(Color.orange)
                }
                .padding(.all, 30)
                
            }
            
        }
        
    }
}


struct MyABC: View {
    var body: some View {
        VStack {
            Text("A")
                .fontWeight(.bold)
                .font(.system(size: 50))
            Text("B")
                .fontWeight(.bold)
                .font(.system(size: 50))
            Text("C")
                .fontWeight(.bold)
                .font(.system(size: 50))
        }
            .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
