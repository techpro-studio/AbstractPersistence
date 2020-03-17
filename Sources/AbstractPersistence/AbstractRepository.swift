import Foundation

public struct FindRequest {
    var skip: Int?
    var limit: Int?
    var sortDescriptors: [NSSortDescriptor]?
    var predicates: [NSPredicate]
}

public protocol AbstractRepository {

    associatedtype T: Identifiable
    func insert(value: T)
    func insertMany(value: [T])
    func save(value: T)
    func saveMany(value: [T])
    func remove(value: T)
    func find(request: FindRequest) -> [T]
    func getById(id: T.Identifier) -> T?
    func remove(id: T.Identifier)
    func get(predicate: NSPredicate) -> T?
    
}
