protocol RepositoryProtocol {
    associatedtype Model

    func create(model: Model) throws
    func get(byID id: Int) -> Model?
    func update(model: Model) throws -> Bool
    func delete(model: Model) throws -> Bool
    
}
