import Foundation

class ServiceContainer: ObservableObject {
    private let ankiAlorithmDeckRepository: InMemoryDeckRepository<AnkiAlgorithmDeck, AnkiAlgorithmCard>
    let ankiAlgorithmDeckService: DeckService<InMemoryDeckRepository<AnkiAlgorithmDeck, AnkiAlgorithmCard>>
    
    private let leitnerSystemDeckRepository: InMemoryDeckRepository<LeitnerSystemDeck, LeitnerSystemCard>
    let leitnerSystemDeckService: DeckService<InMemoryDeckRepository<LeitnerSystemDeck, LeitnerSystemCard>>
    
    private let flashcardRepository: InMemoryFlashcardRepository
    let flashcardService: FlashcardService<InMemoryFlashcardRepository>
    
    init(mockData: Bool = true) {
        self.ankiAlorithmDeckRepository = InMemoryDeckRepository<AnkiAlgorithmDeck, AnkiAlgorithmCard>()
        self.ankiAlgorithmDeckService = DeckService(repository: ankiAlorithmDeckRepository)
        
        self.leitnerSystemDeckRepository = InMemoryDeckRepository<LeitnerSystemDeck, LeitnerSystemCard>()
        self.leitnerSystemDeckService = DeckService(repository: leitnerSystemDeckRepository)
        
        self.flashcardRepository = InMemoryFlashcardRepository()
        self.flashcardService = FlashcardService(repository: flashcardRepository)
        
        if mockData {
            createMockData()
        }
    }
    
    func createMockData() {
        let deck1 = DeckFactory.createDeck(type: .leitnerSystem(name: "English Vocabs", numberOfBoxes: 5))
        let deck2 = DeckFactory.createDeck(type: .leitnerSystem(name: "Machine Learning", numberOfBoxes: 10))
        let deck3 = DeckFactory.createDeck(type: .ankiAlgorithm(name: "Physics"))
        
        leitnerSystemDeckService.add(deck: deck1 as! InMemoryRepository<LeitnerSystemDeck>.ModelType)
        leitnerSystemDeckService.add(deck: deck2 as! InMemoryRepository<LeitnerSystemDeck>.ModelType)
        ankiAlgorithmDeckService.add(deck: deck3 as! InMemoryRepository<AnkiAlgorithmDeck>.ModelType)
        
        let flashcards1 = [
            Flashcard(question: "Dog", answer: "Hund"),
            Flashcard(question: "Cat", answer: "Katze"),
            Flashcard(question: "House", answer: "Haus")
        ]
        
        let flashcards2 = [
            Flashcard(question: "What is a Neuron?", answer: "A neuron is.."),
            Flashcard(question: "What is a Loss-Function", answer: "A Loss-Function is..")
        ]
        
        let flashcards3 = [
            Flashcard(question: "What is a black hole?", answer: "I don't know")
        ]
        
        flashcardService.add(flashcards: flashcards1 + flashcards2 + flashcards3)
        
        leitnerSystemDeckService.addFlashcards(flashcards: flashcards1, deck: deck1 as! InMemoryRepository<LeitnerSystemDeck>.ModelType)
        leitnerSystemDeckService.addFlashcards(flashcards: flashcards2, deck: deck2 as! InMemoryRepository<LeitnerSystemDeck>.ModelType)
        ankiAlgorithmDeckService.addFlashcards(flashcards: flashcards3, deck: deck3 as! InMemoryRepository<AnkiAlgorithmDeck>.ModelType)

        
    }
    
}
