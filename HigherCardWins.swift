import SwiftUI

struct ContentView: View {
    
    @State private var playerScore = 0
    @State private var cpuScore = 0
    @State private var randomCardPlayer = 0
    @State private var randomCardCPU = 0
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(returnCard(randomCardNumber: randomCardPlayer))
                    Spacer()
                    Image(returnCard(randomCardNumber: randomCardCPU))
                    Spacer()
                } // end of cards
                Spacer()
                Button(action: {
                    randomCardPlayer = Int.random(in: 2 ..< 15)
                    randomCardCPU = Int.random(in: 2 ..< 15)
                    calculateScore()
                    
                }, label: {
                    Image("dealbutton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150, alignment: .center)
                })
                Spacer()
                HStack {
                    Spacer()
                    Spacer()
                    VStack {
                        Text("Player:")
                            .padding()
                        Text("\(playerScore)")
                    }
                    .foregroundColor(.white)
                    .font(Font.system(size: 30))
                    Spacer()
                    VStack {
                        Text("Computer:")
                            .padding()
                        Text("\(cpuScore)")
                    }
                    .foregroundColor(.white)
                    .font(Font.system(size: 30))
                    Spacer()
                }
                Spacer()
                
            } //end of vstack
            
            
        }// end of ZStack
    }
    func returnCard(randomCardNumber: Int) -> String {
        if randomCardPlayer == 0 || randomCardCPU == 0 {
            return "back"
        }
        else {
            return "card\(randomCardNumber)"
        }
    }
    
    func calculateScore() {
        if randomCardPlayer > randomCardCPU {
            
            playerScore += 1
            
        } else if randomCardPlayer == randomCardCPU {
            
            playerScore += 1
            cpuScore += 1
            
        } else {
            
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}