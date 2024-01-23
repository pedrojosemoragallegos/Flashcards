import Foundation

class InMemoryFlashcardRepository: FlashcardRepositoryProtocol {
    typealias FlashcardType = Flashcard
    typealias ModelType = Flashcard

    func create(model: Flashcard) {
        
    }
    
    func create(models: [Flashcard]) {
        
    }
    
    func get(byID id: UUID) -> Flashcard? {
        return nil
    }
    
    func getAll() -> [Flashcard] {
        return []
    }
    
    func update(model: Flashcard) -> Bool {
        return false
    }
    
    func delete(model: Flashcard) -> Bool {
        return false 
    }

}
