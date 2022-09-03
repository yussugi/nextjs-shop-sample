This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Create Project

Use following command (using npm)
```bash
npx create-next-app@latest --ts nextjs-shop-sample --use-npm
```

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
```


Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.tsx`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.ts`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.

---

## Learn More

### Install styled-components

```bash
npm install --save styled-components
npm install --save-dev @types/styled-components
```

### Install Storybook

```bash
# install
npx sb@latest init

# add plugin or library
npm install --save-dev @storybook/addon-postcss \
tsconfig-paths-webpack-plugin \
@babel/plugin-proposal-class-properties \
@babel/plugin-proposal-private-methods \
@babel/plugin-proposal-private-property-in-object \
tsconfig-paths-webpack-plugin \
@mdx-js/react

# run storybook
npm run storybook
```

If following error occurs, fix `.storybook/main.js`
```bash
Cannot find module ~~~
```

```bash
# .storybook/main.js
module.exports = {
  "typescript" : { reactDocgen: false }, # <- add
  "stories": [ .....
```

This issues on GitHub.

https://github.com/storybookjs/storybook/issues/15336

### Install test framework

```bash
npm install --save-dev jest @testing-library/react @testing-library/jest-dom jest-environment-jsdom
```

Add `jest.setup.js` file and `jest.config.js` at root directry. Next, add `"test": "jest"` on package.json file.

### Install and setting ESLint

```bash
npm install --save-dev prettier eslint typescript-eslint \
@typescript-eslint/eslint-plugin \
@typescript-eslint/parser \
eslint-config-prettier \
eslint-plugin-prettier \
eslint-plugin-react \
eslint-plugin-react-hooks \
eslint-plugin-import
```

Fix `package.json` file.

`"lint": "next lint --dir src"`

Use Lint, following command.
```bash
npm run lint
```

Fix `package.json` file.

`"format": "next lint --fix --dir src"`

Use Format, following command.
```bash
npm run format
```


---

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
