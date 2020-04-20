import datetime as dt
from datetime import datetime


def all_field_required_false(fields):
    for field in fields:
        fields[field].required = False


def apply_class_to_fields(fields, classes):
    for field in fields:
        fields[field].widget.attrs.update({'class': classes})


def date_plus_today(how_many):
    return datetime.now() + dt.timedelta(days=how_many)