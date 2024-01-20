import SwiftUI

struct ContentView: View {
    @Environment(\.serviceContainer) var serviceContainer: ServiceContainer
    @ObservedObject var viewModel: DeckViewModel

    var body: some View {
        NavigationView {
            List(viewModel.decks, id: \.id) { deck in
                NavigationLink(destination: DeckFlashcardsView(viewModel: DeckFlashcardsViewModel(deckService: serviceContainer.deckService, flashcardService: serviceContainer.flashCardService, deck: deck))) {
                    HStack {
                        Text("\(deck.name)")
                        Spacer()
                        Text("\(deck.flashcards.count)")
                    }
                }
            }
            .navigationBarTitle("Decks")
        }
    }
}
