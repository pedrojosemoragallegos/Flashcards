class InMemoryFlashcardRepository: FlashcardRepositoryProtocol {
    typealias Model = Flashcard
    
    let datasource: InMemoryData
    
    init(datasource: InMemoryData) {
        self.datasource = datasource
    }

    func create(model: Flashcard) throws {
        datasource.flashcards.append(model)
    }
    
    func get(byID id: Int) -> Flashcard? {
        return datasource.flashcards.first { $0.id == id }
    }
    
    func update(model: Flashcard) -> Bool {
        if let index = datasource.flashcards.firstIndex(where: { $0.id == model.id }) {
            datasource.flashcards[index] = model
            return true
        } else {
            return false
        }
    }
    
    func delete(model: Flashcard) -> Bool {
        if let index = datasource.flashcards.firstIndex(where: { $0.id == model.id }) {
            datasource.flashcards.remove(at: index)
            return true
        } else {
            return false
        }
    }
    
}
