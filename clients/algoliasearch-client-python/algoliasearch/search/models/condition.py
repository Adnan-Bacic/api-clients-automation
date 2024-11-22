# coding: utf-8

"""
Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
"""

from __future__ import annotations

from json import loads
from re import match
from sys import version_info
from typing import Any, Dict, Optional

from pydantic import BaseModel, ConfigDict, field_validator

if version_info >= (3, 11):
    from typing import Self
else:
    from typing_extensions import Self


from algoliasearch.search.models.anchoring import Anchoring

_ALIASES = {
    "pattern": "pattern",
    "anchoring": "anchoring",
    "alternatives": "alternatives",
    "context": "context",
    "filters": "filters",
}


def _alias_generator(name: str) -> str:
    return _ALIASES.get(name, name)


class Condition(BaseModel):
    """
    Condition
    """

    pattern: Optional[str] = None
    """ Query pattern that triggers the rule.  You can use either a literal string, or a special pattern `{facet:ATTRIBUTE}`, where `ATTRIBUTE` is a facet name. The rule is triggered if the query matches the literal string or a value of the specified facet. For example, with `pattern: {facet:genre}`, the rule is triggered when users search for a genre, such as \"comedy\".  """
    anchoring: Optional[Anchoring] = None
    alternatives: Optional[bool] = None
    """ Whether the pattern should match plurals, synonyms, and typos. """
    context: Optional[str] = None
    """ An additional restriction that only triggers the rule, when the search has the same value as `ruleContexts` parameter. For example, if `context: mobile`, the rule is only triggered when the search request has a matching `ruleContexts: mobile`. A rule context must only contain alphanumeric characters.  """
    filters: Optional[str] = None
    """ Filters that trigger the rule.  You can add add filters using the syntax `facet:value` so that the rule is triggered, when the specific filter is selected. You can use `filters` on its own or combine it with the `pattern` parameter.  """

    @field_validator("context")
    def context_validate_regular_expression(cls, value):
        """Validates the regular expression"""
        if value is None:
            return value

        if not match(r"[A-Za-z0-9_-]+", value):
            raise ValueError(r"must validate the regular expression /[A-Za-z0-9_-]+/")
        return value

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
        """Create an instance of Condition from a JSON string"""
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
        """Create an instance of Condition from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        obj["anchoring"] = obj.get("anchoring")

        return cls.model_validate(obj)
