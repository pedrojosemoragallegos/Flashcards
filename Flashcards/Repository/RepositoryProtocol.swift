import Foundation

protocol RepositoryProtocol {
    associatedtype ModelType: ModelProtocol

    func create(model: ModelType)
    func create(models: [ModelType])
    func get(byID id: UUID) -> ModelType?
    func getAll() -> [ModelType]
    func update(model: ModelType) -> Bool
    func delete(model: ModelType) -> Bool
    
}
