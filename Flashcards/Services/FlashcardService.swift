import Foundation

class FlashcardService: ObservableObject {
    private let repository: any FlashcardRepositoryProtocol
    
    init(repository: any FlashcardRepositoryProtocol) {
        self.repository = repository
    }
    
    func add(flashcard: Flashcard) {
        repository.create(model: flashcard)
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
     
    func addDeck(deck: Deck, flashcard: Flashcard) {
        repository.addDeck(deck: deck, flashcard: flashcard)
    }
    
}
