# coding: utf-8

"""
    Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
"""

from __future__ import annotations

import json
import pprint
from typing import Any, ClassVar, Dict, List, Optional

from pydantic import BaseModel
from search.models.dictionary_language import DictionaryLanguage

try:
    from typing import Self
except ImportError:
    from typing_extensions import Self


class Languages(BaseModel):
    """
    Dictionary language.
    """

    plurals: Optional[DictionaryLanguage]
    stopwords: Optional[DictionaryLanguage]
    compounds: Optional[DictionaryLanguage]
    __properties: ClassVar[List[str]] = ["plurals", "stopwords", "compounds"]

    model_config = {"populate_by_name": True, "validate_assignment": True}

    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True,
        # exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Self:
        """Create an instance of Languages from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        _dict = self.model_dump(
            by_alias=True,
            exclude={},
            exclude_none=True,
        )
        # override the default output from pydantic by calling `to_dict()` of
        # plurals
        if self.plurals:
            _dict["plurals"] = self.plurals.to_dict()
        # override the default output from pydantic by calling `to_dict()` of
        # stopwords
        if self.stopwords:
            _dict["stopwords"] = self.stopwords.to_dict()
        # override the default output from pydantic by calling `to_dict()` of
        # compounds
        if self.compounds:
            _dict["compounds"] = self.compounds.to_dict()
        # set to None if plurals (nullable) is None
        # and model_fields_set contains the field
        if self.plurals is None and "plurals" in self.model_fields_set:
            _dict["plurals"] = None

        # set to None if stopwords (nullable) is None
        # and model_fields_set contains the field
        if self.stopwords is None and "stopwords" in self.model_fields_set:
            _dict["stopwords"] = None

        # set to None if compounds (nullable) is None
        # and model_fields_set contains the field
        if self.compounds is None and "compounds" in self.model_fields_set:
            _dict["compounds"] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Dict) -> Self:
        """Create an instance of Languages from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate(
            {
                "plurals": DictionaryLanguage.from_dict(obj.get("plurals"))
                if obj.get("plurals") is not None
                else None,
                "stopwords": DictionaryLanguage.from_dict(obj.get("stopwords"))
                if obj.get("stopwords") is not None
                else None,
                "compounds": DictionaryLanguage.from_dict(obj.get("compounds"))
                if obj.get("compounds") is not None
                else None,
            }
        )
        return _obj
