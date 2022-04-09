//
//  AddItemView.swift
//  SnackTrack
//
//  Created by Jose Miranda on 4/7/22.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var expirationDate = Date.now
    @State private var itemDescription = ""
    @State private var type: Int16 = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Item Name", text: $name)
                }
                Section("Description") {
                    TextEditor(text: $itemDescription)
                }
                Section("Date of Expiration") {
                    DatePicker("Expiration Date", selection: $expirationDate, displayedComponents: .date)
                }
                Section {
                    Button("Save") {
                        let item = Item(context: moc)
                        
                        item.id = UUID()
                        item.name = name
                        item.itemDescription = itemDescription
                        item.expirationDate = expirationDate
                        item.type = type
                        
                        try? moc.save()
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add Item")
            
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
