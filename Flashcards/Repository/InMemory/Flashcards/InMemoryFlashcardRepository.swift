import Foundation

class InMemoryFlashcardRepository: FlashcardRepositoryProtocol {
    private var flashcards: [UUID: Flashcard] = [:]

    typealias FlashcardType = Flashcard
    typealias ModelType = Flashcard

    func create(model: Flashcard) {
        flashcards[model.id] = model
    }
    
    func create(models: [Flashcard]) {
        for model in models {
            flashcards[model.id] = model
        }
    }
    
    func get(byID id: UUID) -> Flashcard? {
        return flashcards[id]
    }
    
    func getAll() -> [Flashcard] {
        return Array(flashcards.values)
    }
    
    func update(model: Flashcard) -> Bool {
        guard flashcards[model.id] != nil else {
            return false
        }
        flashcards[model.id] = model
        return true
    }
    
    func delete(model: Flashcard) -> Bool {
        guard flashcards[model.id] != nil else {
            return false
        }
        flashcards.removeValue(forKey: model.id)
        return true
    }
}
