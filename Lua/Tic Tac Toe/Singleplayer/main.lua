print("Your input commands are:")
print("top left")
print("top mid")
print("top right")
print(" ")
print("mid left")
print("mid")
print("mid right")
print(" ")
print("bottom left")
print("bottom mid")
print("bottom right")
print(" ")

local topLeft = " "
local topMid = " "
local topRight = " "

local midLeft = " "
local mid = " "
local midRight = " "

local bottomLeft = " "
local bottomMid = " "
local bottomRight = " "

run = true
function board()
	print(" ")
	print(topLeft.."  | "..topMid.. "  | "..topRight)
	print("---|----|---")
	print(midLeft.."  | "..mid.."  | "..midRight)
	print("---|----|---")
	print(bottomLeft.."  | "..bottomMid.. "  | "..bottomRight)
	print(" ")
end

while run == true do
	win = false
-- Player Win Conditions
		if topLeft == "x" and topMid == "x" and topRight == "x" then
			win = true
			print("P1 Wins!")

		elseif midLeft == "x" and mid == "x" and midRight == "x" then
			win = true
			print("P1 Wins!")

		elseif bottomLeft == "x" and bottomMid == "x" and bottomRight == "x" then
			win = true
			print("P1 Wins!")

		elseif topLeft == "x" and midLeft == "x" and bottomLeft == "x" then
			win = true
			print("P1 Wins!")

		elseif topMid == "x" and mid == "x" and bottomMid == "x" then
			win = true
			print("P1 Wins")

		elseif topRight == "x" and midRight == "x" and bottomRight == "x" then
			win = true
			print("P1 Wins!")

		elseif topLeft == "x" and mid == "x" and bottomRight == "x" then
			win = true
			print("P1 Wins!")

		elseif topRight == "x" and mid == "x" and bottomLeft == "x" then
			win = true
			print("P1 Wins!")

-- Computor Win Conditions
		if topLeft == "o" and topMid == "o" and topRight == "o" then
			win = true
			print("Computor Wins!")

		elseif midLeft == "o" and mid == "o" and midRight == "o" then
			win = true
			print("Computor Wins!")

		elseif bottomLeft == "o" and bottomMid == "o" and bottomRight == "o" then
			win = true
			print("Computor Wins!")

		elseif topLeft == "o" and midLeft == "o" and bottomLeft == "o" then
			win = true
			print("Computor Wins!")

		elseif topMid == "o" and mid == "o" and bottomMid == "o" then
			win = true
			print("Computor Wins")

		elseif topRight == "o" and midRight == "o" and bottomRight == "o" then
			win = true
			print("Computor Wins!")

		elseif topLeft == "o" and mid == "o" and bottomRight == "o" then
			win = true
			print("Computor Wins!")

		elseif topRight == "o" and mid == "o" and bottomLeft == "o" then
			win = true
			print("Computor Wins!")

		end
	end
if win == true then
	topLeft = " "
	topMid = " "
	topRight = " "
	midLeft = " "
	mid = " "
	midRight = " "
	bottomLeft = " "
	bottomMid = " "
	bottomRight = " "
end


p1choice = true
	while p1choice == true do
		print("It's player 1's turn")
		board()

	p1Seclection = true
	while p1Seclection == true do
		choice = io.read()
			if choice == "top left" and topLeft == " "  then
				topLeft = "x"
				p1Seclection = false

			elseif choice == "top mid" and topMid == " " then
				topMid = "x"
				p1Seclection = false

			elseif choice == "top right" and topRight == " " then
				topRight  = "x"
				p1Seclection = false

			elseif choice == "mid left" and midLeft == " " then
				midLeft = "x"
				p1Seclection = false

			elseif choice == "mid"  and mid == " " then
				mid = "x"
				p1Seclection = false

			elseif choice == "mid right" and midRight == " " then
				midRight = "x"
				p1Seclection = false

			elseif choice == "bottom left" and bottomLeft == " " then
				bottomLeft = "x"
				p1Seclection = false

			elseif choice == "bottom mid" and bottomMid == " " then
				bottomMid = "x"
				p1Seclection = false

			elseif choice == "bottom right" and bottomRight == " " then
				bottomRight = "x"
				p1Seclection = false

			else 
				print("Invalid answer")
			end
		end
	break
end

p2choice = true
	while p2choice == true do
		dice = true

math.randomseed(os.time())
	while dice == true do
		randomNumber = math.random(1,11)

			if mid == " " and randomNumber <=7 then
				mid = "o"
				dice = false

				-- horizontal bottom wins
			elseif bottomLeft == "x" or bottomLeft == "o" and bottomMid == "x" or bottomMid == "o" and bottomRight == " " then
				bottomRight = "o"
				dice = false

			elseif bottomLeft == "x" or bottomLeft == "o" and bottomRight == "x" or bottomRight == "o" and bottomMid == " " then
				bottomMid = "o"
				dice = false

			elseif bottomMid == "x" or bottomMid == "o" and bottomRight == "x" or bottomRight == "o" and bottomLeft == " " then
				bottomLeft = "o"
				dice = false

				-- horizontal top wins
			elseif topMid == "x" or topMid == "o" and topLeft == "x" or topLeft == "o" and topRight == " " then
				topRight = "o"
				dice = false

			elseif topLeft == "x" or topLeft == "o" and topRight == "x" or topRight == "o" and topMid == " " then
				topMid = "o"
				dice = false

			elseif topMid == "x" or topMid == "o" and topRight == "x" or topRight == "o" and topLeft == " " then
				topLeft = "o"
				dice = false

				-- horizontal mid wins
			elseif midLeft == "x" or midLeft =="o" and mid == "x" or mid =="o" and midRight == " " then
				midRight = "o"
				dice = false

			elseif midLeft == "x" or midLeft =="o" and mid == " " and midRight == "x" or midRight =="o" then
				mid = "o"
				dice = false

			elseif midLeft == " " and mid == "x" or mid =="o" and midRight == "x" or midRight =="o" then
				midLeft = "o"
				dice = false

				-- vertical mid wins
			elseif mid  == "x" or mid == "o" and topMid == "x" or topMid == "o" and bottomMid == " " then
				bottomMid = "o"
				dice = false

			elseif mid  == " " and topMid == "x" or topMid == "o" and bottomMid == "x" or bottomMid == "o" then
				mid = "o"
				dice = false

			elseif mid  == "x" or mid == "o" and topMid == " " and bottomMid == "x" or bottomMid == "o" then
				topMid = "o"
				dice = false

				-- vertical left wins
			elseif topLeft == " " and midLeft == "x" or midLeft == "o" and bottomMid == "x" or bottomLeft == "o" then
				topLeft = "o"
				dice = false

			elseif topLeft == "x" or topLeft == "o" and midLeft == " " and bottomLeft == "x" or bottomLeft == "o" then
				midLeft = "o"
				dice = false

			elseif topLeft == "x" or topLeft == "o" and midLeft == "x" or midLeft == "o" and bottomMid == " " then
				bottomLeft = "o"
				dice = false

				-- vertical right win
			elseif topRight == "x" or topRight == "o" and midRight == "x" or midRight == "o" and bottomRight == " " then
				bottomRight = "o"
				dice = false

			elseif topRight == "x" or topRight == "o" and midRight == " " and bottomRight == "x" or bottomRight == "o" then
				midRight = "o"
				dice = false

			elseif topRight == " " and midRight == "x" or midRight == "o" and bottomRight == "x" or bottomRight == "o" then
				topRight = "o"
				dice = false

				-- diagonal wins
			elseif topLeft == "x" or topLeft == "o" and mid == "x" or mid == "o" and bottomRight == " " then
				bottomRight = "o"
				dice = false

			elseif topLeft == "x" or topLeft == "o" and mid == " " and bottomRight == "x" or bottomRight == "o" then
				mid = "o"
				dice = false

			elseif topLeft == " " and mid == "x" or mid == "o" and bottomRight == "x" or bottomRight == "o" then
				topLeft = "o"
				dice = false

			elseif topRight == "x" or topRight == "o" and mid == "x" or mid == "o" and bottomLeft == " " then
				bottomLeft = "o"
				dice = false

			elseif topRight == "x" or topRight == "o" and mid == " " and bottomLeft == "x" or bottomLeft == "o" then
				mid = "o"
				dice = false

			elseif topRight == " " and mid == "x" or mid == "o" and bottomLeft == "x" or bottomLeft == "o" then
				topRight = "o"
				dice = false

				-- when no win condition
			elseif randomNumber >= 1 and mid == " "then
				mid = "o"
				dice = false

			elseif mid == "x" or mid == "o" then
				bottomMid = "o"
				dice = false

			elseif bottomMid == "x" or bottomMid == "o" then
				topMid = "o"
				dice = false

			elseif topMid == "x" or topMid == "o" then
				topLeft = "o"
				dice = false

			elseif topLeft == "x" or topLeft "o" then
				topRight = "o"
				dice = false

			elseif topRight == "x" or topRight == "o" then
				midLeft = "o"
				dice = false

			elseif midLeft == "x" or midLeft == "o" then
				midRight = "o"
				dice = false

			elseif midRight == "x" or midRight == "o" then
				bottomLeft = "o"
				dice = false

			elseif bottomLeft == "x" and bottomRight == " " or bottomLeft == "o" and bottomRight == " " then
				bottomRight = "o"
				dice = false

			else
				dice = true
			end

if topLeft ~= " " and topMid ~= " " and topRight ~= " " and midLeft ~= " " and mid ~= " " and midRight ~= " " and bottomLeft ~= " " and bottomMid ~= " " and bottomRight ~= " " then
	print("Nobody wins.")
	topLeft = " "
	topMid = " "
	topRight = " "
	midLeft = " "
	mid = " "
	midRight = " "
	bottomLeft = " "
	bottomMid = " "
	bottomRight = " "
end

		end

			print(choice)
			board()

		break
	end
end
