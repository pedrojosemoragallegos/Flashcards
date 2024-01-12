class Flashcard {
    var id: Int?
    var question: String
    var answer: String
    
    init(
        id: Int? = nil,
        question: String,
        answer: String
    ) {
        self.id = id
        self.question = question
        self.answer = answer
    }
}
