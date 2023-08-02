# .dotfiles-mac

An Ansible playbook to install developer tools for MacOS using the `brew` package manager. 

This goal of this project is to quickly get a development system up and running by installing all of the required packages needed for software development on a mac. No prerequisites are required other than a mac. 

## Getting Started

### Download and Install

```bash
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/erickrenz/.dotfiles-mac/main/setup.sh)"
```

### Usage

```bash
# Install ONLY GLOBAL packages and tools
ansible-playbook playbook.yaml
```
