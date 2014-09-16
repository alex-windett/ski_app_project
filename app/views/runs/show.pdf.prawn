require "open-uri"

prawn_document() do |pdf|
  pdf.text @run.name, size: 33
  pdf.move_down 10
  pdf.text @run.resort.name, size: 20
  pdf.move_down 10
  pdf.text @run.user.name, size: 10
  pdf.move_down 10
  pdf.stroke_horizontal_rule
   pdf.move_down 10
  pdf.text @run.description
  pdf.move_down 10
end