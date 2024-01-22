import Foundation

class LeitnerSystemDeck: DeckProtocol {
    typealias SpecialCardType = LeitnerSystemCard
        
    var id: UUID?
    var name: String
    let numberOfBoxes: Int
    var specialCards = [LeitnerSystemCard]()
    var algorithmName = "Leitner System"
    private var boxMapping: [Int: [LeitnerSystemCard]] = [:]

    init(name: String, numberOfBoxes: Int) {
        self.name = name
        self.numberOfBoxes = numberOfBoxes
    }

    convenience init(name: String, numberOfboxes: Int, specialCards: [LeitnerSystemCard]) {
        self.init(name: name, numberOfBoxes: numberOfboxes)
        self.specialCards += specialCards
    }
    
    static func createSpecialCard(flashcard: Flashcard) -> LeitnerSystemCard {
        return LeitnerSystemCard(flashcard: flashcard, currentBox: 0)
    }

}
