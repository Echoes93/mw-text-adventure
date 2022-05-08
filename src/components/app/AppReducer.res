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
