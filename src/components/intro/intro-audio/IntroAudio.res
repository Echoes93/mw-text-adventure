@module("./intro.mp3") external introAudio: string = "default"

@react.component
let make = () => {
  <audio autoPlay={true}>
    <source src={introAudio} />
  </audio>
}