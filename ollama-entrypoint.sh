#!/bin/sh

/bin/ollama pull mistral
/bin/ollama pull nomic-embed-text

/bin/ollama serve
