//
//  DateConverterFrameworkTests.swift
//  DateConverterFrameworkTests
//
//  Created by Kyuhyun Park on 1/6/25.
//

import Testing
@testable import DateConverterFramework

struct DateConverterFrameworkTests {

    @Test func example() async throws {
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

        let dateString = "Monday, January 6 at 6:20 PM PST"
        let parsedDate = try style.parse(dateString)

        style.locale = Locale(identifier: "ko_KR")
        style.timeZone = TimeZone(identifier: "Asia/Seoul")!

//        let convertedString = parsedDate.formatted(style)
        let convertedString = style.format(parsedDate)
        #expect(convertedString == "1월 7일 화요일 오전 11:20 대한민국 시간")

        //let sampleDate = Date(timeIntervalSinceReferenceDate: 751451410.0)
        //print(sampleDate.formatted(style))
    }

}
