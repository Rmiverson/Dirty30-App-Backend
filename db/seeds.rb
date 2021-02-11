# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#test seeds
UserWorkout.destroy_all
WorkoutExercise.destroy_all
User.destroy_all
Workout.destroy_all
Exercise.destroy_all

#######
riley = User.create(username: "RileyMIverson", password: "benchpress4ever", firstname: "Riley", height: 75, weight: 200)
zoe = User.create(username: "zoaesis", password: "bootygainz", firstname: "Zoe", height: 66, weight: 117)

workout1 = Workout.create(name: "Burn baby", muscleGroup: "upper body", sets: 3, exercisesPerSet: 7)
workout2 = Workout.create(name: "Bunz of steel", muscleGroup: "lower body", sets: 3, exercisesPerSet: 7)
workout3 = Workout.create(name: "Full body sweat", muscleGroup: "full body", sets: 3, exercisesPerSet: 7)

squat = Exercise.create(name: "squat", muscleGroup: "lower body", demo: "1234")
press = Exercise.create(name: "shoulder press", muscleGroup: "upper body", demo: "1235")
crunch = Exercise.create(name: "ab crunch", muscleGroup: "core", demo: "1236") 

join1 = UserWorkout.create(user_id: 1, workout_id: 1)
join2 = UserWorkout.create(user_id: 1, workout_id: 2)
join3 = UserWorkout.create(user_id: 2, workout_id: 3)
join4 = UserWorkout.create(user_id: 2, workout_id: 1)

ejoin1 = WorkoutExercise.create(workout_id: 1, exercise_id: 1)
ejoin2 = WorkoutExercise.create(workout_id: 1, exercise_id: 2)
ejoin3 = WorkoutExercise.create(workout_id: 1, exercise_id: 3)

ejoin4 = WorkoutExercise.create(workout_id: 2, exercise_id: 2)
ejoin5 = WorkoutExercise.create(workout_id: 2, exercise_id: 3)

ejoin6 = WorkoutExercise.create(workout_id: 3, exercise_id: 1)
ejoin7 = WorkoutExercise.create(workout_id: 3, exercise_id: 2)
ejoin8 = WorkoutExercise.create(workout_id: 3, exercise_id: 3)
