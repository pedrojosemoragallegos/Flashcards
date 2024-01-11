enum StrategyFactory {
    case leitnerSystem(someVariable: Int)

    func createStrategy() -> SpacedRepetitionStrategy {
        switch self {
        case .leitnerSystem(let someVariable):
            return LeitnerSystem(someVariable: someVariable)
        }
    }
}
