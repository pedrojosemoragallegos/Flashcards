import Foundation

class InMemoryDeckRepository: DeckRepositoryProtocol {
    typealias Model = Deck
    
    var decks = [UUID: Model]()

    func create(model deck: Model) {
        if deck.id == nil { deck.id = UUID() }
        decks[deck.id!] = deck
    }
    
    func get(byID id: UUID) -> Model? {
        return decks[id]
    }
    
    func getAll() -> [Deck] {
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
    
    func addFlashcard(flashcard: Flashcard, deck: Deck) {
        if flashcard.id != nil, deck.id != nil {
            deck.flashcards.append(flashcard)
            flashcard.decks.append(deck)
        } else {
            fatalError("Implement correct error, but you can't add items never stored.")
        }
    }
}
