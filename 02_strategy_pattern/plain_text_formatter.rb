require './formatter'
class PlainTextFormatter < Formatter
  def output_report(title, text)
    puts("**** #{title} ****")
    text.each do |line|
      output_line(line)
    end
  end
end

