import Foundation

class InMemoryLeitnerSystemDeckRepository: DeckRepositoryProtocol {
    private var decks: [UUID: LeitnerSystemDeck] = [:]

    typealias SpecialCard = LeitnerSystemCard
    typealias ModelType = LeitnerSystemDeck
    
    func create(model: LeitnerSystemDeck) {
        decks[model.id] = model
    }
    
    func create(models: [LeitnerSystemDeck]) {
        for model in models {
            decks[model.id] = model
        }
    }
    
    func get(byID id: UUID) -> LeitnerSystemDeck? {
        return decks[id]
    }
    
    func getAll() -> [LeitnerSystemDeck] {
        return Array(decks.values)
    }
    
    func update(model: LeitnerSystemDeck) -> Bool {
        guard let _ = decks[model.id] else {
            return false
        }
        decks[model.id] = model
        return true
    }
    
    func delete(model: LeitnerSystemDeck) -> Bool {
        guard let _ = decks[model.id] else {
            return false
        }
        decks.removeValue(forKey: model.id)
        return true
    }
    
    func addFlashcard(specialCard: LeitnerSystemCard, deck: LeitnerSystemDeck) {
        deck.specialCards.append(specialCard)
    }
    

}
