import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello World!")
            }
            .navigationTitle("Friend Face")
        }
        
        .navigationViewStyle(.stack)
    }
}
