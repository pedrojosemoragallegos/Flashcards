class FlashcardRepository: RepositoryProtocol {
    typealias Model = Flashcard

    var dataAccessInterface: any EntityAccessProtocol
    
    init(dataAccessInterface: any EntityAccessProtocol) {
        self.dataAccessInterface = dataAccessInterface
    }
    
    func create(model: Flashcard) throws {
        print("Model created")
    }
    
    func read(byID id: Int) throws -> Flashcard? {
        print("Model readed")
        return nil
    }
    
    func update(model: Flashcard) throws -> Bool {
        print("Model updated")
        return false
    }
    
    func delete(model: Flashcard) throws -> Bool {
        print("Model deleted")
        return false
    }
    
}
