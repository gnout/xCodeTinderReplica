//
//  PurchasePopup.swift
//  replica
//
//  Created by Stamp Dev on 26/7/21.
//

import SwiftUI

struct PurchasePopup: View {
    @Binding var isVisible: Bool
    
    @State private var selectedIndex: Int = 1
    
    let screen = UIScreen.main.bounds
    let subscriptions: [Subscription] = [
        Subscription.example1,
        Subscription.example2,
        Subscription.example3
    ]
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                    .frame(height: 40)
                
                VStack {
                    Text("Get Tinder Gold")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24, weight: .bold))
                    
                    PurchaseSwipePromo()
                        .frame(height: geo.size.height / 3)
                        .padding(.top, -35)
                    
                    HStack {
                        ForEach(subscriptions.indices) { subIndex in
                            let sub = subscriptions[subIndex]
                            
                            PurchaseOptionView(sub: sub, isSelected: subIndex == selectedIndex)
                                .onTapGesture(perform: {
                                    selectedIndex = subIndex
                                })
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: { processPayment() }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45)
                                .foregroundColor(.yellow)
                            
                            Text("CONTINUE")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .heavy))
                        }
                    })
                    .frame(height: 55)
                    .padding(.horizontal, 24)
                    .padding(.top, 12)
                    
                    Button(action: { isVisible = false }, label: {
                        Text("NO THANKS")
                            .foregroundColor(.textPrimary)
                            .font(.system(size: 20, weight: .heavy))
                    })
                    .padding(.vertical, 18)
                }
                .frame(width: geo.size.width)
                .padding(.vertical, 20)
                .background(RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .foregroundColor(.white))
                
                Spacer()
                
                VStack(spacing: 4) {
                    Text("Recurring billing, cancel anytime.")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("This is a bunch of example text that is representig the legal text found on all subscription pages. Out of respect to the original application we will not be copying over their legal text word for word here.")
                        .foregroundColor(.white.opacity(0.5))
                        .font(.system(size: 14, weight: .semibold))
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 4)
                
                Spacer()
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
        .frame(height: screen.height)
    }
    
    func processPayment() {
        //let product = subscriptions[selectedIndex]
        // network request to buy the selected subscription
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    static var previews: some View {
        PurchasePopup(isVisible: .constant(true))
    }
}
