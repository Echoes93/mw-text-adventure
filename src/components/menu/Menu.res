%%raw("import './menu.css'")

@react.component
let make = (~startGame) => {
  <div className="menu">
    <button className="start-button" onClick={_ => startGame()}> {React.string("New Game")} </button>
  </div>
}
