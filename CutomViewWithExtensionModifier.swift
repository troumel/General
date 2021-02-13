

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyling() -> some View {
        self.modifier(Title())
    }
}



struct ContentView: View {
    @State private var useRedText = false
    var body: some View {
        
        Text("Hello World")
//            .modifier(Title()) --> instead use modifier from extension
            .titleStyling()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
