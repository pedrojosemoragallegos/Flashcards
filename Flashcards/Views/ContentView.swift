import SwiftUI

struct ContentView: View {
    @Environment(\.serviceContainer) var serviceContainer: ServiceContainer
    @ObservedObject var viewModel: DeckViewModel

    var body: some View {
        NavigationView {
            List(viewModel.decks, id: \.id) { deck in
                HStack {
                    VStack(alignment: .leading) {
                        Text(deck.name)
                            .font(.headline)
                        Text(deck.algorithmName)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
            }
            .navigationTitle("Decks") 
        }
    }
}
