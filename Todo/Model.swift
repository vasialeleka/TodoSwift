
import Foundation

var TodoList: [String] = ["first","second"]

func addItem(todoItem: String){
    TodoList.append(todoItem)
    saveData()
}
func removeItem(at itemIndex: Int){
    TodoList.remove(at: itemIndex)
    saveData()
}
func saveData(){}
func loadData(){}
