# module helps
module ReportHelper
  # pass report , or extract reports
  def extract_source(body)
    values = JSON.parse(body)
    raise 'missing csp-report' unless values.key? 'csp-report'

    raise 'missing document-uri' unless values['csp-report'].key? 'document-uri'

    values['csp-report']['document-uri']
  end

  # violation
  def extract_violation(body)
    values = JSON.parse(body)
    raise 'missing csp-report' unless values.key? 'csp-report'

    raise 'missing violated-directive' unless
      values['csp-report'].key? 'violated-directive'

    values['csp-report']['violated-directive']
  end

  # blocked-uri
  def extract_blocked_uri(body)
    values = JSON.parse(body)
    raise 'missing csp-report' unless values.key? 'csp-report'

    raise 'missing blocked-uri' unless values['csp-report'].key? 'blocked-uri'

    values['csp-report']['blocked-uri']
  end

  def print_id_and_key(values, val)
    id = val
    key = values[val]
    "#{id}: #{key}"
  end
end
