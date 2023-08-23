import OpenAPIKit30
import Foundation
import Yams

// Load a local file.
do {
    let fileUrl = URL(fileURLWithPath: "/Users/takeshikomori/me/tools/OpenAPIKitDemo/Sources/openapi.yaml")
    let fileData = try Data(contentsOf: fileUrl)
    let decoder = YAMLDecoder()
    let openAPIDoc = try decoder.decode(OpenAPI.Document.self, from: fileData)
    print("@@@ openAPIDoc :: \(openAPIDoc)")
} catch {
    print("@@@ error :: \(error)")
}
