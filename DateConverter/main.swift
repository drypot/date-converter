//
//  main.swift
//  DateConverter
//
//  Created by Kyuhyun Park on 1/6/25.
//

import Foundation

var style = Date.FormatStyle()
//    .year(.defaultDigits)
    .month(.wide)
    .day()
    .hour(.defaultDigits(amPM: .abbreviated))
    .minute()
    .weekday(.wide)
    .timeZone(.genericName(.short));

style.locale = Locale(identifier: "en_US")
style.timeZone = TimeZone(identifier: "PST")!

let parsedDate = try style.parse("Monday, January 6 at 6:20 PM PST")

style.locale = Locale(identifier: "ko_KR")
style.timeZone = TimeZone(identifier: "Asia/Seoul")!

print(parsedDate.formatted(style))

//let sampleDate = Date(timeIntervalSinceReferenceDate: 751451410.0)
//print(sampleDate.formatted(style))
