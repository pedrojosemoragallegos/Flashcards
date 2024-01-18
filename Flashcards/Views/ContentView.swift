import SwiftUI

struct ContentView: View {
    @ObservedObject var deckViewModel: DeckViewModel
    @State private var selectedDeck: Deck?
    @State private var showingFlashcards = false

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
                FlashcardsView(deck: selectedDeck)
            }
        }
    }
}

struct FlashcardsView: View {
    var deck: Deck

    var body: some View {
        List(Array(deck.flashcards), id: \.self) { flashcardID in
            Text("Flashcard \(flashcardID)")
        }
        .navigationTitle(deck.name)
    }
}

