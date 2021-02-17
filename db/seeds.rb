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

# Lower Body
lunge = Exercise.create(name: "Lunge", muscleGroup: "lower body", demo: "../media/lunge.mpg")
frontLoadedSquat = Exercise.create(name: "Front loaded squat", muscleGroup: "lower body", demo: "../media/front-loaded-squat.mpg") 
frontSquat = Exercise.create(name: "Front squat", muscleGroup: "lower body", demo: "../media/front-squat.mpg")
gluteBridge = Exercise.create(name: "Glute bridge", muscleGroup: "lower body", demo: "../media/glute-bridge.mpg") 
singleLegGluteBridge = Exercise.create(name: "Single leg glute bridge", muscleGroup: "lower body", demo: "../media/single-leg-glute-bridge.mpg")
bandedGluteAbductor = Exercise.create(name: "Banded glute abductor", muscleGroup: "lower body", demo: "../media/banded-glute-abductor.mpg")
forwardLunge = Exercise.create(name: "Forward lunge", muscleGroup: "lower body", demo: "../media/forward-lunge.mpg")
backwardLunge = Exercise.create(name: "Backward lunge", muscleGroup: "lower body", demo: "../media/backward-lunge.mpg") 
sideLunge = Exercise.create(name: "Side lunge", muscleGroup: "lower body", demo: "../media/side-lunge.mpg")
curtsySquat = Exercise.create(name: "Curtsy squat", muscleGroup: "lower body", demo: "../media/curtsy-squat.mpg") 
fireHydrant = Exercise.create(name: "Fire hydrant", muscleGroup: "lower body", demo: "../media/fire-hydrant.mpg") 
donkeyKicks = Exercise.create(name: "Donkey kicks", muscleGroup: "lower body", demo: "../media/donkey-kicks.mpg")
deadlift = Exercise.create(name: "Deadlift", muscleGroup: "lower body", demo: "../media/deadlift.mpg") 
squatJump = Exercise.create(name: "Squat jump", muscleGroup: "lower body", demo: "../media/squat-jump.mpg")
crabWalk = Exercise.create(name: "Crab walk", muscleGroup: "lower body", demo: "../media/crab-walk.mpg") 
squat = Exercise.create(name: "Squat", muscleGroup: "lower body", demo: "../media/squats.mpg")

# Full Body
mountainClimbers = Exercise.create(name: "Mountain climbers", muscleGroup: "full body", demo: "../media/mountain-climbers.mpg")
plank = Exercise.create(name: "Plank", muscleGroup: "full body", demo: "../media/plank.mpg")
plankDips = Exercise.create(name: "Plank dips", muscleGroup: "full body", demo: "../media/plank-dips.mpg")
sidePlank = Exercise.create(name: "Side plank", muscleGroup: "full body", demo: "../media/side-plank.mpg")
sidePlankDips = Exercise.create(name: "Side plank dips", muscleGroup: "full body", demo: "../media/side-plank-dips.mpg")
bicycleCrunches = Exercise.create(name: "Bicycle crunches", muscleGroup: "full body", demo: "../media/bicycle-crunches-z.mpg")
windshieldWiper = Exercise.create(name: "Windshield wiper", muscleGroup: "full body", demo: "../media/windshield-wiper.mpg")
vUps = Exercise.create(name: "V-ups", muscleGroup: "full body", demo: "../media/v-ups.mpg")
crossBodyClimber = Exercise.create(name: "Cross body climber", muscleGroup: "full body", demo: "../media/cross-body-climber.mpg")
russianTwists = Exercise.create(name: "Russian twists", muscleGroup: "full body", demo: "../media/russian-twists.mpg")
extendedCrunch = Exercise.create(name: "Extended crunch", muscleGroup: "full body", demo: "../media/extended-crunch.mpg")
burpee = Exercise.create(name: "Burpee", muscleGroup: "full body", demo: "../media/burpee.mpg")

# Upper body
bentOverRow = Exercise.create(name: "Bent over row", muscleGroup: "upper body", demo: "../media/bent-over-row.mpg")
shoulderPress = Exercise.create(name: "Shoulder press", muscleGroup: "upper body", demo: "../media/shoulder-press.mpg")
bicepCurls = Exercise.create(name: "Bicep curls", muscleGroup: "upper body", demo: "../media/bicep-curls.mpg")
armRaises = Exercise.create(name: "Arm raises", muscleGroup: "upper body", demo: "../media/arm-raises.mpg")
shadowBoxing = Exercise.create(name: "Shadow boxing", muscleGroup: "upper body", demo: "../media/shadow-boxing.mpg")
tricepDip = Exercise.create(name: "Tricep dip", muscleGroup: "upper body", demo: "../media/tricep-dip.mpg")
skullCrushers = Exercise.create(name: "Skull crushers", muscleGroup: "upper body", demo: "../media/skull-crushers.mpg")
chestPress = Exercise.create(name: "Chest press", muscleGroup: "upper body", demo: "../media/chest-press.mpg")
plankRow = Exercise.create(name: "Plank row with pushup", muscleGroup: "upper body", demo: "../media/plank-row-with-pushup.mpg")
pushup = Exercise.create(name: "Pushups", muscleGroup: "upper body", demo: "../media/pushups.mpg")
supermans = Exercise.create(name: "Supermans", muscleGroup: "upper body", demo: "../media/supermans.mpg")
halo = Exercise.create(name: "Halo", muscleGroup: "upper body", demo: "../media/halo.mpg")
turkishGetUp = Exercise.create(name: "Turkish get up", muscleGroup: "upper body", demo: "../media/turkish-getups.mpg")


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
