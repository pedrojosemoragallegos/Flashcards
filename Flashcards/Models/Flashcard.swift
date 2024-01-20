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
        self.decks += decks
    }
    
    var description: String {
        return "Flashcard(\(id!), question: \(question), answer: \(answer), decks: \(decks)"
    }
    
}
