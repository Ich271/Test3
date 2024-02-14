//
//  ContentView.swift
//  Test3
//
//  Created by Peter-Paul Manzel on 22.01.24.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode: String = ""
    
    var body: some View {
        NavigationView {
        
            VStack {
                
                
                
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame(height: 60)
                
                Label("Scanned Barcode: ",
                      systemImage: "barcode.viewfinder")
                    .font(.title)
                    .padding()
                
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                    .font(.largeTitle)
               
            }
            .navigationTitle("Bacrode Scanner")
            
            
        }
        
        
    }
}

#Preview {
    BarcodeScannerView()
}
