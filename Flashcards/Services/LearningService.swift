class LearningService {
    func updateCard(flashcard: SpecialCardProtocol) {
        if let leitnerCard = flashcard as? LeitnerSystemCard {
            LeitnerSystem.updateCard(specialCard: leitnerCard)
        } else if let ankiCard = flashcard as? AnkiAlgorithmCard {
            AnkiAlgorithm.updateCard(specialCard: ankiCard)
        } else {
            fatalError("Unknown algorithm type")
        }
    }
}
