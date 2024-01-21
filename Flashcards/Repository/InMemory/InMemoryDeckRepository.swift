import Foundation

class InMemoryDeckRepository: DeckRepositoryProtocol {
    typealias Model = DeckProtocol
    
    var decks = [UUID: Model]()

    func create(model deck: Model) {
        if deck.id == nil { deck.id = UUID() }
        decks[deck.id!] = deck
    }
    
    func create(models: [DeckProtocol]) {
        models.forEach { model in
            create(model: model)
        }
    }
    
    func get(byID id: UUID) -> Model? {
        return decks[id]
    }
    
    func getAll() -> [DeckProtocol] {
        return Array(decks.values)
    }
    
    func update(model deck: Model) -> Bool {
        if deck.id != nil {
            decks[deck.id!] = deck
            return true
        } else {
            fatalError("Implement correct error, but you can't update a deck never stored")
        }
    }
    
    func delete(model deck: Model) -> Bool {
        if deck.id != nil {
            decks.removeValue(forKey: deck.id!)
            return true
        } else {
            fatalError("Implement correct error, but you can't delete a deck never stored")
        }
    }
    
    func addSpecialCard(specialCard: SpecialCardProtocol, deck: DeckProtocol) {
        if specialCard.flashcard.id != nil, deck.id != nil {
            deck.specialCards.append(specialCard)
            specialCard.flashcard.decks.append(deck)
        } else {
            fatalError("Implement correct error, but you can't add items never stored.")
        }
    }
    
    func addSpecialCards(specialCards: [SpecialCardProtocol], deck: DeckProtocol) {
        for specialCard in specialCards {
            addSpecialCard(specialCard: specialCard, deck: deck)
        }
    }
    
}
