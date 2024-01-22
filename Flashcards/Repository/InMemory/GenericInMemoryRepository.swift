import Foundation

class GenericInMemoryRepository<T: ModelProtocol>: RepositoryProtocol {
    typealias ModelType = T
    
    var items = [UUID: T]()

    func create(model: T) {
        var model = model
        if model.id == nil {
            model.id = UUID()
        }
        items[model.id!] = model
    }

    func create(models: [T]) {
        models.forEach { create(model: $0) }
    }

    func get(byID id: UUID) -> T? {
        return items[id]
    }

    func getAll() -> [T] {
        return Array(items.values)
    }

    func update(model: T) -> Bool {
        guard let id = model.id else {
            fatalError("You can't update an item which was never stored.")
        }
        items[id] = model
        return true
    }

    func delete(model: T) -> Bool {
        guard let id = model.id else {
            fatalError("You can't delete an item which was never stored.")
        }
        items.removeValue(forKey: id)
        return true
    }
}
