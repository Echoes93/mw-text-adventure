%%raw(`import './intro.css'`)
@module("./intro.mp3") external introAudio: string = "default"

let { frames } = module(IntroFrameData)
let { reducer, initialState } = module(IntroReducer)

@react.component
let make = () => {
	let (state, dispatch) = React.useReducer(reducer, initialState)

	let frameData = frames[state.currentIndex]
	let key = state.currentIndex -> Js.Int.toString -> Js.String.concat("frame-")

	<div className="intro-container">
		<audio autoPlay={true}>
			<source src={introAudio} />
		</audio>
		<Frame key frameData unmount={() => dispatch(UnmountFrame)} />
	</div>
}
