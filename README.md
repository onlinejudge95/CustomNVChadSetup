# CustomNVChadSetup

This is a configuration i use as part of my neovim setup. This config is based on NVChad, the link for which can be found [here](https://nvchad.com/).
This config provides a dedicated IDE experience for neovim for the following set of language stacks.

- `Python`
- `Go`
- `JS/TS`

In order to use this config please follow the below isntructions.

- Install NVChad as per the instructions mentioned [here](https://nvchad.com/docs/quickstart/install). As of now this setup only works with _NVChad v2.0_, make sure you have the correct branch as `head`.

- Clone this repo at your local path.

```bash
git clone git@github.com:onlinejudge95/CustomNVChadSetup.git ~/workspace/CustomNVChadSetup/
```

- Copy the custom dir from this repo to the nvchad dir.

```bash
cp --recursive ~/workspace/CustomNVChadSetup/custom ~/.config/nvim/lua/custom
```
