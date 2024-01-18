import SwiftUI

struct DeckFlashcardsView: View {
    @Environment(\.serviceContainer) var serviceContainer: ServiceContainer
    var deck: Deck
    
    private var deckFlashcardsViewModel: DeckFlashcardsViewModel {
        DeckFlashcardsViewModel(flashcardService: serviceContainer.flashCardService, deck: deck)
    }

    var body: some View {
        List(deckFlashcardsViewModel.flashcards, id: \.id) { flashcard in
            HStack {
                Text("Question: \(flashcard.question)")
                Text("Answer: \(flashcard.answer)")
            }
        }
        .navigationTitle(deck.name)
    }
}
