import Foundation

class AnkiAlgorithmDeck: DeckProtocol {
    typealias SpecialCardType = AnkiAlgorithmCard
    
    var id: UUID?
    var name: String
    var specialCards = [AnkiAlgorithmCard]()
    var algorithmName = "Anki Algorithm"
    
    init(name: String) {
        self.name = name
    }
    
    static func createSpecialCard(flashcard: Flashcard) -> AnkiAlgorithmCard {
        return AnkiAlgorithmCard(flashcard: flashcard)
    }
    
}
