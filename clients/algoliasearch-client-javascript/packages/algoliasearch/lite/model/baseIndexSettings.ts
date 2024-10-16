// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import type { SupportedLanguage } from './supportedLanguage';

export type BaseIndexSettings = {
  /**
   * Attributes used for [faceting](https://www.algolia.com/doc/guides/managing-results/refine-results/faceting/).  Facets are attributes that let you categorize search results. They can be used for filtering search results. By default, no attribute is used for faceting. Attribute names are case-sensitive.  **Modifiers**  - `filterOnly(\"ATTRIBUTE\")`.   Allows the attribute to be used as a filter but doesn\'t evaluate the facet values.  - `searchable(\"ATTRIBUTE\")`.   Allows searching for facet values.  - `afterDistinct(\"ATTRIBUTE\")`.   Evaluates the facet count _after_ deduplication with `distinct`.   This ensures accurate facet counts.   You can apply this modifier to searchable facets: `afterDistinct(searchable(ATTRIBUTE))`.
   */
  attributesForFaceting?: Array<string>;

  /**
   * Creates [replica indices](https://www.algolia.com/doc/guides/managing-results/refine-results/sorting/in-depth/replicas/).  Replicas are copies of a primary index with the same records but different settings, synonyms, or rules. If you want to offer a different ranking or sorting of your search results, you\'ll use replica indices. All index operations on a primary index are automatically forwarded to its replicas. To add a replica index, you must provide the complete set of replicas to this parameter. If you omit a replica from this list, the replica turns into a regular, standalone index that will no longer be synced with the primary index.  **Modifier**  - `virtual(\"REPLICA\")`.   Create a virtual replica,   Virtual replicas don\'t increase the number of records and are optimized for [Relevant sorting](https://www.algolia.com/doc/guides/managing-results/refine-results/sorting/in-depth/relevant-sort/).
   */
  replicas?: Array<string>;

  /**
   * Maximum number of search results that can be obtained through pagination.  Higher pagination limits might slow down your search. For pagination limits above 1,000, the sorting of results beyond the 1,000th hit can\'t be guaranteed.
   */
  paginationLimitedTo?: number;

  /**
   * Attributes that can\'t be retrieved at query time.  This can be useful if you want to use an attribute for ranking or to [restrict access](https://www.algolia.com/doc/guides/security/api-keys/how-to/user-restricted-access-to-data/), but don\'t want to include it in the search results. Attribute names are case-sensitive.
   */
  unretrievableAttributes?: Array<string>;

  /**
   * Creates a list of [words which require exact matches](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/typo-tolerance/in-depth/configuring-typo-tolerance/#turn-off-typo-tolerance-for-certain-words). This also turns off [word splitting and concatenation](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/splitting-and-concatenation/) for the specified words.
   */
  disableTypoToleranceOnWords?: Array<string>;

  /**
   * Attributes, for which you want to support [Japanese transliteration](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/language-specific-configurations/#japanese-transliteration-and-type-ahead).  Transliteration supports searching in any of the Japanese writing systems. To support transliteration, you must set the indexing language to Japanese. Attribute names are case-sensitive.
   */
  attributesToTransliterate?: Array<string>;

  /**
   * Attributes for which to split [camel case](https://wikipedia.org/wiki/Camel_case) words. Attribute names are case-sensitive.
   */
  camelCaseAttributes?: Array<string>;

  /**
   * Searchable attributes to which Algolia should apply [word segmentation](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/how-to/customize-segmentation/) (decompounding). Attribute names are case-sensitive.  Compound words are formed by combining two or more individual words, and are particularly prevalent in Germanic languages—for example, \"firefighter\". With decompounding, the individual components are indexed separately.  You can specify different lists for different languages. Decompounding is supported for these languages: Dutch (`nl`), German (`de`), Finnish (`fi`), Danish (`da`), Swedish (`sv`), and Norwegian (`no`). Decompounding doesn\'t work for words with [non-spacing mark Unicode characters](https://www.charactercodes.net/category/non-spacing_mark). For example, `Gartenstühle` won\'t be decompounded if the `ü` consists of `u` (U+0075) and `◌̈` (U+0308).
   */
  decompoundedAttributes?: Record<string, unknown>;

  /**
   * Languages for language-specific processing steps, such as word detection and dictionary settings.  **You should always specify an indexing language.** If you don\'t specify an indexing language, the search engine uses all [supported languages](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/supported-languages/), or the languages you specified with the `ignorePlurals` or `removeStopWords` parameters. This can lead to unexpected search results. For more information, see [Language-specific configuration](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/language-specific-configurations/).
   */
  indexLanguages?: Array<SupportedLanguage>;

  /**
   * Searchable attributes for which you want to turn off [prefix matching](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/override-search-engine-defaults/#adjusting-prefix-search). Attribute names are case-sensitive.
   */
  disablePrefixOnAttributes?: Array<string>;

  /**
   * Whether arrays with exclusively non-negative integers should be compressed for better performance. If true, the compressed arrays may be reordered.
   */
  allowCompressionOfIntegerArray?: boolean;

  /**
   * Numeric attributes that can be used as [numerical filters](https://www.algolia.com/doc/guides/managing-results/rules/detecting-intent/how-to/applying-a-custom-filter-for-a-specific-query/#numerical-filters). Attribute names are case-sensitive.  By default, all numeric attributes are available as numerical filters. For faster indexing, reduce the number of numeric attributes.  To turn off filtering for all numeric attributes, specify an attribute that doesn\'t exist in your index, such as `NO_NUMERIC_FILTERING`.  **Modifier**  - `equalOnly(\"ATTRIBUTE\")`.   Support only filtering based on equality comparisons `=` and `!=`.
   */
  numericAttributesForFiltering?: Array<string>;

  /**
   * Control which non-alphanumeric characters are indexed.  By default, Algolia ignores [non-alphanumeric characters](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/typo-tolerance/how-to/how-to-search-in-hyphenated-attributes/#handling-non-alphanumeric-characters) like hyphen (`-`), plus (`+`), and parentheses (`(`,`)`). To include such characters, define them with `separatorsToIndex`.  Separators are all non-letter characters except spaces and currency characters, such as $€£¥.  With `separatorsToIndex`, Algolia treats separator characters as separate words. For example, in a search for \"Disney+\", Algolia considers \"Disney\" and \"+\" as two separate words.
   */
  separatorsToIndex?: string;

  /**
   * Attributes used for searching. Attribute names are case-sensitive.  By default, all attributes are searchable and the [Attribute](https://www.algolia.com/doc/guides/managing-results/relevance-overview/in-depth/ranking-criteria/#attribute) ranking criterion is turned off. With a non-empty list, Algolia only returns results with matches in the selected attributes. In addition, the Attribute ranking criterion is turned on: matches in attributes that are higher in the list of `searchableAttributes` rank first. To make matches in two attributes rank equally, include them in a comma-separated string, such as `\"title,alternate_title\"`. Attributes with the same priority are always unordered.  For more information, see [Searchable attributes](https://www.algolia.com/doc/guides/sending-and-managing-data/prepare-your-data/how-to/setting-searchable-attributes/).  **Modifier**  - `unordered(\"ATTRIBUTE\")`.   Ignore the position of a match within the attribute.  Without a modifier, matches at the beginning of an attribute rank higher than matches at the end.
   */
  searchableAttributes?: Array<string>;

  /**
   * An object with custom data.  You can store up to 32kB as custom data.
   */
  userData?: Record<string, unknown>;

  /**
   * Characters and their normalized replacements. This overrides Algolia\'s default [normalization](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/normalization/).
   */
  customNormalization?: { [key: string]: { [key: string]: string } };

  /**
   * Attribute that should be used to establish groups of results. Attribute names are case-sensitive.  All records with the same value for this attribute are considered a group. You can combine `attributeForDistinct` with the `distinct` search parameter to control how many items per group are included in the search results.  If you want to use the same attribute also for faceting, use the `afterDistinct` modifier of the `attributesForFaceting` setting. This applies faceting _after_ deduplication, which will result in accurate facet counts.
   */
  attributeForDistinct?: string;
};
