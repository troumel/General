import SwiftUI
import WebKit


struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack() {
                WebView(request: URLRequest(url: URL(string: "https://www.google.gr")!))
                
            }.navigationBarTitle(Text("My Web View"))
        }
    }
}


struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView(frame: .zero)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    } 
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}