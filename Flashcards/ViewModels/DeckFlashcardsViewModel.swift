import Foundation

class DeckFlashcardsViewModel: ObservableObject {
    @Published var flashcards: [Flashcard]
    
    private let service: FlashcardService

    init(service: FlashcardService, deck: Deck) {
        self.service = service
        self.flashcards = []
        self.flashcards = loadFlashcards(flashcardIDs: Array(deck.flashcards))
    }
    
    private func loadFlashcards(flashcardIDs: [Int]) -> [Flashcard] {
        var temp: [Flashcard] = []
        for flashcardID in flashcardIDs {
            let flashcard = service.get(byID: flashcardID)
            temp.append(flashcard!)
        }
        return temp
    }
    
    func addToDeck() {
        
    }
    
}
