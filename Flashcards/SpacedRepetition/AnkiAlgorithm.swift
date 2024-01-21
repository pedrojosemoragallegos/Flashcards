import Foundation

enum AnkiAlgorithmPerformance: PerformanceProtocol {
    case again
    case good
    case easy
}

struct AnkiAlgorithm: SpacedRepetitionProtocol {
    typealias SpecialCardType = AnkiAlgorithmCard
    typealias PerformanceType = AnkiAlgorithmPerformance
    
    static func updateCard(specialCard: AnkiAlgorithmCard, performance: AnkiAlgorithmPerformance) {
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
