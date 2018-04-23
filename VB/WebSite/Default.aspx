<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>


<%@ Register Assembly="DevExpress.Xpo.v15.1, Version=15.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Xpo" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ASPxGridView - How to customize a check box column</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="xds"
			KeyFieldName="Oid">
			<Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
				<dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="1" SortOrder="Ascending">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="Title" VisibleIndex="2" Visible="false">
					<EditFormSettings Visible="True" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataCheckColumn FieldName="Allow" VisibleIndex="3">
					<PropertiesCheckEdit AllowGrayed="true" ValueType="System.String" ValueChecked="allowed"
						ValueUnchecked="not allowed" ValueGrayed="no information" />
				</dx:GridViewDataCheckColumn>
				<dx:GridViewDataCheckColumn FieldName="Active" VisibleIndex="4">
					<DataItemTemplate>
						<dx:ASPxCheckBox ID="chk" runat="server" AllowGrayed="true" ValueType="System.Int32"
							ValueChecked="1" ValueUnchecked="-1" ValueGrayed="0" Value='<%#Eval("Active")%> '
							OnInit="chk_Init">
						</dx:ASPxCheckBox>
					</DataItemTemplate>
					<EditFormSettings Visible="False" />
				</dx:GridViewDataCheckColumn>
			</Columns>
		</dx:ASPxGridView>
		<dx:XpoDataSource ID="xds" runat="server" TypeName="MyObject">
		</dx:XpoDataSource>
		<dx:ASPxCallback ID="cb" runat="server" ClientInstanceName="cb" OnCallback="cb_Callback">
		</dx:ASPxCallback>
	</div>
	</form>
</body>
</html>