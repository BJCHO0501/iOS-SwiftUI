import SwiftUI
import WebKit

struct MyWebview: UIViewRepresentable {
    
    
    var baceURL: String
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: baceURL) else { return WKWebView() }
        
        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(baceURL: "https://www.naver.com")
    }
}
