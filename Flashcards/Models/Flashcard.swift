class Flashcard: CustomStringConvertible{
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
    
    var description: String {
        return "Flashcard(\(id ?? -1), question: \(question), answer: \(answer)"
    }
    
}
