class LearningService {
    private let spacedRepetitionStrategy: SpacedRepetitionStrategy
    
    init(spacedRepetitionStrategy: StrategyFactory) {
        self.spacedRepetitionStrategy = spacedRepetitionStrategy.createStrategy()
    }
    
}
