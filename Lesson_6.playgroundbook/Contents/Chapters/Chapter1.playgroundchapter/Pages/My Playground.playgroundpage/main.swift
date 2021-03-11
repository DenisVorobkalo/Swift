struct queueArray<T: Equatable> {
    var items = [T]()
    
    mutating func enqueue (item: T){
        items.append(item)
        print("Добавлен \(item)")
    }
    
    mutating func dequeue () -> T?{
        print("Удален \(items.first)")
        return items.removeFirst()
    }
    
    mutating func filterArrayByValue <T: Equatable> (array: [T], valueToFilter: T, function: (T, T) -> Bool) -> [T]?{
        var newArray = [T]()
        
        for i in array {
            if function (i, valueToFilter){
                newArray.append(i)
            }
        }
        return newArray
    }
    func compare<T: Equatable> (i: T, value: T) -> Bool {
        return i != value
    }
}
var a = queueArray<String> ()
a.enqueue(item: "cat")
a.enqueue(item: "bat")
a.enqueue(item: "dog")
a.enqueue(item: "frog")
print(a)
a.dequeue()
print(a)


//  var c = a.items
//  var b = "bat"
print(a.filterArrayByValue(array: a.items, valueToFilter: "bat", function: a.compare))

