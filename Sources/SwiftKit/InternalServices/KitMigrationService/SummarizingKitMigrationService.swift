//
//  SummarizingKitMigrationService.swift
//  SwiftKit
//
//  Created by Sven Tiigi on 26.05.19.
//

import Foundation

// MARK: - SummarizingKitMigrationService

/// The SummarizingKitMigrationService
struct SummarizingKitMigrationService {
    
    /// The KitMigrationServices
    let kitMigrationServices: [KitMigrationService]
    
}

// MARK: - KitMigrationService

extension SummarizingKitMigrationService: KitMigrationService {
    
    /// Migrate Kit at Directory
    ///
    /// - Parameters:
    ///   - kit: The Kit
    ///   - kitDirectory: The Kit Directory
    /// - Throws: If migration fails
    func migrate(kit: Kit, at kitDirectory: Kit.Directory) throws {
        // For each KitMigrationService
        for kitMigrationService in self.kitMigrationServices {
            // Try to migrate Kit at Directory
            try kitMigrationService.migrate(
                kit: kit,
                at: kitDirectory
            )
        }
    }
    
}
