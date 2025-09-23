# My ZSH Config

My zsh configurations using the [antidote](https://github.com/mattmc3/antidote) plugin manager.
Documentations and relevant resources are available within the code.

Current functionalities include:

- Autosuggestions and autocompletion
- Syntax highlighting
- Faster history search
- QOL plugins (Copy file path / contents, Fast switch between bg and fg tasks, etc.)
- Addtional extensions for coding environments like nvm (Not installed by default)
- Extensibility for other plugins to customize your own zsh

## Installation

Or do it manually:

1. Install zsh and repository:

    ```sh
    sudo apt install zsh zsh-antidote fzf bat

    if [ -d "$HOME/.config/zsh" ]; then
        mv "$HOME/.config/zsh" "$HOME/.config/zsh.original"
    fi

    git clone https://github.com/complex-syndrome/zdotdir $HOME/.config/zsh
    ```

2. Backup your current config at .config/original/* (If exists)

    ```sh
    mkdir -p "$HOME/.config/zsh/original"
    files="zshenv zprofile zshrc"
    for f in "$files"; do
      if [ -f "$HOME/.$f" ]; then
        echo "Moving $HOME/.$f to $HOME/.config/zsh/original/.$f"
        mv "$HOME/.$f" "$HOME/.config/zsh/original/.$f"
      fi
    done
    ```

3. Link .zshenv to $HOME:

    ```sh
    ln -s "$HOME/.config/zsh/.zshenv" "$HOME/.zshenv"
    ```

4. Change your shell:

    ```sh
    chsh -s $(which zsh)
    ```

5. Then restart your terminal.
