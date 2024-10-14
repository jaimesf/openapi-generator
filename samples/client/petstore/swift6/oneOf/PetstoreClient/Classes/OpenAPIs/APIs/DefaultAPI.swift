//
// DefaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class DefaultAPI {

    /**

     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func rootGet(openAPIClient: OpenAPIClient = OpenAPIClient.shared, completion: @Sendable @escaping (_ data: Fruit?, _ error: Error?) -> Void) -> RequestTask {
        return rootGetWithRequestBuilder(openAPIClient: openAPIClient).execute { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /
     - parameter openAPIClient: The OpenAPIClient that contains the configuration for the http request.
     - returns: RequestBuilder<Fruit> 
     */
    open class func rootGetWithRequestBuilder(openAPIClient: OpenAPIClient = OpenAPIClient.shared) -> RequestBuilder<Fruit> {
        let localVariablePath = "/"
        let localVariableURLString = openAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Fruit>.Type = openAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, openAPIClient: openAPIClient)
    }
}
