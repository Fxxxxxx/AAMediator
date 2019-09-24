//
//  AAMediator.swift
//  AALRUCache
//
//  Created by cztv on 2019/9/24.
//

import AALRUCache
import Foundation
import ObjectiveC

public class AAMediator: NSObject {
    public static let shared = AAMediator()
    let mainModuleName = Bundle.main.infoDictionary?["CFBundleExecutable"] as? String ?? ""
    lazy var targetCache = {
        return AALRUCache<String, NSObject>.init(10)
    }()
    
    public func perform(target targetName: String, action actionName: String, module moduleName:String? = nil, params: [String: Any]) -> Any? {
        let mName = moduleName == nil ? mainModuleName : moduleName!
        let fullName = mName + ".Target_" + targetName
        var target = targetCache[fullName]
        if target == nil {
            guard let targetClass = (NSClassFromString(fullName) as? NSObject.Type) else {
                return nil
            }
            target = targetClass.init()
            targetCache[fullName] = target
        }
        let sel = NSSelectorFromString("Action_" + actionName + ":")
        if target?.responds(to: sel) ?? false {
            return target?.perform(sel, with: params)?.takeUnretainedValue()
        }
        return nil
    }
}
