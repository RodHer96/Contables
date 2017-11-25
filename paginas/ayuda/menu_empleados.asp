<%if session("sesion_nombre")="admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="MenuEmpleados_salvacolor">
					<param name="movie" value="../../flash/MenuEmpleados_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="MenuEmpleados_salvacolor"
					width="400" height="70"
					src="../../flash/MenuEmpleados_salvacolor.swf"
					bgcolor="#F4F4F4"
					quality="high"
					swliveconnect="true"
					allowscriptaccess="samedomain">
					</embed>
					</object>
					</div>
				</div>
			</div>
			<div id="element-box">
				<div class="m" align="center">
					<table align="center" width="50%">
						<tr>
							<td>
								<br>Elementos que contiene el Men&uacute; Empleados:
								<br>
								<h1>Nuevo</h1>
								<br>Muestra los campos a llenar para agregar un nuevo usuario al sistema; los campos a llenar son:
								<h2>Nombre:</h2> Debe tener un m&aacute;ximo de 25 caracteres,siendo un campo obligatorio. 
								<br><br>
								<h2>Apellidos:</h2> Debe tener un m&aacute;ximo de 25 caracteres, siendo un campo obligatorio. 
								<br><br>
								<h2>Puesto:</h2> Debe tener un m&aacute;ximo de 25 caracteres, siendo un campo obligatorio. 
								<br><br>
								<h2>Salario</h2> Es un campo tipo n&uacute;merico (no se deben introducir letras)y es obligatorio. 
								<br><br>
								<h2>Horas</h2> Es un campo tipo n&uacute;merico (no se deben introducir letras)y es obligatorio.  
								<br><br>
								
								<table align="center">
								<tr>
								<td><h3><A HREF="menu_usuarios.asp">anterior</A></h3></td>
								<td>&nbsp;</td>
								<td><h3><A HREF="menu_cuentas.asp">siguiente</A></h3></td>
								</tr>
								</table>
							</td>
						</tr>
					</table>
					<div class="clr"></div>
				</div>
			</div>
			<center><noscript><font color="red">Advertencia! Para poder realizar operaciones correctamente en el Sistema Contable de empresa ESTRUC METAL S.A. de C.V., debe tener habilitado JavaScript.</font></noscript></center>
		</div>
		<div id="footer"><p class="copyright">Sistema Contable de empresa ESTRUC METAL S.A. de C.V. &#8226; Derechos Reservados 2017</p></div>
	</body>
</html>