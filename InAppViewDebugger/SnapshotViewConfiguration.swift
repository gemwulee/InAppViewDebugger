//
//  SnapshotViewConfiguration.swift
//  InAppViewDebugger
//
//  Created by Indragie Karunaratne on 3/31/19.
//  Copyright © 2019 Indragie Karunaratne. All rights reserved.
//

import UIKit

/// Configuration options for the 3D snapshot view.
@objc(IAVDSnapshotViewConfiguration) public final class SnapshotViewConfiguration: NSObject {
    /// Attributes used to customize the header rendered above the UI element.
    @objc(IAVDSnapshotViewHeaderAttributes) public final class HeaderAttributes: NSObject {
        /// The background color of the header rendered above each view
        /// that has name text.
        @objc public var color = UIColor.darkGray
        
        /// The corner radius of the header background.
        @objc public var cornerRadius: CGFloat = 8.0
        
        /// The top and bottom inset between the header and the name text.
        @objc public var verticalInset: CGFloat = 8.0
        
        /// The font used to render the name text in the header.
        @objc public var font = UIFont.boldSystemFont(ofSize: 13)
    }
    
    /// The spacing between layers along the z-axis.
    @objc public var zSpacing: Float = 50.0
    
    /// The minimum spacing between layers along the z-axis.
    @objc public var minimumZSpacing: Float = 0.0
    
    /// The maximum spacing between layers on the z-axis.
    @objc public var maximumZSpacing: Float = 100.0
    
    /// The scene's background color, which gets rendered behind
    /// all content.
    @objc public var backgroundColor = UIColor.white
    
    /// The color of the highlight overlaid on top of a UI element when it
    /// is selected.
    @objc public var highlightColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.5)
    
    /// The attributes for a header of normal importance.
    @objc public var normalHeaderAttributes: HeaderAttributes = {
        var attributes = HeaderAttributes()
        attributes.color = UIColor(red: 0.000, green: 0.533, blue: 1.000, alpha: 0.900)
        return attributes
    }()
    
    /// The attributes for a header of higher importance.
    @objc public var importantHeaderAttributes: HeaderAttributes = {
        var attributes = HeaderAttributes()
        attributes.color = UIColor(red: 0.961, green: 0.651, blue: 0.137, alpha: 0.900)
        return attributes
    }()
    
    /// The font used to render the description for a selected element.
    @objc public var descriptionFont = UIFont.systemFont(ofSize: 14)
}
