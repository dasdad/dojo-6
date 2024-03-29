distance = (origin, destination) ->
	distanceY = Math.pow((origin.y - destination.y), 2)
	distanceX = Math.pow((origin.x - destination.x), 2)

	Math.sqrt(distanceX + distanceY)

findThreeClosestFriends = (friendsCoords, myIndex) ->
	myCoords = friendsCoords[myIndex]
	answer = f for f in friendsCoords
	answer.sort (a,b) ->
		distance(myCoords,b) - distance(myCoords,a)
  answer[1...4]
  0













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
    {x: 0,  y: 0}
    {x: 0,  y: 1}
    {x: 1,  y: 0}
    {x: 1,  y: 1}
    {x: 5,  y: 5}
    {x: -5, y: -5}
  ]

  it 'has only 3 friends', ->
    myIndex = 0
    friendsCoords = allFriendsCoords[0...4]

    result = findThreeClosestFriends friendsCoords, myIndex
    expect(result).toEqual allFriendsCoords[1...4]

  it 'has more than 3 friends', ->
    myIndex = 0

    result = findThreeClosestFriends allFriendsCoords, myIndex
    expect(result).toEqual allFriendsCoords[1...4]

  it 'i am in another house', ->
    myIndex = 5

    result = findThreeClosestFriends allFriendsCoords, myIndex
    expect(result).toEqual allFriendsCoords[0...3]

  it 'i am in house 3', ->
    myIndex = 3

    result = findThreeClosestFriends allFriendsCoords, myIndex
    expect(result).toEqual allFriendsCoords[0..2]

  it 'i am in house 2', ->
    myIndex = 2

    result = findThreeClosestFriends allFriendsCoords, myIndex
    expect(result).toEqual(allFriendsCoords[i] for i in [0,1,3])