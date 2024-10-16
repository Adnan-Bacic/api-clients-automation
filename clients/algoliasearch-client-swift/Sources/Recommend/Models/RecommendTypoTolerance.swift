// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// Whether [typo
/// tolerance](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/typo-tolerance/) is enabled
/// and how it is applied.  If typo tolerance is true, `min`, or `strict`, [word splitting and concatenation](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/splitting-and-concatenation/)
/// are also active.
public enum RecommendTypoTolerance: Codable, JSONEncodable, AbstractEncodable {
    case bool(Bool)
    case recommendTypoToleranceEnum(RecommendTypoToleranceEnum)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .bool(value):
            try container.encode(value)
        case let .recommendTypoToleranceEnum(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Bool.self) {
            self = .bool(value)
        } else if let value = try? container.decode(RecommendTypoToleranceEnum.self) {
            self = .recommendTypoToleranceEnum(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unable to decode instance of RecommendTypoTolerance"
                )
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .bool(value):
            value as Bool
        case let .recommendTypoToleranceEnum(value):
            value as RecommendTypoToleranceEnum
        }
    }
}

extension RecommendTypoTolerance: Equatable {}
extension RecommendTypoTolerance: Hashable {}
