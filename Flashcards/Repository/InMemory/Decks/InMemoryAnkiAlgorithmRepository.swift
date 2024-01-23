import Foundation

class InMemoryAnkiAlgorithmRepository: DeckRepositoryProtocol {
    typealias FlashcardType = Flashcard
    typealias ModelType = AnkiAlgorithmDeck
    
    func addFlashcard(flashcard: Flashcard, deck: AnkiAlgorithmDeck) {
        
    }
    
    func create(model: AnkiAlgorithmDeck) {
        
    }
    
    func create(models: [AnkiAlgorithmDeck]) {
        
    }
    
    func get(byID id: UUID) -> AnkiAlgorithmDeck? {
        return nil
    }
    
    func getAll() -> [AnkiAlgorithmDeck] {
        return []
    }
    
    func update(model: AnkiAlgorithmDeck) -> Bool {
        return false
    }
    
    func delete(model: AnkiAlgorithmDeck) -> Bool {
        return false
    }
    
}
