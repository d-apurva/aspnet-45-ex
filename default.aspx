<%@ Page Language="C#" %>
<script runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
       /* Type type = Type.GetType("Mono.Runtime");
        if (type != null)
        {
            System.Reflection.MethodInfo displayName = type.GetMethod("GetDisplayName", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Static);
            if (displayName != null)
                dvVersion.InnerHtml = "Current application running on Mono <b>" + displayName.Invoke(null, null) + "</b>";
        }
        else
        {
            var targetFw = System.Reflection.Assembly.GetExecutingAssembly().GetCustomAttributes(typeof(System.Runtime.Versioning.TargetFrameworkAttribute), false);
            string framworkName = ((System.Runtime.Versioning.TargetFrameworkAttribute)targetFw[0]).FrameworkName;
            dvVersion.InnerHtml = "Current application running on <b>" + framworkName + "</b>";
        }
        dvEnvironmentVaraiable.InnerHtml = string.Empty;
        foreach (DictionaryEntry de in Environment.GetEnvironmentVariables())
            dvEnvironmentVaraiable.InnerHtml += string.Format("{0} = {1}<br/>", de.Key.ToString().Trim(), de.Value.ToString().Trim());
            */
    }

    protected void Button1_Click(Object sender, EventArgs e)
    {
        Label1.Text = "Clicked at " + DateTime.Now.ToString();
    }
</script>
<html>
<head>
  <title>Single-File Page Model</title>
</head>
<body>
    <form runat="server">
        <div>
            <p id="dvVersion" runat="server" />
            <p id="dvEnvironmentVaraiable" runat="server"></p>
           <asp:Label id="Label1" 
                runat="server" Text="Label">
           </asp:Label>
           <br />
           <asp:Button id="Button1" 
             runat="server" 
             onclick="Button1_Click"
             Text="Button">
          </asp:Button>
        </div>
    </form>
</body>
</html>
