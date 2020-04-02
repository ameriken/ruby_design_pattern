require './report'
class HtmlReport < Report
  def output_body
    @text.each do |line|
      output_line(line)
    end
  end

  def output_start
    puts('<html>')
  end

  def output_head
    puts('<head>')
    puts(" <title>#{@title}</title>")
    puts('</head>')
  end

  def output_body_start
    puts('<body>')
  end

  def output_line(line)
    puts(" <p>#{line}</p>")
  end

  def output_body_end
    puts('</body>')
  end

  def output_end
    puts('</html>')
  end
end

report = HtmlReport.new
report.output_report
