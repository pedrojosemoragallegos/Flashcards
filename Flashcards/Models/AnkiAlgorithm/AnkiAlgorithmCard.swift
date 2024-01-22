import Foundation

enum AnkiAlgorithmPerformance: PerformanceProtocol {
    case again
    case good
    case easy
}

class AnkiAlgorithmCard: SpecialCardProtocol {
    typealias PerformanceType = AnkiAlgorithmPerformance
    
    var id: UUID?
    var flashcard: Flashcard
    
    init(flashcard: Flashcard) {
        self.flashcard = flashcard
    }
    
    func updatePerformance(performance: AnkiAlgorithmPerformance) {
        switch performance {
        case .again:
            print("again")
        case .good:
            print("good")
        case .easy:
            print("easy")
        }
    }
    
}
