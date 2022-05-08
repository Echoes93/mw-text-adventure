type introAction =
	| UnmountFrame

type introStatus =
	| InProgress
	| Finished

type introState = {
	currentIndex: int,
	status: introStatus
}

let initialState = {
  currentIndex: 0,
  status: InProgress,
}

let hasMore = (arr, index) => Js.Array.length(arr) - 1 > index

let reducer = (state, action) => {
  switch action {
  | UnmountFrame =>
    if hasMore(IntroData.frames, state.currentIndex) {
      {...state, currentIndex: state.currentIndex + 1}
    } else {
      {...state, status: Finished}
    }
  }
}
