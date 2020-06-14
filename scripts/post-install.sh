if ! [ -x "$(command -v nvim)" ]; then
	echo "Nvim is not installed." >&2
	exit 1
fi
