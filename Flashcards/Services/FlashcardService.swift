import Foundation

class FlashcardService: ObservableObject {
    private let repository: any FlashcardRepositoryProtocol
    
    init(repository: any FlashcardRepositoryProtocol) {
        self.repository = repository
    }
    
    func add(flashcard: Flashcard) {
        repository.create(model: flashcard)
    }
    
    func add(flashcards: [Flashcard]) {
        flashcards.forEach { flashcard in
            add(flashcard: flashcard)
        }
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
