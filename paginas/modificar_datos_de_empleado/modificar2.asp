<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
<html>
	<body>
		<div>
			<script language = "javascript" src = "../../scripts/formularios2.js"></script>
				<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="ModificarEmpleado_salvacolor">
					<param name="movie" value="../../flash/ModificarEmpleado_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="ModificarEmpleado_salvacolor"
					width="400" height="70"
					src="../../flash/ModificarEmpleado_salvacolor.swf"
					bgcolor="#F4F4F4"
					quality="high"
					swliveconnect="true"
					allowscriptaccess="samedomain">
					</embed>
					</object>
				</div>
		</div>
		<div id="element-box">
				<div class="m" align="center">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="top" class="content" align="center">
							  <% 
								'Se Obtienen los datos del usuario al que se le modificaran los datos
							Dim conn
							Set conn = Server.CreateObject("ADODB.Connection")
							conn.open "Datos","",""
							Dim sqldat, userid

							apell = Request.QueryString("usuario")
							sqldat="SELECT * FROM Empleados WHERE Apellidos = '" & apell & "'"

							Dim datos
							set datos = conn.execute(sqldat)
							Dim  nom, apel, puest, salario, horas

							nom = datos("Nombres")
							apel = datos("Apellidos")
							puest = datos("Puesto")
								salario = datos("salario")
								horas = datos("horas")
							conn.close	
							  %>
							  <form name = "usuario" method = "post" action = "actualizar.asp" onSubmit = "return(validar3(this));">
							  <table>
									<tr>
									   <th colspan = "2"> Datos de Empleado</th>
									</tr> 
									<tr>
									   <td align="right">Apellidos:</td>
									   <td> <input type  ="text" name = "ap" maxlength = "50" value = "<%= apel %>"> 
											<input type  ="hidden" name = "ap2" value = "<%= apel %>">
									   </td>
									</tr> 
									<tr>
									   <td align="right">Nombres:</td>
									   <td> <input type  ="text" name = "no" maxlength = "50" value = "<%= nom %>"> </td>
									</tr> 
									<tr>
									   <td align="right">Puesto:</td>
									   <td> <input type  ="text" name = "pu" maxlength = "50" value = "<%= puest %>"> </td>
									</tr> 
									<tr>
									   <td align="right">Salario:</td>
									   <td> <input type  ="text" name = "sa" maxlength = "25" value = "<%= salario %>"> </td>
									</tr> 
									<tr>
									   <td align="right">Horas:</td>
									   <td> <input type  ="text" name = "ho" maxlength = "25" value = "<%= horas %>"> </td>
									</tr> 
									<tr>
									   <th colspan = "2" align="center">										
									   <br>
									   <input type = "submit" name = "aceptar" value = "ACEPTAR ">
									   <input type  ="reset" name = "cancelar" value = "RESTAURAR"> 
									   </th>
									</tr> 
							  </table>
							  </form>
							</td>
						  </tr>
					   </table>
					   <div class="clr"></div>
				</div>
			</div>
			<center><noscript><font color="red">Advertencia! Para poder realizar operaciones correctamente en el Sistema Contable de empresa ESTRUC METAL S.A. de C.V., debe tener habilitado JavaScript.</font></noscript></center>
		<div id="footer"><p class="copyright">Sistema Contable de empresa ESTRUC METAL S.A. de C.V. &#8226; Derechos Reservados 2017</p></div>
	</body>
</html>