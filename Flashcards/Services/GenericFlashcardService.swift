import Foundation

class GenericFlashcardService<Repository: FlashcardRepositoryProtocol> where Repository.ModelType: FlashcardProtocol {

    private let repository: Repository

    init(repository: Repository) {
        self.repository = repository
    }

    func add(flashcard: Repository.ModelType) {
        repository.create(model: flashcard)
    }

    func add(flashcards: [Repository.ModelType]) {
        flashcards.forEach { flashcard in
            add(flashcard: flashcard)
        }
    }

    func get(byID id: UUID) -> Repository.ModelType? {
        return repository.get(byID: id)
    }

    func getAll() -> [Repository.ModelType] {
        return repository.getAll()
    }

    func update(flashcard: Repository.ModelType) -> Bool {
        return repository.update(model: flashcard)
    }

    func delete(flashcard: Repository.ModelType) -> Bool {
        return repository.delete(model: flashcard)
    }

    func updatePerformance<Card: SpecialCardProtocol>(card: Card, performance: Card.PerformanceType) {
        card.updatePerformance(performance: performance)
    }
}
