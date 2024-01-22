import Foundation

class DeckViewModel<DeckType: DeckProtocol>: ObservableObject {
    @Published var decks: [DeckType] = []

    private let service: GenericDeckService<DeckType, InMemoryDeckRepository<DeckType, DeckType.SpecialCardType>>

    init(deckService: GenericDeckService<DeckType, InMemoryDeckRepository<DeckType, DeckType.SpecialCardType>>) {
        self.service = deckService
        decks = service.getAll()
    }
}

