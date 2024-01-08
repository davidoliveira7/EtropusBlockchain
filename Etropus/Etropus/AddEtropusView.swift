//
//  AddEtropusView.swift
//  Etropus
//
//  Created by David Oliveira on 07/01/24.
//

import SwiftUI
import CoreData

struct AddEtropusView: View {
    @ObservedObject var etropusData: EtropusData
    @State private var name = ""
    @State private var phone = ""
    @State private var symbol = ""
    @State private var token = ""
    @State private var investment = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            Section {
                TextField("Full Name", text: $name)
                TextField("Number Phone", text: $phone)
                TextField("Inform Value Investment Blockchain", text: $investment)
            }
            Section {
                Picker("Select Blockchain Type", selection: $symbol) {
                    ForEach(["- Select -", "🌎 Blockchain Public", "📊 Blockchain Consortium", "🌓 Blockchain Hybrid", "🔒 Blockchain Private"], id: \.self) { etropus in
                        Text(etropus)
                    }
                }
                Picker("Select Coin", selection: $token) {
                    ForEach(["- Select -", "🟠 Bitcoin Cash", "🟡 Bitcoin", "🟢 Ripple", "🔴 Bitcoin SV", "🔵 Ethereum", "🟣 EOS", "⚪ Litecoin", "🟤 Theter"], id: \.self) { etropus in
                        Text(etropus)
                    }
                }
                Button("To add Register") {
                    let newEtropus = EtropusEntity(context: etropusData.context)
                    newEtropus.name = name
                    newEtropus.phone = phone
                    newEtropus.symbol = symbol
                    newEtropus.token = token
                    newEtropus.investment = investment
                    etropusData.saveEtropus()
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
        .navigationBarTitle("New Contact")
    }
}
        struct Etropus_Previews: PreviewProvider {
            static var previews: some View {
                AddEtropusView(etropusData: EtropusData())
            }
        }
