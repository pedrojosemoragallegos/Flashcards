import Foundation

class Flashcard: CustomStringConvertible {
    var id: UUID?
    var question: String
    var answer: String
    var decks = [Deck]()
    
    init(
        question: String,
        answer: String
    ) {
        self.question = question
        self.answer = answer
    }
    
    convenience init(
        question: String,
        answer: String,
        decks: [Deck]
    ) {
        self.init(question: question, answer: answer)
        // add only decks which are in stored in the database
        for deck in decks {
            if deck.id != nil {
                self.decks.append(deck)
            }
        }
    }
    
    var description: String {
        return "Flashcard(\(id!), question: \(question), answer: \(answer), decks: \(decks)"
    }
    
}
