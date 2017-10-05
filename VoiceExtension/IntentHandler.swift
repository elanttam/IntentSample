//
//  IntentHandler.swift
//  VoiceExtension
//
//  Created by Matthew Nale on 10/4/17.
//  Copyright © 2017 Matthew Nale. All rights reserved.
//

import Intents

class IntentHandler: INExtension, INSearchForAccountsIntentHandling {
    func handle(intent: INSearchForAccountsIntent, completion: @escaping (INSearchForAccountsIntentResponse) -> Void) {
        let account1 = INPaymentAccount(
            nickname: INSpeakableString(spokenPhrase: "Test Account 1"),
            number: nil,
            accountType: .checking,
            organizationName: INSpeakableString(spokenPhrase: "Fake Org"),
            balance: INBalanceAmount(amount: 4893.43, currencyCode: "USD"),
            secondaryBalance: INBalanceAmount(amount: 4893.43, currencyCode: "USD")
        )
        
        let account2 = INPaymentAccount(
            nickname: INSpeakableString(spokenPhrase: "Test Account 2"),
            number: nil,
            accountType: .saving,
            organizationName: INSpeakableString(spokenPhrase: "Fake Org"),
            balance: INBalanceAmount(amount: 15408.99, currencyCode: "USD"),
            secondaryBalance: INBalanceAmount(amount: 15403.99, currencyCode: "USD")
        )
        
        let response = INSearchForAccountsIntentResponse(code: .success, userActivity: nil)
        response.accounts = [account1, account2]
        
        completion(response)
    }
}

