echo "${BASH_SOURCE[*]}"
export CURRENT_ENV_FILE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"