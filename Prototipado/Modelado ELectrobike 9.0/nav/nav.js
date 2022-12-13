
document.write(`<nav id ="nav" class="sidebar close">
    <header>
        <div class="eslogan">    
            <div class="image-text">
                <span class="texto"><h1 class="eslogan-text">Electrobike</h1></span>
            </div>
            <span class="image">
            <span class="text nav-text"><img class="imagenLogo" src="../../img/logo4.jpg" ></span>
            </span>              
    </div>


        <i class='bx bx-chevron-right toggle arrow'></i>

        
    </header>

    <div class="menu-bar">
        <div class="acordeon">


             <!----------------------- Inicio --------------------->
            
             <li id="inicio" class="li" >
                <a href="../dashboard/index.html">
                    <i id="inicio_icon"class='bx bx-home icon'></i>
                    <span id="inicio_text"class="nav-text text">inicio</span>
                </a>
            </li>

            <!----------------------- Roles --------------------->
        
            <li id="roles" class="li">
                <a id="activador1" >
                    <i  id="roles_icon"class='bx bx-toggle-right icon'></i>
                    <span  id="roles_text" class="text nav-text">Roles </span>
                    <i  id="icon_despliegue1" class='bx bx-chevron-right icon_despliegue'></i>
                    
                </a>
            </li>
            
            <div class="modulo oculto" id="modulo1">
                <li id="registrar_roles" class="sub-li" >
                    <a id="activado" href="../roles/registrar.html">
                        <i id="registrar_roles_icon" class='bx bx-book-add icon sub-icon'></i>
                        <span id="registrar_roles_text" class="sub-text nav-text">Registrar
                        </span>
                    </a>
                </li>

                

                <li id="listar_roles" class="sub-li" >
                    <a id="activado" href="../roles/listar.html">
                        <i id="listar_roles_icon" class='bx bx-list-ul icon sub-icon'></i>
                        <span id="listar_roles_text"class="sub-text nav-text">Listar
                        </span>
                    </a>
                </li>
            </div>
            
            <!----------------------- Usuarios --------------------->
            <li id="usuarios" class="li">
                <a id="activador2">
                    <i id="usuarios_icon" class='bx bx-user-circle icon'></i>
                    <span id="usuarios_text" class="text nav-text">Usuarios</span>
                    <i  id="icon_despliegue2" class='bx bx-chevron-right icon_despliegue'></i>

                </a>
            </li>

            <div class="modulo oculto" id="modulo2">
                <li id="registrar_usuarios" class="sub-li" >
                    <a id="activado" href="../usuarios/registrar.html">
                        <i id="registrar_usuarios_icon" class='bx bx-book-add icon sub-icon'></i>
                        <span id="registrar_usuarios_text" class="sub-text nav-text">Registrar
                        </span>
                    </a>
                </li>

                <li id="listar_usuarios" class="sub-li" >
                    <a id="activado" href="../usuarios/listar.html">
                        <i id="listar_usuarios_icon" class='bx bx-list-ul icon sub-icon'></i>
                        <span id="listar_usuarios_text" class="sub-text nav-text">Listar
                        </span>
                    </a>
                </li>
            </div>
            
            <!----------------------- Proveedores --------------------->
            <li id="proveedores" class="li">
                <a id="activador3">
                    <i id="proveedores_icon" class='bx bx-package icon'></i>
                    <span id="proveedores_text" class="text nav-text">Proveedores</span>
                    <i  id="icon_despliegue3" class='bx bx-chevron-right icon_despliegue'></i>

                </a>
            </li>

            <div class="modulo oculto" id="modulo3">
                <li id="registrar_proveedores" class="sub-li" >
                    <a id="activado" href="../proveedores/registrar.html">
                        <i id="registrar_proveedores_icon"class='bx bx-book-add icon sub-icon'></i>
                        <span id="registrar_proveedores_text"class="sub-text nav-text">Registrar
                        </span>
                    </a>
                </li>

                <li id="listar_proveedores" class="sub-li" >
                    <a id="activado" href="../proveedores/listar.html">
                        <i id="listar_proveedores_icon" class='bx bx-list-ul icon sub-icon'></i>
                        <span id="listar_proveedores_text" class="sub-text nav-text">Listar
                        </span>
                    </a>
                </li>
            </div>
            
            <!----------------------- Compras --------------------->
            <li id="compras" class="li">
                <a id="activador4">
                    <i id="compras_icon" class='bx bx-cart icon'></i>
                    <span id="compras_text" class="text nav-text">Compras</span>
                    <i  id="icon_despliegue4" class='bx bx-chevron-right icon_despliegue'></i>

                </a>
            </li>

            <div class="modulo oculto" id="modulo4">
                <li id="registrar_compras" class="sub-li" >
                    <a id="activado" href="../compras/registrar.html">
                        <i id="registrar_compras_icon" class='bx bx-book-add icon sub-icon'></i>
                        <span id="registrar_compras_text" class="nav-text sub-text">Registrar
                        </span>
                    </a>
                </li>

                <li id="listar_compras" class="sub-li" >
                    <a id="activado" href="../compras/listar.html">
                        <i id="listar_compras_icon" class='bx bx-list-ul icon sub-icon'></i>
                        <span id="listar_compras_text" class="sub-text nav-text">Listar
                        </span>
                    </a>
                </li>
            </div>
            

            <!----------------------- Productos --------------------->
            <li id="productos" class="li">
                <a id="activador5">
                    <i id="productos_icon" class='bx bx-cycling icon'></i>
                    <span id="productos_text" class="text nav-text">Productos</span>
                    <i  id="icon_despliegue5" class='bx bx-chevron-right icon_despliegue'></i>

                </a>
            </li>

            <div class="modulo oculto" id="modulo5">
                <li id="registrar_productos" class="sub-li" >
                    <a id="activado" href="../productos/registrar.html">
                        <i id="registrar_productos_icon" class='bx bx-book-add icon sub-icon'></i>
                        <span id="registrar_productos_text" class="sub-text nav-text">Registrar
                        </span>
                    </a>
                </li>

                <li id="listar_productos" class="sub-li" >
                    <a id="activado" href="../productos/listar.html">
                        <i id="listar_productos_icon" class='bx bx-list-ul icon sub-icon'></i>
                        <span id="listar_productos_text" class="sub-text nav-text">Listar
                        </span>
                    </a>
                </li>

                <li id="categorias_productos" class="sub-li" >
                    <a id="activado" href="../productos/categorias.html">
                        <i id="categorias_productos_icon" class='bx bx-book-open icon sub-icon'></i>
                        <span id="categorias_productos_text" class="sub-text nav-text">Categorias
                        </span>
                    </a>
                </li>
            </div>
            

                <!----------------------- Clientes --------------------->
                <li id="clientes" class="li">
                    <a id="activador6">
                        <i id="clientes_icon" class='bx bx-group icon'></i>
                        <span id="clientes_text" class="text nav-text">Clientes</span>
                        <i  id="icon_despliegue6" class='bx bx-chevron-right icon_despliegue'></i>

                    </a>
                </li>

                <div class="modulo oculto" id="modulo6">
                    <li id="registrar_clientes" class="sub-li" >
                        <a id="activado" href="../clientes/registrar.html">
                            <i id="registrar_clientes_icon"class='bx bx-book-add icon sub-icon'></i>
                            <span id="registrar_clientes_text" class="sub-text nav-text">Registrar
                            </span>
                        </a>
                    </li>

                    <li id="listar_clientes" class="sub-li" >
                        <a id="activado" href="../clientes/listar.html">
                            <i id="listar_clientes_icon" class='bx bx-list-ul icon sub-icon'></i>
                            <span id="listar_clientes_text" class="sub-text nav-text">Listar
                            </span>
                        </a>
                    </li>
                </div>
                
            

                <!----------------------- Ventas --------------------->
                <li id="ventas" class="li">
                    <a id="activador7">
                        <i id="ventas_icon" class='bx bx-coin icon'></i>
                        <span id="ventas_text" class="text nav-text">Ventas</span>
                        <i  id="icon_despliegue7" class='bx bx-chevron-right icon_despliegue'></i>

                    </a>
                </li>

                <div class="modulo oculto" id="modulo7">
                    <li id="registrar_ventas" class="sub-li" >
                        <a id="activado" href="../ventas/registrar.html">
                            <i id="registrar_ventas_icon" class='bx bx-book-add icon sub-icon'></i>
                            <span id="registrar_ventas_text" class="sub-text nav-text">Registrar
                            </span>
                        </a>
                    </li>

                    <li id="listar_ventas" class="sub-li" >
                        <a id="activado" href="../ventas/listar.html">
                            <i id="listar_ventas_icon" class='bx bx-list-ul icon sub-icon'></i>
                            <span id="listar_ventas_text" class="sub-text nav-text">Listar
                            </span>
                        </a>
                    </li>
                </div>
    </div>
    <br>

    <div class="bottom-content">
        <li class="">
            <a href="#">
                <i class='bx bx-log-out icon' ></i>
                <span class="text nav-text">Cerrar Sesion</span>
            </a>
        </li>
    </div>
</div>
</nav>`)
