import { createRoot } from 'react-dom/client'

const message: string = 'Hello, World!'

const App = () => <h1>{message}</h1>

createRoot(document.getElementById('root')).render(<App />)
