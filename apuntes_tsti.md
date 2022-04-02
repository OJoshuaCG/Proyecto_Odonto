C#

aspx → web

- Visual Basic
- FoxPro
    
| | C# | JSP |
| --- | --- | --- |
| Importar librerias | using | import |
| Librerias usadas | System.Data <br> System.Data.SqlClient |  |
| Eventos en botones | btn.onclick() | 

## Códigos

### **CSharp**

```cs
using System.Data;
using System.Data.SqlClient;

btn_ingresar.onclick(){
    // SQL Server
    SqlConnection con = new SqlConnection(Servidor, Usuario, Password, BD);
    // MySQL
    SqlConnection con = new SqlConnection(Servidor, Usuario, Password, BD, Puerto);
    con.Open()
    SqlCommand cmd = new SqlCommand();
    cmd.Connection = con;
    cmd.CommandType = CommandType.StoreProcedure();
    cmd.CommandText = "AltaAlumno";
    cmd.Parameters.Add("@nombre", SqlType.varchar).value = txtNombre.text;
    cmd.Parameters.Add("@edad", SqlType.varchar).value = txtEdad.text;

    // Opcion 1
    // Si no queremos saber si hay resultados (fallas o aciertos)...
    cmd.ExecuteNonQuery();
    // Opcion 2     <- Best Option
    // Si necesitamos saber si hubo fallas o no...
    cmd.ExecuteReader();

    SqlDataReadr registros = cmd.ExecuteReader

    while(registros.Read()){
        registros[0];
        console.writeln(registros["Resultado"]);
    }

    con.Close()

    //RecordSets

}
```

---

### **Java**

```jsp
<%@pages import = "java.io.*, java.net.*, java.sql.*"; %>
<%
    Connection con = null;
    ResultSet rs = null;
    Statment inst = null;
    String strcon = "jdbc:mysql//localhost/nameDatabase?user=root&password=abc&PRT=1336";
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection(strcon);
        inst = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

    }catch(java.lang.ClassNotFoundException e){
    }catch(SQLException e){};
    int clave = Integer.parseInt(request.getParameter("ClaveB"));
    String q = "BuscaCliente" + clave;
    try{
        rs = inst.executeQuery(q);
        rs.next();
        System.out.println("<input name=Nombre type=text value="+rs.getString(2)+"><br>");
    }

    rs.close();
    inst.close();
    con.close();

    // Consultar
    // .executeQuery();     // esta debemos trabajar (?)
    // Para insertar, eliminar, modificar
    // .executeUpdate();

%>
```



