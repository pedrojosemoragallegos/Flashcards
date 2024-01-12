protocol Repository {
    associatedtype Item
    
    func add(item: Item) throws
    func get(byID id: Int) throws -> Item
    func update(item: Item) throws
    func delete(byID id: Int) throws
}
