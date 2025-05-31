# Dotfiles

This repository contains my dotfiles, which are configuration files for various programs and tools that I use on my system. I manage these dotfiles using GNU Stow, a symlink farm manager, which helps me organize and deploy these configurations across different machines easily.

## Installation

To deploy these dotfiles on your system:

1. Clone this repository to your home directory:
   ```bash
   git clone https://github.com/codebedouin/dotfiles.git ~/dotfiles
   ```

2. Navigate to the cloned repository:
   ```bash
   cd ~/dotfiles
   ```

3. Use GNU Stow to symlink the desired configurations. For example, to symlink the Bash and Vim configurations:
   ```bash
   stow bashrc nvim
   ```

   Replace `bash` and `vim` with the names of the directories containing configurations you want to deploy.

## Usage

After symlinking the configurations using GNU Stow, the dotfiles will be effectively deployed on your system. Any changes made to these files within the repository will reflect on your system instantly.

To add new configurations or update existing ones:

1. Add or modify the configuration files within the respective directories in the repository.

2. Re-run the `stow` command for the configurations you've updated:
   ```bash
   stow bash vim
   ```

   This will update the symlinks accordingly.

## Contributing

Feel free to suggest improvements or contribute to this repository by opening issues or pull requests. Your feedback and contributions are highly appreciated!

## License

This repository is licensed under the [MIT License](LICENSE). Feel free to use and modify the configurations as you see fit.
