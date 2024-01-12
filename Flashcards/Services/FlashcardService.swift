class FlashcardService {
    private let flashcardRepository: FlashcardRepository
    
    init(flashcardRepository: FlashcardRepository) {
        self.flashcardRepository = flashcardRepository
    }
    
    func add(flashcard: Flashcard) throws {
        try flashcardRepository.add(item: flashcard)
    }

    func get(byID id: Int) throws -> Flashcard {
        return try flashcardRepository.get(byID: id)
    }

    func update(flashcard: Flashcard) throws {
        try flashcardRepository.update(item: flashcard)
    }

    func delete(byID id: Int) throws {
        return try flashcardRepository.delete(byID: id)
    }
}
