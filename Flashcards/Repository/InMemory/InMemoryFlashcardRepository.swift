class InMemoryFlashcardRepository: FlashcardRepositoryProtocol {
    typealias Model = Flashcard
    
    var idCount: Int
    var flashcards: [Int: Model]
    
    init() {
        idCount = 0
        flashcards = [:]
    }

    func create(model flashcard: Model) {
        if flashcard.id == nil {
            flashcard.id = idCount
            idCount += 1
        }
        flashcards[flashcard.id!] = flashcard
    }
    
    func get(byID id: Int) -> Model? {
        return flashcards[id]
    }
    
    func getAll() -> [Flashcard] {
        return Array(flashcards.values)
    }
    
    func update(model flashcard: Model) -> Bool {
        if flashcard.id != nil {
            flashcards[flashcard.id!] = flashcard
            return true
        } else {
            fatalError("Implement correct error, but you can't update a flashcard never stored")
        }
    }
    
    func delete(model flashcard: Model) -> Bool {
        if flashcard.id != nil {
            flashcards.removeValue(forKey: flashcard.id!)
            return true
        } else {
            fatalError("Implement correct error, but you can't delete a flashcard never stored")
        }
    }
    
}
