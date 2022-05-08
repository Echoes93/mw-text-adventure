@module("./images/intro-1.gif") external img1: string = "default"
@module("./images/intro-2.gif") external img2: string = "default"

let frames: array<Frame.frameData> = [
  {
    text: `
      Each Event is preceded by Prophecy.
      But without the hero, there is no Event. \n
      Zurin Arctus | the Underking`,
    duration: 6,
    image: None,
  },
  {
    text: `
      In the waning years of the Third Era of Tamriel,
      a prisoner born on a certain day to uncertain parents
      was sent under guard, without explanation, to Morrowind,
      ignorant of the role he was about to play in that nation's history…`,
    duration: 12,
    image: None,
  },
  {
    text: ``,
    duration: 15,
    image: Some(img1),
  },
  {
    text: ``,
    duration: 5,
    image: Some(img2),
  },
]
