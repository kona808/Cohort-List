//
//  StudentListTableViewController.swift
//  CohortList
//
//  Created by Stateful Academy on 1/17/22.
//

import UIKit

class StudentListTableViewController: UITableViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return StudentController.sharedInstance.studentList.count // 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)

        // Configure the cell...

        let studentList = StudentController.sharedInstance.studentList
        let studentForIndexPath = studentList[indexPath.row] // 0 // 1
        // studentList[0]
        // studentList[1]
        // ["Arian","Karl","Adam","Brody", "Trevor"]
        // run:1 (s0,r0) - Student.name == "Arian"
        // run:2 (s0,r1) - student.name == "Karl"
        // run:3 (s0,r2) - student.name == "Adam"
        // run:4 (s0,r3)
        // run:5 (s0,r4)
  
        cell.textLabel?.text = studentForIndexPath.name
        cell.textLabel?.text?.append(": \(studentList[indexPath.row].cohortNumber)")
    
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
//            let student = Student(name: StudentController.sharedInstance.studentList[indexPath.row].name,
//                                  age: StudentController.sharedInstance.studentList[indexPath.row].cohortNumber,
//                                  favoriteColor: StudentController.sharedInstance.studentList[indexPath.row].studentDescription)
//
//            StudentController.sharedInstance.deleteStudent(student: student)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } 
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
