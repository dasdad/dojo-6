distance = (origin, destination) ->
	(origin.x + destination.x) + (origin.y + destination.y)















describe 'distance between two points', ->
  it 'is zero for two equal points', ->
    origin = {x: 0, y: 0}
    destination = {x: 0, y: 0}
    expect( distance(origin, destination) ).toEqual(0)

  it 'is one for x:0,y:0 - x:1, y:0', ->
    origin = {x: 0, y: 0}
    destination = {x: 1, y: 0}
    expect( distance(origin, destination) ).toEqual(1)

  it 'is one for x:0,y:0 - x:0, y:1', ->
    origin = {x: 0, y: 0}
    destination = {x: 0, y: 1}
    expect( distance(origin, destination) ).toEqual(1)
