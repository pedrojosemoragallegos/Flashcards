import Foundation

class InMemoryAnkiAlgorithmRepository: DeckRepositoryProtocol {
    private var decks: [UUID: AnkiAlgorithmDeck] = [:]

    typealias SpecialCard = AnkiAlgorithmCard
    typealias ModelType = AnkiAlgorithmDeck
    
    func create(model: AnkiAlgorithmDeck) {
        decks[model.id] = model
    }
    
    func create(models: [AnkiAlgorithmDeck]) {
        for model in models {
            decks[model.id] = model
        }
    }
    
    func get(byID id: UUID) -> AnkiAlgorithmDeck? {
        return decks[id]
    }
    
    func getAll() -> [AnkiAlgorithmDeck] {
        return Array(decks.values)
    }
    
    func update(model: AnkiAlgorithmDeck) -> Bool {
        guard decks[model.id] != nil else {
            return false
        }
        decks[model.id] = model
        return true
    }
    
    func delete(model: AnkiAlgorithmDeck) -> Bool {
        guard decks[model.id] != nil else {
            return false
        }
        decks.removeValue(forKey: model.id)
        return true
    }
    
    func addFlashcard(specialCard: AnkiAlgorithmCard, deck: AnkiAlgorithmDeck) {
        deck.specialCards.append(specialCard)
    }
}
