#!/bin/bash

echo "Starting OpenAI-compatible API server on port 8001..."
echo "This server will be accessible at http://localhost:8001/v1"

# Check if virtual environment exists
if [ ! -d ".venv" ]; then
    echo "Virtual environment not found. Please run setup.sh first."
    echo "  ./setup.sh"
    exit 1
fi

# Activate virtual environment
echo "Activating virtual environment..."
source .venv/bin/activate

# Kill any existing process on port 8001
lsof -ti:8001 | xargs kill -9 2>/dev/null

# Start the server
echo "Starting server..."
python main.py 