print("Commands are top mid, top left, top right, mid left, mid, mid right, bottom left, bottom mid, and bottom right")

topLeft = " "
topMid = " "
topRight = " "

midLeft = " "
mid = " "
midRight = " "

bottomLeft = " "
bottomMid = " "
bottomRight = " "

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
while run == true do
	win = false
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

		elseif topLeft == "o" and topMid == "o" and topRight == "o" then
			print("P2 wins!")
			win = true

		elseif midLeft == "o" and mid == "o" and midRight == "o" then
			print("P2 wins!")
			win = true

		elseif bottomLeft == "o" and bottomMid == "o" and bottomRight == "o" then
			print("P2 wins!")
			win = true

		elseif topRight == "o" and mid == "o" and bottomLeft == "o" then
			print("P2 wins!")
			win = true

		elseif topLeft == "o" and mid =="o" and bottomRight == "o" then
			print("P2 wins!")
			win = true
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

	p1Selection = true
	while p1Selection == true do
		choice = io.read()
			if choice == "top left" and topLeft == " "  then
				topLeft = "x"
				p1Selection = false

			elseif choice == "top mid" and topMid == " " then
				topMid = "x"
				p1Selection = false

			elseif choice == "top right" and topRight == " " then
				topRight  = "x"
				p1Selection = false

			elseif choice == "mid left" and midLeft == " " then
				midLeft = "x"
				p1Selection = false

			elseif choice == "mid"  and mid == " " then
				mid = "x"
				p1Selection = false

			elseif choice == "mid right" and midRight == " " then
				midRight = "x"
				p1Selection = false

			elseif choice == "bottom left" and bottomLeft == " " then
				bottomLeft = "x"
				p1Selection = false

			elseif choice == "bottom mid" and bottomMid == " " then
				bottomMid = "x"
				p1Selection = false

			elseif choice == "bottom right" and bottomRight == " " then
				bottomRight = "x"
				p1Selection = false

			else
				print("Invalid answer")
			end
		end
	break
end

p2choice = true
	while p2choice == true do
		print("It's player 2's turn")
		board()

	p2Selection = true
	while p2Selection == true do
		p2choice = io.read()
			if p2choice == "top left" and topLeft == " "  then
				topLeft = "o"
				p2Selection = false
				p1Selection = true

			elseif p2choice == "top mid" and topMid == " " then
				topMid = "o"
				p2Selection = false
				p1Selection = true

			elseif p2choice == "top right" and topRight == " " then
				topRight  = "o"
				p2Selection = false
				p1Selection = true

			elseif p2choice == "mid left" and midLeft == " " then
				midLeft = "o"
				p2Selection = false
				p1Selection = true

			elseif p2choice == "mid"  and mid == " " then
				mid = "o"
				p2Selection = false
				p1Selection = true

			elseif p2choice == "mid right" and midRight == " " then
				midRight = "o"
				p2Selection = false
				p1Selection = true

			elseif p2choice == "bottom left" and bottomLeft == " " then
				bottomLeft = "o"
				p2Selection = false
				p1Selection = true

			elseif p2choice == "bottom mid" and bottomMid == " " then
				bottomMid = "o"
				p2Selection = false
				p1Selection = true

			elseif p2choice == "bottom right" and bottomRight == " " then
				bottomRight = "o"
				p2Selection = false
				p1Selection = true

			else
				print("Invalid answer")
			end
		end
	break
end

		print(choice)
		board()

	break
end
end
