<%if session("sesion_nombre")="admin" then%>
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
					id="MenuUsuarios_salvacolor">
					<param name="movie" value="../../flash/MenuUsuarios_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="MenuUsuarios_salvacolor"
					width="400" height="70"
					src="../../flash/MenuUsuarios_salvacolor.swf"
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
					<table align="center" width="50%">
						<tr>
							<td>
								<br>Elementos que contiene el Men&uacute; Usuarios:
								<h1>Nuevo</h1>
								Esta p&aacute;gina nos muestra los campos a llenar para agregar un nuevo usuario al sistema, los campos a llenar son:
								<h2>Login:</h2> Permite ingresar un nombre para poder dar acceso al sistema, el cual debe comenzar con una letra may&uacute;scula y las dem&aacute;s min&uacute;sculas o todas may&uacute;sculas;adem&aacute;s debe tener un m&aacute;ximo de 10 caracteres.
								<br>
								<h2>Password:</h2> Permite ingresar la clave para ingresar poder accesar al sistema,siendo un campo obligatorio;Tiene un m&aacute;ximo de 10 caracteres y puede ser cualquier tipo de texto.
								<br>
								<h2>Confirmar Password:</h2> Permite escribir nuevamente la clave para asegurar el registro correctamente, siendo un campo obligatorio. Tiene un m&aacute;ximo de 10 caracteres y puede ser cualquier tipo de texto.
								<br>
								<h2>Nombre:</h2> Debe tener un m&aacute;ximo de 25 caracteres, es un campo obligatorio. 
								<br>
								<h2>Apellidos:</h2> Debe tener un m&aacute;ximo de 25 caracteres, es un campo obligatorio. 
								<br><br>
								<table align="center">
								<tr>
								<td><h3><A HREF="inicio_sesion.asp">anterior</A></h3></td>
								<td>&nbsp;</td>
								<td><h3><A HREF="menu_empleados.asp">siguiente</A></h3></td>
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