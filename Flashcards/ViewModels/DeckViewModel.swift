import Foundation

class DeckViewModel<DeckType: DeckProtocol>: ObservableObject {
    @Published var decks: [DeckType] = []

    private let service: DeckService<InMemoryDeckRepository<DeckType, DeckType.SpecialCardType>>

    init(deckService: DeckService<InMemoryDeckRepository<DeckType, DeckType.SpecialCardType>>) {
        self.service = deckService
        decks = service.getAll()
    
    }
}

