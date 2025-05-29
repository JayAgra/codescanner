//
//  ContentView.swift
//  codescanner
//
//  Created by Jayen Agrawal on 1/27/25.
//

import SwiftUI

struct ScanView: View {
    @State public var scannedValue: String?
    @State public var resetScan: Bool = true
    
    var body: some View {
        ZStack {
            ScannerView(scannedValue: $scannedValue, resetScan: $resetScan)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("scan a code")
                Spacer()
            }
            
            if scannedValue != nil {
                VStack {}
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black)
                ScrollView {
                    VStack {
                        Text(scannedValue ?? "No value scanned")
                            .padding()
                            .textSelection(.enabled)
                        Spacer()
                        Button("Done") {
                            scannedValue = nil
                            resetScan = true
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    ScanView(scannedValue: "Yooooooo", resetScan: false)
}

