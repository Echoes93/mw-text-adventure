%%raw(`import './App.css'`)
@module("./logo.svg") external logo: string = "default"

@react.component
let make = () => {
  let (showIntro, setShowIntro) = React.useState(_ => false)

  <div className="App">
    {
      if showIntro { <Intro /> }
      else {
        <div className="button-container">
          <button onClick={_ => setShowIntro(_ => true)}>
            {React.string("New Game")}
          </button>
        </div>
      }
    }
  </div>
}
