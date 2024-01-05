<?php

// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

namespace Algolia\AlgoliaSearch\Model\Ingestion;

/**
 * MethodType Class Doc Comment.
 *
 * @category Class
 */
class MethodType
{
    /**
     * Possible values of this enum.
     */
    public const GET = 'GET';

    public const POST = 'POST';

    /**
     * Gets allowable values of the enum.
     *
     * @return string[]
     */
    public static function getAllowableEnumValues()
    {
        return [
            self::GET,
            self::POST,
        ];
    }
}
