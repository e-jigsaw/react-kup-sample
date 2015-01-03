React = require 'react/addons'
kup = require('react-kup')(React)

HelloMessage = React.createClass
  render: -> kup (k)=> k.div "Hello #{@props.name}"

init = ->
  mountNode = document.getElementById 'user'
  component = new HelloMessage
    name: 'John'

  React.renderComponent component, mountNode

init()
