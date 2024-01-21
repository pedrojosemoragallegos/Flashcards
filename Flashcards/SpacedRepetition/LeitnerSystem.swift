import Foundation

enum LeitnerSystemPerformance: PerformanceProtocol {
    case correct
    case incorrect
}

struct LeitnerSystem: SpacedRepetitionProtocol {
    typealias SpecialCardProtocol = LeitnerSystemCard
    typealias PerformanceProtocol = LeitnerSystemPerformance
    
    static func updateCard(specialCard: LeitnerSystemCard, performance: PerformanceProtocol) {
        switch performance {
        case .correct:
            print("Correct")
        case .incorrect:
            print("Incorrect")
        }
    }
    
    /*func updateFlashcardBox(card: Flashcard, isCorrect: Bool) {
        guard let currentBox = boxMapping.first(where: { $0.value.contains(where: { $0.question == card.question && $0.answer == card.answer }) })?.key else { return }

        boxMapping[currentBox]?.removeAll(where: { $0.question == card.question && $0.answer == card.answer })

        let newBox = isCorrect ? min(currentBox + 1, numberOfBoxes) : 1
        boxMapping[newBox, default: []].append(card)
    }
     */
    
}
