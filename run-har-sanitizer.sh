#!/bin/bash

cd har-sanitizer
source venv/bin/activate
pip install -r requirements.txt
PYTHONPATH=. python ./harsanitizer/harsan_api.py