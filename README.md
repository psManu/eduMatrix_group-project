# eduMatrix_group-project


Database<br />

***DataSource : Postgresql 9.5<br />
***Database   : edumatrix<br />
***Username   : edumatrix<br />
***Password   : ucsc<br />

Won't work on < 9.5  since JSONB values are used!So make sure postgresql version >= 9.5<br />


#Project File Structure<br />
is on the pro_structure folder<br />


#Controller call and response by Ajax <br />
:::::::::::::::::A sample has been added for Officer Activities ::::::::::::::::::::::::::::::::<br />
******Newly added -><br />
               AjaxResponse  (An object to store a particular json response)<br />
               View          A dummy class for json building<br />
               @RestController instead of @Controller      To provide json responses for calls <br />
               @ResponseBody               A response content is returned.Not a jsp page<br />
               @RequestBody                Request parameters are passed via json body.<br />
