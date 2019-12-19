<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SEOAnalyzer._Default" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td>Stop-words
                    <asp:TextBox ID="textStopWords" runat="server" TextMode="MultiLine" Width="100%" Rows="3">Publika Shopping Gallery celebrates Christmas with one of the largest balloon-themed décor and bazaar held in a mall. Organized by Space Event with a bid for the Malaysia Book of Records, don’t miss the opportunity to view the sculptures made of 80,000 biodegradable balloons across the Gallery. 
 
The balloon sculpture is made by a team of 11 Malaysians and Taiwanese balloon artists engaged by Publika’s tenant Balloon Wonderland who will join forces to design the balloon sculptures this Christmas. Get ready to be impressed with the colorful balloons décor which will be here for three weekends.
 
Besides the Giant Christmas Tree; there is also the Snowy Land comprising of a Polar Bear, Santa Claus and Penguins. 
 
Over at The Square, the venue will also be lighted up this festive season with colorful LED lights and decorated with giant Christmas bubble tent for kids. 
 
More than 70 homemade, arts and crafts vendors curated by Space Event will be here at The Gallery and The Square (weekends only) to showcase their goods. Support our local products and shop for your Christmas wares here!</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="checkBoxCalculateWordsOnPage" runat="server" Text="Calculate number of occurrences on the page" Checked="True" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="checkBoxCalculateKeywordsOnPage" runat="server" Text="Calculate number of occurrences on the page of each word listed in meta tags" Checked="True" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="checkBoxCalculateExternalLinks" runat="server" Text="Calculate number of external links in the text" Checked="True" />
                </td>
            </tr>
            <tr>
                <td>
                    <input id="radioAnalyzeUrl" type="radio" name="placement" runat="server" checked="true" onchange="var t=document.getElementById('textUrlOrText');t.rows=1;t.innerText='';" />Web page URL<br />
                    <input id="radioAnalyzeText" type="radio" name="placement" runat="server" onchange="var t=document.getElementById('textUrlOrText');t.rows=20;t.innerText='';" />HTML text<br />
                    <br />
                    <asp:Label ID="labelErrorText" runat="server"></asp:Label>
                    <asp:TextBox ID="textUrlOrText" runat="server" TextMode="MultiLine" Rows="1" Width="100%" BorderColor="">https://publika.com.my/events/48</asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="buttonAnalyze" runat="server" Text="Analyze" OnClick="Analyze_Click" />
        <br />
        <br />

        <asp:Label ID="labelExternalLinkNumber" runat="server"></asp:Label>
        <table>
            <tr>
                <td valign="top">
                    <asp:GridView ID="gridViewWords" AllowSorting="true" runat="server" OnSorting="gridViewWords_Sorting" AutoGenerateColumns="False" Caption="Words">
                        <Columns>
                            <asp:BoundField DataField="Key" HeaderText="Word" SortExpression="Key" />
                            <asp:BoundField DataField="Value" HeaderText="Occurences" SortExpression="Value" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td valign="top">
                    <asp:GridView ID="gridViewKeywords" AllowSorting="true" runat="server" OnSorting="gridViewKeywords_Sorting" AutoGenerateColumns="False" Caption="Keywords">
                        <Columns>
                            <asp:BoundField DataField="Key" HeaderText="Word" SortExpression="Key" />
                            <asp:BoundField DataField="Value" HeaderText="Occurences" SortExpression="Value" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
<script type="text/javascript">
    var t = document.getElementById('textUrlOrText');
    if (document.getElementById('radioAnalyzeUrl').checked)
        t.rows = 1;
    else
        t.rows = 20;
</script>
</html>
