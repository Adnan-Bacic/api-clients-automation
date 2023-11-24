# coding: utf-8

"""
    Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
"""

from __future__ import annotations

import json
import pprint
from typing import Any, ClassVar, Dict, List, Optional

from pydantic import BaseModel, Field, StrictBool
from recommend.models.consequence_hide import ConsequenceHide
from recommend.models.consequence_params import ConsequenceParams
from recommend.models.promote import Promote

try:
    from typing import Self
except ImportError:
    from typing_extensions import Self


class Consequence(BaseModel):
    """
    [Consequences](https://www.algolia.com/doc/guides/managing-results/rules/rules-overview/#consequences) of a rule.
    """

    params: Optional[ConsequenceParams] = None
    promote: Optional[List[Promote]] = Field(
        default=None, description="Records to promote."
    )
    filter_promotes: Optional[StrictBool] = Field(
        default=False,
        description="Only use in combination with the `promote` consequence. When `true`, promoted results will be restricted to match the filters of the current search. When `false`, the promoted results will show up regardless of the filters.",
        alias="filterPromotes",
    )
    hide: Optional[List[ConsequenceHide]] = Field(
        default=None,
        description="Records to hide. By default, you can hide up to 50 records per rule.",
    )
    user_data: Optional[Any] = Field(
        default=None,
        description="Custom JSON object that will be appended to the userData array in the response. This object isn't interpreted by the API. It's limited to 1kB of minified JSON.",
        alias="userData",
    )
    __properties: ClassVar[List[str]] = [
        "params",
        "promote",
        "filterPromotes",
        "hide",
        "userData",
    ]

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
        """Create an instance of Consequence from a JSON string"""
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
        # params
        if self.params:
            _dict["params"] = self.params.to_dict()
        # override the default output from pydantic by calling `to_dict()` of
        # each item in promote (list)
        _items = []
        if self.promote:
            for _item in self.promote:
                if _item:
                    _items.append(_item.to_dict())
            _dict["promote"] = _items
        # override the default output from pydantic by calling `to_dict()` of
        # each item in hide (list)
        _items = []
        if self.hide:
            for _item in self.hide:
                if _item:
                    _items.append(_item.to_dict())
            _dict["hide"] = _items
        # set to None if user_data (nullable) is None
        # and model_fields_set contains the field
        if self.user_data is None and "user_data" in self.model_fields_set:
            _dict["userData"] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Dict) -> Self:
        """Create an instance of Consequence from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate(
            {
                "params": ConsequenceParams.from_dict(obj.get("params"))
                if obj.get("params") is not None
                else None,
                "promote": [Promote.from_dict(_item) for _item in obj.get("promote")]
                if obj.get("promote") is not None
                else None,
                "filterPromotes": obj.get("filterPromotes")
                if obj.get("filterPromotes") is not None
                else False,
                "hide": [ConsequenceHide.from_dict(_item) for _item in obj.get("hide")]
                if obj.get("hide") is not None
                else None,
                "userData": obj.get("userData"),
            }
        )
        return _obj
