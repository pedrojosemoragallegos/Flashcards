import Foundation

class FlashcardService: FlashcardServiceProtocol {
    typealias RepositoryType = InMemoryFlashcardRepository

    var repository: InMemoryFlashcardRepository
    
    init(repository: InMemoryFlashcardRepository) {
        self.repository = repository
    }
    
    func add(flashcard: Flashcard) {
        
    }
    
    func add(flashcards: [Flashcard]) {
        
    }
    
    func get(byID id: UUID) -> Flashcard? {
        return nil
    }
    
    func getAll() -> [Flashcard] {
        return []
    }
    
    func update(flashcard: Flashcard) -> Bool {
        return false
    }
    
    func delete(flashcard: Flashcard) -> Bool {
            return false
    }

}
