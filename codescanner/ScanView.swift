//
//  ContentView.swift
//  codescanner
//
//  Created by Jayen Agrawal on 1/27/25.
//

import SwiftUI

struct ScanView: View {
    @State private var scannedValue: String?
    @State private var resetScan: Bool = true
    
    var body: some View {
        ZStack {
            ScannerView(scannedValue: $scannedValue, resetScan: $resetScan)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("scan a code")
                Spacer()
            }
            
            if scannedValue != nil {
                VStack {
                    Spacer()
                    Spacer()
                    Text(scannedValue ?? "No value scanned").padding()
                    Spacer()
                    Button("Done") {
                        scannedValue = nil
                        resetScan = true
                    }
                    Spacer()
                }
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
            }
        }
    }
}

#Preview {
    ScanView()
}

