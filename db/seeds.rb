# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#清除之前所建立的種子資料
# Todolist.destroy_all

# #填入三個種子資料
# todolist_list = [

# 	{ "title" => "play basketball" , "duedate" => "2017-03-09" , "description" => "Beat Yang Li Yi" }
# 	# { "title" => "practice rails" , "duedate" => "2017-12-31" , "description" => "Practice everyday" },
# 	# { "title" => "Birthday" , "duedate" => "2017-08-16" , "description" => "Happy Birthday to me" }
	
# ]

# #建立種子資料陣列
# #將已經建立好的資料再從migrate的表格裡撈出來顯示 :title，:date，:description為model裡的row
# todolist_list.each do | todolist |

# 	Todolist.create ( :title => todolist["title"], :duedate => todolist["duedate"], :description => todolist["description"] )

# end


Todolist.destroy_all

todolist_list = [
	{ "title" => "paly basketball", "duedate" => "2017-03-09", "description" => "Beat Yang Li Yi" },
	{ "title" => "practice rails", "duedate" => "2017-12-31", "description" => "practice everyday" },
	{ "title" => "birthday", "duedate" => "2017-01-01", "description" => "Happy to you" }
]

todolist_list.each do |list|

	Todolist.create( :title => list["title"] , :duedate => list["duedate"] , :description => list["description"] )
end