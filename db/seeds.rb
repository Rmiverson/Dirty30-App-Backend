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
riley = User.create(username: "rmiverson", password: "benchpress4ever", firstname: "Riley", height: 75, weight: 200)
zoe = User.create(username: "zoaesis", password: "bootygainz", firstname: "Zoe", height: 66, weight: 117)

# Lower Body
lunge = Exercise.create(name: "Lunge", muscleGroup: "lower body", demo: "lunge.mp4")
frontLoadedSquat = Exercise.create(name: "Front loaded squat", muscleGroup: "lower body", demo: "front-loaded-squat.mp4") 
weightedSquat = Exercise.create(name: "Weighted squat", muscleGroup: "lower body", demo: "front-squat.mp4")
gluteBridge = Exercise.create(name: "Glute bridge", muscleGroup: "lower body", demo: "glute-bridge.mp4") 
singleLegGluteBridge = Exercise.create(name: "Single leg glute bridge", muscleGroup: "lower body", demo: "single-leg-glute-bridge.mp4")
bandedGluteAbductor = Exercise.create(name: "Banded glute abductor", muscleGroup: "lower body", demo: "banded-glute-abductor.mp4")
forwardLunge = Exercise.create(name: "Forward lunge", muscleGroup: "lower body", demo: "forward-lunge.mp4")
backwardLunge = Exercise.create(name: "Backward lunge", muscleGroup: "lower body", demo: "backward-lunge.mp4") 
sideLunge = Exercise.create(name: "Side lunge", muscleGroup: "lower body", demo: "side-lunge.mp4")
curtsySquat = Exercise.create(name: "Curtsy squat", muscleGroup: "lower body", demo: "curtsy-squat.mp4") 
fireHydrant = Exercise.create(name: "Fire hydrant", muscleGroup: "lower body", demo: "fire-hydrant.mp4") 
donkeyKicks = Exercise.create(name: "Donkey kicks", muscleGroup: "lower body", demo: "donkey-kicks.mp4")
deadlift = Exercise.create(name: "Deadlift", muscleGroup: "lower body", demo: "deadlift.mp4") 
squatJump = Exercise.create(name: "Squat jump", muscleGroup: "lower body", demo: "squat-jump.mp4")
crabWalk = Exercise.create(name: "Crab walk", muscleGroup: "lower body", demo: "crab-walk.mp4") 
airSquat = Exercise.create(name: "Air squat", muscleGroup: "lower body", demo: "squats.mp4")

# Full Body
mountainClimbers = Exercise.create(name: "Mountain climbers", muscleGroup: "full body", demo: "mountain-climbers.mp4")
plank = Exercise.create(name: "Plank", muscleGroup: "full body", demo: "plank.mp4")
plankDips = Exercise.create(name: "Plank dips", muscleGroup: "full body", demo: "plank-dips.mp4")
sidePlank = Exercise.create(name: "Side plank", muscleGroup: "full body", demo: "side-plank.mp4")
sidePlankDips = Exercise.create(name: "Side plank dips", muscleGroup: "full body", demo: "side-plank-dips.mp4")
bicycleCrunches = Exercise.create(name: "Bicycle crunches", muscleGroup: "full body", demo: "bicycle-crunches-z.mp4")
windshieldWiper = Exercise.create(name: "Windshield wiper", muscleGroup: "full body", demo: "windshield-wiper.mp4")
vUps = Exercise.create(name: "V-ups", muscleGroup: "full body", demo: "v-ups.mp4")
crossBodyClimber = Exercise.create(name: "Cross body climber", muscleGroup: "full body", demo: "cross-body-climber.mp4")
russianTwists = Exercise.create(name: "Russian twists", muscleGroup: "full body", demo: "russian-twists.mp4")
extendedCrunch = Exercise.create(name: "Extended crunch", muscleGroup: "full body", demo: "extended-crunch.mp4")
burpee = Exercise.create(name: "Burpee", muscleGroup: "full body", demo: "burpee.mp4")

# Upper body
bentOverRow = Exercise.create(name: "Bent over row", muscleGroup: "upper body", demo: "bent-over-row.mp4")
shoulderPress = Exercise.create(name: "Shoulder press", muscleGroup: "upper body", demo: "shoulder-press.mp4")
bicepCurls = Exercise.create(name: "Bicep curls", muscleGroup: "upper body", demo: "bicep-curls.mp4")
armRaises = Exercise.create(name: "Arm raises", muscleGroup: "upper body", demo: "arm-raises.mp4")
shadowBoxing = Exercise.create(name: "Shadow boxing", muscleGroup: "upper body", demo: "shadow-boxing.mp4")
tricepDip = Exercise.create(name: "Tricep dip", muscleGroup: "upper body", demo: "tricep-dip.mp4")
skullCrushers = Exercise.create(name: "Skull crushers", muscleGroup: "upper body", demo: "skull-crushers.mp4")
chestPress = Exercise.create(name: "Chest press", muscleGroup: "upper body", demo: "chest-press.mp4")
plankRow = Exercise.create(name: "Plank row with pushup", muscleGroup: "upper body", demo: "plank-row-with-pushup.mp4")
pushup = Exercise.create(name: "Pushups", muscleGroup: "upper body", demo: "pushups.mp4")
supermans = Exercise.create(name: "Supermans", muscleGroup: "upper body", demo: "supermans.mp4")
halo = Exercise.create(name: "Halo", muscleGroup: "upper body", demo: "halo.mp4")
turkishGetUp = Exercise.create(name: "Turkish get up", muscleGroup: "upper body", demo: "turkish-getups.mp4")


# Featured workouts
workout1 = Workout.create(name: "Burn, Baby!", muscleGroup: "upper body", sets: 3, exercisesPerSet: 7)
workout2 = Workout.create(name: "Bunz of Steel", muscleGroup: "lower body", sets: 3, exercisesPerSet: 7)
workout3 = Workout.create(name: "Full Body Sweat", muscleGroup: "full body", sets: 3, exercisesPerSet: 7)
workout4 = Workout.create(name: "Monday Shred", muscleGroup: "full body", sets: 3, exercisesPerSet: 7)
workout5 = Workout.create(name: "Don't Skip Leg Day", muscleGroup: "lower body", sets: 2, exercisesPerSet: 6)
workout6 = Workout.create(name: "Suns Out, Guns Out", muscleGroup: "upper body", sets: 3, exercisesPerSet: 5)

# joins
# Burn, Baby
WorkoutExercise.create(workout_id: workout1.id, exercise_id: burpee.id)
WorkoutExercise.create(workout_id: workout1.id, exercise_id: plank.id)
WorkoutExercise.create(workout_id: workout1.id, exercise_id: bicycleCrunches.id)
WorkoutExercise.create(workout_id: workout1.id, exercise_id: halo.id)
WorkoutExercise.create(workout_id: workout1.id, exercise_id: turkishGetUp.id)
WorkoutExercise.create(workout_id: workout1.id, exercise_id: tricepDip.id)
WorkoutExercise.create(workout_id: workout1.id, exercise_id: bentOverRow.id)
#Bunz of Steel
WorkoutExercise.create(workout_id: workout2.id, exercise_id: weightedSquat.id)
WorkoutExercise.create(workout_id: workout2.id, exercise_id: curtsySquat.id)
WorkoutExercise.create(workout_id: workout2.id, exercise_id: deadlift.id)
WorkoutExercise.create(workout_id: workout2.id, exercise_id: singleLegGluteBridge.id)
WorkoutExercise.create(workout_id: workout2.id, exercise_id: singleLegGluteBridge.id)
WorkoutExercise.create(workout_id: workout2.id, exercise_id: bandedGluteAbductor.id)
WorkoutExercise.create(workout_id: workout2.id, exercise_id: fireHydrant.id)
#Full Body Sweat
WorkoutExercise.create(workout_id: workout3.id, exercise_id: chestPress.id)
WorkoutExercise.create(workout_id: workout3.id, exercise_id: armRaises.id)
WorkoutExercise.create(workout_id: workout3.id, exercise_id: plank.id)
WorkoutExercise.create(workout_id: workout3.id, exercise_id: plankDips.id)
WorkoutExercise.create(workout_id: workout3.id, exercise_id: vUps.id)
WorkoutExercise.create(workout_id: workout3.id, exercise_id: squatJump.id)
WorkoutExercise.create(workout_id: workout3.id, exercise_id: crabWalk.id)
#Monday Shred
WorkoutExercise.create(workout_id: workout4.id, exercise_id: shadowBoxing.id)
WorkoutExercise.create(workout_id: workout4.id, exercise_id: tricepDip.id)
WorkoutExercise.create(workout_id: workout4.id, exercise_id: gluteBridge.id)
WorkoutExercise.create(workout_id: workout4.id, exercise_id: vUps.id)
WorkoutExercise.create(workout_id: workout4.id, exercise_id: bicycleCrunches.id)
WorkoutExercise.create(workout_id: workout4.id, exercise_id: supermans.id)
WorkoutExercise.create(workout_id: workout4.id, exercise_id: backwardLunge.id)
#Don't Skip Leg Day
WorkoutExercise.create(workout_id: workout5.id, exercise_id: airSquat.id)
WorkoutExercise.create(workout_id: workout5.id, exercise_id: crabWalk.id)
WorkoutExercise.create(workout_id: workout5.id, exercise_id: deadlift.id)
WorkoutExercise.create(workout_id: workout5.id, exercise_id: gluteBridge.id)
WorkoutExercise.create(workout_id: workout5.id, exercise_id: squatJump.id)
WorkoutExercise.create(workout_id: workout5.id, exercise_id: lunge.id)
#Suns Out, Guns Out
WorkoutExercise.create(workout_id: workout6.id, exercise_id: plankRow.id)
WorkoutExercise.create(workout_id: workout6.id, exercise_id: supermans.id)
WorkoutExercise.create(workout_id: workout6.id, exercise_id: bicepCurls.id)
WorkoutExercise.create(workout_id: workout6.id, exercise_id: halo.id)
WorkoutExercise.create(workout_id: workout6.id, exercise_id: tricepDip.id)