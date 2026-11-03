hour=$(date +%H)

if (( hour < 12 )); then
    printf "\n✦ Good morning, %s! ✦\n\n" "${(C)USER}"
elif (( hour < 17 )); then
    printf "\n🌻 Good afternoon, %s!\n\n" "${(C)USER}"
elif (( hour < 21 )); then
    printf "\n🌙 Good evening, %s!\n\n" "${(C)USER}"
else
    printf "\n✨ Good night, %s!\n\n" "${(C)USER}"
fi

quote=$(fortune ~/quotes)

# Remove accidental leading/trailing blank lines.
quote="${quote##$'\n'}"
quote="${quote%%$'\n'}"

if [[ "$quote" == *$'\n'* ]]; then
    text="${quote%%$'\n'*}"
    author="${quote#*$'\n'}"

    printf '  ~ “%s”\n' "$text"
    printf '      %s\n' "$author"
else
    printf '  ~ “%s”\n' "$quote"
fi

printf '\n'
