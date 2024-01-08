//
//  EditEtropusView.swift
//  Etropus
//
//  Created by David Oliveira on 07/01/24.
//

import SwiftUI

struct EditEtropusView: View {
    public var etropusEntity: EtropusEntity
    @ObservedObject var etropusData: EtropusData
    @State private var name: String
    @State private var phone: String
    @State private var symbol: String
    @State public var token: String
    @State public var investment: String

    @Environment(\.presentationMode) var presentationMode
    
    init(etropusEntity: EtropusEntity, etropusData: EtropusData) {
        self.etropusEntity = etropusEntity
        self.etropusData = etropusData
        self._name = State(initialValue: etropusEntity.name ?? "")
        self._phone = State(initialValue: etropusEntity.phone ?? "")
        self._symbol = State(initialValue: etropusEntity.symbol ?? "")
        self._token = State(initialValue: etropusEntity.token ?? "")
        self._investment = State(initialValue: etropusEntity.investment ?? "")
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Full Name", text: $name)
                TextField("Number Phone", text: $phone)
                TextField("Select Blockchain Type", text: $symbol)
                TextField("Select the Coin", text: $token)
                TextField("Inform Value Investiment Blockchain", text: $investment)

            }
            Section {
                Picker("Select Blockchain Type", selection: $symbol) {
                    ForEach(["- Select -", "🌎 Blockchain Public", "📊 Blockchain Consortium", "🌓 Blockchain Hybrid", "🔒 Blockchain Private"], id: \.self) { etropus in
                        Text(etropus)
                    }
                }
                Picker("Select Coin", selection: $token) {
                    ForEach(["- Select -", "🟡 Bitcoin", "🟠 Bitcoin Cash", "🟢 Ripple", "🔴 Bitcoin SV", "🔵 Ethereum", "🟣 EOS", "⚪ Litecoin", "🟤 Theter"], id: \.self) { etropus in
                        Text(etropus)
                    }
                }
                Button("Save Changes") {
                    updateEtropus()
                    presentationMode.wrappedValue.dismiss()
                    
                }
                .navigationBarTitle("Edit Contact Record")
            }
        }
    }
    
    func updateEtropus() {
        etropusEntity.name = name
        etropusEntity.phone = phone
        etropusEntity.symbol = symbol
        etropusEntity.token = token
        etropusEntity.investment = investment
        etropusData.saveEtropus()
        
    }
}
