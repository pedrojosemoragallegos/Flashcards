import Foundation

class DeckViewModel: ObservableObject {
    @Published var decks: [DeckProtocol] = []

    private let service: DeckService

    init(deckService: DeckService) {
        self.service = deckService
        decks = service.getAll()
    }
    
}
