//
//  ContentView.swift
//  SwiftUiExample
//
//  Created by Luke Belton on 30/09/2022.
//

import SwiftUI
import Bugsnag

func notifyBugsnag() {
    do {
        try FileManager.default.removeItem(atPath:"//invalid/file")
    } catch {
        Bugsnag.notifyError(error) { event in
            // modify report properties in the (optional) block
            event.severity = .info
            return true
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button(action: notifyBugsnag) {
                Text("Notify Bugsnag")
            }
        }
        .padding()
       
    }

}
               


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
