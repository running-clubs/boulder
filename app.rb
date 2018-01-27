require 'generator/simple'

facebook_groups = [
  FacebookGroup.new('225877381266', 'Boulder Running Company'),
]

repeating_groups = []

start_time = Time.now
end_time = Time.now + (45 * 24 * 3600)
Renderer.new(
  File.join(__dir__, 'docs'),
  File.join(__dir__, '*.erb'),
  CollectEvents.new(
    start_time..end_time,
    facebook_groups,
    repeating_groups
  ).events
).run!
