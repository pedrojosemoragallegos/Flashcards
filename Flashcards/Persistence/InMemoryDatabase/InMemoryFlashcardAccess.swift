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
