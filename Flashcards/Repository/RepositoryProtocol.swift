protocol RepositoryProtocol {
    associatedtype Model

    func create(model: Model)
    func get(byID id: Int) -> Model?
    func update(model: Model) -> Bool
    func delete(model: Model) -> Bool
    
}
