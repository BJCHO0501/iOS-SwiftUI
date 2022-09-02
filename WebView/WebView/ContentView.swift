import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                HStack {
                    Spacer()
                    NavigationLink(destination: MyWebview(baceURL: "https://www.naver.com")) {
                        Text("네이버")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(30)
                            .background(Color.green)
                            .cornerRadius(8)
                    }
                    Spacer()
                    NavigationLink(destination: MyWebview(baceURL: "https://www.dam.com")) {
                        Text("다음")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(30)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    Spacer()
                    NavigationLink(destination: MyWebview(baceURL: "https://www.kakao.com")) {
                        Text("카카오")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(30)
                            .background(Color.yellow)
                            .cornerRadius(8)
                    }
                    Spacer()
                }
                
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
