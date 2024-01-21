import SwiftUI

struct ContentView: View {
    @Environment(\.serviceContainer) var serviceContainer: ServiceContainer
    @ObservedObject var viewModel: DeckViewModel

    var body: some View {
        NavigationView {
            List(viewModel.decks, id: \.id) { deck in
                NavigationLink(destination: DeckFlashcardsView(viewModel: DeckFlashcardsViewModel(deckService: serviceContainer.deckService, deck: deck))) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(deck.name)
                                .font(.headline)
                            Text(deck.algorithmName)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Text("\(deck.specialCards.count)")
                            .font(.subheadline) 
                    }
                }
            }
            .navigationBarTitle("Decks")
        }
    }
}
