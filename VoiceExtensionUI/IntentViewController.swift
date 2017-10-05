//
//  IntentViewController.swift
//  VoiceExtensionUI
//
//  Created by Matthew Nale on 10/4/17.
//  Copyright © 2017 Matthew Nale. All rights reserved.
//

import IntentsUI

class IntentViewController: UIViewController, INUIHostedViewControlling {
    
    func configureView(for parameters: Set<INParameter>, of interaction: INInteraction, interactiveBehavior: INUIInteractiveBehavior, context: INUIHostedViewContext, completion: @escaping (Bool, Set<INParameter>, CGSize) -> Void) {
        
        let accountsParam = INParameter(for: INSearchForAccountsIntentResponse.self, keyPath: #keyPath(INSearchForAccountsIntentResponse.accounts))
        if parameters.contains(accountsParam) {
            completion(true, [accountsParam], self.desiredSize)
        } else {
            completion(true, parameters, self.desiredSize)
        }
    }
    
    var desiredSize: CGSize {
        return self.extensionContext!.hostedViewMaximumAllowedSize
    }
    
}
