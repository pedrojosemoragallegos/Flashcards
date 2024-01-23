import Foundation

class ServiceContainer: ObservableObject {
    let ankiAlgorithmDeckService: AnkiAlgorithmDeckService
    let leitnerSystemDeckService: LeitnerSystemDeckService
    let flashcardService: FlashcardService

    init(mockData: Bool = true) {
        let ankiAlgorithmRepository = InMemoryAnkiAlgorithmRepository()
        let leitnerSystemRepository = InMemoryLeitnerSystemDeckRepository()
        let flashcardRepository = InMemoryFlashcardRepository()
    
        ankiAlgorithmDeckService = AnkiAlgorithmDeckService(repository: ankiAlgorithmRepository)
        leitnerSystemDeckService = LeitnerSystemDeckService(repository: leitnerSystemRepository)
        flashcardService = FlashcardService(repository: flashcardRepository)
        
        
        if mockData {
            createMockData()
        }
    }
    
    func createMockData() {
        let deck1 = LeitnerSystemDeck(name: "English Vocbas", numberOfBoxes: 5)
        let deck2 = LeitnerSystemDeck(name: "Machine Learning", numberOfBoxes: 10)
        let deck3 = AnkiAlgorithmDeck(name: "Physics")
        
        leitnerSystemDeckService.add(deck: deck1)
        leitnerSystemDeckService.add(deck: deck2)
        ankiAlgorithmDeckService.add(deck: deck3)
        
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
                
        leitnerSystemDeckService.addFlashcards(flashcards: flashcards1, deck: deck1)
        leitnerSystemDeckService.addFlashcards(flashcards: flashcards2, deck: deck2)
        ankiAlgorithmDeckService.addFlashcards(flashcards: flashcards3, deck: deck3)


    }

}
