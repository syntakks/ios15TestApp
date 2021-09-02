//
//  KeyboardFocusView.swift
//  KeyboardFocusView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct KeyboardFocusView: View {
  
  enum Field {
    case firstName
    case lastName
    case emailAddress
  }
  
  @State private var firstName = ""
  @State private var lastName = ""
  @State private var emailAddress = ""
  @FocusState private var focusedField: Field?
  
  var body: some View {
    Form {
      Section(header: Text("User Info")) {
        TextField("Enter your first name", text: $firstName)
          .focused($focusedField, equals: .firstName)
          .textContentType(.givenName)
          .submitLabel(.next)
        TextField("Enter your last name", text: $lastName)
          .focused($focusedField, equals: .lastName)
          .textContentType(.familyName)
          .submitLabel(.next)
        TextField("Enter your email", text: $emailAddress)
          .focused($focusedField, equals: .emailAddress)
          .textContentType(.emailAddress)
          .submitLabel(.join)
      }
    }
    .onSubmit {
      switch focusedField {
      case .firstName: focusedField = .lastName
      case .lastName: focusedField = .emailAddress
      // Default/emailAddress is where you could do your input validation or call a web request
      default: print("Joining chat room...")
      }
    }
    .navigationTitle("Focus States")
  }
  
}
  
  struct KeyboardFocusView_Previews: PreviewProvider {
    static var previews: some View {
      KeyboardFocusView()
    }
  }
