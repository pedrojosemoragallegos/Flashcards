import Foundation

class LeitnerSystemDeckService: DeckServiceProtocol {
    typealias RepositoryType = InMemoryLeitnerSystemDeckRepository

    var repository: InMemoryLeitnerSystemDeckRepository

    init(repository: InMemoryLeitnerSystemDeckRepository) {
        self.repository = repository
    }
    
    func add(deck: LeitnerSystemDeck) {
        
    }
    
    func add(decks: [LeitnerSystemDeck]) {
        
    }
    
    func get(byId id: UUID) -> LeitnerSystemDeck? {
        return nil
    }
    
    func getAll() -> [LeitnerSystemDeck] {
        return []
    }
    
    func delete(deck: LeitnerSystemDeck) -> Bool {
        return false
    }
    
    func addFlashcard(flashcard: Flashcard, deck: LeitnerSystemDeck) {
        
    }
    
    func addFlashcards(flashcards: [Flashcard], deck: LeitnerSystemDeck) {
        
    }
    
}
