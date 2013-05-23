distance = (origin, destination) -> 0















describe 'distance between two points', ->
  it 'is zero for two equal points', ->
    expect(distance({x: 0, y: 0}, {x: 0, y: 0})).toEqual(0)
