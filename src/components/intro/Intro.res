%%raw(`import './intro.css'`)
open IntroReducer
open IntroData

@react.component
let make = (~startGame) => {
	let (state, dispatch) = React.useReducer(reducer(startGame), initialState)

	let frameData = frames[state.currentIndex]
	let key = state.currentIndex -> Js.Int.toString -> Js.String.concat("frame-")
  let unmount = () => dispatch(UnmountFrame)

	<div className="intro-container">
		<IntroAudio />
		<Frame key frameData unmount />
	</div>
}
