import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Click and check console!")
                }
            }
        }
        .onAppear {
            print("contentview appeared")
        }
        .onDisappear {
            print("content view disappeared")
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("second view")
        }
        .onAppear {
            print("detailview appeared")
            
        }
        .onDisappear {
            print("detailview disappeared")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}