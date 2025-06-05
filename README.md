# ZSH Git Jump

Jump between folders in the same git repo.

This zsh plugin allows you to quickly navigate between directories within a git repository using fuzzy search. It requires both `git` and `fzf` to be installed on your system.

## Installation

Add `zsh-git-jump` to your `.zshrc` file:

```zsh
source /path/to/zsh-git-jump.plugin.zsh
```

Replace `/path/to/` with the actual path to where you have cloned this repository.

Alternatively, if you use `zinit` for plugin management, add the following line to your `.zshrc`:

```zsh
zinit light mio9/zsh-git-jump
```

## Usage

To use the plugin, simply type `gj` followed by a search term. The plugin will open a fuzzy finder with all directories within the current git repo that match your search term up to two levels deep, excluding `node_modules`.

### Examples

```zsh
# Jump to the root of the current git repository:
$ gj

# Open a fuzzy finder to select a directory matching 'src':
$ gj src
```

## Functionality

- **`gj`**: Jumps between folders in the same git repo.
  - **No arguments**: Jumps to the root of the git repository.
  - **With a query argument (`gj <query>`)**: Opens fzf with directories filtered by the query string up to two levels deep, excluding `node_modules`.

## Requirements

- `git`
- `fzf`

## License

MIT
