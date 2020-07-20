//
//  FormList.swift
//  BuildingExpandableListWithHierarchicalData
//
//  Created by ramil on 20.07.2020.
//

import SwiftUI

struct FormList: View {
    
    @State var isProfileSectionExpanded = true
    @State var isNotificationExpanded = true
    
    var body: some View {
        VStack {
            SidebarList(items: Item.stubs)
            
            Form {
                Section {
                    DisclosureGroup(isExpanded: $isProfileSectionExpanded) {
                        TextField("First Name", text: .constant(""))
                        TextField("Last Name", text: .constant(""))
                        TextField("Email", text: .constant(""))
                        
                        DatePicker("Birthdate", selection: .constant(Date()))
                    } label: {
                        Text("Personal Information")
                    }
                }
                
                Section {
                    DisclosureGroup(isExpanded: $isNotificationExpanded) {
                        Toggle("Push", isOn: .constant(true))
                        Toggle("SMS", isOn: .constant(false))
                        Toggle("Email", isOn: .constant(true))
                    } label: {
                        Text("Notification Preferences")
                    }
                }
            }
        }
    }
}

struct FormList_Previews: PreviewProvider {
    static var previews: some View {
        FormList()
    }
}
