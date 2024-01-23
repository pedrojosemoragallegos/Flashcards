import Foundation

class AnkiAlgorithmDeckService<Repository: DeckRepositoryProtocol>: DeckServiceProtocol {
    typealias RepositoryType = Repository
    
    var repository: Repository
    
    init(repository: RepositoryType) {
        self.repository = repository
    }
    
    func add(deck: Repository.ModelType) {
        repository.create(model: deck)
    }
    
    func add(decks: [Repository.ModelType]) {
        repository.create(models: decks)
    }
    
    func get(byId id: UUID) -> Repository.ModelType? {
        return repository.get(byID: id)
    }
    
    func getAll() -> [Repository.ModelType] {
        return repository.getAll()
    }
    
    func delete(deck: Repository.ModelType) -> Bool {
        return repository.delete(model: deck)
    }
    
    func addFlashcard(flashcard: Repository.SpecialCard, deck: Repository.ModelType) {
        repository.addFlashcard(specialCard: flashcard, deck: deck)
    }
    
    func addFlashcards(flashcards: [Repository.SpecialCard], deck: Repository.ModelType) {
        for flashcard in flashcards {
            repository.addFlashcard(specialCard: flashcard, deck: deck)
        }
    }
    
}
