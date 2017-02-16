//
//  XCache.swift
//  XCache
//
//  Created by gong on 2017/1/10.
//  Copyright © 2017年 gong. All rights reserved.
//

import UIKit

class XCache: NSObject {
    
    //读取缓存大小
    static func returnCachSize() -> String{
        return String(format: "%.2f", XCache.folderSizeAtPath(folderPath: NSHomeDirectory()))
    }
    
    //计算单个文件的大小 单位MB
    //-parameter path 文件的路径
    //-return:返回文件的大小
    static func returnFileSize(path:String) -> Double {
        let manage = FileManager.default
        var fileSize:Double = 0
        do {
            fileSize = try manage.attributesOfItem(atPath:path)[FileAttributeKey.size] as! Double
        } catch {
            
        }
        return fileSize/1024/1024
    }
    
    //遍历所有子目录 并计算文件大小
    // parameter folderPath:目录路径
    // return：返回文件大小
    
    static func folderSizeAtPath(folderPath:String) -> Double{
        let manage = FileManager.default
        if !manage.fileExists(atPath: folderPath) {
            return 0
        }
        let childFilePath = manage.subpaths(atPath: folderPath)
        var fileSize:Double = 0
        for path in childFilePath! {
            let fileabsoluePath = folderPath+"/"+path
            fileSize += XCache.returnFileSize(path: fileabsoluePath)
        }
        
        return fileSize
        
    }
    
    //清除缓存
    static func cleanCache(completion:()->Void){
        XCache.deleteFolder(folderPath: NSHomeDirectory()+"/Documents")
        XCache.deleteFolder(folderPath: NSHomeDirectory()+"/Library")
        XCache.deleteFolder(folderPath: NSHomeDirectory()+"/tmp")
        
        completion()
    }
    
    //删除单个文件 
    // parameter path:文件路径
    static func deleteFile(path:String){
        let manage = FileManager.default
        do {
            try manage.removeItem(atPath: path)
        } catch {
        }
    }
    
    //删除文件夹下的所有文件
    // parameter path: 文件夹路径
    static func deleteFolder(folderPath:String){
        let manage = FileManager.default
        if !manage.fileExists(atPath: folderPath) {
        }
        let childFilePath = manage.subpaths(atPath: folderPath)
        for path in childFilePath! {
            let fileabsoluePath = folderPath+"/"+path
            XCache.deleteFile(path: fileabsoluePath)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}
