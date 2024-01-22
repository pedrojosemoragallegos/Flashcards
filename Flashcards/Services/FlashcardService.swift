import Foundation

class FlashcardService<Repository: FlashcardRepositoryProtocol>: ObservableObject where Repository.ModelType == Flashcard {
    private let repository: Repository
    
    init(repository: Repository) {
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
    
    func updatePerformance<Card: SpecialCardProtocol>(card: Card, performance: Card.PerformanceType) {
        card.updatePerformance(performance: performance)
    }
    
}
