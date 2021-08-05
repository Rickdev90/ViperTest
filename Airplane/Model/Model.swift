//
//  Model.swift
//  Airplane
//
//  Created by Rick on 23/07/21.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let nuUsers = try? newJSONDecoder().decode(nuUsers.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuUsers { response in
//     if let nuUsers = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

// MARK: - nuUsers
struct Users: Codable {
    let results: [UserResult]
    let info: Info
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuInfo { response in
//     if let nuInfo = response.result.value {
//       ...
//     }
//   }

// MARK: - nuInfo
struct Info: Codable {
    let seed: String
    let results, page: Int
    let version: String
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuResult { response in
//     if let nuResult = response.result.value {
//       ...
//     }
//   }

// MARK: - nuResult
struct UserResult: Codable {
    let gender: String
    let name: Name
    let location: Location
    let email: String
    let login: Login
    let dob, registered: Dob
    let phone, cell: String
    let id: ID
    let picture: Picture
    let nat: String
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuDob { response in
//     if let nuDob = response.result.value {
//       ...
//     }
//   }

// MARK: - nuDob
struct Dob: Codable {
    let date: String
    let age: Int
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuID { response in
//     if let nuID = response.result.value {
//       ...
//     }
//   }

// MARK: - nuID
struct ID: Codable {
    let name: String
    let value: String
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuLocation { response in
//     if let nuLocation = response.result.value {
//       ...
//     }
//   }

// MARK: - nuLocation
struct Location: Codable {
    let street: Street
    let city, state, country: String
    let postcode: Int
    let coordinates: Coordinates
    let timezone: Timezone
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuCoordinates { response in
//     if let nuCoordinates = response.result.value {
//       ...
//     }
//   }

// MARK: - nuCoordinates
struct Coordinates: Codable {
    let latitude, longitude: String
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuStreet { response in
//     if let nuStreet = response.result.value {
//       ...
//     }
//   }

// MARK: - nuStreet
struct Street: Codable {
    let number: Int
    let name: String
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuTimezone { response in
//     if let nuTimezone = response.result.value {
//       ...
//     }
//   }

// MARK: - nuTimezone
struct Timezone: Codable {
    let offset, timezoneDescription: String

    enum CodingKeys: String, CodingKey {
        case offset
        case timezoneDescription = "description"
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuLogin { response in
//     if let nuLogin = response.result.value {
//       ...
//     }
//   }

// MARK: - nuLogin
struct Login: Codable {
    let uuid, username, password, salt: String
    let md5, sha1, sha256: String
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuName { response in
//     if let nuName = response.result.value {
//       ...
//     }
//   }

// MARK: - nuName
struct Name: Codable {
    let title, first, last: String
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsenuPicture { response in
//     if let nuPicture = response.result.value {
//       ...
//     }
//   }

// MARK: - nuPicture
struct Picture: Codable {
    let large, medium, thumbnail: String
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Alamofire response handlers

extension DataRequest {
    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
        return DataResponseSerializer { _, response, data, error in
            guard error == nil else { return .failure(error!) }

            guard let data = data else {
                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
            }

            return Result { try newJSONDecoder().decode(T.self, from: data) }
        }
    }

    @discardableResult
    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler:
                        completionHandler)
    }

    @discardableResult
    func responsenuUsers(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Users>) -> Void) -> Self {
        return responseDecodable(queue: queue!, completionHandler: completionHandler)
    }
}


