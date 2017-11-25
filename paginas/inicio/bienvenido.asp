<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
<html>
	<body>				
		<div>
		 <center>
			<video width="600" height="400"
               autoplay
               controls>
				<source src="../../imagenes/Contables.mp4" type="video/mp4">
			</video>
		</center>			
			<center><noscript><font color="red">Advertencia! Para poder realizar operaciones correctamente en el Sistema Contable de empresa ESTRUC METAL S.A. de C.V., debe tener habilitado JavaScript.</font></noscript></center>
		</div>
		<div id="footer"><p class="copyright">Sistema Contable de empresa ESTRUC METAL S.A. de C.V. &#8226; Derechos Reservados 2017</p></div>
	</body>
</html>