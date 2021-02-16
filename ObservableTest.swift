import SwiftUI

struct SecondView: View {
    var name: String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("This is the second view \(name)")
        Button("dismiss me!") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

class User: ObservableObject {
   @Published var firstName = "Teo"
   @Published var lastName = "Roum"
}

struct ContentView: View {
    
    @ObservedObject var user = User()
    @State private var showingSheet = false
    
    var body: some View {
        Text("Your name is \(user.firstName) \(user.lastName)")
        TextField("First name", text: $user.firstName)
        TextField("Last Name", text: $user.lastName)
        
        Button("Show next view(sheet)") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet, content: {
            SecondView(name: "Teo")
        })
    }
}
