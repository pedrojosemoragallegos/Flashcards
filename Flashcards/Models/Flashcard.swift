class Flashcard: CustomStringConvertible{
    var id: Int?
    var question: String
    var answer: String
    var decks: Set<Int>
    
    init(
        question: String,
        answer: String
    ) {
        self.id = nil
        self.question = question
        self.answer = answer
        self.decks = Set<Int>()
    }
    
    convenience init(
        question: String,
        answer: String,
        decks: [Deck]
    ) {
        self.init(question: question, answer: answer)
        // add only decks which are in stored in the database
        for deck in decks {
            if let deckId = deck.id {
                self.decks.insert(deckId)
            }
        }
    }
    
    var description: String {
        return "Flashcard(\(id ?? -1), question: \(question), answer: \(answer), decks: \(decks)"
    }
    
}
