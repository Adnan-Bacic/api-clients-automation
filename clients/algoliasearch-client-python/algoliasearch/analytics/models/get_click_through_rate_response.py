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


from algoliasearch.analytics.models.daily_click_through_rates import (
    DailyClickThroughRates,
)

_ALIASES = {
    "rate": "rate",
    "click_count": "clickCount",
    "tracked_search_count": "trackedSearchCount",
    "dates": "dates",
}


def _alias_generator(name: str) -> str:
    return _ALIASES.get(name, name)


class GetClickThroughRateResponse(BaseModel):
    """
    GetClickThroughRateResponse
    """

    rate: float
    """ Click-through rate, calculated as number of tracked searches with at least one click event divided by the number of tracked searches. If null, Algolia didn't receive any search requests with `clickAnalytics` set to true.  """
    click_count: int
    """ Number of clicks associated with this search. """
    tracked_search_count: int
    """ Number of tracked searches. Tracked searches are search requests where the `clickAnalytics` parameter is true. """
    dates: List[DailyClickThroughRates]
    """ Daily click-through rates. """

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
        """Create an instance of GetClickThroughRateResponse from a JSON string"""
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
        """Create an instance of GetClickThroughRateResponse from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        obj["dates"] = (
            [DailyClickThroughRates.from_dict(_item) for _item in obj["dates"]]
            if obj.get("dates") is not None
            else None
        )

        return cls.model_validate(obj)
