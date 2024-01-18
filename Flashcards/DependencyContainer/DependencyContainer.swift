class DependencyContainer {
    private let flashcardRepository: any FlashcardRepositoryProtocol
    let flashCardService: FlashcardService
    private let deckRepository: any DeckRepositoryProtocol
    let deckService: DeckService

    init(mockData: Bool = true) {
        flashcardRepository = InMemoryFlashcardRepository()
        flashCardService = FlashcardService(repository: flashcardRepository)
        deckRepository = InMemoryDeckRepository()
        deckService = DeckService(repository: deckRepository)
        
        if mockData { createMockData() }
    }
    
    private func createMockData() {
        let deck1 = Deck(name: "English Vocabs")
        let flashcard11 = Flashcard(question: "Dog", answer: "Hund")
        let flashcard12 = Flashcard(question: "Cat", answer: "Katze")
        let flashcard13 = Flashcard(question: "House", answer: "Haus")
        
        deckService.add(deck: deck1)
        flashCardService.add(flashcard: flashcard11)
        flashCardService.add(flashcard: flashcard12)
        flashCardService.add(flashcard: flashcard13)
        
        deckService.addFlashcard(flashcard: flashcard11, deck: deck1)
        deckService.addFlashcard(flashcard: flashcard12, deck: deck1)
        deckService.addFlashcard(flashcard: flashcard13, deck: deck1)
        
        let deck2 = Deck(name: "Machine Learning")
        let flashcard21 = Flashcard(question: "What is a Neuron?", answer: "A neuron is...")
        let flashcard22 = Flashcard(question: "What is a Loss-Function?", answer: "A Loss-Function is...")
        
        deckService.add(deck: deck2)
        flashCardService.add(flashcard: flashcard21)
        flashCardService.add(flashcard: flashcard22)
        
        deckService.addFlashcard(flashcard: flashcard21, deck: deck2)
        deckService.addFlashcard(flashcard: flashcard22, deck: deck2)

    }
    
}
