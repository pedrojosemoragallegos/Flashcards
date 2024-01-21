class LearningService {
    func updateCard(flashcard: SpecialCardProtocol, performance: PerformanceProtocol) {
        if let leitnerCard = flashcard as? LeitnerSystemCard {
            LeitnerSystem.updateCard(specialCard: leitnerCard, performance: performance as! LeitnerSystem.PerformanceProtocol)
        } else if let ankiCard = flashcard as? AnkiAlgorithmCard {
            AnkiAlgorithm.updateCard(specialCard: ankiCard, performance: performance as! AnkiAlgorithm.PerformanceProtocol)
        } else {
            fatalError("Unknown algorithm type")
        }
    }
}
