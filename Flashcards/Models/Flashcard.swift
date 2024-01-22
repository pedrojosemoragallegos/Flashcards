import Foundation

class Flashcard: ModelProtocol {
    typealias DeckType = DeckProtocol
    
    var id: UUID?
    var question: String
    var answer: String
    var decks = [any DeckType]()
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
    
}
