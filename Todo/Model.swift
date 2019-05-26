
import Foundation

var TodoList: [[String:Any]] = [["Name":"first","isCompleted": false ],["Name":"second","isCompleted": true ]]

func addItem(todoItem: String, isCompleted:Bool = false){
    TodoList.append(["Name":todoItem,"isCompleted":isCompleted])
    saveData()
}
func removeItem(at itemIndex: Int){
    TodoList.remove(at: itemIndex)
    saveData()
}

func changeState(at item:Int)->Bool{
    TodoList[item]["isCompleted"] = !(TodoList[item]["isCompleted"] as! Bool)
    saveData()
    return TodoList[item]["isCompleted"] as! Bool
    
}
func saveData(){
    UserDefaults.standard.set(TodoList, forKey: "TodoDataKey")
    UserDefaults.standard.synchronize()
}
func loadData(){
    if let array = UserDefaults.standard.array(forKey: "TodoDataKey") as?[[String : Any]] {
        TodoList = array
    }else{
        TodoList = []
    }
}

