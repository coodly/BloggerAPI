/*
 * Copyright 2018 Coodly LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation

public struct Image: Codable {
    public let url: URL
    
    public var largeImageURL: URL {
        let replaced: [String: String] = [
            "w112-h200": "s1600",
            "w113-h200": "s1600",
            "/s200/": "/s1600/"
        ]
        
        for (sub, replace) in replaced {
            if let range = url.absoluteString.range(of: sub), let modified = URL(string: url.absoluteString.replacingCharacters(in: range, with: replace)) {
                return modified
            }
        }
        
        return url
    }
}
