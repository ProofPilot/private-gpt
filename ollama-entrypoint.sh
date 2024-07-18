#!/bin/sh

/bin/ollama pull mistral &

pull1_pid=$!

wait_and_pull() {
    wait $pull1_pid
    /bin/ollama pull nomic-embed-text
}

wait_and_pull &

# Start the serve command in the foreground
exec /bin/ollama serve
