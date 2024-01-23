import Foundation

class AnkiAlgorithmDeckService: DeckServiceProtocol {
    typealias RepositoryType = InMemoryAnkiAlgorithmRepository

    var repository: InMemoryAnkiAlgorithmRepository
    
    init(repository: InMemoryAnkiAlgorithmRepository) {
        self.repository = repository
    }
    
    func add(deck: AnkiAlgorithmDeck) {
        
    }
    
    func add(decks: [AnkiAlgorithmDeck]) {
        
    }
    
    func get(byId id: UUID) -> AnkiAlgorithmDeck? {
        return nil
    }
    
    func getAll() -> [AnkiAlgorithmDeck] {
        return []
    }
    
    func delete(deck: AnkiAlgorithmDeck) -> Bool {
        return false
    }
    
    func addFlashcard(flashcard: Flashcard, deck: AnkiAlgorithmDeck) {
        
    }
    
    func addFlashcards(flashcards: [Flashcard], deck: AnkiAlgorithmDeck) {
        
    }

}
