require "buildtasks"


Dir["packages/*"].each do |package|
  BuildTasks::FPMCookery.define do
    recipe "#{package}/recipe.rb"
  end
end
