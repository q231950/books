//
//  LoansView.swift
//  Books
//
//  Created by Martin Kim Dung-Pham on 08.06.19.
//  Copyright © 2019 Martin Kim Dung-Pham. All rights reserved.
//

import SwiftUI
import LibraryCore
import Combine

struct LoansView : View {
    @ObjectBinding var loansViewModel: LoansViewModel
    var body: some View {
        return VStack{
            Text("🌊")
            List(loansViewModel.loans, id: \.identifiedValue) { loanViewModel in
                LoanView(loanViewModel: loanViewModel)
            }
        }
        .tag(0)
        .tabItem { Text("Loans") }
    }
}


#if DEBUG
//    struct LoansView_Previews : PreviewProvider {
//        static var previews: some View {
//            let account = Account()
//            let authenticationManager = AuthenticationManager.stubbed({ (stub) in
//                stub.authenticated = true
//            })
//            let loansViewModel = LoansViewModel(account: account, authenticationManager: authenticationManager)
//            return LoansView(loansViewModel: loansViewModel)
//        }
//    }
#endif
