//
//  VerificationView.swift
//  CashDaddy
//
//  Created by Ruchira  on 20/06/24.
//

import SwiftUI

struct VerificationView: View {
    @State private var verificationCode: String = ""

    var body: some View {
        VStack {
            Text("Enter your Verification Code")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 40)
                .padding(.horizontal)

            HStack(spacing: 15) {
                ForEach(0..<6) { index in
                    TextField("", text: Binding(
                        get: { String(verificationCode.prefix(index + 1).suffix(1)) },
                        set: { value in
                            if value.count <= 1 {
                                if value.isEmpty {
                                    verificationCode = String(verificationCode.prefix(index))
                                } else {
                                    verificationCode = String(verificationCode.prefix(index)) + value + String(verificationCode.dropFirst(index + 1))
                                }
                            }
                        }
                    ))
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                    .frame(width: 40, height: 40)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }
            }
            .padding(.top, 20)
            .padding(.horizontal, 40)

            Text("04:59")
                .font(.subheadline)
                .foregroundColor(.primary)
                .padding(.top, 20)

            Text("We sent a verification code to your mobile number. You can check your inbox.")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.top, 10)

            Text("Didn't receive the code? Send again")
                .font(.subheadline)
                .foregroundColor(.pink)
                .padding(.top, 5)

            Spacer()

            Button(action: {
                // Action for Verify button
            }) {
                Text("Verify")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.primary)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            .padding(.bottom, 20)

            Spacer()
        }
        .navigationTitle("Verification")
        .navigationBarBackButtonHidden(false)
    }
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView()
    }
}
