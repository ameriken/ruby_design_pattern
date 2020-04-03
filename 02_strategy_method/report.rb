require './html_formatter'

class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = '月時報告'
    @text = ['順調', '最高の調子']
    @formatter = formatter
  end


  def output_report
    @formatter.output_report(@title, @text)
  end
end

report = Report.new(HtmlFormatter.new)
report.output_report
