%%raw(`import './frame.css'`)

type frameData = {
  text: string,
  duration: int,
  image: Js.Option.t<string>,
}

type frameStage =
  | Initial
  | Final

@react.component
let make = (~frameData: frameData, ~unmount: unit => unit) => {
  let (frameStage, setFrameStage) = React.useState(_ => Initial)

  let fade = switch frameStage {
  | Initial => "fade-in"
  | Final => "fade-out"
  }

  let backgroundStyle = switch frameData.image {
  | Some(img) => ReactDOM.Style.make(~backgroundImage=`url(${img}`, ~backgroundSize="auto 100%", ())
  | None => ReactDOM.Style.make(~backgroundColor="#282c34", ())
  }

  React.useEffect(() => {
    if frameStage == Initial {
      let _ = Js.Global.setTimeout(() => {
        setFrameStage(_ => Final)
      }, frameData.duration * 1000)
    } else {
      let _ = Js.Global.setTimeout(() => {
        unmount()
      }, 4950)
    }

    None
  })

  <div className={"frame " ++ fade} style=backgroundStyle>
    <p> {React.string(frameData.text)} </p>
  </div>
}
