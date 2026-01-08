import { createRoot } from 'react-dom/client'

const x: number = 1
if (!!x) {
  const App = () => <h1>Hello, World!</h1>
  createRoot(document.getElementById('root')).render(<App />)
}
