import Foundation

class GenericDeckService<Deck: DeckProtocol, Repository: DeckRepositoryProtocol> where Repository.ModelType == Deck {
    private let repository: Repository
    
    init(repository: Repository) {
        self.repository = repository
    }
    
    func add(deck: Repository.ModelType) {
        repository.create(model: deck)
    }
    
    func add(decks: [Repository.ModelType]) {
        decks.forEach { deck in
            add(deck: deck)
        }
    }
    
    func get(byID id: UUID) -> Repository.ModelType? {
        return repository.get(byID: id)
    }
    
    func getAll() -> [Repository.ModelType] {
        return repository.getAll()
    }
    
    func update(deck: Repository.ModelType) -> Bool {
        return repository.update(model: deck)
    }
    
    func delete(deck: Repository.ModelType) -> Bool {
        return repository.delete(model: deck)
    }
      
    func addFlashcard(flashcard: Flashcard, deck: Repository.ModelType) {
        let specialCard = Repository.ModelType.createSpecialCard(flashcard: flashcard)
        repository.addSpecialCard(specialCard: specialCard as! Repository.CardType, deck: deck)
    }
    
    func addFlashcards(flashcards: [Flashcard], deck: Repository.ModelType) {
        flashcards.forEach { flashcard in
            addFlashcard(flashcard: flashcard, deck: deck)
        }
    }
}
