import Foundation

class ServiceContainer: ObservableObject {
    private let flashcardRepository: any FlashcardRepositoryProtocol
    let flashCardService: FlashcardService
    private let deckRepository: any DeckRepositoryProtocol
    let deckService: DeckService
    let learningService: LearningService

    init(mockData: Bool = true) {
        flashcardRepository = InMemoryFlashcardRepository()
        flashCardService = FlashcardService(repository: flashcardRepository)
        deckRepository = InMemoryDeckRepository()
        deckService = DeckService(repository: deckRepository)
        learningService = LearningService()
        
        if mockData { createMockData() }
    }
    
    private func createMockData() {
        let deck1 = DeckFactory.createStrategy(.leitnerSystem(name: "Englisch Vocabs", numberOfBoxes: 5))()
        let deck2 = DeckFactory.createStrategy(.leitnerSystem(name: "Machine Learning", numberOfBoxes: 10))()
        let deck3 = DeckFactory.createStrategy(.ankiAlgorithm(name: "Physics"))()
                
        deckService.add(decks: [deck1, deck2, deck3])
        
        let flashcards1 = [
            Flashcard(question: "Dog", answer: "Hund"),
            Flashcard(question: "Cat", answer: "Katze"),
            Flashcard(question: "House", answer: "Haus")
        ]
        
        let flashcards2 = [
            Flashcard(question: "What is a Neuron?", answer: "A neuron is..."),
            Flashcard(question: "What is a Loss-Function?", answer: "A Loss-Function is...")
        ]
        
        let flashcards3 = [
            Flashcard(question: "What is a black hole", answer: "I don't know")
        ]
        
        flashCardService.add(flashcards: flashcards1 + flashcards2 + flashcards3)
        
        deckService.addFlashcards(flashcards: flashcards1, deck: deck1)
        deckService.addFlashcards(flashcards: flashcards2, deck: deck2)
        deckService.addFlashcards(flashcards: flashcards3, deck: deck3)

    }

}
