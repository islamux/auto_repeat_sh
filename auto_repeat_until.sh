attempts=5  # Change this to your desired number of attempts
# ex : repeat the command "ping to 1.1.1.1"
#ping 1.1.1.1
until [[ $(ping 1.1.1.1; echo $?) -eq 0 ]]; do
  ((attempts--))
  if [[ $attempts -eq 0 ]]; then
    echo "Error: Reached maximum retries."
    exit 1
  fi
  echo "Error: Retrying download... ($attempts attempts left)"
  sleep 60
done
