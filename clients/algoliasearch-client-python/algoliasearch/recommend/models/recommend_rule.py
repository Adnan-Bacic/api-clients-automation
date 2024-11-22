# coding: utf-8

"""
Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
"""

from __future__ import annotations

from json import loads
from sys import version_info
from typing import Any, Dict, List, Optional

from pydantic import BaseModel, ConfigDict

if version_info >= (3, 11):
    from typing import Self
else:
    from typing_extensions import Self


from algoliasearch.recommend.models.condition import Condition
from algoliasearch.recommend.models.consequence import Consequence
from algoliasearch.recommend.models.rule_metadata import RuleMetadata
from algoliasearch.recommend.models.time_range import TimeRange

_ALIASES = {
    "metadata": "_metadata",
    "object_id": "objectID",
    "condition": "condition",
    "consequence": "consequence",
    "description": "description",
    "enabled": "enabled",
    "validity": "validity",
}


def _alias_generator(name: str) -> str:
    return _ALIASES.get(name, name)


class RecommendRule(BaseModel):
    """
    Recommend rule.
    """

    metadata: Optional[RuleMetadata] = None
    object_id: Optional[str] = None
    """ Unique identifier of a rule object. """
    condition: Optional[Condition] = None
    consequence: Optional[Consequence] = None
    description: Optional[str] = None
    """ Description of the rule's purpose. This can be helpful for display in the Algolia dashboard. """
    enabled: Optional[bool] = None
    """ Indicates whether to enable the rule. If it isn't enabled, it isn't applied at query time. """
    validity: Optional[List[TimeRange]] = None
    """ Time periods when the rule is active. """

    model_config = ConfigDict(
        strict=False,
        use_enum_values=True,
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
        alias_generator=_alias_generator,
        extra="allow",
    )

    def to_json(self) -> str:
        return self.model_dump_json(by_alias=True, exclude_unset=True)

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of RecommendRule from a JSON string"""
        return cls.from_dict(loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias."""
        return self.model_dump(
            by_alias=True,
            exclude_none=True,
            exclude_unset=True,
        )

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of RecommendRule from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        obj["_metadata"] = (
            RuleMetadata.from_dict(obj["_metadata"])
            if obj.get("_metadata") is not None
            else None
        )
        obj["condition"] = (
            Condition.from_dict(obj["condition"])
            if obj.get("condition") is not None
            else None
        )
        obj["consequence"] = (
            Consequence.from_dict(obj["consequence"])
            if obj.get("consequence") is not None
            else None
        )
        obj["validity"] = (
            [TimeRange.from_dict(_item) for _item in obj["validity"]]
            if obj.get("validity") is not None
            else None
        )

        return cls.model_validate(obj)
