%%raw("import './game.css'")
@module("./game_img_1.png") external img1: string = "default"
@module("./game_audio.mp3") external gameAudio: string = "default"

@react.component
let make = () => {
  let backgroundStyle = ReactDOM.Style.make(~backgroundImage=`url(${img1}`, ())

  <div className="game-container" style=backgroundStyle>
    <audio autoPlay={true}> <source src={gameAudio} /> </audio>
  </div>
}
