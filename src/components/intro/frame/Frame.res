%%raw(`import './frame.css'`)

type frameData = {
  text: string,
  duration: int,
}

type frameStage =
  | Initial
  | Final

@react.component
let make = (~frameData: frameData, ~unmount: unit => unit) => {
  let (frameStage, setFrameStage) = React.useState(_ => Initial)

  let frameStyle = switch frameStage {
  | Initial => "frame fade-in"
  | Final => "frame fade-out"
  }
    
  React.useEffect1(() => {
    if (frameStage == Initial) {
      let _ = Js.Global.setTimeout(() => {
        setFrameStage(_ => Final)
      }, frameData.duration * 1000)
    } else {
      let _ = Js.Global.setTimeout(() => {
        unmount()
      }, frameData.duration * 1000)
    }
  
    None
  }, [frameStage])

  <div className=frameStyle>
    <p>{React.string(frameData.text)}</p>
  </div>
}
