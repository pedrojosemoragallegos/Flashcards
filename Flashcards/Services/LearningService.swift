import Foundation

class LearningService: ObservableObject {
    func updateCard(flashcard: SpecialCardProtocol) {
        switch type(of: flashcard) {
        case is LeitnerSystemCard.Type:
            return LeitnerSystem.updateCard(specialCard: flashcard as! LeitnerSystemCard)
        case is AnkiAlgorithmCard.Type:
            return AnkiAlgorithm.updateCard(specialCard: flashcard as! AnkiAlgorithmCard)
        default:
            fatalError("Unknown algorithm type")
        }
    }
    
}
