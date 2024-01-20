import Foundation

class InMemoryFlashcardRepository: FlashcardRepositoryProtocol {
    typealias Model = Flashcard
    
    var flashcards = [UUID: Model]()

    func create(model flashcard: Model) {
        if flashcard.id == nil { flashcard.id = UUID() }
        flashcards[flashcard.id!] = flashcard
    }
    
    func get(byID id: UUID) -> Model? {
        return flashcards[id]
    }
    
    func getAll() -> [Flashcard] {
        return Array(flashcards.values)
    }
    
    func update(model flashcard: Model) -> Bool {
        if flashcard.id != nil {
            flashcards[flashcard.id!] = flashcard
            return true
        } else {
            fatalError("Implement correct error, but you can't update a flashcard never stored.")
        }
    }
    
    func delete(model flashcard: Model) -> Bool {
        if flashcard.id != nil {
            flashcards.removeValue(forKey: flashcard.id!)
            return true
        } else {
            fatalError("Implement correct error, but you can't delete a flashcard never stored.")
        }
    }
    
    func addDeck(deck: Deck, flashcard: Flashcard) {
        if deck.id != nil, flashcard.id != nil {
            flashcard.decks.append(deck)
            deck.flashcards.append(flashcard)
        } else {
            fatalError("Implement correct error, but you can't add items never stored.")
        }
    }
    
}
