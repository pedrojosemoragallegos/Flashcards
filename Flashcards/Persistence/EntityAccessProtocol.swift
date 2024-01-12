protocol EntityAccessProtocol {
    associatedtype Entity: EntityProtocol
    
    var databaseManager: any DatabaseManagerProtocol { get }
    
    func create(entity: Entity) throws
    func read(byID: Int) throws -> Entity?
    func update(entity: Entity) throws -> Bool
    func delete(entity: Entity) throws -> Bool
}
