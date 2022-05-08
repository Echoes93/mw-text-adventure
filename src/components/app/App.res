%%raw(`import './App.css'`)
open AppReducer

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(appReducer, initialState)

  let startIntro = () => dispatch(ChangeActivity(Intro))
  let startGame = () => Game -> ChangeActivity -> dispatch

  <div className="App">
    {
      switch state.currentActivity {
      | Menu => <Menu startIntro />
      | Intro => <Intro startGame />
      | Game => <Game />
      }
    }
  </div>
}
