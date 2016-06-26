# eduMatrix_group-project


Database

***DataSource : Postgresql 9.5
***Database   : edumatrix
***Username   : edumatrix
***Password   : ucsc

Won't work on < 9.5  since JSONB values are used!So make sure postgresql version >= 9.5


#Project File Structure
is on the pro_structure folder


#Controller call and response by Ajax
A sample has been added for Officer Activities 
Newly added -> AjaxResponse  (An object to store a particular json response)
               View          A dummy class for json building
               @RestController instead of @Controller      To provide json responses for calls 
               @ResponseBody               A response content is returned.Not a jsp page
               @RequestBody                Request parameters are passed via json body.
