import Foundation

class ServiceContainer: ObservableObject {
    let ankiDeckService: GenericDeckService<AnkiAlgorithmDeck, InMemoryDeckRepository<AnkiAlgorithmDeck, AnkiAlgorithmCard>>
    let leitnerDeckService: GenericDeckService<LeitnerSystemDeck, InMemoryDeckRepository<LeitnerSystemDeck, LeitnerSystemCard>>
    let flashcardService: GenericFlashcardService<InMemoryFlashcardRepository>

    init(mockData: Bool = true) {
        let ankiDeckRepository = InMemoryDeckRepository<AnkiAlgorithmDeck, AnkiAlgorithmCard>()
        let leitnerDeckRepository = InMemoryDeckRepository<LeitnerSystemDeck, LeitnerSystemCard>()
        let flashcardRepository = InMemoryFlashcardRepository()

        ankiDeckService = GenericDeckService(repository: ankiDeckRepository)
        leitnerDeckService = GenericDeckService(repository: leitnerDeckRepository)
        flashcardService = GenericFlashcardService(repository: flashcardRepository)
        
        
        if mockData {
            createMockData()
        }
    }
    
    func createMockData() {
        let deck1 = LeitnerSystemDeck(name: "English Vocbas", numberOfBoxes: 5)
        let deck2 = LeitnerSystemDeck(name: "Machine Learning", numberOfBoxes: 10)
        let deck3 = AnkiAlgorithmDeck(name: "Physics")
        
        leitnerDeckService.add(deck: deck1)
        leitnerDeckService.add(deck: deck2)
        ankiDeckService.add(deck: deck3)

        
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

    }

}
