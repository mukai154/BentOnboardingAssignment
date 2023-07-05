//
//  SignUpLoginView.swift
//  BentOnboardingAssignment
//
//  Created by Mukai Selekwa on 7/5/23.
//

import SwiftUI

struct SignUpLoginView: View {
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("This is an Assignment from Bent")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpLoginView()
    }
}
