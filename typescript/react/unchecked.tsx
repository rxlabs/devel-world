interface Props {
  count: number
}

const Counter = ({ count }: Props) => <div>{count}</div>

const App = () => <Counter />

export { App }
