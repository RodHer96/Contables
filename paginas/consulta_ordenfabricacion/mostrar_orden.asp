<%     
'Creacion del Objeto para conectarse a la base de datos 
Set conn=Server.CreateObject("ADOdb.Connection")
'Se abre la conexi�n a la base de datos
conn.Open "Datos","","" 
orden=Request.form("orden")
sql="SELECT * FROM ordenes WHERE NumOrden="&orden
set R=conn.Execute(sql)
sql2="SELECT NombreCuenta FROM Catalogo WHERE Codigo="&R("codigo")
set L=conn.Execute(sql2)
%>
<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
<html>
	<body>				
		<div>
			<div class="pagetitle" align="center">
				<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="ConsultarOrdenFabricacion_salvacolor">
					<param name="movie" value="../../flash/ConsultarOrdenFabricacion_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="ConsultarOrdenFabricacion_salvacolor"
					width="400" height="70"
					src="../../flash/ConsultarOrdenFabricacion_salvacolor.swf"
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
								<table border="0" cellspacing="0" align="center"> 
									<tr>
										<th align="right">Fecha de expedicion:</th>
										<td align="left"><%=R("fecha")%></td>
										<th align="right">No. de Orden:</th>
										<td align="left"><%=R("NumOrden")%></td>
									</tr>
									<tr>
										<th align="right">Producto:</th>
										<td align="left"><%=L("NombreCuenta")%></td>
										<th align="right">Cantidad:</th>
										<td align="left"><%=R("Cantidad")%></td>
									</tr>
								</table>
								<br>
								<table  border="1" align="center" style="border-spacing: 0" bgcolor="white">
									<tr>
										<th>Total Materia Prima</th>
										<th>Total Mano de Obra</th>
										<th>Total GIF</th>
									</tr>
									<tr>
										<td align="center">$<%=R("MontoMP")%></td>
										<td align="center">$<%=R("MontoMObra")%></td>
										<td align="center">$<%=R("MontoGif")%></td>
									</tr>
								</table>
								<br>
								<table align="center">
									<tr>
										<th align="right">Precio Unitario:</th>
										<td align="left">$<%=R("PrecioU")%></td>
										<th align="right">Monto Total:</th>
										<td align="left">$<%=R("Monto")%></td>
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