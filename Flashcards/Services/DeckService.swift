import Foundation

class DeckService: ObservableObject {
    private let repository: any DeckRepositoryProtocol
    
    init(repository: any DeckRepositoryProtocol) {
        self.repository = repository
    }
    
    func add(deck: Deck) {
        repository.create(model: deck)
    }
    
    func get(byID id: UUID) -> Deck? {
        return repository.get(byID: id)
    }
    
    func getAll() -> [Deck] {
        return repository.getAll()
    }
    
    func update(deck: Deck) -> Bool {
        return repository.update(model: deck)
    }
    
    func delete(deck: Deck) -> Bool {
        return repository.delete(model: deck)
    }
      
    func addFlashcard(flashcard: Flashcard, deck: Deck) {
        repository.addFlashcard(flashcard: flashcard, deck: deck)
    }
}
