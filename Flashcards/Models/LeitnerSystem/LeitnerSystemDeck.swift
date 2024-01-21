import Foundation

class LeitnerSystemDeck: DeckProtocol {
    var id: UUID?
    var name: String
    let numberOfBoxes: Int
    var specialCards = [SpecialCardProtocol]()
    var algorithmName = "Leitner System"
    private var boxMapping: [Int: [Flashcard]] = [:]

    init(name: String, numberOfBoxes: Int) {
        self.name = name
        self.numberOfBoxes = numberOfBoxes
    }

    convenience init(name: String, numberOfboxes: Int, specialCards: [SpecialCardProtocol]) {
        self.init(name: name, numberOfBoxes: numberOfboxes)
        self.specialCards += specialCards
    }

}

