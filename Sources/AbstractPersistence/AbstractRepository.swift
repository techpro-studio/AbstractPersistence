import Foundation

public struct FindRequest {
    public var skip: Int?
    public var limit: Int?
    public var sortDescriptors: [NSSortDescriptor]?
    public var predicates: [NSPredicate]
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
