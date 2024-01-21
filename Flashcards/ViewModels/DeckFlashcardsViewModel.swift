import Foundation

class DeckFlashcardsViewModel: ObservableObject {
    @Published var specialCards: [SpecialCardProtocol]
    let deck: DeckProtocol
    private let deckService: DeckService

    init(deckService: DeckService, deck: DeckProtocol) {
        self.deckService = deckService
        self.deck = deck
        self.specialCards = deck.specialCards
    }

}
