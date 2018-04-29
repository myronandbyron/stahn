class CreateMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :measurements do |t|
      t.float :neck
      t.float :full_chest
      t.float :full_shoulder
      t.float :right_sleeve
      t.float :left_sleeve
      t.float :right_full_sleeve
      t.float :left_full_sleeve
      t.float :bicep
      t.float :wrist
      t.float :waist_stomach
      t.float :hips_seat
      t.float :front_jacket
      t.float :front_chest
      t.float :back_width
      t.float :half_shoulder_right
      t.float :half_shoulder_left
      t.float :full_back_length
      t.float :half_back_length
      t.float :trouser_waist
      t.float :trouser_outseam
      t.float :trouser_inseam
      t.float :crotch
      t.float :thigh
      t.float :knee

      t.timestamps
    end
  end
end
