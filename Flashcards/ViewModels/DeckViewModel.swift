import Foundation

class DeckViewModel: ObservableObject {
    @Published var decks: [Deck] = []

    private let service: DeckService

    init(service: DeckService) {
        self.service = service
        loadFlashcards()
    }

    private func loadFlashcards() {
        self.decks = service.getAll()
    }
    
    func addDeck(name: String) {
        let deck = Deck(name: name)
        service.add(deck: deck)
        decks.append(deck)
    }
    
}
