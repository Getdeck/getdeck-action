# getdeck-action
A GitHub Action to run ephemeral Kubernetes clusters during workflow based on Deckfiles.

# getdeck-action
A GitHub Action to run ephemeral Kubernetes clusters during workflow based on Deckfiles.
Our action can take several parameters: `deck-file-path`, `deck-name`, `deck-timeout`, `deck-wait`.

`deck-file-path` - path to the Deckfile, if not specified a root path of the GitHub repository is used.

`deck-name` - name of the deck to run. If you have multiple decks in the Deckfile, you need to specify the name of the
deck, otherwise you will encounter an error.

`timeout` - timeout for the Pods to become ready in seconds. If the timeout is exceeded, the run fails.

`wait` - wait for the Pods to become ready.

An example of an action with a specified `deck-file-path`, `timeout` and `wait`:

```yaml
# ...
name: Build kubernetes infrastructure using Getdeck

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: Getdeck/getdeck-action@main
      name: Create Infrastructure from Deckfile
      with:
        deck-file-path: <Path to a Deckfile (Github repository with a Deckfile in a root directory)>
        wait: true
        timeout: "120"
```

