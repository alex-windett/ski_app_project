require "open-uri"

prawn_document() do |pdf|
  pdf.text @run.name.capitalize, size: 33
  pdf.move_down 10
  pdf.text @run.resort.name, size: 20
  pdf.move_down 10
  pdf.text if @run.user.present? then @run.user.name else "Unregistered Member" end , size: 10
  pdf.move_down 10
  pdf.stroke_horizontal_rule
   pdf.move_down 20
  pdf.text @run.description
  pdf.move_down 30

  #  Needs to be rewritten, videos will make it crash when trying to load videos
    @run.mediums.each do |media|
        if media.image.present? == true
          pdf.image open(media.image.url), width: 200
          pdf.move_down 10
        end
    end

end