<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
<html>
	<body>
		<div>
			<script language = "javascript" src = "../../scripts/formularios.js"></script>
				<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="ConsultarEmpleado_salvacolor">
					<param name="movie" value="../../flash/ConsultarEmpleado_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="ConsultarEmpleado_salvacolor"
					width="400" height="70"
					src="../../flash/ConsultarEmpleado_salvacolor.swf"
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
								Dim conn, SQL, log, nom, apel

								Log = Request.QueryString("usuario")

								set conn=Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""

								SQL="SELECT * FROM Empleados WHERE Apellidos = '" & Log & "'"
								SET Lista = conn.execute(SQL)

								while Not(Lista.EOF)
								Ape=Lista("Apellidos")
								Nom=Lista("Nombres")
								Pue=Lista("Puesto")
								Sal=Lista("Salario")
								Hor=Lista("HOras")
								%>
								<table> 
									<tr> 
										<th align="right">Nombres:</th>
										<td align="left"><%=Nom%></td>
									</tr>
									<tr> 
										<th align="right">Apellidos:</th>
										<td align="left"><%=Ape%></td>
									</tr>
									<tr> 
										<th align="right">Puesto:</th>
										<td align="left"><%=Pue%></td>
									</tr>
									<tr> 
										<th align="right">Salario:</th>
										<td align="left"><%=Sal%></td>
									</tr>
									<tr> 
										<th align="right">Horas:</th>
										<td align="left"><%=Hor%></td>
									</tr>
									<%
									Lista.MoveNext
									Wend
									Lista.Close
									%>
									<tr>
										<td colspan="2" align="center"><br><input type ="button" value="OK" onClick="window.location='../consultar_datos_de_empleado/consultar_datos_de_empleado.asp';"></td>
									</tr>
								</table>
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