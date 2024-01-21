import Foundation

class AnkiAlgorithmDeck: DeckProtocol {
    var id: UUID?
    var name: String
    var specialCards = [SpecialCardProtocol]()
    var algorithmName = "Anki Algorithm"
    
    init(name: String) {
        self.name = name
    }
}
