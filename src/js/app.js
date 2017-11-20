import Elm from '../Main.elm'

const node = document.getElementById('main')
const app = Elm.Main.embed(node)

window.main = app