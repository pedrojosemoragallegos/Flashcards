import Foundation

class DeckViewModel: ObservableObject {
    @Published var decks: [Deck] = []

    private let deckService: DeckService

    init(deckService: DeckService) {
        self.deckService = deckService
        decks = deckService.getAll()
    }
    
    func addDeck(name: String) {
        let deck = Deck(name: name)
        deckService.add(deck: deck)
        decks.append(deck)
    }
    
}
