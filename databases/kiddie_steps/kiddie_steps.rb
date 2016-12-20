require 'sqlite3'
require 'faker'

db = SQLite3::Database.new( "word_tracker.db" )
db.results_as_hash = true


create_user_info_table = <<-SQL
  CREATE TABLE IF NOT EXISTS user_info(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    user_id VARCHAR(255),
    child_name VARCHAR (255),
    child_birthdate VARCHAR (255)
    )
    SQL

create_vocabulary_table = <<-SQL
  CREATE TABLE IF NOT EXISTS vocabulary(
    id INTEGER PRIMARY KEY,
    words VARCHAR (255),
    date VARCHAR,
    user_info_id VARCHAR (255),
    FOREIGN KEY (user_info_id) REFERENCES user_info(id) 
    )
    SQL

db.execute(create_user_info_table)


# db.execute("INSERT INTO user_info (
#   first_name, 
#   last_name, 
#   user_id, 
#   child_name, 
#   child_birthdate) 
#   VALUES 
#   ('bob',  
#   'billy', 
#   'bobbinforapples',
#   'bob jr.',
#   '1/2/2014')")

# db.execute(create_vocabulary_table)

def populate_words(db, word)
  date = (Time.now - rand*60*60*24*600).to_s
  db.execute(
    "INSERT INTO vocabulary 
    (words, 
    date, 
    user_info_id)
    VALUES
    (?,
    ?,
    2)",
    [word, date]
  )
end
# 1000.times do
#   populate_words(db, Faker::Lorem.word)
# end

vocabulary = db.execute("SELECT * FROM vocabulary")
user_info = db.execute("SELECT * FROM user_info")


def print_words(user, db, user_table, words_table)
  child = db.execute("SELECT child_name FROM user_info WHERE user_id = '#{user}'")
  # child = child.join
  user_info_foreign_key = nil
  user_table.each do |info|
    user_info_foreign_key = info[0] if info[3] = user
  end
  words_num = db.execute("SELECT words FROM vocabulary WHERE  user_info_id = #{user_info_foreign_key}")
  puts "#{child[0]['child_name']} knows #{words_num.length} words."  
end

# print_words("bobbinforapples", db, user_info, vocabulary)

def add_word(user, word, arr, db)
  user_exists = nil
  date = Time.now.to_s
  arr.each do |user_table|
    if user == user_table['user_id']
      user_info_foreign_key = user_table['id']
      logged_in_user_info = db.execute("SELECT * FROM user_info WHERE id = #{user_info_foreign_key}")
      db.execute("INSERT INTO vocabulary (words, date, user_info_id) VALUES (?,?,?)", [word, date, user_info_foreign_key])
      puts "#{word} is being tracked in your child's vocabulary."
      user_exists = true
    else 
      user_exists = false
    end
  end  
  if user_exists == false
    puts "This user does not exist.  Please try again."
  else
    print_words(user, db, arr, (vocabulary = db.execute("SELECT * FROM vocabulary")))
  end
end
# add_word("bobbinforapples", "silly", (arr = db.execute("SELECT * FROM user_info")), db)


puts "If you would like to add a new word, please enter your user ID."
user = gets.chomp.downcase
puts "Type the word you would like to add" 
word = gets.chomp.downcase 
add_word(user, word, user_info, db)

# App idea: children's vocabulary tracker\
# need database
#   table: user_info
#     id integer primary key
#     first name varchar 255
#     last name varchar 255
#     user id varchar 255
#   table: child_info
#     first_name
#     age
#     sex
#     birthdate
#   table: user_id_child_name
#     word
#     correctly_pronounced
#     time_took_until_correctly_pronounced
#     current date/time  

# create methods to 
#   add word
#   correctly_pronounced = true or false
#   get average words learned per day, week, month, year
#   get total words known
#   get average time took to pronounce word correctly 


