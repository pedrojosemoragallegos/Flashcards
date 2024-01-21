import Foundation

class AnkiAlgorithmCard: SpecialCardProtocol {
    var id = UUID()
    var flashcard: Flashcard
    
    init(flashcard: Flashcard) {
        self.flashcard = flashcard
    }
}
