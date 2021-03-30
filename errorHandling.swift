import Foundation

enum CreditcardError: Error {
    case numberInvalid
    case insufficientFunds
    case flaggedFraudulent
}

func checkCreditcard(withNumber card: String, amount: Int) throws -> Bool {

    let funds = 20

    if funds < amount {
        throw CreditcardError.insufficientFunds
    }
    if card != "1234" {
        throw CreditcardError.flaggedFraudulent
    }
    return true
}

var result = false 

do {
    result = try checkCreditcard(withNumber: "12344", amount: 10)
} catch CreditcardError.numberInvalid  {
    print("Invalid cardnumber")
} catch CreditcardError.insufficientFunds {
    print("Your account balance is not enough for this transaction")
} catch CreditcardError.flaggedFraudulent {
    print("You will be arrested!")
}

print(result)

