#!/bin/bash

echo "Running application test..."

if [ -f app/index.html ]; then
    echo "Test PASSED: index.html exists"
    exit 0
else
    echo "Test FAILED: index.html not found"
    exit 1
fi

