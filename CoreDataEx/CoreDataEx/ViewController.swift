//
//  ViewController.swift
//  CoreDataEx
//
//  Created by 스마트금융과15 on 2018. 5. 4..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    
    @IBOutlet weak var m_textField: UITextField!
    
    @IBOutlet weak var m_saveButton: UISegmentedControl!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 저장하기 [START] =============================================
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        
        // access core data by manageable variable
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "UserData", into: context)
        
        newUser.setValue("황원용", forKey: "username")
        newUser.setValue("1111", forKey: "password")
        
        // 여러 데이터 입력하기
        do{
            let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
            newUser.setValue("황원용1234", forKey: "username")
            newUser.setValue("비번1234", forKey: "password")
            try context.save()
        }catch {
            
            print("There was an error")
            
        }
        
        do{
            let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
            newUser.setValue("황원용5678", forKey: "username")
            newUser.setValue("비번5678", forKey: "password")
            try context.save()
        }catch {
            
            print("There was an error")
            
        }
        
        do{
            let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
            newUser.setValue("황원용9012", forKey: "username")
            newUser.setValue("비번9012", forKey: "password")
            try context.save()
        }catch {
            
            print("There was an error")
            
        }
        
        do {
            
            try context.save()
            
            print("Core Data Saved")
            
        } catch {
            
            print("There was an error")
            
        }
        
        // 저장하기 [END] =============================================
        
        // 읽어오기 [START] =============================================
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserData")
        
        // request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "username = %@", "황원용1234") // SELECT * FROM UserData WHERE username = "황원용123"
        
        // request.returnsObjectsAsFaults = false
        
        do {
            
            let results = try context.fetch(request)
            
            if results.count > 0 {
                
                for result in results as! [NSManagedObject] { // for (i =0; i<10; i++) -> for (result =0; result<results; result++)
                    // for (k,v) in 복수(k,v)
                    // for i in range(0,10)
                    
                    if let username = result.value(forKey: "username") as? String {
                        
                        print(username)
                        
                    }
                    if let password = result.value(forKey: "password") as? String {
                        
                        print(password)
                        
                    }
                    
                    // 지우기 [START] =============================================
                    
                    /*
                     context.delete(result)
                     
                     do {
                     
                     try context.save()  // commit
                     
                     } catch {
                     
                     print ("Delete Failed")
                     
                     }
                     
                     */
                    
                    // 지우기 [END] =============================================
                    
                    // 업데이트 [START] =============================================
                    
                    /*
                    result.setValue("wonyong hwang", forKey: "username")
                    
                    do {
                        
                        try context.save()
                        
                    } catch {
                        
                        print("Rename failed")
                    }
                    */
                    
                    // 업데이트 [END] =============================================
                    
                }
                
            } else {
                
                print("No results")
                
            }
            
        } catch {
            
            print("Couldn't fetch results")
            
        }
        
        
        // 읽어오기 [END] =============================================
        
        // Predicate 응용 [START] =============================================
        
        let request2 = NSFetchRequest<NSFetchRequestResult>(entityName: "UserData")
        
        var attributeName  = "username"
        var attributeValue = "황원용"
        
        request2.predicate = NSPredicate(format: "%K CONTAINS %@", attributeName, attributeValue)   //SELECT * FROM UserData WHERE username like '%황원용%'
        
        do {
            
            let results = try context.fetch(request2)
            
            if results.count > 0 {
                
                for result in results as! [NSManagedObject] {
                    
                    if let username = result.value(forKey: "username") as? String {
                        
                        print(username)
                    }
                    if let pwd = result.value(forKey: "password") as? String {
                        
                        print(pwd)
                    }
                }
            }
            
        }catch {
            
            print("Couldn't fetch results111")
            
        }
        
    }
    
    
    // Predicate 응용 [END] =============================================
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

