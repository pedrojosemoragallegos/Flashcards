import Foundation

class Flashcard: FlashcardProtocol {
    var id = UUID() // TODO: change it, its just for now!!! it should be optional
    var question: String
    var answer: String
    var decks = [any DeckProtocol]()
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
    
}
