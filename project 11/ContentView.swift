//
//  ContentView.swift
//  project 11
//
//  Created by Anisha Lamichhane on 6/1/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Student.entity(), sortDescriptors: []) var students: FetchedResults<Student>
    
    var body: some View {
        VStack {
            List {
                ForEach(students, id: \.id){ student in
                    Text(student.name ?? "Unknown")
                }
            }
            
            Button("Add") {
                let firstNames = [ "Ginny", "Anish", "Shyam" , "Reeta"]
                let lastnames = ["Huds", "Anstan", "Shakesphere", "Swift"]
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastnames.randomElement()
                
                
//                creating object for an Student object from core data
                let student = Student(context: self.moc)
                student.id  = UUID()
                student.name = "\(chosenFirstName)! \(chosenLastName)!"
                try? self.moc.save()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
