class FlashcardService {
    private let flashcardRepository: any FlashcardRepositoryProtocol
    
    init(flashcardRepository: any FlashcardRepositoryProtocol) {
        self.flashcardRepository = flashcardRepository
    }
      
}
