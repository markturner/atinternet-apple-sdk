/*
This SDK is licensed under the MIT license (MIT)
Copyright (c) 2015- Applied Technologies Internet SAS (registration number B 403 261 258 - Trade and Companies Register of Bordeaux – France)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/





//
//  Video.swift
//  Tracker
//

import Foundation

/// Wrapper class for Video tracking
public class Video: RichMedia {
    
    /// Media type
    @objc let type: String = "video"
    
    /// Duration
    @objc public var duration: Int = 0
    
    /// Set parameters in buffer
    override func setEvent() {
        super.setEvent()
        
        if (self.duration > 86400) {
            self.duration = 86400
        }
        
        _ = self.tracker.setParam("m1", value: duration)
        _ = self.tracker.setParam("type", value: type)
    }
    
}

/// Wrapper class to manage Video instances
public class Videos: NSObject {
    
    @objc var list: [String: Video] = [String: Video]()
    
    /// MediaPlayer instance
    @objc var player: MediaPlayer
    
    /**
    Videos initializer
    - parameter player: the player instance
    - returns: Videos instance
    */
    @objc init(player: MediaPlayer) {
        self.player = player
    }

    /// Add a new video
    ///
    /// - Parameters:
    ///   - mediaLabel: video name
    ///   - duration: video duration in seconds
    /// - Returns: the new video instance
    @objc public func add(_ mediaLabel:String, duration: Int) -> Video {
        if let video = self.list[mediaLabel] {
            self.player.tracker.delegate?.warningDidOccur?("A Video with the same name already exists.")
            return video
        } else {
            let video = Video(player: player)
            video.mediaLabel = mediaLabel
            video.duration = duration
            
            self.list[mediaLabel] = video
            
            return video
        }
    }

    /// Add a new video
    ///
    /// - Parameters:
    ///   - name: video name
    ///   - chapter1: chapter1 label
    ///   - duration: video duration in seconds
    /// - Returns: the new video instance
    @available(*, deprecated, renamed: "add(mediaLabel:mediaTheme1:duration:)")
    @objc public func add(_ name: String, chapter1: String, duration: Int) -> Video {
        if let video = self.list[name] {
            self.player.tracker.delegate?.warningDidOccur?("A Video with the same name already exists.")
            return video
        } else {
            let video = Video(player: player)
            video.mediaLabel = name
            video.duration = duration
            video.mediaTheme1 = chapter1
            
            self.list[name] = video
            
            return video
        }
    }
    
    /// Add a new video
    ///
    /// - Parameters:
    ///   - mediaLabel: video name
    ///   - mediaTheme1: chapter1 label
    ///   - duration: video duration in seconds
    /// - Returns: the new video instance
    @objc public func add(_ mediaLabel: String, mediaTheme1: String, duration: Int) -> Video {
        if let video = self.list[mediaLabel] {
            self.player.tracker.delegate?.warningDidOccur?("A Video with the same name already exists.")
            return video
        } else {
            let video = Video(player: player)
            video.mediaLabel = mediaLabel
            video.duration = duration
            video.mediaTheme1 = mediaTheme1
            
            self.list[mediaLabel] = video
            
            return video
        }
    }
    
    /// Add a new video
    ///
    /// - Parameters:
    ///   - name: video name
    ///   - chapter1: chapter1 label
    ///   - chapter2: chapter2 label
    ///   - duration: video duration in seconds
    /// - Returns: the new video instance
    @available(*, deprecated, renamed: "add(mediaLabel:mediaTheme1:mediaTheme2:duration:)")
    @objc public func add(_ name: String, chapter1: String, chapter2: String, duration: Int) -> Video {
        if let video = self.list[name] {
            self.player.tracker.delegate?.warningDidOccur?("A Video with the same name already exists.")
            return video
        } else {
            let video = Video(player: player)
            video.mediaLabel = name
            video.duration = duration
            video.mediaTheme1 = chapter1
            video.mediaTheme2 = chapter2
            
            self.list[name] = video
            
            return video
        }
    }
    
    /// Add a new video
    ///
    /// - Parameters:
    ///   - mediaLabel: video name
    ///   - mediaTheme1: chapter1 label
    ///   - mediaTheme2: chapter2 label
    ///   - duration: video duration in seconds
    /// - Returns: the new video instance
    @objc public func add(_ mediaLabel: String, mediaTheme1: String, mediaTheme2: String, duration: Int) -> Video {
        if let video = self.list[mediaLabel] {
            self.player.tracker.delegate?.warningDidOccur?("A Video with the same name already exists.")
            return video
        } else {
            let video = Video(player: player)
            video.mediaLabel = mediaLabel
            video.duration = duration
            video.mediaTheme1 = mediaTheme1
            video.mediaTheme2 = mediaTheme2
            
            self.list[mediaLabel] = video
            
            return video
        }
    }
    
    /// Add a new video
    ///
    /// - Parameters:
    ///   - name: video name
    ///   - chapter1: chapter1 label
    ///   - chapter2: chapter2 label
    ///   - chapter3: chapter3 label
    ///   - duration: video duration in seconds
    /// - Returns: the new video instance
    @available(*, deprecated, renamed: "add(mediaLabel:mediaTheme1:mediaTheme2:mediaTheme3:duration:)")
    @objc public func add(_ name: String, chapter1: String, chapter2: String, chapter3: String, duration: Int) -> Video {
        if let video = self.list[name] {
            self.player.tracker.delegate?.warningDidOccur?("A Video with the same name already exists.")
            return video
        } else {
            let video = Video(player: player)
            video.mediaLabel = name
            video.duration = duration
            video.mediaTheme1 = chapter1
            video.mediaTheme2 = chapter2
            video.mediaTheme3 = chapter3
            
            self.list[name] = video
            
            return video
        }
    }
    
    /// Add a new video
    ///
    /// - Parameters:
    ///   - mediaLabel: video name
    ///   - mediaTheme1: chapter1 label
    ///   - mediaTheme2: chapter2 label
    ///   - mediaTheme3: chapter3 label
    ///   - duration: video duration in seconds
    /// - Returns: the new video instance
    @objc public func add(mediaLabel: String, mediaTheme1: String, mediaTheme2: String, mediaTheme3: String, duration: Int) -> Video {
        if let video = self.list[mediaLabel] {
            self.player.tracker.delegate?.warningDidOccur?("A Video with the same name already exists.")
            return video
        } else {
            let video = Video(player: player)
            video.mediaLabel = mediaLabel
            video.duration = duration
            video.mediaTheme1 = mediaTheme1
            video.mediaTheme2 = mediaTheme2
            video.mediaTheme3 = mediaTheme3
            
            self.list[mediaLabel] = video
            
            return video
        }
    }
    
    /// Remove a video
    ///
    /// - Parameter mediaLabel: video name
    @available(*, deprecated, renamed: "remove(mediaLabel:)")
    @objc public func remove(_ mediaLabel: String) {
        if let timer = list[mediaLabel]?.timer {
            if timer.isValid {
                list[mediaLabel]!.sendStop()
            }
        }
        self.list.removeValue(forKey: mediaLabel)
    }
    
    /**
    Remove all videos
    */
    @objc public func removeAll() {
        for (_, value) in self.list {
            if let timer = value.timer {
                if timer.isValid {
                    value.sendStop()
                }
            }
        }
        self.list.removeAll(keepingCapacity: false)
    }
}
