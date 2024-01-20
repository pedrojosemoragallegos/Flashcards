import Foundation

class Deck: CustomStringConvertible {
    var id: UUID?
    var name: String
    var flashcards: [Flashcard]
    
    init(name: String) {
        self.id = nil
        self.name = name
        self.flashcards = [Flashcard]()
    }
    
    convenience init(
        name: String,
        flashcards: [Flashcard]
    ) {
        self.init(name: name)
        // add only flashcards which are in stored in the database
        for flashcard in flashcards {
            if flashcard.id != nil {
                self.flashcards.append(flashcard)
            }
        }
    }
    
    var description: String {
        return "Deck(\(id!), name: \(name), flashcards: \(flashcards)"
    }
    
}
