# This will encompass all global functions that are required on all pages
# internal framework calls such as data handling and the URL factory will be
# handled in this location

class CucumberAbstract

  def page_url
    UrlManager.front_end
  end
end