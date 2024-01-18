import SwiftUI

struct ContentView: View {
    @ObservedObject var deckViewModel: DeckViewModel
    @State private var selectedDeck: Deck?
    @State private var showingFlashcards = false
    
    var flashcardService: FlashcardService // TODO: find a better solution

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
                DeckFlashcardsView(viewModel: DeckFlashcardsViewModel(service: flashcardService, deck: selectedDeck), deck: selectedDeck)
            }
        }
    }
}

struct DeckFlashcardsView: View {
    @ObservedObject var viewModel: DeckFlashcardsViewModel
    var deck: Deck

    var body: some View {
        List(viewModel.flashcards, id: \.id) { flashcard in
            Text(flashcard.description)
        }
        .navigationTitle(deck.name)
    }
}
