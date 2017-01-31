require_relative "./bodybuilder.rb"

bb1 = Bodybuilder.new(0, 0, 0)
bb2 = Bodybuilder.new(3, 3, 3)

while bb1.biceps < 5
  bb1.train_muscle(bb1.biceps)
  bb1.train_muscle(bb1.triceps)
  bb1.train_muscle(bb1.delts)
end
bb1.show_bb

bb2.train_muscle(bb2.biceps)
bb2.train_muscle(bb2.triceps)
bb2.train_muscle(bb2.delts)
bb2.show_bb


