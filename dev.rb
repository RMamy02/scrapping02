def methode_ASCII
	print "Saisir ton mot de passe ici (sans chiffre)=> "
	#entrer
	mots = gets.chomp.to_s
	nom = mots.unpack('U*')
	renverse = nom.collect! {|object| object - 10}
	var = renverse.collect! {|term| term.chr}
	a = var.join
	puts "==> #{a}"
end
methode_ASCII