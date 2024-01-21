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
    
    func updatePerformance(flashcard: SpecialCardProtocol, performance: PerformanceProtocol) {
        if let leitnerCard = flashcard as? LeitnerSystemCard {
            LeitnerSystem.updateCard(specialCard: leitnerCard, performance: performance as! LeitnerSystem.PerformanceProtocol)
        } else if let ankiCard = flashcard as? AnkiAlgorithmCard {
            AnkiAlgorithm.updateCard(specialCard: ankiCard, performance: performance as! AnkiAlgorithm.PerformanceProtocol)
        } else {
            fatalError("Unknown algorithm type")
        }
    }
    
}
