// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// - `min`. Return matches with the lowest number of typos.   For example, if you have matches without typos, only
/// include those.   But if there are no matches without typos (with 1 typo), include matches with 1 typo (2 typos). -
/// `strict`. Return matches with the two lowest numbers of typos.   With `strict`, the Typo ranking criterion is
/// applied first in the `ranking` setting.
public enum SearchTypoToleranceEnum: String, Codable, CaseIterable {
    case min
    case strict
}

extension SearchTypoToleranceEnum: Hashable {}
