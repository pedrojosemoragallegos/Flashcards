import Foundation

class DeckFlashcardsViewModel: ObservableObject {
    @Published var flashcards: [Flashcard] = []
    
    private let deck: Deck
    private let flashcardService: FlashcardService

    init(
        flashcardService: FlashcardService,
        deck: Deck
    ) {
        self.deck = deck
        self.flashcardService = flashcardService
        loadFlashcards()
    }
    
    private func loadFlashcards() {
        for flashcardID in Array(deck.flashcards) {
            let flashcard = flashcardService.get(byID: flashcardID)
            flashcards.append(flashcard!)
        }
    }
    
    func addToDeck() {
        
    }
    
}

