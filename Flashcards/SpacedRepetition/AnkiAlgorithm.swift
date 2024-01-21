import Foundation

enum AnkiAlgorithmPerformance: PerformanceProtocol {
    case again
    case good
    case easy
}

struct AnkiAlgorithm: SpacedRepetitionProtocol {
    typealias SpecialCardProtocol = AnkiAlgorithmCard
    typealias PerformanceProtocol = AnkiAlgorithmPerformance
    
    static func updateCard(specialCard: AnkiAlgorithmCard, performance: PerformanceProtocol) {
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
