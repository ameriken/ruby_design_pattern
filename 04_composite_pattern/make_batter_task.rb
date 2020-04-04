require './composite_task'
require './add_dry_ingredients_task'
require './add_liquids_task'
require './mix_task'
# コンポジットの実クラス
class MakeBatterTask < CompositeTask
  def initialize
    super('Make batter')
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
end

make_batter_task = MakeBatterTask.new
make_batter_task.get_time_required

# 実行コマンド
# ruby make_batter_task.rb
