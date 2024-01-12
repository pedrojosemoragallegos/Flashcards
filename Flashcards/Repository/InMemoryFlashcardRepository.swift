class FlashcardRepository: Repository {
    typealias Item = Flashcard
    
    private var flashcards: [Flashcard]
    
    init(flashcards: [Flashcard] = []) {
        self.flashcards = flashcards
    }

    func add(item: Flashcard) throws {
        try self.flashcards.append(item)
    }
    
    func get(byID id: Int) throws -> Flashcard {
        return try self.flashcards[0]
    }
    
    func update(item: Flashcard) throws {
        try print("Not Implemented")
    }
    
    func delete(byID id: Int) throws {
        try print("Not Implemented")
    }
}
