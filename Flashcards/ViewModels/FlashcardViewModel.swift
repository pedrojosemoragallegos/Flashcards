import Foundation

class FlashcardViewModel: ObservableObject {
    @Published var flashcards: [Flashcard] = []

    private let service: FlashcardService

    init(service: FlashcardService) {
        self.service = service
        flashcards = service.getAll()
    }
    
    func addFlashcard(question: String, answer: String) {
        let flashcard = Flashcard(question: question, answer: answer)
        service.add(flashcard: flashcard)
        flashcards.append(flashcard)
    }
}
