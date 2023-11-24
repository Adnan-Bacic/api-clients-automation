# coding: utf-8

"""
    Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
"""

from __future__ import annotations

import json
import pprint
from typing import Any, ClassVar, Dict, List

from pydantic import BaseModel, Field
from search.models.highlight_result import HighlightResult

try:
    from typing import Self
except ImportError:
    from typing_extensions import Self


class UserHighlightResult(BaseModel):
    """
    UserHighlightResult
    """

    user_id: Dict[str, HighlightResult] = Field(
        description="Show highlighted section and words matched on a query.",
        alias="userID",
    )
    cluster_name: Dict[str, HighlightResult] = Field(
        description="Show highlighted section and words matched on a query.",
        alias="clusterName",
    )
    __properties: ClassVar[List[str]] = ["userID", "clusterName"]

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
        """Create an instance of UserHighlightResult from a JSON string"""
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
        # each value in user_id (dict)
        _field_dict = {}
        if self.user_id:
            for _key in self.user_id:
                if self.user_id[_key]:
                    _field_dict[_key] = self.user_id[_key].to_dict()
            _dict["userID"] = _field_dict
        # override the default output from pydantic by calling `to_dict()` of
        # each value in cluster_name (dict)
        _field_dict = {}
        if self.cluster_name:
            for _key in self.cluster_name:
                if self.cluster_name[_key]:
                    _field_dict[_key] = self.cluster_name[_key].to_dict()
            _dict["clusterName"] = _field_dict
        return _dict

    @classmethod
    def from_dict(cls, obj: Dict) -> Self:
        """Create an instance of UserHighlightResult from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate(
            {
                "userID": dict(
                    (_k, HighlightResult.from_dict(_v))
                    for _k, _v in obj.get("userID").items()
                )
                if obj.get("userID") is not None
                else None,
                "clusterName": dict(
                    (_k, HighlightResult.from_dict(_v))
                    for _k, _v in obj.get("clusterName").items()
                )
                if obj.get("clusterName") is not None
                else None,
            }
        )
        return _obj
