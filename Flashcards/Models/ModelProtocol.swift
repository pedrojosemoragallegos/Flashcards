import Foundation

protocol ModelProtocol: Identifiable, AnyObject {
    var id: UUID { get set } // TODO: change it, its just for now!!! it should be optional
}
