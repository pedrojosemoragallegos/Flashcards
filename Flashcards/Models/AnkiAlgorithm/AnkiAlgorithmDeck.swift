import Foundation

class AnkiAlgorithmDeck: DeckProtocol {
    typealias SpecialCardType = AnkiAlgorithmCard
    
    var id = UUID() // TODO: change it, its just for now!!! it should be optional
    var name: String
    var specialCards = [AnkiAlgorithmCard]()
    var algorithmName = "Anki Algorithm"
    
    init(name: String) {
        self.name = name
    }

}
