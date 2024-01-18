class DependencyContainer {
    let flashcardRepository: any FlashcardRepositoryProtocol
    let flashCardService: FlashcardService
    let deckRepository: any DeckRepositoryProtocol
    let deckService: DeckService

    init() {
        flashcardRepository = InMemoryFlashcardRepository()
        flashCardService = FlashcardService(repository: flashcardRepository)
        deckRepository = InMemoryDeckRepository(mockData: true)
        deckService = DeckService(repository: deckRepository)
    }
    
}
