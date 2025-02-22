import { ApiError } from '@algolia/client-common';
import { querySuggestionsClient } from '@algolia/client-query-suggestions';

const appId = process.env.ALGOLIA_APPLICATION_ID || '**** APP_ID *****';
const apiKey = process.env.ALGOLIA_QUERY_SUGGESTIONS_KEY || '**** QUERY_SUGGESTIONS_KEY *****';

// Init client with appId and apiKey
const client = querySuggestionsClient(appId, apiKey, 'us');

async function testQuerySuggestions() {
  try {
    const res = await client.getAllConfigs();

    console.log(`[OK]`, res);
  } catch (e) {
    if (e instanceof ApiError) {
      return console.log(`[${e.status}] ${e.message}`, e.stackTrace, e);
    }

    console.log('[ERROR]', e);
  }
}

testQuerySuggestions();
