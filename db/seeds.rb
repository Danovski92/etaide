puts "Creating new database................................."
puts "......................................................"
# frozen_string_literal: true
profile_pics = ['https://avatars.githubusercontent.com/u/111744564?v=4', 'https://avatars.githubusercontent.com/u/115220582?v=4', 'https://avatars.githubusercontent.com/u/64324649?v=4', 'https://avatars.githubusercontent.com/u/113585031?v=4', 'https://avatars.githubusercontent.com/u/115092301?v=4', 'https://avatars.githubusercontent.com/u/114390739?v=4', 'https://avatars.githubusercontent.com/u/115362209?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665394767/mikiu97xuuke6ojnvgvu.jpg', 'https://avatars.githubusercontent.com/u/115455654?v=4', 'https://avatars.githubusercontent.com/u/115160754?v=4', 'https://avatars.githubusercontent.com/u/107755423?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1669150731/drr4hsbbs7miqlb496pb.jpg', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665169309/xtjz0rjwjbakjutafzjk.jpg', 'https://avatars.githubusercontent.com/u/114407797?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665374367/jodx2uu8pwztz9fbvpxn.jpg', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1666272643/jfx2asuwkaci8lw4htjs.jpg', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665244244/tqnvod1y64aopa1pulop.jpg', 'https://avatars.githubusercontent.com/u/115232130?v=4', 'https://avatars.githubusercontent.com/u/95490256?v=4', 'https://avatars.githubusercontent.com/u/115222688?v=4', 'https://avatars.githubusercontent.com/u/114503817?v=4', 'https://avatars.githubusercontent.com/u/110670112?v=4', 'https://avatars.githubusercontent.com/u/115285914?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1668537047/rlom7ragvvcjvuinmufo.jpg', 'https://avatars.githubusercontent.com/u/115412600?v=4', 'https://avatars.githubusercontent.com/u/105560670?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665328455/aygscggafedfwmqswxgz.jpg', 'https://avatars.githubusercontent.com/u/114588058?v=4', 'https://avatars.githubusercontent.com/u/115413703?v=4', 'https://avatars.githubusercontent.com/u/114503694?v=4', 'https://avatars.githubusercontent.com/u/115432124?v=4', 'https://avatars.githubusercontent.com/u/113370226?v=4', 'https://avatars.githubusercontent.com/u/115384742?v=4', 'https://avatars.githubusercontent.com/u/115427155?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665081010/cyog55zdzis35hgnbjal.jpg', 'https://avatars.githubusercontent.com/u/112131448?v=4', 'https://avatars.githubusercontent.com/u/108671403?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1668771482/hlnul4apziuoyjrqy7ik.jpg', 'https://avatars.githubusercontent.com/u/78162263?v=4', 'https://avatars.githubusercontent.com/u/115411828?v=4', 'https://avatars.githubusercontent.com/u/115414180?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665335658/ygojtitooty4ykhlbspc.jpg', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665327744/r3fytxflbq12vbl7kyor.jpg']
exercises = [
  ["Getters and Setters", "Un getter est une méthode qui demande des informations à une variable d’instance. Un setter est une méthode qui modifie des informations sur une variable d’instance.

  Dans cet exercice, on va implémenter un distributeur simple (classe Ruby VendingMachine) sur lequel un utilisateur peut acheter des snacks à un prix donné. L’utilisateur peut se rendre au distributeur, insérer de la monnaie, puis appuyer sur un bouton “Buy” (Acheter).
  "],
  ['Basic OOP', 'Dans le module 01-Ruby, tu as écrit tout un tas de programmes Ruby avec des classes comme String, Integer, Array, Hash, etc. En réalité, tu as même manipulé des instances de ces classes.

    Tu as bien noté que String est une classe, non ? Cela signifie que "john lennon" ou "Hello!" sont tous deux des instances de String.

    Utiliser des classes intégrées, c’est bien. Mais créer tes propres classes, c’est encore mieux !'],
  ["Public Interface", "Une bonne conception orientée objet implique de comprendre à quel point un objet doit être exposé.

    Exposer un objet signifie rendre ses propriétés (données internes) accessibles au « public », c’est-à-dire à d’autres objets dans le programme voire à d’autres programmes. Ensemble, ces méthodes publiques forment l’interface publique d’un objet. Les méthodes qui sont privées (accessibles uniquement au sein de l’objet) forment son interface privée.

    En règle générale, on expose uniquement d’un objet ce dont les autres objets ont besoin pour interagir avec lui. On ne crée pas d’objets perméables à moins d’avoir besoin qu’ils soient perméables."],
  ["Richest Student", "Congrats for reaching the first optional exercise of the first OOP day. We will now work on an exercise to mix sorting and comparable methods with objects.
    Suppose you have students (defined by the class Student) who each have an amount of money (in bills of five, ten and twenty euros). We want to be able to compare them based on their wealth.
        When initializing a Student, you should pass 4 arguments representing the student name and the number of bills they own (fives, tens and twenties)
        Implement a wealth instance method on Student
        Implement Comparable on this method so that it’s possible to compare 2 students, and to sort an Array of students. You can read more about the spaceship operator <=> and sorting objects here.
    "],
  ["Table Design", "L’objectif de ce premier exercice est de créer ta première table en utilisant le SQL Designer."],
  ["DB Design", "Conçois un schéma de base de données pour une application de sondage répondant aux contraintes. Pour cela, tu dois utiliser le SQL Designer. Pour vérifier ta solution, clique sur “Save / Load”, puis “Save XML” et copie-colle le code XML généré dans lib/survey.xml. Ensuite, utilise rake pour terminer la vérification."],
  ["Interacting with DB", "SQLite est une base de données simple qui dépend d’un seul fichier autonome. Pour en savoir plus, consulte la page fr.wikipedia.org/wiki/SQLite.

    L’objectif de ce premier exercice est d’utiliser la ligne de commande pour lire et interroger une base de données fournie, appelée jukebox.sqlite.

    Le challenge consiste à dessiner le schéma de la base de données sur db.lewagon.com, à l’enregistrer comme un fichier XML et à exécuter rake !"],
  ["Interacting with Code", "👉 IMPORTANT : Chaque méthode prend un argument db, qui est une instance de SQLite3::Database sur laquelle on peut appeler la méthode execute. Cette db est créée par le test et passée à la méthode. Inutile d’en créer une toi-même pour faire plaisir à rake. Ta méthode ressemblera à ça :"],
  ["Read", "L’objectif du jour est d’implémenter chacune des opérations du CRUD et de créer une copie de Hacker News.
    Remarque : dans cet exercice, on te donne la variable globale DB ; inutile de créer une nouvelle instance SQLite3::Database. Utilise simplement DB.execute dans ton code et ça fonctionnera (jette un œil à spec/models/post_spec.rb pour voir comment la variable DB est créée).
    "],
  ["Create Update", "Dans ce quatrième exercice, on va s’attacher à créer (Create, qui correspond au C dans le CRUD) et mettre à jour (Update, qui correspond au U dans le CRUD). Pourquoi s’occuper du C et du U en même temps ? Car le processus est très similaire. Quand on manipule des instances d’objet, si on appelle save sur un objet qui n’existe pas encore dans notre DB, alors cet objet sera créé. S’il existe déjà, il sera simplement mis à jour."],
  ["MVC HackerNews", "Dans les exercices précédents, on a créé des méthodes directement dans la classe de modèle, Post. Pour cela, on n’avait pas besoin de classe Repository comme quand on stocke des données dans un CSV, car la classe du modèle gère directement la relation avec la base de données. Génial, non ?
    L’étape suivante consiste à insérer le nouveau code dans l’architecture MVC adéquate."],
  ["HTTP and MVC quiz", "Avant de passer à la création de tes premières applications Rails et d’aborder les routes, les contrôleurs et les vues, on va revenir sur certains sujets qui te seront indispensables pour maîtriser Rails."],
  ["Stupid Coaching", "La première page consiste en un formulaire avec un champ « input », où un utilisateur peut taper une question à poser au coach.
    Une fois qu’il a envoyé le formulaire, l’utilisateur est redirigé vers une autre page où il peut voir sa question et la réponse du coach."],
  ["Burger Restaurant", "La méthode burger peut uniquement être appelée avec des arguments qui figurent dans les listes ci-dessus. Mais lorsqu’ils commandent, les clients ont souvent des demandes spéciales concernant leur base, comme la cuisson, la taille de la portion ou une alternative.

    Notre méthode n’est pas en mesure de recevoir ce genre de demandes spéciales pour le moment ; on va donc la retravailler.

    Mais avant de nous lancer dans le code de la méthode, réfléchissons à une façon d’écrire les instructions spéciales pour la cuisine (en respectant la contrainte de ne pas passer les informations complémentaires au travers d’arguments). C’est comme si on ajoutait une note à la commande :"],
  ["HTML Generator", "Dans cet exercice, on va continuer à s’entraîner avec les blocs. On va coder une autre méthode à appeler avec un bloc, mais cette fois-ci on verra comment les blocs permettent d’imbriquer des appels de méthodes, et en quoi cela peut être utile avec un exemple de la vie réelle. On apprendra également à définir des méthodes avec un deuxième paramètre facultatif, ce qui arrive souvent !"],
  ["Splitter", "Combinons le pouvoir des énumerables (#each, #map, etc.) et des blocs (et yield). On va essayer de créer une méthode de séparation (splitter), qui prendra un array et le divisera en deux groupes en fonction d’une règle arbitraire. On pourrait, par exemple, diviser un groupe de personnes en fonction de leur âge."],
  ["Playing with Strings", "Write a method that determines whether a given word or phrase is a palindrome, that is, it reads the same backwards as forwards, ignoring case, spaces and punctuation."],
  ["Louchebem", "Tu rencontres un entrepreneur français qui te dit : “J’ai une super idée : j’aimerais que les gens recommencent à parler le louchébem !” Et il a besoin de ton aide 😊"],
  ["Can you vote?", "Écris une méthode Ruby qui retourne true si l’âge saisi est suffisant pour voter, et false si ce n’est pas le cas (les personnes de 18 ans et plus peuvent voter)."],
  ["Simple Looping", "Écris une méthode dans Ruby permettant de calculer la somme des integers entre une valeur minimale et une valeur maximale (valeurs minimale et maximale comprises). Si la valeur minimale est supérieure à la valeur maximale, elle doit retourner -1. Tu dois implémenter au moins les deux versions simples, en utilisant les structures for..end et while..end."],
  ["Sorting the Wagon", "La classe Array est l’une des deux structures principales utilisées pour stocker et accéder à des données en Ruby. (L’autre est Hash, que l’on verra demain.)

    Un array est ordonné, si bien que chaque élément est accessible par son indice (index). Cet exercice t’aidera
    à comprendre comment créer un array, comment stocker des données dedans et comment récupérer ces données en utilisant l’indice.
    Souviens-toi que les indices des arrays commencent à 0, et non à 1.

    On demande souvent aux développeurs de trier des choses ; on te conseille donc de te renseigner sur les algorithmes de tri.

    Dans la documentation Ruby, tu devrais trouver plusieurs façons de trier un Enumerable. Array est une forme d’Enumerable ; tu peux donc utiliser toutes les méthodes référencées dans la documentation Enumerable quand tu utilises un Array, car Array inclut le module Enumerable."],
  ["Destructive Methods", "Les méthodes destructives modifient le récepteur (l’objet sur lequel elles sont appelées).
    Elles peuvent être dangereuses. Par convention, on ajoute donc un point d’exclamation ! à la fin."]
]
p profile_pics.count

a = - 1

5.times do
  a += 1
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456",
    image: profile_pics[a]
  )
  user.save!
  puts "....Adding ...5..Users to DB.............."
end
x = 0
43.times do
  randi = rand(1..10)
  pp = rand(0..42)
  url = "https://picsum.photos/v2/list?page=#{randi}&limit=1000"
  pic_url = JSON.parse(URI.open(url).read)
  x += 1
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456",
    image: profile_pics[pp]
  )
  user.save!
  puts "....Adding ...#{x}..Users to DB.............."

  5.times do
    ex = rand(0..21)
    pp = rand(0..42)
    exercise = Exercise.new(
      name: exercises[ex][0],
      description: exercises[ex][1],
      price_per_day: rand(0..500),
      category: Exercise::CATEGORIES.sample,
      response_time: rand(30..120),
      user_id: user.id,
      image: pic_url[rand(0..80)]['download_url']
    )
    exercise.save!
    puts "....Adding ...#{x * 5}..Exercises to DB.............."
    day = rand(1..27).to_s
    month = rand(2..12).to_s
    num = rand(1..4).to_i
    case num
    when 1
      booking = Booking.new(
        start_date: "#{day}/01/2022",
        end_date: "#{day}/#{month}/2022",
        user_id: user.id - 1,                                 #### ne peut pas etre = à l'user_id de l'exercise
        exercise_id: exercise.id
      )
      booking.save!
    when 2
      booking = Booking.new(
        start_date: "#{day}/01/2022",
        end_date: "#{day}/#{month}/2022",
        user_id: user.id - 2,                                 #### ne peut pas etre = à l'user_id de l'exercise
        exercise_id: exercise.id
      )
      booking.save!
    when 3
      booking = Booking.new(
        start_date: "#{day}/01/2022",
        end_date: "#{day}/#{month}/2022",
        user_id: user.id - 3,                                 #### ne peut pas etre = à l'user_id de l'exercise
        exercise_id: exercise.id
      )
      booking.save!
    when 4
      booking = Booking.new(
        start_date: "#{day}/01/2022",
        end_date: "#{day}/#{month}/2022",
        user_id: user.id - 4,                                 #### ne peut pas etre = à l'user_id de l'exercise
        exercise_id: exercise.id
      )
      booking.save!
      puts "....Adding ...#{x * 5}..Bookings to DB.............."
    end
  end
end
