class InMemoryDeckRepository: DeckRepositoryProtocol {
    typealias Model = Deck
    
    var idCount: Int
    var decks: [Int: Model]
    
    init(mockData: Bool = true) {
        idCount = 0
        decks = [:]
        
        if mockData { createMockData() }
    }
    
    private func createMockData() {
        create(model: Deck(name: "English Vocabs"))
        create(model: Deck(name: "Physics Formulas"))
        create(model: Deck(name: "Spanish Vocabs"))
    }

    func create(model deck: Model) {
        if deck.id == nil {
            deck.id = idCount
            idCount += 1
        }
        decks[deck.id!] = deck
    }
    
    func get(byID id: Int) -> Model? {
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
    
}
