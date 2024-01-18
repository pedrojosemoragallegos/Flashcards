class DependencyContainer {
    let flashcardRepository: any FlashcardRepositoryProtocol
    let flashCardService: FlashcardService

    init() {
        flashcardRepository = InMemoryFlashcardRepository()
        flashCardService = FlashcardService(repository: flashcardRepository)
    }
    
}
