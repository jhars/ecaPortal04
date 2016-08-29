District.create(name: "district 100")
District.create(name: "district 200")
  
School.create(name: "school 101", district_id: District.find_by(name: "district 100").id)
School.create(name: "school 102", district_id: District.find_by(name: "district 100").id)
School.create(name: "school 201", district_id: District.find_by(name: "district 200").id)
School.create(name: "school 202", district_id: District.find_by(name: "district 200").id)

User.create(fname: "Donald", lname: "Trump", grade: 0, email: "dtrump@gmail.com", phone: "2484441648", student_count: 32, district_id: District.find_by(name: "district 100").id)
User.create(fname: "Dave", lname: "Matthews", grade: 0, email: "dmatthews@gmail.com", phone: "2484449837", student_count: 32, district_id: District.find_by(name: "district 200").id)