import Foundation

class FlashcardViewModel<Repository: FlashcardRepositoryProtocol>: ObservableObject where Repository.ModelType == Flashcard {
    @Published var flashcards: [Flashcard] = []

    private let service: FlashcardService<Repository>

    init(service: FlashcardService<Repository>) {
        self.service = service
        flashcards = service.getAll()
    }
    
    func addFlashcard(question: String, answer: String) {
        let flashcard = Flashcard(question: question, answer: answer)
        service.add(flashcard: flashcard)
        flashcards = service.getAll()
    }
}
