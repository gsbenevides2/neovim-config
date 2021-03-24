# NeoVim Config

## Installation

With NeoVim, Git and [Curl](https://github.com/curl/curl) installed, copy and paste the code below into the terminal:

```bash
curl -s https://raw.githubusercontent.com/gsbenevides2/neovim-config/main/install.sh | bash
```

## What is configured?

Comes configured with [Coc](https://github.com/neoclide/coc.nvim) for [Typescript](https://github.com/neoclide/coc-tsserver), [EsLint](https://github.com/neoclide/coc-eslint) and [JSON](https://github.com/neoclide/coc-json). It also comes with [Quick UI](https://github.com/skywind3000/vim-quickui) for easy use. More other looking plugins like [Dracula](https://github.com/dracula/vim) to facilitate development. Check a list of plugins [here](https://github.com/gsbenevides2/neovim-config/blob/main/pluginList.vim), remembering that they are automatically installed through [Vim-Plug](https://github.com/junegunn/vim-plug).

## Contributions and License

You can use and modify these settings for your personal use. However, sending pull requests to this repository is not allowed. But if you have a plugin suggestion or configuration that everyone should know about, feel free to open an issue. This project is under license from MIT.

## UninstallI

I am sad to hear that you want to uninstall my set of settings for NeoVim. Remember that the issues tab is open for contributions and improvements. To uninstall, run the command below:

```bash
rm ~/.config/nvim ~/config/coc ~/.local/shared/nvim -rf
```

> Warning: The above command will reset your NeoVim completely along with any customizations you have made. I recommend backing up if you have done any customization.

Thanks for your visit. Made with 💕 by Gsbenevides2
