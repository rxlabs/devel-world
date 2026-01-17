interface Props {
  count: number
}

const Counter = ({ count }: Props) => <div>{count}</div>

// type error: missing required prop 'count'
const App = () => <Counter />

export { App }
