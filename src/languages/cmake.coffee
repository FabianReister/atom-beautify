module.exports = {

  name: "CMake"
  namespace: "cmake"

  ###
  Supported Grammars
  ###
  grammars: [
    "cmake",
    "CMake Listfile",
    "CMake"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "txt",
    "cmake"
  ]

  defaultBeautifier: "cmake-format"

  options: {}

}
