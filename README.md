# Hugo & Asciidoctor development container for VS Code

This image runs [Hugo](https://gohugo.io/) in a docker container. As also [Asciidoctor](https://asciidoctor.org/) is installed you can use this markup language instead of Markdown to create awesome websites.

Clone this repository into your project if you want to use this devcontainer. Alternatively, download and copy the `.devcontainer` folder and all its files into your project folder.

The devcontainer uses the Docker image [`tisasiju/hugoadocdevcontainer`](https://hub.docker.com/r/tisasiju/hugoadocdevcontainer) which is built on the image [`klakegg/hugo:0.92.1-ext-asciidoctor`](https://hub.docker.com/r/klakegg/hugo). GitHub Repo to that docker image found [here](https://github.com/klakegg/docker-hugo). The image from which I started offers the _extended Hugo edition_ which offers some additional features.

I've added further packages and tools on top of that image:

- ruby gems `asciidoctor-pdf`, `asciidoctor-html5s` and 
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

