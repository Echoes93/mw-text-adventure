%%raw("import './menu.css'")

@react.component
let make = (~startIntro) => {
  <div className="menu-container">
    <button className="start-button" onClick={_ => startIntro()}>
      {React.string("New Game")}
    </button>
  </div>
}
