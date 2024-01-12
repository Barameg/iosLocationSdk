//
//  locationservices.swift
//  locationservices
//
//  Created by Hosam Hasan on 10/22/23.
//
import Foundation
extension String {
    func urlEncode() -> String? {
        return self.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }
}

public class Services {
    
    private static var SESSION = ""
    private static var CLIENT_ID = ""
    private static var CLIENT_KEY = ""
    
    private static var supemfir = "su"
    private static var supemsec = "ppo"
    private static var supemthi = "rt@ba"
    private static var supemfou = "rameg"
    private static var supem = supemfir + supemsec + supemthi + supemfou
    
    private static var cuer = "Internal error, contact " + supem
    
    private static var pf = "ht"
    private static var ps = "tps"
    private static var pt = "://"
    
    private static var lsdfir = "locat"
    private static var lsdsec = "ionse"
    private static var lsdthi = "rvices.ba"
    private static var lsdfou = "rameg.co/"
    
    private static var lsdfif = "api/di"
    private static var lsdsix = "sposableS"
    private static var lsdsev = "essions"
    
    private static var lsefir = "api"
    private static var lsesec = "/bi"
    private static var lsethi = "lling"
    private static var lsu = pf + ps + pt + lsdfir + lsdsec + lsdthi + lsdfou + lsefir + lsesec + lsethi
    
    private static var comhofir = "ww"
    private static var comhosec = "w.g"
    private static var comhothi = "oog"
    private static var comhofou = "le.c"
    private static var comhofif = "om/"
    
    private static var rgfir = "ma"
    private static var rgsec = "ps/pre"
    private static var rgthi = "view/dire"
    private static var rgfou = "ctions?au"
    private static var rgfif = "thuser=0&"
    private static var rgsix = "pb=!1m4!3m2!3d"//{latitude}
    private static var rgsev = "!4d"//{longitude}
    private static var rgeig = "!6e2!1m0!3m12!1m3!1d8!2d"//{longitude}
    private static var rgnin = "!3d"//{latitude}
    private static var rgten = "!2m3!1f0!2f0!3f0!3m2!1i1081!2i947!4f13.1!6m18!1m1!18b1!2m3!5m1!6e2!20e3!10b1!12b1!13b1!16b1!17m1!3e1!20m5!1e0!2e3!5e2!6b1!14b1!15m5!1s!2z!4m1!2i6892!7e81!20m28!1m6!1m2!1i0!2i0!2m2!1i530!2i947!1m6!1m2!1i1031!2i0!2m2!1i1081!2i947!1m6!1m2!1i0!2i0!2m2!1i1081!2i20!1m6!1m2!1i0!2i927!2m2!1i1081!2i947!27b1!28m0!40i668!47m0"
    private static var rgele = "&hl="// language
    private static var rgtwe = "&gl=" //country
    
    
    private static var sacfir = "s?tbm=ma"
    private static var sacsec = "p&gs_ri=ma"
    private static var sacthir = "ps&sug"
    private static var sacfou = "gest=p&au"
    private static var sacfif = "thuser="
    private static var sacsix = "0&pb="
    private static var sacpbfir = "!2i3!3m5!1m1!1s"//{encoded_address}
    private static var sacpbsec = "!1m1!1s"//{encoded_query}
    private static var sacpbthi = "!2i1!4m9!1m3!1d"//{location_id}
    private static var sacpbfou = "!2d"//{longitude}
    private static var sacpbfif = "!3d"//{latitude}
    private static var sacpbsix = "!2m0!3m2!1i1081!2i947!4f13.1!7i20!10b1!12m18!1m1!18b1"
    private static var sacpbsev = "!2m3!5m1!6e2!20e3!10b1!12b1!13b1!16b1!17m1!3e1!20m5!1e0!2e3!5e2!6b1!14b1!19m4!2m3!"
    private static var sacpbeig = "1i360!2i120!4i8!20m57!2m2!1i203!2i100!3m2!2i4!5b1!6m6!1m2!1i86!2i86!1m2!1i408!2i240!7m42!1m3!1e1!2b0!3e3!1m3!1e2!2b1!3e2!1m3!1e2"
    private static var sacpbnin = "!2b0!3e3!1m3!1e8!2b0!3e3!1m3!1e10!2b0!3e3!1m3!1e10!2b1!3e2!1m3!1e9!2b1!3e2!1m3!1e10!2b0!3e3!1m3!1e10!2b1!3e2!1m3!1e10!2b0!3e4!2b1!4b1!9b0!22m3!1s!3b1!7e81!24m88!1m29!13m9!2b1!3b1!4b1!6i1!"
    private static var sacpbten = "8b1!9b1!14b1!20b1!25b1!18m18!3b1!4b1!5b1!6b1!9b1!12b1!13b1!14b1!15b1!17b1!20b1!21b1!22b0!25b1!27m1!1b0!28b0!31b0!10m1!8e3!11m1!3e1!14m1!3b1!17b1!20m2!1e3!1e6!24b1!25b1!26b1!29b1!30m1!2b1!36b1!39m3!2m2!2i1!3i1!43b1!52b1!54m1!1b1"
    private static var sacpbele = "!55b1!56m2!1b1!3b1!65m5!3m4!1m3!1m2!1i224!2i298!71b1!72m17!1m5!1b1!2b1!3b1!5b1!7b1!4b1!8m8!1m6!4m1!1e1!4m1!1e3!4m1!1e4!3sother_user_reviews!9b1!89b1!103b1!113b1!117b1!26m4!2m3!1i80!2i92!4i8!34m18!2b1!3b1!4b1!6b1!8m6!1b1!3b1!4b1!5b1!6b1!7b1!9b1!12b1!14b1"
    private static var sacpbtwe = "!20b1!23b1!25b1!26b1!37m1!1e81!47m0!49m7!3b1!6m2!1b1!2b1!7m2!1e3!2b1!67m2!7b1!10b1!69i668&q="//{encoded_query}
    private static var sacpbthr = "&hl="//{language}
    private static var sacpbfor = "&gl="//{country}
    
    private static var fgfir = "sea"
    private static var fgsec = "rch?t"
    private static var fgthi = "bm=map&q="
    private static var fgfou = "&hl="
    private static var fgfif = "&gl="
    
    
    private static var fgserfir = "forw"
    private static var fgsersec = "ardGe"
    private static var fgserthi = "ocoding"
    private static var fgserna = fgserfir + fgsersec + fgserthi
    
    private static var rgserfir = "reve"
    private static var rgsersec = "rseGe"
    private static var rgserthi = "ocoding"
    private static var rgserna = rgserfir + rgsersec + rgserthi
    
    private static var sacserfir = "sear"
    private static var sacsersec = "chAut"
    private static var sacserthi = "ocomp"
    private static var sacserfou = "lete"
    private static var sacserna = sacserfir + sacsersec + sacserthi + sacserfou
    
    private static var esacserfir = "enha"
    private static var esacsersec = "nced"
    private static var esacserthi = "Sear"
    private static var esacserfou = "chAut"
    private static var esacserfif = "ocomp"
    private static var esacsersix = "lete"
    private static var esacserna = esacserfir + esacsersec + esacserthi + esacserfou + esacserfif + esacsersix
    
    private static var etaserfir = "rou"
    private static var etasersec = "tes"
    private static var etaserna = etaserfir + etasersec
    
    private static var huafir = "User-Agent: Mozilla/5.0 (Linux Android 12) Apple"
    private static var huasec = "WebKit/537.36 (KHTML, like Gecko) Chrome/"
    private static var huathi = "103.0.5060.71 Mobile Safari/537.36"
    private static var hua = huafir + huasec + huathi
    
    private static var etaufir = "ma"
    private static var etausec = "ps/pre"
    private static var etauthi = "vie"
    private static var etaufou = "w/dir"
    private static var etaufif = "ectio"
    private static var etausix = "ns?aut"
    private static var etausev = "huser=0&hl="
    private static var etaueig = "&gl="
    private static var etaupbfir = "&pb=!1m5!1s"
    private static var etaupbsec = "%2C+"
    private static var etaupbthi = "!3m2!3d"
    private static var etaupbfou = "!4d"
    private static var etaupbfif = "!6e2!1m1!1s"
    private static var etaupbsix = "%2C+"
    private static var etaupbsev = "!3m12!1m3!1d1!2d"
    private static var etaupbeig = "!3d"
    private static var etaupbnin = "!2m3!1f0!2f0!3f0!3m2!1i1122!2i956!4f13.1!6m33!1m1!18b1!2m3!5m1!6e2!20e3!6m13!4b1!49b1!74i150000!75b1!85b1!89b1!91b1!114b1!149b1!169b1!170i6!176f8!179f90!10b1!12b1!13b1!14b1!16b1!17m1!3e1!20m5!1e0!"
    private static var etaupbten = "2e3!5e2!6b1!14b1!8m0!15m4!1s!4m1!2i10305!7e81!20m28!1m6!1m2!1i0!2i0!2m2!1i530!2i956!1m6!1m2!1i1072!2i0!2m2!1i1122!2i956!1m6!1m2!1i0!2i0!2m2!1i1122!2i20!1m6!1m2!1i0!2i936!2m2!1i1122!2i956!27b1!28m0!40i663!47m0"
    
    public static func initSession(client_id: String, client_key: String) async throws -> String {
        var result: [String: Any]
        result = [:]
        let session = URLSession.shared
        guard let url = URL(string: "https://locationservices.barameg.co/api/disposableSessions") else {
            result["error"] = true
            result["message"] = "Internal error \(#line)"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        var request = URLRequest(url: url)
        request.addValue(client_id, forHTTPHeaderField: "client-id")
        request.addValue(client_key, forHTTPHeaderField: "client-key")
        request.httpMethod = "GET"
        let (data, response) = try await session.data(for: request)
        if let httpResponse = response as? HTTPURLResponse {
            let statusCode = httpResponse.statusCode
            print(statusCode)
            if statusCode == 200 {
                if let dataString = String(data: data, encoding: .utf8) {
                    // If the data represents text, print it as a string.
                    if dataString.isEmpty {
                        result["error"] = true
                        result["message"] = "Unsuccessful Authorization"
                        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                            let errorMessage = "Failed to stringify json reponse"
                            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                        }
                        return jsonString
                    }
                    SESSION = dataString
                    CLIENT_ID = client_id
                    CLIENT_KEY = client_key
                    result["error"] = false
                    result["message"] = "Authorization successful"
                    result["data"] = true
                    let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    return jsonString
                }
            }
        }
        result["error"] = true
        result["message"] = "Internal error \(#line): Couldn't make request"
        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            let errorMessage = "Failed to stringify json reponse"
            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        }
        return jsonString
    }
    
    
    
    private static func billing(client_id: String, client_key: String, service: String) async throws -> String {
        var result: [String: Any]
        result = [:]
        if(["enhancedSearchAutocomplete", "reverseGeocoding", "forwardGeocoding","routes", "searchAutocomplete"].contains(service)){
            // Create a URLSession instance.
            let session = URLSession.shared
            // Create a URL using the specified URL string.
            guard let url = URL(string: lsu) else {
                result["error"] = true
                result["message"] = "Internal error \(#line)"
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
            }
            // Create a URLRequest for the specified URL.
            var request = URLRequest(url: url)
            request.addValue(client_id, forHTTPHeaderField: "client-id")
            request.addValue(client_key, forHTTPHeaderField: "client-key")
            request.addValue(service, forHTTPHeaderField: "billing-service")
            request.httpMethod = "GET"
            // Use the 'data' task to fetch the response data.
            let (data, response) = try await session.data(for: request)
            if let httpResponse = response as? HTTPURLResponse {
                let statusCode = httpResponse.statusCode
                if statusCode == 200 {
                    if String(data: data, encoding: .utf8) != nil {
                        // If the data represents text, print it as a string.
                        result["error"] = false
                        result["data"] = true
                        result["message"] = "Successful billing transaction"
                        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                            let errorMessage = "Failed to stringify json reponse"
                            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                        }
                        return jsonString
                    }
                }
            }
            result["error"] = true
            result["message"] = "Internal error \(#line)"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        result["error"] = true
        result["message"] = "Internal error \(#line)"
        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            let errorMessage = "Failed to stringify json reponse"
            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        }
        return jsonString
    }

    
    private static func _reverseGeocoding(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        latitude: String,
        longitude: String
    ) async throws -> String {
        var result: [String: Any]
        var resultData: [String: Any]
        result = [:]
        resultData = [:]
        if(SESSION.isEmpty){
            result["error"] = true
            result["message"] = "Session not initiated!"
            result["data"] = resultData
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        
        if !SESSION.isEmpty && client_id == CLIENT_ID && client_key == CLIENT_KEY{
            let rgu = pf + ps + pt + comhofir + comhosec + comhothi + comhofou + comhofif + rgfir + rgsec + rgthi + rgfou + rgfif + rgsix + latitude + rgsev + longitude + rgeig + longitude + rgnin + latitude + rgten + rgele + language + rgtwe + country
            
            // Create a URLSession instance.
            let session = URLSession.shared
            
            // Create a URL using the specified URL string.
            guard let url = URL(string: rgu) else {
                result["error"] = true
                result["message"] = "Internal error \(#line)"
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
                
            }
            
            // Create a URLRequest for the specified URL.
            var request = URLRequest(url: url)
            
            request.addValue(hua, forHTTPHeaderField: "User-Agent")
            request.addValue(SESSION, forHTTPHeaderField: "Cookie")
            request.httpMethod = "GET"
            
            // Use the 'data' task to fetch the response data.
            let (data, response) = try await session.data(for: request)
            if let httpResponse = response as? HTTPURLResponse {
                let statusCode = httpResponse.statusCode
                if statusCode == 200 {
                    if let dataString = String(data: data, encoding: .utf8) {
                        // If the data represents text, print it as a string.
                        
                        // Assuming the text is a JSON string, remove the first 4 characters
                        let resultString = String(dataString.dropFirst(4))
                        let data = resultString.data(using: .utf8)!
                        let parsedResult:NSArray = try JSONSerialization.jsonObject(with: data) as! NSArray
                        //[0][0][0][0][9][1]
                        let firstArray:NSArray = parsedResult[0] as! NSArray
                        let first_first_Array:NSArray = firstArray[0] as! NSArray
                        let first_first_first_Array:NSArray = first_first_Array[0] as! NSArray

                        let first_first_first_first_Array:NSArray = first_first_first_Array[0] as! NSArray
                        let first_first_first_first_ninth_Array = first_first_first_first_Array[9] as! NSArray
                        print(first_first_first_first_ninth_Array)
                        let first_first_first_first_ninth_second = first_first_first_first_ninth_Array[1] as! String
                        resultData["address"] = first_first_first_first_ninth_second
                        // [2][0][2]
                        let first_first_first_first_ninth_fourth_Array = first_first_first_first_ninth_Array[3] as! NSArray
                        
                        let first_first_first_first_ninth_eleventh_third = first_first_first_first_ninth_fourth_Array[2]
                        resultData["latitude"] = first_first_first_first_ninth_eleventh_third
                        
                        let first_first_first_first_ninth_eleventh_fourth = first_first_first_first_ninth_fourth_Array[3]
                        resultData["longitude"] = first_first_first_first_ninth_eleventh_fourth

//                        let thirdArray:NSArray = parsedResult[2] as! NSArray
//                        let third_first_Array:NSArray = thirdArray[0] as! NSArray
//                        let latitude = third_first_Array[2]
//                        let longitude = third_first_Array[1]
//                        resultData["latitude"] = latitude
//                        resultData["longitude"] = longitude
                        result["error"] = false
                        result["message"] = "Request processed successfully"
                        result["data"] = resultData // Adding the JSON string to the resultData dictionary
                        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                            let errorMessage = "Failed to stringify json reponse"
                            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                        }
                        Task.detached {
                            try await billing(client_id:client_id, client_key:client_key,service:"reverseGeocoding")
                        }
                        return jsonString
                    }
                }
                result["error"] = true
                result["message"] = "Internal error \(#line)"
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
            }
            result["error"] = true
            result["message"] = "Internal error \(#line)"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        result["error"] = true
        result["message"] = "Internal error \(#line)"
        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            let errorMessage = "Failed to stringify json reponse"
            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        }
        return jsonString
    }

    
    private static func _internalReverseGeocoding(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        latitude: String,
        longitude: String
    ) async throws -> String {
        var result: [String: Any]
        var resultData: [String: Any]
        result = [:]
        resultData = [:]
        
        if SESSION.isEmpty {
            result["error"] = true
            result["message"] = "Session not initiated!"
            result["data"] = resultData
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        
        if !SESSION.isEmpty && client_id == CLIENT_ID && client_key == CLIENT_KEY{
            let rgu = pf + ps + pt + comhofir + comhosec + comhothi + comhofou + comhofif + rgfir + rgsec + rgthi + rgfou + rgfif + rgsix + latitude + rgsev + longitude + rgeig + longitude + rgnin + latitude + rgten + rgele + language + rgtwe + country
            
            // Create a URLSession instance.
            let session = URLSession.shared
            
            // Create a URL using the specified URL string.
            guard let url = URL(string: rgu) else {
                result["error"] = true
                result["message"] = "Internal error \(#line)"
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
            }
            
            // Create a URLRequest for the specified URL.
            var request = URLRequest(url: url)
            
            request.addValue(hua, forHTTPHeaderField: "User-Agent")
            request.addValue(SESSION, forHTTPHeaderField: "Cookie")
            request.httpMethod = "GET"
            
            // Use the 'data' task to fetch the response data.
            let (data, response) = try await session.data(for: request)
            if let httpResponse = response as? HTTPURLResponse {
                let statusCode = httpResponse.statusCode
                if statusCode == 200 {
                    if let dataString = String(data: data, encoding: .utf8) {
                        // If the data represents text, print it as a string.
                        
                        // Assuming the text is a JSON string, remove the first 4 characters
                        let resultString = String(dataString.dropFirst(4))
                        let data = resultString.data(using: .utf8)!
                        let parsedResult:NSArray = try JSONSerialization.jsonObject(with: data) as! NSArray
                        //[0][0][0][0][9][1]
                        let firstArray:NSArray = parsedResult[0] as! NSArray
                        let first_first_Array:NSArray = firstArray[0] as! NSArray
                        let first_first_first_Array:NSArray = first_first_Array[0] as! NSArray
                        let first_first_first_first_Array:NSArray = first_first_first_Array[0] as! NSArray
                        let first_first_first_first_ninth_Array = first_first_first_first_Array[9] as! NSArray
                        let first_first_first_first_ninth_second_Array = first_first_first_first_ninth_Array[1] as! String
                        resultData["address"] = first_first_first_first_ninth_second_Array
                        // [2][0][2]
                        let thirdArray:NSArray = parsedResult[2] as! NSArray
                        let third_first_Array:NSArray = thirdArray[0] as! NSArray
                        let latitude = third_first_Array[2]
                        let longitude = third_first_Array[1]
                        let location_id = third_first_Array[0]
                        resultData["latitude"] = latitude
                        resultData["longitude"] = longitude
                        resultData["location_id"] = location_id
                        result["error"] = false
                        result["message"] = "Request processed successfully"
                        result["data"] = resultData // Adding the JSON string to the resultData dictionary
                        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                            let errorMessage = "Failed to stringify json reponse"
                            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                        }
                        return jsonString
                    }
                    result["error"] = true
                    result["message"] = "Internal error \(#line)"
                    let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    return jsonString
                }
                result["error"] = true
                result["message"] = "Internal error \(#line)"
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
            }
            result["error"] = true
            result["message"] = "Internal error \(#line)"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        result["error"] = true
        result["message"] = "Internal error \(#line)"
        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            let errorMessage = "Failed to stringify json reponse"
            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        }
        return jsonString
    }

    
    public static func reverseGeocoding(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        latitude: String,
        longitude: String
    ) async throws -> String {
        let (data) = try await _reverseGeocoding(client_id: client_id, client_key: client_key, language: language, country: country, latitude: latitude, longitude: longitude)
        return data
    }
    
    
    private static func _searchAutocomplete(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        latitude: String,
        longitude: String,
        query: String
    ) async throws -> String {
        var result: [String: Any]
        result = [:]
        let _query:String = query.urlEncode()!
        var _location_id_string:String = ""
        if SESSION.isEmpty {
            result["error"] = true
            result["message"] = "Session not initiated!"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        
        if !SESSION.isEmpty && client_id == CLIENT_ID && client_key == CLIENT_KEY{
            var _address: String = ""
            var _location_id: NSNumber = 0.0
            do {
                let reverseGeocodingResult = try await Services._internalReverseGeocoding(
                    client_id: client_id,
                    client_key: client_key,
                    language: language,
                    country: country,
                    latitude: latitude,
                    longitude: longitude
                )
                
                guard let data = reverseGeocodingResult.data(using: .utf8),
                      let reverseGeocodingResultData = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
                    result["error"] = true
                    result["message"] = "Internal error \(#line)"
                    let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    return jsonString
                }
                let reverseGeocodingData = reverseGeocodingResultData["data"] as! [String:Any]
                _address = reverseGeocodingData["address"] as! String
                _location_id = reverseGeocodingData["location_id"] as! NSNumber
                _location_id_string = _location_id.stringValue
                _address = _address.urlEncode()!
                
                
            } catch {
                result["error"] = true
                result["message"] = "Internal error \(#line)"
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
            }
            let sacu:String = pf + ps + pt + comhofir + comhosec + comhothi +
                       comhofou + comhofif + sacfir + sacsec + sacthir +
                       sacfou + sacfif + sacsix + sacpbfir + _address +
                       sacpbsec + _query + sacpbthi + _location_id_string +
                       sacpbfou + longitude + sacpbfif + latitude + sacpbsix +
                       sacpbsev + sacpbeig + sacpbnin + sacpbten + sacpbele +
                       sacpbtwe + _query + sacpbthr + language + sacpbfor + country
            // Create a URLSession instance.
            let session = URLSession.shared
            // Create a URL using the specified URL string.
            guard let url = URL(string: sacu) else {
                result["error"] = true
                result["message"] = "Internal error \(#line)"
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
            }
            
            // Create a URLRequest for the specified URL.
            var request = URLRequest(url: url)
            
            request.addValue(hua, forHTTPHeaderField: "User-Agent")
            request.addValue(SESSION, forHTTPHeaderField: "Cookie")
            request.httpMethod = "GET"
            
            // Use the 'data' task to fetch the response data.
            let (data, response) = try await session.data(for: request)
            if let httpResponse = response as? HTTPURLResponse {
                let statusCode = httpResponse.statusCode
                if statusCode == 200 {
                    if let dataString = String(data: data, encoding: .utf8) {
                        // If the data represents text, print it as a string.
                        
                        // Assuming the text is a JSON string, remove the first 4 characters
                        let jsonString = String(dataString.dropFirst(4))
                        let jsonData = jsonString.data(using: .utf8)!
                        let parsedResult:Array = try JSONSerialization.jsonObject(with: jsonData) as? Array<Any> ?? []
                        let firstArray:Array = parsedResult[0] as? Array<Any> ?? []
                        let firstSecondArray:Array = firstArray[1] as? Array<Any> ?? []
                        var suggestions: Array<Any> = []
                        for element in firstSecondArray {
                            var suggestion: [String: Any] = [:]

                            if let value = element as? [Any] {
                                if value.count > 22 {
                                    if let twentySeccondArray = value[22] as? [Any], twentySeccondArray.count > 34 {
                                        let twentySeccondFirstArray = twentySeccondArray[0] as? Array<Any> ?? []
                                        _ = twentySeccondArray[11]  as? Array<Any> ?? []
                                        suggestion["address"] = twentySeccondFirstArray[0];
                                        if(suggestion["address"] != nil){
                                            suggestions.append(suggestion)
                                        }
                                    }
                                }
                            }
                        }

                        do {
                            result["error"] = false
                            result["message"] = "Request processed successfully"
                            result["data"] = suggestions
                            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                                let errorMessage = "Failed to stringify json reponse"
                                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                            }
                            Task.detached {
                                try await billing(client_id:client_id, client_key:client_key,service:"searchAutocomplete")
                            }
                            return jsonString
                        } catch {
                            result["error"] = true
                            result["message"] = "Internal error \(#line)"
                            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                                let errorMessage = "Failed to stringify json reponse"
                                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                            }
                            return jsonString
                        }
                    }
                    result["error"] = true
                    result["message"] = "Internal error \(#line)"
                    let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    return jsonString
                } else {
                    result["error"] = true
                    result["message"] = "Internal error \(#line)"
                    let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    return jsonString
                }
            }
            result["error"] = true
            result["message"] = "Internal error \(#line)"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        result["error"] = true
        result["message"] = "Internal error \(#line)"
        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            let errorMessage = "Failed to stringify json reponse"
            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        }
        return jsonString
    }

    public static func searchAutocomplete(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        latitude: String,
        longitude: String,
        query: String
    ) async throws -> String {
        let (data) = try await _searchAutocomplete(client_id: client_id, client_key: client_key, language: language, country: country, latitude: latitude, longitude: longitude, query: query)
        return data
    }
    
    
    private static func _enhancedSearchAutocomplete(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        latitude: String,
        longitude: String,
        query: String
    ) async throws -> String {
        var result: [String: Any]
        result = [:]
        let _query:String = query.urlEncode()!
        var _location_id_string:String = ""
        if SESSION.isEmpty {
            result["error"] = true
            result["message"] = "Session not initiated!"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        if !SESSION.isEmpty && client_id == CLIENT_ID && client_key == CLIENT_KEY{
            var _address: String = ""
            var _location_id: NSNumber = 0.0
            do {
                let reverseGeocodingResult = try await Services._internalReverseGeocoding(
                    client_id: client_id,
                    client_key: client_key,
                    language: language,
                    country: country,
                    latitude: latitude,
                    longitude: longitude
                )
                guard let data = reverseGeocodingResult.data(using: .utf8),
                      let reverseGeocodingResultData = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
                    result["error"] = true
                    result["message"] = "Internal error \(#line)"
                    let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    return jsonString
                }
                let reverseGeocodingData = reverseGeocodingResultData["data"] as! [String:Any]
                _address = reverseGeocodingData["address"] as! String
                _location_id = reverseGeocodingData["location_id"] as! NSNumber
                _location_id_string = _location_id.stringValue
                _address = _address.urlEncode()!
            } catch {
                result["error"] = true
                result["message"] = "Internal error \(#line)"
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
            }
            let sacu:String = pf + ps + pt + comhofir + comhosec + comhothi +
                       comhofou + comhofif + sacfir + sacsec + sacthir +
                       sacfou + sacfif + sacsix + sacpbfir + _address +
                       sacpbsec + _query + sacpbthi + _location_id_string +
                       sacpbfou + longitude + sacpbfif + latitude + sacpbsix +
                       sacpbsev + sacpbeig + sacpbnin + sacpbten + sacpbele +
                       sacpbtwe + _query + sacpbthr + language + sacpbfor + country
            let session = URLSession.shared
            guard let url = URL(string: sacu) else {
                result["error"] = true
                result["message"] = "Internal error \(#line)"
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
            }
            var request = URLRequest(url: url)
            request.addValue(hua, forHTTPHeaderField: "User-Agent")
            request.addValue(SESSION, forHTTPHeaderField: "Cookie")
            request.httpMethod = "GET"
            let (data, response) = try await session.data(for: request)
            if let httpResponse = response as? HTTPURLResponse {
                let statusCode = httpResponse.statusCode
                if statusCode == 200 {
                    if let dataString = String(data: data, encoding: .utf8) {
                        let jsonString = String(dataString.dropFirst(4))
                        let jsonData = jsonString.data(using: .utf8)!
                        let parsedResult:Array = try JSONSerialization.jsonObject(with: jsonData) as? Array<Any> ?? []
                        let firstArray:Array = parsedResult[0] as? Array<Any> ?? []
                        let firstSecondArray:Array = firstArray[1] as? Array<Any> ?? []
                        var suggestions: Array<Any> = []
                        for element in firstSecondArray {
                            var suggestion: [String: Any] = [:]
                            if let value = element as? [Any] {
                                if value.count > 22 {
                                    if let twentySeccondArray = value[22] as? [Any], twentySeccondArray.count > 34 {
                                        let twentySeccondFirstArray = twentySeccondArray[0] as? Array<Any> ?? []
                                        let twentySeccondEleventhArray = twentySeccondArray[11]  as? Array<Any> ?? []
                                        suggestion["address"] = twentySeccondFirstArray[0];
                                        suggestion["latitude"] = twentySeccondEleventhArray[2];
                                        suggestion["longitude"] = twentySeccondEleventhArray[3];
                                        if(suggestion["address"] != nil && suggestion["latitude"] != nil && suggestion["longitude"] != nil){
                                            suggestions.append(suggestion)
                                        }
                                    }
                                }
                            }
                        }
                        do {
                            result["error"] = false
                            result["message"] = "Request processed successfully"
                            result["data"] = suggestions
                            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                            // Convert the JSON data to a string
                            if let jsonString = String(data: jsonData, encoding: .utf8) {
                                Task.detached {
                                    try await billing(client_id:client_id, client_key:client_key,service:"enhancedSearchAutocomplete")
                                }
                                return jsonString
                            }
                        } catch {
                            result["error"] = true
                            result["message"] = "Internal error \(#line)"
                            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                                let errorMessage = "Failed to stringify json reponse"
                                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                            }
                            return jsonString

                        }
                    }
                    result["error"] = true
                    result["message"] = "Internal error \(#line)"
                    let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    return jsonString
                } else {
                    result["error"] = true
                    result["message"] = "Internal error \(#line)"
                    let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    return jsonString
                }
            }
            result["error"] = true
            result["message"] = "Internal error \(#line)"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        result["error"] = true
        result["message"] = "Internal error \(#line)"
        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            let errorMessage = "Failed to stringify json reponse"
            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        }
        return jsonString
    }
    public static func enhancedSearchAutocomplete(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        latitude: String,
        longitude: String,
        query: String
    ) async throws -> String {
        let (data) = try await _enhancedSearchAutocomplete(client_id: client_id, client_key: client_key, language: language, country: country, latitude: latitude, longitude: longitude, query: query)
        return data
    }
    
    private static func _forwardGeocoding(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        address: String
    ) async throws -> String {
        var result: [String: Any]
        var resultData: [String: Any]
        result = [:]
        resultData = [:]
        let _address:String = address.urlEncode()!
        if SESSION.isEmpty {
            result["error"] = true
            result["message"] = "Session not initiated!"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        
        let fgu = pf + ps + pt + comhofir + comhosec + comhothi + comhofou + comhofif + fgfir + fgsec + fgthi + _address + fgfou + language + fgfif + country
        let session = URLSession.shared
        guard let url = URL(string: fgu) else {
            result["error"] = true
            result["message"] = "Internal error \(#line)"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        var request = URLRequest(url: url)
        request.addValue(hua, forHTTPHeaderField: "User-Agent")
        request.addValue(SESSION, forHTTPHeaderField: "Cookie")
        request.httpMethod = "GET"
        let (data, response) = try await session.data(for: request)
        if let httpResponse = response as? HTTPURLResponse {
            let statusCode = httpResponse.statusCode
            if statusCode == 200 {
                if let dataString = String(data: data, encoding: .utf8) {
                    let jsonString = String(dataString.dropFirst(4))
                    let jsonData = jsonString.data(using: .utf8)!
                    let parsedResult:Array = try JSONSerialization.jsonObject(with: jsonData) as? Array<Any> ?? []
                    let firstArray:Array = parsedResult[0] as? Array<Any> ?? []
                    let firstSecondArray:Array = firstArray[1] as? Array<Any> ?? []
                    let firstSecondFirstArray:Array = firstSecondArray[0] as? Array<Any> ?? []
                    let firstSecondFirstFourteenthArray:Array = firstSecondFirstArray[14] as? Array<Any> ?? []
                    let firstSecondFirstFourteenthNinthArray:Array = firstSecondFirstFourteenthArray[9] as? Array<Any> ?? []
                    resultData["latitude"] = firstSecondFirstFourteenthNinthArray[2]
                    resultData["longitude"] = firstSecondFirstFourteenthNinthArray[3]
                    result["data"] = resultData
                    result["error"] = false
                    result["message"] = "Request processed successfully"
                    let data = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: data, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    Task.detached {
                        try await billing(client_id:client_id, client_key:client_key,service:"forwardGeocoding")
                    }
                    return jsonString
                }
            }
        }
        result["error"] = true
        result["message"] = "Session not initiated!"
        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            let errorMessage = "Failed to stringify json reponse"
            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        }
        return jsonString
    }
    
    public static func forwardGeocoding(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        address: String
    ) async throws -> String{
        let (data) = try await _forwardGeocoding(client_id: client_id, client_key: client_key, language: language, country: country, address: address)
        return data
    }

    private static func _routes(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        origin_latitude: String,
        origin_longitude: String,
        destination_latitude: String,
        destination_longitude: String
    ) async throws -> String{
        var result: [String: Any]
        result = [:]
        if SESSION.isEmpty {
            result["error"] = true
            result["message"] = "Session not initiated!"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        let etauu = pf + ps + pt + comhofir + comhosec + comhothi + comhofou + comhofif + etaufir + etausec + etauthi + etaufou + etaufif + etausix + etausev + language + etaueig + country + etaupbfir + origin_latitude + etaupbsec + origin_longitude + etaupbthi + origin_latitude + etaupbfou + origin_longitude + etaupbfif + destination_latitude + etaupbsix + destination_longitude + etaupbsev + destination_longitude + etaupbeig + destination_latitude + etaupbnin + etaupbten
        let session = URLSession.shared
        guard let url = URL(string: etauu) else {
            result["error"] = true
            result["message"] = "Internal error \(#line)"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        var request = URLRequest(url: url)
        request.addValue(hua, forHTTPHeaderField: "User-Agent")
        request.addValue(SESSION, forHTTPHeaderField: "Cookie")
        request.httpMethod = "GET"
        let (data, response) = try await session.data(for: request)
        if let httpResponse = response as? HTTPURLResponse {
            let statusCode = httpResponse.statusCode
            if statusCode == 200 {
                if let dataString = String(data: data, encoding: .utf8) {
                    let jsonString = String(dataString.dropFirst(4))
                    let jsonData = jsonString.data(using: .utf8)!
                    let parsedResult:Array = try JSONSerialization.jsonObject(with: jsonData) as? Array<Any> ?? []
                    let firstArray: Array = parsedResult[0] as? Array<Any> ?? []
                    let routes:Array = firstArray[1] as? Array<Any> ?? []
                    let waypoints:Array = firstArray[7] as? Array<Any> ?? []
                    var calculatedRoutes:Array<Any> = []
                    for i in 0..<routes.count {
                        var route: [String: Any] = [:]
                        let routeWaypoints:Array = waypoints[i] as? Array<Any> ?? []
                        let latOffset = routeWaypoints[0] as? Array<Any> ?? []
                        let longOffset = routeWaypoints[1] as? Array<Any> ?? []
                        var currentLat = latOffset[0] as! Int
                        var currentLong = longOffset[0] as! Int
                        let routeData = routes[i] as? Array<Any> ?? []
                        let routeFirstArray = routeData[0] as? Array<Any> ?? []
                        let routeFirstArrayThirdArray = routeFirstArray[2] as? Array<Any> ?? []
                        let routeFirstArrayFourthArray = routeFirstArray[3] as? Array<Any> ?? []
                        let via = routeFirstArray[1] as! String
                        let distance = routeFirstArrayThirdArray[0] as! Int
                        let distanceText = routeFirstArrayThirdArray[1] as! String
                        let duration = routeFirstArrayFourthArray[0] as! Int
                        let durationText = routeFirstArrayFourthArray[1] as! String
                        var wayPoint: [Double] = []
                        wayPoint.append(Double(currentLat) / 1e7)
                        wayPoint.append(Double(currentLong) / 1e7)

                        var calculatedWaypoints: [[Double]] = []
                        calculatedWaypoints.append(wayPoint)

                        for o in 0..<latOffset.count {
                            if o > 0 {
                                currentLat += latOffset[o] as! Int
                                currentLong += longOffset[o] as! Int

                                var calculatedWayPoint: [Double] = []
                                calculatedWayPoint.append(Double(currentLat) / 1e7)
                                calculatedWayPoint.append(Double(currentLong) / 1e7)

                                calculatedWaypoints.append(calculatedWayPoint)
                            }
                        }
                        
                        route["waypoints"] = calculatedWaypoints
                        route["via"] = via
                        route["distance"] = distance
                        route["distanceText"] = distanceText
                        route["duration"] = duration
                        route["durationText"] = durationText

                        calculatedRoutes.append(route)
                    }
                    result["data"] = calculatedRoutes
                    result["error"] = false
                    result["message"] = "Request processed successfully"
                    let data = try JSONSerialization.data(withJSONObject: result, options: [])
                    guard let jsonString = String(data: data, encoding: .utf8) else {
                        let errorMessage = "Failed to stringify json reponse"
                        throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    Task.detached {
                        try await billing(client_id:client_id, client_key:client_key,service:"routes")
                    }
                    return jsonString
                    
                }
                result["error"] = true
                result["message"] = "Internal error \(#line): something went wrong "
                let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
                guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    let errorMessage = "Failed to stringify json reponse"
                    throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                return jsonString
            }
            result["error"] = true
            result["message"] = "Internal error \(#line)"
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                let errorMessage = "Failed to stringify json reponse"
                throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
            return jsonString
        }
        result["error"] = true
        result["message"] = "Session not initiated!"
        let jsonData = try JSONSerialization.data(withJSONObject: result, options: [])
        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            let errorMessage = "Failed to stringify json reponse"
            throw NSError(domain: "co.barameg.locationservices", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        }
        return jsonString
    }

    public static func routes(
        client_id: String,
        client_key: String,
        language: String,
        country: String,
        origin_latitude: String,
        origin_longitude: String,
        destination_latitude: String,
        destination_longitude: String
    ) async throws -> String{
        let (data) = try await _routes(
            client_id: client_id,
            client_key: client_key,
            language: language,
            country: country,
            origin_latitude: origin_latitude,
            origin_longitude: origin_longitude,
            destination_latitude: destination_latitude,
            destination_longitude: destination_longitude
        )
        return data
    }

}
