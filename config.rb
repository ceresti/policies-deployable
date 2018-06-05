require './lib/redcarpet_header_fix'

set :css_dir, 'assets/css/'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'
set :fonts_dir, 'assets/fonts'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true, :disable_indented_code_blocks => true, :prettify => true, :tables => true, :with_toc_data => true, :no_intra_emphasis => true

activate :syntax

activate :relative_assets
set :relative_links, true

configure :build do
  activate :minify_css
  activate :minify_javascript
end

helpers do

  # FILL IN YOUR COMPANY INFORMATION HERE
  def company_name
    "Ceresti Health, Inc."
  end

  def company_name_phone
    "760-453-0997"
  end

  def company_name_email
    "info@ceresti.com"
  end

  def company_url
    "ceresti.com"
  end

  # FILL IN YOUR SECURITY OFFICER INFORMATION HERE
  def security_officer
    "Mark Wrenn, CTO"
  end

  def security_officer_phone
    "760-687-6689"
  end

  def security_officer_email
    "mark.wrenn@ceresti.com"
  end

  # FILL IN YOUR PRIVACY OFFICER INFORMATION HERE
  def privacy_officer
    "Kevin Liang, CSO"
  end

  def privacy_officer_phone
    "760-111-1111"
  end

  def privacy_officer_email
    "kevin.liang@ceresti.com"
  end

 end