//
//  Model.swift
//  StickerMoneyBook Watch App
//
//  Created by Jan    on 2026/1/11.
//

import Foundation


// MARK: Single User Financial Data

struct UserFinancialData {
    var income: Double
    var outgo: Double
}

// MARK: List - single entries, individual unit of data

struct Record {
    var date: Date
    var amount: Double
    var type: TransactionType
}

enum TransactionType {
    case spending
    case earning
}

