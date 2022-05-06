%%raw(`import './index.css'`)

let rootQuery = ReactDOM.querySelector("#root")

switch rootQuery {
| None => ()
| Some(container) => {
    let root = ReactDOM.Experimental.createRoot(container)
    ReactDOM.Experimental.render(root, <App />)
  }   
}
