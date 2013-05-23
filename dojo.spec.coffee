distance = (origin, destination) ->
	distanceY = Math.pow((origin.y - destination.y), 2)
	distanceX = Math.pow((origin.x - destination.x), 2)

	Math.sqrt(distanceX + distanceY)

findThreeClosestFriends = (myPosition, friendsCoords) ->
  friendsCoords












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

  it 'is one for x:0,y:0 - x:0, y:-1', ->
    origin = {x: 0, y: 0}
    destination = {x: 0, y: -1}
    expect( distance(origin, destination) ).toEqual(1)

  it 'is two for x:0,y:-1 - x:0, y:1', ->
    origin = {x: 0, y: -1}
    destination = {x: 0, y: 1}
    expect( distance(origin, destination) ).toEqual(2)

  it 'is two for x:-1,y:0 - x:1, y:0', ->
    origin = {x: -1, y: 0}
    destination = {x: 1, y: 0}
    expect( distance(origin, destination) ).toEqual(2)

  it 'is five for x:0,y:0 - x:3, y:4', ->
    origin = {x: 0, y: 0}
    destination = {x: 3, y: 4}
    expect( distance(origin, destination) ).toEqual(5)

describe 'finding 3 nearest friends', ->

  allFriendsCoords = [
    x: 0,  y: 0
    x: 0,  y: 1
    x: 1,  y: 0
    x: 1,  y: 1
    x: 5,  y: 5
    x: -5, y: -5
  ]

  it 'has only 3 friends', ->
    myPosition = x: 0, y:0
    friendsCoords = allFriendsCoords[0...3]

    result = findThreeClosestFriends myPosition, friendsCoords
    expect(result).toEqual friendsCoords

