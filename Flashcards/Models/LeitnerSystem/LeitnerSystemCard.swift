import Foundation

struct LeitnerSystemCard: SpecialCardProtocol {
    var id = UUID()
    let flashcard: Flashcard
    var currentBox: Int
}
