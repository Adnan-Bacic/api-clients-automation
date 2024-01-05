<?php

// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

namespace Algolia\AlgoliaSearch\Model\Ingestion;

/**
 * RunProgress Class Doc Comment.
 *
 * @category Class
 */
class RunProgress extends \Algolia\AlgoliaSearch\Model\AbstractModel implements ModelInterface, \ArrayAccess, \JsonSerializable
{
    /**
     * Array of property to type mappings. Used for (de)serialization.
     *
     * @var string[]
     */
    protected static $modelTypes = [
        'expectedNbOfEvents' => 'int',
        'receivedNbOfEvents' => 'int',
    ];

    /**
     * Array of property to format mappings. Used for (de)serialization.
     *
     * @var string[]
     */
    protected static $modelFormats = [
        'expectedNbOfEvents' => null,
        'receivedNbOfEvents' => null,
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name.
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'expectedNbOfEvents' => 'expectedNbOfEvents',
        'receivedNbOfEvents' => 'receivedNbOfEvents',
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses).
     *
     * @var string[]
     */
    protected static $setters = [
        'expectedNbOfEvents' => 'setExpectedNbOfEvents',
        'receivedNbOfEvents' => 'setReceivedNbOfEvents',
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests).
     *
     * @var string[]
     */
    protected static $getters = [
        'expectedNbOfEvents' => 'getExpectedNbOfEvents',
        'receivedNbOfEvents' => 'getReceivedNbOfEvents',
    ];

    /**
     * Associative array for storing property values.
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor.
     *
     * @param mixed[] $data Associated array of property values
     */
    public function __construct(array $data = null)
    {
        if (isset($data['expectedNbOfEvents'])) {
            $this->container['expectedNbOfEvents'] = $data['expectedNbOfEvents'];
        }
        if (isset($data['receivedNbOfEvents'])) {
            $this->container['receivedNbOfEvents'] = $data['receivedNbOfEvents'];
        }
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name.
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of property to type mappings. Used for (de)serialization.
     *
     * @return array
     */
    public static function modelTypes()
    {
        return self::$modelTypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization.
     *
     * @return array
     */
    public static function modelFormats()
    {
        return self::$modelFormats;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses).
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests).
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        return [];
    }

    /**
     * Validate all the properties in the model
     * return true if all passed.
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return 0 === count($this->listInvalidProperties());
    }

    /**
     * Gets expectedNbOfEvents.
     *
     * @return null|int
     */
    public function getExpectedNbOfEvents()
    {
        return $this->container['expectedNbOfEvents'] ?? null;
    }

    /**
     * Sets expectedNbOfEvents.
     *
     * @param null|int $expectedNbOfEvents expectedNbOfEvents
     *
     * @return self
     */
    public function setExpectedNbOfEvents($expectedNbOfEvents)
    {
        $this->container['expectedNbOfEvents'] = $expectedNbOfEvents;

        return $this;
    }

    /**
     * Gets receivedNbOfEvents.
     *
     * @return null|int
     */
    public function getReceivedNbOfEvents()
    {
        return $this->container['receivedNbOfEvents'] ?? null;
    }

    /**
     * Sets receivedNbOfEvents.
     *
     * @param null|int $receivedNbOfEvents receivedNbOfEvents
     *
     * @return self
     */
    public function setReceivedNbOfEvents($receivedNbOfEvents)
    {
        $this->container['receivedNbOfEvents'] = $receivedNbOfEvents;

        return $this;
    }

    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param int $offset Offset
     *
     * @return bool
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param int $offset Offset
     *
     * @return null|mixed
     */
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param null|int $offset Offset
     * @param mixed    $value  Value to be set
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param int $offset Offset
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }
}
