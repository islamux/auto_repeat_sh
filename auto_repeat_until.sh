attempts=5  # Change this to your desired number of attempts

until [[ $(ollama pull llama2; echo $?) -eq 0 ]]; do
  ((attempts--))
  if [[ $attempts -eq 0 ]]; then
    echo "Error: Reached maximum retries."
    exit 1
  fi
  echo "Error: Retrying download... ($attempts attempts left)"
  sleep 60
done
