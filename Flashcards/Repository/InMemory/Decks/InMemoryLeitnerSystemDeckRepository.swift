import Foundation

class InMemoryLeitnerSystemDeckRepository: DeckRepositoryProtocol {
    typealias FlashcardType = Flashcard
    typealias ModelType = LeitnerSystemDeck
    
    func addFlashcard(flashcard: Flashcard, deck: LeitnerSystemDeck) {
        
    }
    
    func create(model: LeitnerSystemDeck) {
        
    }
    
    func create(models: [LeitnerSystemDeck]) {
        
    }
    
    func get(byID id: UUID) -> LeitnerSystemDeck? {
        return nil
    }
    
    func getAll() -> [LeitnerSystemDeck] {
        return []
    }
    
    func update(model: LeitnerSystemDeck) -> Bool {
        return false
    }
    
    func delete(model: LeitnerSystemDeck) -> Bool {
        return false
    }
    
}
