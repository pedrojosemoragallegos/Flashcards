class Flashcard {
    var id: Int?
    var question: String
    var answer: String
    
    init(
        question: String,
        answer: String
    ) {
        self.id = nil
        self.question = question
        self.answer = answer
    }
}
