while true; do
  ollama pull llama2
  if [[ $? -eq 0 ]]; then
    break
  fi
  echo "Error: Retrying download..."
  sleep 60  # Adjust sleep time (in seconds) if needed
done
