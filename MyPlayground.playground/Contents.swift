import UIKit
import Foundation

class User: NSObject {
    var name: String?
    var age: Int?
    var email: String?
    var dob: NSDate?
    
    init(name: String, age: Int, email: String, dob: NSDate) {
        self.name = name
        self.age = age
        self.email = email
        self.dob = dob
    }
}

let u1 = User(name: "abc", age: 4, email: "bsuadi@gmail.com", dob: NSDate(timeIntervalSince1970: TimeInterval.init(exactly: 50)!))

let u1mirror = Mirror(reflecting: u1)
var attrArr = NSMutableArray()
var valArr = NSMutableArray()

for (_,attr) in u1mirror.children.enumerated(){
    attrArr.add(attr.label!)
    valArr.add(attr.value)
}

func parseJSONtoUser(json: NSArray) -> [User]{
    var userList: [User]?
    for val in json{
        let userTemp = (val as! [String:Any])["user"] as! [String:Any]
        let user = User(name: userTemp["name"] as! String, age: userTemp["age"] as! Int, email: userTemp["email"] as! String, dob: userTemp["dob"] as! NSDate)
        userList?.append(user)
    }
    return userList!
}

let urlString = ""
let url = URL(string: urlString)
let request = NSMutableURLRequest(url: url!)
request.httpMethod = "GET"
request.addValue("application/json", forHTTPHeaderField: "Content-Type")
let task = URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
    do{
        var json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! NSArray
        var userList = parseJSONtoUser(json: json)
    } catch {
        print("error")
    }
}
task.resume()



