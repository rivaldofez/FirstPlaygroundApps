import SwiftUI
import Subsonic

struct ContentView: View {
    let names = ["Sophie", "Charlotte", "Andrian"]
    let columns = [
        GridItem(.adaptive(minimum: 250))
    ]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(names, id: \.self) { name in
                        
                        Button {
                            play(sound: "Sophie.mp3")
                        } label: {
                        Image(name)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(25)
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationTitle("Friend Face")
        }
        
        .navigationViewStyle(.stack)
    }
}
