import Foundation

struct LeitnerSystem: SpacedRepetitionProtocol {    
    typealias SpecialCardType = LeitnerSystemCard
    typealias PerformanceType = LeitnerSystemPerformance
    
}

/*func updateFlashcardBox(card: Flashcard, isCorrect: Bool) {
    guard let currentBox = boxMapping.first(where: { $0.value.contains(where: { $0.question == card.question && $0.answer == card.answer }) })?.key else { return }

    boxMapping[currentBox]?.removeAll(where: { $0.question == card.question && $0.answer == card.answer })

    let newBox = isCorrect ? min(currentBox + 1, numberOfBoxes) : 1
    boxMapping[newBox, default: []].append(card)
}
 */
