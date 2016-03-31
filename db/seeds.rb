# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
student_list = [["Srinivas","srinivas@gmail.com",'253456243'], ["Hasita","hasi@gmail.com",'253456244'],["Siri","siri@hotmail.com",'253256243'],
	["Isacc","isacc@gmail.com",'453456243'],["Mayanka","maya@gmail.com",'953456243'], 
	["Naga","naga@gmail.com",'903456243'], ["John","john132@gmail.com",'653456289'],["Newton","newton12@hotmail.com",'876656243'], 
	["Ojha","ojha@gmail.com",'353456243'],["Zetta","zta@gmail.com",'553456634'],
	["Elpher","elpher@gmail.com",'234456243'], ["Poole","poole@gmail.com",'809456243'],["Sholay","sholay@hotmail.com",'765345623'],
	["Kelly","kelly@gmail.com",'253096243'],["Dolly","dolly@gmail.com",'1234356243']]
	
course_list = ['C Language','Theory of Automata','Java','Advanced Java','QTheory']

semester_list = ['Spring 2016','Fall 2016','Spring 2017','Fall 2017']

registration_list = [['1','1','1'],['2','1','1'],['5','1','1'],['11','1','1'],
						['10','2','1'],['13','2','2'],['15','2','1'],['9','2','2'],
						['3','3','1'],['5','3','1'],['8','3','2'],['4','3','4'],
						['11','4','2'],['12','4','2'],['5','4','4'],['14','4','3'],
						['13','5','1'],['2','5','1'],['1','5','1'],['7','5','1'],['6','5','1']
					]

coursetable_list = [['1','Clanguage'],['1','Java'],['2','Clanguage'],['2','TheoryOfAutomata'],
					['3','Clanguage'],['3','TheoryOfAutomata'],['3','AdvancedJava'],
					['4','TheoryOfAutomata'],['4','Java'],['4','AdvancedJava'],['5','Clanguage']
				   ]

semestertable_list = [['1','1'],['2','1'],['3','1'],['4','4'],['5','1'],['5','4'],
					   ['6','1'],['7','1'],['8','2'],['9','2'],['10','1'],['11','1'],
					   ['11','2'],['12','2'],['13','1'],['13','2'],['14','3'],['15','1']
					 ]

student_list.each do|val1,val2,val3,val4|
	Student.create(name:val1,email:val2,phone:val3)
end

coursetable_list.each do |val1,val2|
	Course.create(semester_id:val1, coursename:val2)
end

semestertable_list.each do|val1,val2|
	Semester.create(student_id:val1,sem:val2)
end

registration_list.each do|val1,val2,val3|
	Registration.create(student_id:val1,course_id:val2,semester_id:val3)
end