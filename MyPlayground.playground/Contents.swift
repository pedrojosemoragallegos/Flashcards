protocol EntityProtocol {}

protocol EntityAccessProtocol {
    associatedtype Entity: EntityProtocol
    
    var databaseManager: any DatabaseManagerProtocol { get }
    
    func create(entity: Entity) throws
    func read(byID: Int) throws -> Entity?
    func update(entity: Entity) throws -> Bool
    func delete(entity: Entity) throws -> Bool
}

protocol DatabaseManagerProtocol {
    func createTables() throws
}

struct FlashcardEntity: EntityProtocol {
    var name = "Name"
}

class InMemoryDatabaseManager: DatabaseManagerProtocol {
    var flashcards: [FlashcardEntity]
    
    init() {
        self.flashcards = []
        do {
            try createTables()
        } catch {
            print("Failed")
        }
    }
    
    func createTables() throws {
        print("Tables created")
    }
}

class InMemoryFlashcardAccess: EntityAccessProtocol {
    typealias Entity = FlashcardEntity
        
    var databaseManager: DatabaseManagerProtocol
    
    init(databaseManager: DatabaseManagerProtocol) {
        self.databaseManager = databaseManager
    }
    
    func create(entity: Entity) throws {
        print("Entity created")
    }
    func read(byID: Int) throws -> Entity? {
        print("Entity readed")
        return nil
    }
    
    func update(entity: Entity) throws -> Bool {
        print("Entity updated")
        return false
    }
    
    func delete(entity: Entity) throws -> Bool {
        print("Entity deleted")
        return false
    }
    
}

protocol RepositoryProtocol {
    associatedtype Model

    var dataAccessInterface: any EntityAccessProtocol { get }

    func create(model: Model) throws
    func read(byID id: Int) throws -> Model?
    func update(model: Model) throws -> Bool
    func delete(model: Model) throws -> Bool
}

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

class Flashcard {
    var id: Int?
    var question: String
    var answer: String
    
    init(
        id: Int? = nil,
        question: String,
        answer: String
    ) {
        self.id = id
        self.question = question
        self.answer = answer
    }
}


var databaseManager = InMemoryDatabaseManager()
var flashcardAccess = InMemoryFlashcardAccess(databaseManager: databaseManager)
var flashcardRepository = FlashcardRepository(dataAccessInterface: flashcardAccess)
