class InMemoryDatabaseManager: DatabaseManagerProtocol {
    var flashcards: [FlashcardEntity]
    
    init() {
        self.flashcards = []
    }
    
    func createTables() throws {
        print("Tables created")
    }
}
