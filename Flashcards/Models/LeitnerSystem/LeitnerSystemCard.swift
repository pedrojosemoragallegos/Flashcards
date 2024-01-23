import Foundation

enum LeitnerSystemPerformance: PerformanceProtocol {
    case correct
    case incorrect
}

class LeitnerSystemCard: SpecialCardProtocol {
    typealias PerformanceType = LeitnerSystemPerformance
    
    var id = UUID() // TODO: change it, its just for now!!! it should be optional
    let flashcard: Flashcard
    var currentBox: Int
    
    init(flashcard: Flashcard, currentBox: Int) {
        self.flashcard = flashcard
        self.currentBox = currentBox
    }
    
    func updatePerformance(performance: LeitnerSystemPerformance) {
        switch performance {
        case .correct:
            print("Correct")
        case .incorrect:
            print("Incorrect")
        }
    }
    
}
