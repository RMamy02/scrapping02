#require 'pry'

class Player_game
attr_accessor :player, :symbole_player
   def initialize
      @player = name_player
      @symbole_player = symbole_playeur
   end
   #def name_player
	    puts "Entre le nom du premier Joueur"
   		 player1 = gets.chomp.to_s
    	puts "Joueur 1 =>#{player1}"
    	puts "Entre le nom du second Joueur"
    	 player2 = gets.chomp.to_s
    	puts "Joueur 2 =>#{player2}"
    	puts " "
		puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		puts "	  -------WELCOME TO MORPION-GAME-----------"
		puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		puts " "
    end
    def symbole_playeur
    	puts "Dans ce jeu, #{player1} joue avec un X et #{player2} joue avec un O"
	    puts ""
	     player1 ='X'
	     player2='O'
	    puts "!*************************************************!"
	    puts "		  #{player1.upcase} VS #{player2.upcase}"
	    puts "!*************************************************!"
	end
	def BoardCase
		puts "VOICI NOTRE TERRAIN DE JEU AVEC LEUR IDENTIFICATION"
		puts ""
		puts "--------------------"
		puts "| A1  |  A2  | A3  |"
        puts "------+------+------"
        puts "| B1  |  B2  | B3  |"
        puts "------+------+------"
        puts "| C1  |  C2  | C3  |"
        puts "--------------------"
	def Bord
	@case = {
            '1' => ' ',
            '2' => ' ',
            '3' => ' ',
            '4' => ' ',
            '5' => ' ',
            '6' => ' ',
            '7' => ' ',
            '8' => ' ',
            '9' => ' '
        }
				a1 =@case['1']
				a2 =@case['2']
				a3 =@case['3']
				b1 =@case['4']
				b2 =@case['5']
				b3 =@case['6']
				c1 =@case['7']
				c2 =@case['8']
				c3 =@case['9']
			a = "--------------------"
			b = "| #{a1}   |  #{a2}   | #{a3}   |"
        	c = "------+------+------"
        	d = "| #{b1}   |  #{b2}   | #{b3}   |"
        	e = "------+------+------"
        	f = "| #{c1}   |  #{c2}   | #{c3}   |"
        	g = "--------------------"
        puts"Voici notre terrain de jeu "

        puts a
        puts b
        puts c
        puts d
        puts e
        puts f
        puts g
	end
	def tour_de_role
#mdefinir an ilay dommaine de jeu 1 à 9
 	tour =1
   while tour < 10
		 tour.odd? tour(@player1)||tour(@player2)
	if jeu_termine
	    break
	    end
	     tour+=1
    	end
    end
    num_of_BordCase
    def tour(player)
        puts player == 'X' ? "c'est le #{player1} le tour" : "c'est le #{player2} le tour"
        puts ""
        cell = gets.chomp.to_s
        unless @case.keys.include?(cell)
            puts ""
            puts "it has to be a number from 1 to 9"
            tour(player)
        end
        if @case[cell] == ' ' 
           @case[cell] = player
        else
            puts ""
            puts "That cell is occupied. Choose again!"
            tour(player)
        end
   end
	def 
	@case['1'] = 'X' or @case['1'] = 'O'
		if 	@case['1'] = @case['2']&& @case['3']
			 puts "Le joueur #{Player.name} gagne"
			 continuation = true
		elsif @case['4'] == @case['5'] && @case['6'] == @case['4']
			 puts "Le joueur #{Player.name} gagne"
			 continuation = true
		elsif  @case['6'] ==  @case['5'] &&  @case['7'] ==  @case['6']
			puts "Le joueur #{Player.name} gagne"
			continuation = true
		 elsif  @case['1'] ==  @case['3'] && case1['6'] ==  @case['1']
			  puts "Le joueur #{Player.name} gagne"
			  continuation = true
		elsif  @case['2'] == @case['5'] &&  @case['7']==  @case['2']
			puts "Le joueur #{Player.name} gagne"
			continuation = true
		elsif  @case['3']==  @case['6'] &&  @case['9']==  @case['3']
			puts "Le joueur #{Player.name} gagne"
			continuation = true

		else 
			puts "c'est le tour de #{Player2}"
			continuation = false
		end
		end
	end

#binding.pry


Player_game.new
