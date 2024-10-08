// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

/**
 * Key-value pairs of [supported language ISO codes](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/supported-languages/) and boolean values.
 */
export type StandardEntries = {
  /**
   * Key-value pair of a language ISO code and a boolean value.
   */
  plurals?: { [key: string]: boolean } | null;

  /**
   * Key-value pair of a language ISO code and a boolean value.
   */
  stopwords?: { [key: string]: boolean } | null;

  /**
   * Key-value pair of a language ISO code and a boolean value.
   */
  compounds?: { [key: string]: boolean } | null;
};
