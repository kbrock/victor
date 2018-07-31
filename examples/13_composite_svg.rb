require 'victor'
include Victor

frame = SVG.new
frame.rect x: 0, y: 0, width: 100, height: 100, fill: '#336'
frame.rect x: 10, y: 10, width: 80, height: 80, fill: '#fff'

troll = SVG.new
troll.circle cx: 50, cy: 60, r: 24, fill: 'yellow'
troll.polygon points: %w[24,50 50,14 76,54], fill: 'red'

svg = SVG.new viewBox: '0 0 100 100', width: 100, height: 100
svg << frame
svg << troll

svg.save '13_composite_svg'