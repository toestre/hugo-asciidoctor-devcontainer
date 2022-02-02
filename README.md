# Hugo & Asciidoctor development container for VS Code

Clone this repository into your project if you want to use this devcontainer. Alternatively, donwload and copy the `.devcontainer` folder and all its files into your project folder.

The devcontainer uses the Docker image [`tisasiju/hugoadocdevcontainer`](https://hub.docker.com/r/tisasiju/hugoadocdevcontainer). This image is built on the image [`klakegg/hugo`](https://hub.docker.com/r/klakegg/hugo). GitHub Repo to that image found [here](https://github.com/klakegg/docker-hugo).

I've added further packages and tools on top of that image:

- ruby gems `asciidoctor-pdf` and `asciidoctor-html5s`
- packages `python3` and `py3-pip`
- packages `openssh`, `git`, `curl` and `zsh` 
- installed `oh-my-zsh` and made this the standard shell

## VS Code Plugins

The vs-code plugins which are used in the devcontainer:

### Hugo-Support:

- `rusnasonov.vscode-hugo`
- `budparr.language-hugo-vscode`

### Asciidoctor-Support:

- `asciidoctor.asciidoctor-vscode` to support asciidoc

### Improved Git-Support:

- `eamodio.gitlens`

### Other helpful plugins:

- `shardulm94.trailing-spaces`
- `stkb.rewrap` (rewrap comments after n characters on one line)
- `bhughes339.replacerules`
    - create a set of replacement rules
    - a couple of rules are defined in the config section
- `vscode-icons-team.vscode-icons`
