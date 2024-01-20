import Foundation

class DeckFlashcardsViewModel: ObservableObject {
    @Published var flashcards: [Flashcard]
    let deck: Deck
    private let deckService: DeckService
    private let flashcardService: FlashcardService

    init(deckService: DeckService, flashcardService: FlashcardService, deck: Deck) {
        self.deckService = deckService
        self.flashcardService = flashcardService
        self.deck = deck
        self.flashcards = deck.flashcards
    }
    
    func addFlashcard(question: String, answer: String) {
        let flashcard = Flashcard(question: question, answer: answer)
        flashcardService.add(flashcard: flashcard)
        deckService.addFlashcard(flashcard: flashcard, deck: deck)
        flashcards.append(flashcard)
    }

}
