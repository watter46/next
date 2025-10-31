# My Next.js App

This is a boilerplate project for a Next.js application using TypeScript, Tailwind CSS, and various modern tools and libraries.

## Features

- Next.js 15
- React 19
- TypeScript
- Tailwind CSS
- shadcn
- tailwindmerge
- pnpm
- ESLint
- Prettier

## Project Structure

```
my-nextjs-app
├── src
│   ├── app
│   │   ├── layout.tsx        # Application layout with common header and footer
│   │   ├── page.tsx          # Main page with initial content
│   │   └── globals.css       # Global styles for Tailwind CSS
│   ├── components
│   │   └── ui                # UI components (buttons, forms, etc.)
│   └── lib
│       └── utils.ts          # Utility functions for the application
├── public                     # Static files (images, fonts, etc.)
├── docker-compose.yml         # Docker Compose configuration
├── Dockerfile                 # Docker image build configuration
├── Makefile                   # Build and deployment commands
├── package.json               # npm configuration file
├── pnpm-lock.yaml             # pnpm lock file for dependencies
├── tsconfig.json              # TypeScript configuration
├── next.config.ts             # Next.js configuration
├── tailwind.config.ts         # Tailwind CSS configuration
├── postcss.config.mjs         # PostCSS configuration
├── components.json            # Component settings and metadata
├── .eslintrc.json             # ESLint configuration
├── .prettierrc                # Prettier configuration
├── .prettierignore            # Files and directories ignored by Prettier
├── .dockerignore              # Files and directories ignored during Docker build
├── .gitignore                 # Files and directories ignored by Git
└── README.md                  # Project documentation
```

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository:
   ```
   git clone <repository-url>
   cd my-nextjs-app
   ```

2. Install dependencies using pnpm:
   ```
   pnpm install
   ```

3. Run the development server:
   ```
   pnpm dev
   ```

4. Open your browser and navigate to `http://localhost:3000`.

## Contributing

Feel free to submit issues or pull requests if you have suggestions or improvements for this project.

## License

This project is licensed under the MIT License.