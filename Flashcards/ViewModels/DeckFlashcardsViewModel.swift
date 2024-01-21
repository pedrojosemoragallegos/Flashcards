import Foundation

class DeckFlashcardsViewModel: ObservableObject {
    @Published var specialCards: [SpecialCardProtocol]
    let deck: DeckProtocol
    private let deckService: DeckService
    private let flashcardService: FlashcardService

    init(deckService: DeckService, flashcardService: FlashcardService, deck: DeckProtocol) {
        self.deckService = deckService
        self.flashcardService = flashcardService
        self.deck = deck
        self.specialCards = deck.specialCards
    }

    func update(flashacard: SpecialCardProtocol, performance: PerformanceProtocol) {
        flashcardService.updatePerformance(flashcard: flashacard, performance: performance)
    }
    
}
