//
//  Bundle+appName.swift
//  SwiftRadio
//
//  Created by Aliaydar Berkimbekov on 15.04.2024.
//

import Foundation

extension Bundle {
    var appName: String {
        object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ??
        object(forInfoDictionaryKey: "CFBundleName") as? String ??
        ""
    }
}
