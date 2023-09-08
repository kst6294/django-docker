import os
from pathlib import Path
BASE_DIR = Path(__file__).resolve().parent.parent


DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql",
        "PORT": "5432",
        "HOST": "postgres",
        "NAME": "api",
        "USER": "andy",
        "PASSWORD": "password",
    }
}