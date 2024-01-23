import Foundation

class FlashcardService: FlashcardServiceProtocol {
    typealias RepositoryType = InMemoryFlashcardRepository

    var repository: InMemoryFlashcardRepository
    
    init(repository: InMemoryFlashcardRepository) {
        self.repository = repository
    }
    
    func add(flashcard: Flashcard) {
        repository.create(model: flashcard)
    }
    
    func add(flashcards: [Flashcard]) {
        repository.create(models: flashcards)
    }
    
    func get(byID id: UUID) -> Flashcard? {
        return repository.get(byID: id)
    }
    
    func getAll() -> [Flashcard] {
        return repository.getAll()
    }
    
    func update(flashcard: Flashcard) -> Bool {
        return repository.update(model: flashcard)
    }
    
    func delete(flashcard: Flashcard) -> Bool {
        return repository.delete(model: flashcard)
    }
}
