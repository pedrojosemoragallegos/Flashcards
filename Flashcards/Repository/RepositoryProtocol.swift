import Foundation

protocol RepositoryProtocol {
    associatedtype Model

    func create(model: Model)
    func create(models: [Model])
    func get(byID id: UUID) -> Model?
    func getAll() -> [Model]
    func update(model: Model) -> Bool
    func delete(model: Model) -> Bool
    
}
