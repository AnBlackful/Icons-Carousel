
import Foundation
import UIKit

class UserManager: NSObject{
    static let shared = UserManager()
    private override init() {}
    var index = -1
    let usersArray = [
        User(name: "Amelia", photo: #imageLiteral(resourceName: "Amelia")),
        User(name: "Chloe", photo: #imageLiteral(resourceName: "Chloe")),
        User(name: "Harry", photo: #imageLiteral(resourceName: "Harry")),
        User(name: "James", photo: #imageLiteral(resourceName: "James")),
        User(name: "Lily", photo: #imageLiteral(resourceName: "Lily")),
        User(name: "Mark", photo: #imageLiteral(resourceName: "Mark")),
        User(name: "Matthew", photo: #imageLiteral(resourceName: "Matthew")),
        User(name: "Olivia", photo: #imageLiteral(resourceName: "Olivia")),
        User(name: "Ruby", photo: #imageLiteral(resourceName: "Ruby")),
        User(name: "Thomas", photo: #imageLiteral(resourceName: "Thomas"))
    ]
    
    func checkIndex() -> Int{
        let size = usersArray.count
        index+=1
        if index != size {
            return index
        }else {
            index = 0
            return index
        }
        
        
    }
    
}
