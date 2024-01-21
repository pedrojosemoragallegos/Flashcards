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
    
}
