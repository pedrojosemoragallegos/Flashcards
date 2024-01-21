import Foundation

struct AnkiAlgorithm: SpacedRepetitionProtocol {
    typealias SpecialCardProtocol = AnkiAlgorithmCard
    
    static func updateCard(specialCard: AnkiAlgorithmCard) {
        specialCard.flashcard.question = "CHANGED"
    }
    
}
