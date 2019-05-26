
import Foundation

var TodoList: [[String:Any]] {
    set {
        UserDefaults.standard.set(newValue, forKey: "TodoDataKey")
        UserDefaults.standard.synchronize()
    }
    get{
        if let array = UserDefaults.standard.array(forKey: "TodoDataKey") as?[[String : Any]] {
            return  array
        }else{
            return []
        }
    }
}

func addItem(todoItem: String, isCompleted:Bool = false){
    TodoList.append(["Name":todoItem,"isCompleted":isCompleted])

}
func removeItem(at itemIndex: Int){
    TodoList.remove(at: itemIndex)
}

func changeState(at item:Int)->Bool{
    TodoList[item]["isCompleted"] = !(TodoList[item]["isCompleted"] as! Bool)
    return TodoList[item]["isCompleted"] as! Bool
    
}


