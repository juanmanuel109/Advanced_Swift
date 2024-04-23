//example 1
print("example1")
let reservationsInPerson: Set = ["000-345-3443", "000-345-3442"]
let reservationsOverPhone: Set = ["000-345-3393", "000-345-5232"]
let reservationsOverInternet: Set = ["000-345-3398", "000-345-9867"]
let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
print("\(inPersonAndOverPhone)")
var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print("\(allPhoneNumbers)")
var confirmationCodes: Set = ["LL3450","LL3451","LL3452", "LL3453", "LL3454"]
print("all numbers:\(allPhoneNumbers.count) and confirmation codes: \(confirmationCodes.count)")
confirmationCodes.insert("LL3455")
print(confirmationCodes)
confirmationCodes.remove("LL3450")
allPhoneNumbers.remove("000-345-3443")
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")
//example 2
print("example2")
enum Week: Int, CaseIterable {
  case Monday = 1
  case Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

for day in Week.allCases {
  print("\(day) is day \(day.rawValue) of the week")
}
//example 3
print("example3")
var primes: Set = [2, 3, 5, 7]
print(primes.isSubset(of: 0..<10))
let favoriteNumbers = [5, 7, 15, 21]
print(primes.intersection(favoriteNumbers))

