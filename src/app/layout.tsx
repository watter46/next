import React from 'react';
import './globals.css';

const RootLayout = ({ children }: { children: React.ReactNode }) => {
  return (
    <html lang="ja">
      <head>
        <title>My Next.js App</title>
      </head>
      <body>
        <header>
          <h1>My Next.js App</h1>
        </header>
        <main>{children}</main>
        <footer>
          <p>© 2023 My Next.js App</p>
        </footer>
      </body>
    </html>
  );
};

export default RootLayout;