while true; do
  # ex : repeat the command "ping to 1.1.1.1"
  ping 1.1.1.1
  if [[ $? -eq 0 ]]; then
    break
  fi
  echo "Error: Retrying download..."
  sleep 60  # Adjust sleep time (in seconds) if needed
done
