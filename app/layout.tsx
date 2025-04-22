import '../styles/globals.css';
import { Metadata } from 'next';
import VerticalMenu from './components/VerticalMenu';

export const metadata: Metadata = {
  title: 'Playbook',
  description: 'A Next.js application with a vertical menu',
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>
        <div className="app-container">
          <header className="top-header">
            <div className="location">
              <span className="icon">📍</span>
              <span>http://localhost:3000</span>
            </div>
          </header>
          <div className="content-wrapper">
            <VerticalMenu />
            <main className="main-content">
              {children}
            </main>
          </div>
        </div>
      </body>
    </html>
  );
}