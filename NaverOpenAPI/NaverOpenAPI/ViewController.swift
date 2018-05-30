//
//  ViewController.swift
//  NaverOpenAPI
//
//  Created by 스마트금융과15 on 2018. 4. 18..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    
    let naverUrl = "https://openapi.naver.com/v1/search/blog?query="  //네이버 Open API 주소
    var retStr3:String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textFieldEnter(_ sender: Any) {
        dataReq()
    }
    
    func dataReq(){
        //Naver Open API 호출
        //0. 사용자가 입력한 검색어를 받아온다
        //1. Naver Open API URL => String
        //2. Client ID, secret(네이버 관리자센터) => HTTP Header
        //3. 1 + 2 => GET 방식으로 HTTP 호출
        //4. Naver 서버 => 응답(response)
        //5. 응답 => parsing(내가 원하는 데이터를 추출)
        //6. TextView에 디스플레이
        
        let usrQuery = myTextField.text
        
        //URL 인코딩  ex> 한국폴리텍대학 => %ED%99%F5...
        let encodingQuery = usrQuery!.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)
        
        //myUrl = naverUrl + 인코딩된 질의어
        let myUrl = URL(string: (naverUrl + encodingQuery!))!
        
        //HTTP 통신시 세션을 공유한다
        let session4 = URLSession.shared
        
        //HTTP Request 객체를 만든다
        let request = NSMutableURLRequest(url: myUrl)
        
        //request.httpMethod = "POST" // POST 방식인 경우
        request.httpMethod = "GET" // GET 방식인 경우
        
        //ID, Secret 설정 => HTTP 헤더에 설정
        request.setValue("xCawFtu8X_u5vjhILROs", forHTTPHeaderField: "X-Naver-Client-Id")
        request.setValue("QzsfI3Va__", forHTTPHeaderField: "X-Naver-Client-Secret")
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData //캐시 사용안함
        
        let taskTest = session4.dataTask(with: request as URLRequest, completionHandler: onFinish)
        
        taskTest.resume()
        
    }
    
    func onFinish(data: Data?, response: URLResponse?, error: Error?) {
        print(data)
        
        do{
            let array = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
        /*    JSON        ===>       NSDictionary  {key:value, key:value, key:value, }
                [
                {key:value, key:value },
                {key:value, key:value },     ===>   as! NSDictionary
                {key:value, key:value },
                {key:value, key:value },
        */
            
        // ("---------------------- 딕셔너리 변환2 -------------------------")
        print(array)  //dictionary key:value      예>사과:apple
            
        // ("---------------------- key가 item인 value를 추출2 -------------------------")
        print(array["items"]!)  //array["key"] = "value"
            
        // {key:value, key:value, key:value, } ==> ["value","value","value",... 10 items]
        let temp = array["items"] as! NSArray   //배열로 변환
            
        print("--------------------- 배열의 크기는2 ---------------------------")
        print(temp.count) // ["value","value","value",... 10 items]
            
        self.retStr3.removeAll()
            for i in 0..<temp.count{
                var tempArray2 = temp[i] as! NSDictionary
                self.retStr3.append("순번 : \(i)")
                self.retStr3.append("\n")
                self.retStr3.append("블로거네임 : ")
                self.retStr3.append(tempArray2["bloggername"] as! String)
                self.retStr3.append("\n")
                self.retStr3.append("블로거링크 : ")
                self.retStr3.append(tempArray2["bloggerlink"] as! String)
                self.retStr3.append("\n")
                self.retStr3.append("-----------------")
                self.retStr3.append("\n")
            }
            
            
        } catch {
            print ("JSON Parsing Error")
        }
            
            
    }
        
        
        
        
        
    
    
    
    
    
    
}

