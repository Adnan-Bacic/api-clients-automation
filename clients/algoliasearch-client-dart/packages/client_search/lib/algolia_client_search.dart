// A sub-package of the AlgoliaSearch library, offering search-specific functionalities for enhanced search and discovery in Dart/Flutter apps.
library algolia_client_search;

export 'package:algolia_client_core/algolia_client_core.dart';

export 'src/api/search_client.dart';

export 'src/model/acl.dart';
export 'src/model/action.dart';
export 'src/model/add_api_key_response.dart';
export 'src/model/advanced_syntax_features.dart';
export 'src/model/alternatives_as_exact.dart';
export 'src/model/anchoring.dart';
export 'src/model/api_key.dart';
export 'src/model/api_key_operation.dart';
export 'src/model/around_radius_all.dart';
export 'src/model/assign_user_id_params.dart';
export 'src/model/automatic_facet_filter.dart';
export 'src/model/base_get_api_key_response.dart';
export 'src/model/base_index_settings.dart';
export 'src/model/base_search_params.dart';
export 'src/model/base_search_params_without_query.dart';
export 'src/model/base_search_response.dart';
export 'src/model/batch_assign_user_ids_params.dart';
export 'src/model/batch_dictionary_entries_params.dart';
export 'src/model/batch_dictionary_entries_request.dart';
export 'src/model/batch_params.dart';
export 'src/model/batch_request.dart';
export 'src/model/batch_response.dart';
export 'src/model/batch_write_params.dart';
export 'src/model/boolean_string.dart';
export 'src/model/browse_pagination.dart';
export 'src/model/browse_params_object.dart';
export 'src/model/browse_response.dart';
export 'src/model/built_in_operation.dart';
export 'src/model/built_in_operation_type.dart';
export 'src/model/condition.dart';
export 'src/model/consequence.dart';
export 'src/model/consequence_hide.dart';
export 'src/model/consequence_params.dart';
export 'src/model/consequence_query_object.dart';
export 'src/model/created_at_response.dart';
export 'src/model/cursor.dart';
export 'src/model/delete_api_key_response.dart';
export 'src/model/delete_by_params.dart';
export 'src/model/delete_source_response.dart';
export 'src/model/deleted_at_response.dart';
export 'src/model/dictionary_action.dart';
export 'src/model/dictionary_entry.dart';
export 'src/model/dictionary_entry_state.dart';
export 'src/model/dictionary_entry_type.dart';
export 'src/model/dictionary_language.dart';
export 'src/model/dictionary_settings_params.dart';
export 'src/model/dictionary_type.dart';
export 'src/model/edit.dart';
export 'src/model/edit_type.dart';
export 'src/model/error_base.dart';
export 'src/model/exact_on_single_word_query.dart';
export 'src/model/exhaustive.dart';
export 'src/model/facet_hits.dart';
export 'src/model/facet_ordering.dart';
export 'src/model/facet_stats.dart';
export 'src/model/facets.dart';
export 'src/model/fetched_index.dart';
export 'src/model/get_api_key_response.dart';
export 'src/model/get_dictionary_settings_response.dart';
export 'src/model/get_logs_response.dart';
export 'src/model/get_objects_params.dart';
export 'src/model/get_objects_request.dart';
export 'src/model/get_objects_response.dart';
export 'src/model/get_task_response.dart';
export 'src/model/get_top_user_ids_response.dart';
export 'src/model/has_pending_mappings_response.dart';
export 'src/model/highlight_result_option.dart';
export 'src/model/hit.dart';
export 'src/model/index_settings.dart';
export 'src/model/index_settings_as_search_params.dart';
export 'src/model/languages.dart';
export 'src/model/list_api_keys_response.dart';
export 'src/model/list_clusters_response.dart';
export 'src/model/list_indices_response.dart';
export 'src/model/list_user_ids_response.dart';
export 'src/model/log.dart';
export 'src/model/log_query.dart';
export 'src/model/log_type.dart';
export 'src/model/match_level.dart';
export 'src/model/matched_geo_location.dart';
export 'src/model/mode.dart';
export 'src/model/multiple_batch_request.dart';
export 'src/model/multiple_batch_response.dart';
export 'src/model/operation_index_params.dart';
export 'src/model/operation_type.dart';
export 'src/model/params.dart';
export 'src/model/personalization.dart';
export 'src/model/promote_object_id.dart';
export 'src/model/promote_object_ids.dart';
export 'src/model/query_type.dart';
export 'src/model/range.dart';
export 'src/model/ranking_info.dart';
export 'src/model/redirect.dart';
export 'src/model/redirect_rule_index_data.dart';
export 'src/model/redirect_rule_index_metadata.dart';
export 'src/model/redirect_url.dart';
export 'src/model/remove_user_id_response.dart';
export 'src/model/remove_words_if_no_results.dart';
export 'src/model/rendering_content.dart';
export 'src/model/replace_all_objects_response.dart';
export 'src/model/replace_source_response.dart';
export 'src/model/rule.dart';
export 'src/model/save_object_response.dart';
export 'src/model/save_synonym_response.dart';
export 'src/model/scope_type.dart';
export 'src/model/search_dictionary_entries_params.dart';
export 'src/model/search_dictionary_entries_response.dart';
export 'src/model/search_for_facet_values_request.dart';
export 'src/model/search_for_facet_values_response.dart';
export 'src/model/search_for_facets.dart';
export 'src/model/search_for_facets_options.dart';
export 'src/model/search_for_hits.dart';
export 'src/model/search_for_hits_options.dart';
export 'src/model/search_hits.dart';
export 'src/model/search_method_params.dart';
export 'src/model/search_pagination.dart';
export 'src/model/search_params_object.dart';
export 'src/model/search_params_query.dart';
export 'src/model/search_params_string.dart';
export 'src/model/search_response.dart';
export 'src/model/search_responses.dart';
export 'src/model/search_rules_params.dart';
export 'src/model/search_rules_response.dart';
export 'src/model/search_strategy.dart';
export 'src/model/search_synonyms_params.dart';
export 'src/model/search_synonyms_response.dart';
export 'src/model/search_type_default.dart';
export 'src/model/search_type_facet.dart';
export 'src/model/search_user_ids_params.dart';
export 'src/model/search_user_ids_response.dart';
export 'src/model/secured_api_key_restrictions.dart';
export 'src/model/semantic_search.dart';
export 'src/model/settings_response.dart';
export 'src/model/snippet_result_option.dart';
export 'src/model/sort_remaining_by.dart';
export 'src/model/source.dart';
export 'src/model/standard_entries.dart';
export 'src/model/supported_language.dart';
export 'src/model/synonym_hit.dart';
export 'src/model/synonym_type.dart';
export 'src/model/task_status.dart';
export 'src/model/time_range.dart';
export 'src/model/typo_tolerance_enum.dart';
export 'src/model/update_api_key_response.dart';
export 'src/model/updated_at_response.dart';
export 'src/model/updated_at_with_object_id_response.dart';
export 'src/model/updated_rule_response.dart';
export 'src/model/user_highlight_result.dart';
export 'src/model/user_hit.dart';
export 'src/model/user_id.dart';
export 'src/model/value.dart';
export 'src/model/with_primary.dart';

export 'src/extension.dart';