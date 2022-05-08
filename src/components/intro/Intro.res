%%raw(`import './intro.css'`)
open IntroReducer
open IntroData

@react.component
let make = (~startGame) => {
	let (state, dispatch) = React.useReducer(reducer, initialState)

	let frameData = frames[state.currentIndex]
	let key = state.currentIndex -> Js.Int.toString -> Js.String.concat("frame-")
  let unmount = () => dispatch(UnmountFrame)

  if state.status == Finished {
    let _ = Js.Global.setTimeout(startGame, 0)
  }

	<div className="intro-container">
		<IntroAudio />
		<Frame key frameData unmount />
	</div>
}
