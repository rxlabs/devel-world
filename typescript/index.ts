const rootElement = document.getElementById('root')

const message: string = 'Hello, World!'

const newElement = document.createElement('h1')

newElement.innerText = message

rootElement.appendChild(newElement)
