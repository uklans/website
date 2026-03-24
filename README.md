# 🫖 The TEA Stack

Welcome to the most minimal stack out there. This stack makes static site generation a breeze.

## 🧰 Tools

This project uses the following frameworks:

- [TailwindCSS](https://tailwindcss.com/)
- [Eleventy](https://www.11ty.dev/)
- [Alpine.js](https://alpinejs.dev/)
- [Vite](https://vitejs.dev)

## ⭐️ Requirements

- [Node](https://nodejs.org/en/)
- [NVM](https://github.com/nvm-sh/nvm)

## 🛠 Getting Started

- `nvm use` to switch to the valid node version (`nvm` will grab the correct version found in `.nvmrc`)
- `npm i` to build that big ol' `node_modules` folder
- `npm run dev` to boot up a live-reloading dev server
- `npm run build` to build your production-ready site

Feel free to peep the `package.json` file to see all available scripts and packages being utilized.

## ➕ Adding a member
- Add your logo to `./public/<your-lan-here>.png`
- Add/Update your LAN in `./src/_data/members.js`
    - Please use single quotes in the JSON (`'`)
- Done!

### 🔥 Tip:

Running `npm run build && npx serve dist` will boot up a local server of your production site to preview before deployment.

### 👋🏻 Thank you!

I appreciate you taking time to check out the TEA stack, Please leave a star and share it if you found it useful!
