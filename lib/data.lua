siteTitle = ""
siteSubTitle = ""
handlers_bar_left = {}
handlers_body_head = ""
handlers_body_main = ""
handlers_body_foot = ""

pageTitle = ""
sitedir = serverdir()
extraHeaders = ""
meta_keywords = ""
meta_description = ""

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end
