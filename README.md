# Parcel React Template

Features:

- Using [Parcel] bundler(instead of [Webpack])
- ES6 support with [Babel]
- Syntax checking and fixing with [Standard] tool
- Pre-commit coding format using [Husky], along with custom git hooks support
- SCSS support with [node-sass]
- Also, with all advanced features benifit from [Parcel]

Features todo:

- [ ] Unit test
- [ ] Redux
- [ ] SSR?
- [ ] PWA?

[Parcel]: https://parceljs.org/
[Webpack]: https://webpack.js.org/
[Babel]: https://babeljs.io/
[Standard]: https://standardjs.com/
[Husky]: https://github.com/typicode/husky
[node-sass]: https://github.com/sass/node-sass

From scratch:

```
yarn add --dev parcel-bundler babel-preset-env babel-preset-react husky node-sass standard
yarn add react react-dom
```

Add scripts and hooks:

```json
{
  "scripts": {
    "lint": "standard --fix",
    "dev": "parcel demo/index.html",
    "build": "NODE_ENV=production parcel build demo/index.html -d dist --public-url ./",
    "prepare": "parcel build src/index.js -d lib"
  },
  "husky": {
    "hooks": {
      "pre-commit": "npm run lint"
    }
  }
}
```

**Note**:

1. The script `prepare` is usefull when you want to publish the package as a module.
2. Put `index.html` to `src` path when you develop a web application.
3. Customize git hooks as you want, see [Husky] for details
4. All supported files could be built as entry, including `.html`, `.js`, `.css`, `.scss`, etc.
5. Replace `react` with your favor as a framework, `parcel` will do other things for you.

## Prepare

```
yarn
```

## Development

```
yarn dev
```

Port to http://localhost:1234 for development.

## Production build

```
yarn build

serve dist/ # to use production version
```
