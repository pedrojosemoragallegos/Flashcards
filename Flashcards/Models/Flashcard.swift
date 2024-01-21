import Foundation

class Flashcard {
    var id: UUID?
    var question: String
    var answer: String
    var decks = [DeckProtocol]()
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
    
    convenience init(question: String, answer: String, decks: [DeckProtocol]) {
        self.init(question: question, answer: answer)
        self.decks += decks
    }
    
}
