%%raw(`import './App.css'`)

type appActivity =
  | Menu
  | Intro
  | Game

type appState = {
  currentActivity: appActivity
}

type appActionType =
  | ChangeActivity(appActivity)

let initialState = {
  currentActivity: Menu
}

let appReducer = (_state, action) => {
  switch action {
  | ChangeActivity(activity) => { currentActivity: activity }
  }
}

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(appReducer, initialState)

  <div className="App">
    {
      switch state.currentActivity {
      | Menu => <Menu startGame={() => dispatch(ChangeActivity(Intro))} />
      | Intro => <Intro />
      | Game => React.null
      }
    }
  </div>
}
