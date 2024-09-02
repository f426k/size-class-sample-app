//
//  Logger.swift
//  sizeClassSampleApp
//
//  Created by Fuka Takashima on 2024/09/02.
//

import Foundation
import os

public enum Logger {
    public static let standard: os.Logger = .init(
        subsystem: Bundle.main.bundleIdentifier!,
        category: LogCategory.standard.rawValue
    )
}

// MARK: - Privates

private enum LogCategory: String {
     case standard = "Standard"
}

