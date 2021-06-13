class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.integer  :pricing_plan_id
      t.boolean  :cancel_at_period_end, default: false
      t.datetime :canceled_at
      t.datetime :current_period_end
      t.datetime :current_period_start
      t.datetime :ended_at
      t.datetime :start
      t.string   :status, default: 'active'
      t.datetime :trial_end
      t.datetime :trial_start
      t.bigint   :user_id
      t.integer  :amount, default: 0
      t.string   :stripe_id
      t.timestamps
    end
  end
end
