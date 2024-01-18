class Deck: CustomStringConvertible {
    var id: Int?
    var name: String
    var flashcards: Set<Int>
    
    init(name: String) {
        self.id = nil
        self.name = name
        self.flashcards = Set<Int>()
    }
    
    convenience init(
        name: String,
        flashcards: [Flashcard]
    ) {
        self.init(name: name)
        // add only flashcards which are in stored in the database
        for flashcard in flashcards {
            if let flashcardID = flashcard.id {
                self.flashcards.insert(flashcardID)
            }
        }
    }
    
    var description: String {
        return "Deck(\(id ?? -1), name: \(name), flashcards: \(flashcards)"
    }
    
}
