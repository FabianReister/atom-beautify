"use strict"
Beautifier = require('./beautifier')
path = require('path')
fs = require('fs')
Executable = require('./executable')

module.exports = class CMakeFormat extends Beautifier

  name: "cmake-format"
  link: "https://github.com/cheshirekow/cmake_format"

  executables: [
    {
      name: "cmake-format"
      cmd: "cmake-format"
      homepage: "https://github.com/cheshirekow/cmake_format"
      installation: "https://github.com/cheshirekow/cmake_format#Installation"
      version: {
        parse: (text) ->
          return "1.0.0"
          return text
      }
    }
  ]

  options: {
    cmake: true,
    CMake: true
  }


  beautify: (text, language, options) ->

    editor = atom?.workspace?.getActiveTextEditor()
    if not editor?
      return null

    fullPath = editor.getPath()

    @exe("cmake-format").run([fullPath])
