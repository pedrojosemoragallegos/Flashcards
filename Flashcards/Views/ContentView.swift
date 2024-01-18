import SwiftUI

struct ContentView: View {
    @ObservedObject var deckViewModel: DeckViewModel
    
    var body: some View {
        VStack {
            List(deckViewModel.decks, id: \.id) { deck in
                VStack(alignment: .leading) {
                    Text("\(deck.name)")
                    Text("5")
                }
            }
            
            Button("Add Deck") {
                deckViewModel.addDeck(name: "DeckName")
            }
        }

    }
}

