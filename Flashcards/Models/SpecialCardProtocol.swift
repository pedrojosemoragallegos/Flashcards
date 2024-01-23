import Foundation

protocol SpecialCardProtocol: ModelProtocol where PerformanceType: PerformanceProtocol {
    associatedtype PerformanceType: PerformanceProtocol
    
    var flashcard: Flashcard { get }
    
    func updatePerformance(performance: PerformanceType)
    
}
