protocol RepositoryProtocol {
    associatedtype Model

    var dataAccessInterface: any EntityAccessProtocol { get }

    func create(model: Model) throws
    func read(byID id: Int) throws -> Model?
    func update(model: Model) throws -> Bool
    func delete(model: Model) throws -> Bool
}
