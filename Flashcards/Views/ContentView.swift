import SwiftUI

struct ContentView: View {
    @Environment(\.serviceContainer) var serviceContainer: ServiceContainer
    @State private var selectedDeck: Deck?
    @State private var showingFlashcards = false

    private var deckViewModel: DeckViewModel {
        DeckViewModel(deckService: serviceContainer.deckService)
    }

    var body: some View {
        VStack {
            List(deckViewModel.decks, id: \.id) { deck in
                HStack {
                    Text("\(deck.name)")
                    Divider()
                    Text("Num. Flashcards \(deck.flashcards.count)")
                }
                .onTapGesture {
                    self.selectedDeck = deck
                    self.showingFlashcards = true
                }
            }

            Button("Add Mockdata") {
                deckViewModel.addDeck(name: "DeckName")
            }
        }
        .sheet(isPresented: $showingFlashcards) {
            if let selectedDeck = selectedDeck {
                DeckFlashcardsView(deck: selectedDeck)
            }
        }
    }
}
