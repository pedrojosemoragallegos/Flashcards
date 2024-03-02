import Foundation

class LeitnerSystemDeck: DeckProtocol  {
    typealias SpecialCardType = LeitnerSystemCard
        
    var id = UUID() // TODO: change it, its just for now!!! it should be optional
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

}
