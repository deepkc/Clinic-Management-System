unit Unit_ReportPrevilage;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Unit_Master, serverdate,
     FXN, DM,
     Dialogs, StdCtrls, ExtCtrls, CheckLst, Buttons, DB, DBTables, DBCtrls,
  ComCtrls, AdvCheckTreeView, ImgList, Ora, OraSmart, MemDS, OraError, DBAccess;

type
     TForm_ReportPrevilege = class(TForm)
          Query_LoadData: TQuery;
          Query_SaveData: TQuery;
          Panel3: TPanel;
          Query_Blank: TQuery;
    tv_previlage: TAdvCheckTreeView;
    il1: TImageList;
    OraQuery_MyNodeNode: TOraQuery;
    Query_AccTree: TOraQuery;
    Query_Checkbox: TOraQuery;
    Panel5: TPanel;
    Label1: TLabel;
    Label_UserName: TLabel;
    BB_OK: TBitBtn;
    BB_Exit: TBitBtn;
    Query1: TOraQuery;

          procedure BB_ExitClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_OKClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
    procedure tv_previlageClick(Sender: TObject);
    procedure tv_previlageNodeCheckedChanged(Sender: TObject; Node: TTreeNode;
      NewState: Boolean);

     private
          { Private declarations }
     public
          PbIsUser: Boolean;
          Pi_Groupid: Integer;
          pedit: Boolean;
          ps_username: string;
          pi_userid: Integer;
          pi_getprevilegeid: Integer;
          arr_ModalId: Array of Integer;
          arr_MenuId: Array of Integer;
          arr_SubMenuId: Array of Integer;
          arr_FunctionId: Array of Integer;
          function checkDatas(accessid: Integer; userid: Integer): Boolean;
          procedure AddMyChilds(MyId: Integer; MyNode: TTreeNode);
           procedure AddMyGrandChilds(ChildId: Integer; ChildNode: TTreeNode);
           procedure AddCheckedOnes(ChildId: Integer; ChildNode: TTreeNode);
           procedure SaveThirdDepth(Id: Integer; Node: TTreeNode);
           procedure SaveFourthDepth(Id: Integer; Node: TTreeNode);


          { Public declarations }
     end;

var
     Form_ReportPrevilege: TForm_ReportPrevilege;

implementation

uses Unit_Users;
{$R *.dfm}
{ TForm_Previlege }

procedure TForm_ReportPrevilege.BB_ExitClick(Sender: TObject);
begin
     close;
end;

procedure TForm_ReportPrevilege.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF (Key = VK_F12) Then
          BB_OKClick(Sender);
     if Key = 27 then
          BB_ExitClick(Sender);
end;

procedure TForm_ReportPrevilege.FormShow(Sender: TObject);
var
     Rootnode,mainnode:TTreeNode;
     li_depth:integer;

begin
     //Label_UserName.Caption:=ps_username;
      Rootnode := nil;
      mainnode:=nil;
     if tv_previlage.Items.Count < 1 then
     begin
          tv_previlage.Items.Add(Rootnode,'0.0- Analysis');


     end;
     AddMyChilds(1, tv_previlage.TopItem);
      tv_previlage.TopItem.Expand(true);
      //showmessage(tv_previlage.TopItem.Text);
      li_depth:=strtoint(Copy(tv_previlage.TopItem.Text, 1, pos('.', tv_previlage.TopItem.Text) - 1));
      if li_depth=0 then
          tv_previlage.TopItem.Selected:=True
      else if li_depth=1 then
          tv_previlage.TopItem.Parent.Selected:=true
      else if li_depth=2 then
          tv_previlage.TopItem.Parent.Parent.Selected:=true
      else if li_depth=3 then
          tv_previlage.TopItem.Parent.Parent.Parent.Selected:=true
      else if li_depth=4 then
          tv_previlage.TopItem.Parent.Parent.Parent.Parent.Selected:=true;

     // tv_previlage.TopItem.Parent.Parent.Parent.Selected:=true;
    // rootnode.Selected:=true;
    //tv_previlage.Top:=(0);




end;
procedure TForm_ReportPrevilege.AddMyChilds(MyId: Integer; MyNode: TTreeNode);
var
 li_childId,li_childId1,li_count,I,j: Integer;
 ls_childNode:string;
 //lb_check:boolean;
 ChildNode,SelNode,Grandnode: TTreeNode;
Query_MainMenu:Toraquery;
label
     LRestart;


begin
     li_count:=0;
     mynode.StateIndex:=3;
    if not MyNode.HasChildren then
     begin
          //Query_MyNodeNode:=ToraQuery.Create(nil);
          with oraQuery_MyNodeNode do
          begin
               Close;
               Session:=DM_Hospital.DB;
               sql.Clear;
               sql.Add(' select distinct hoac_submenuid,(select uasm_Captionname from hs_uasm_useraccesssubmenu where uasm_submenuid=hs_hoac_hospitalaccess.hoac_submenuid)Captionname from hs_hoac_hospitalaccess');
               sql.Add('where hoac_hospitalid='+Inttostr(gi_ReportId));
               SQL.Add('order by hoac_submenuid');
               Open;

               First;
               while not EOF do
               begin
                         ls_childNode :='1'+'.'+ FieldByName('hoac_SUBMENUID')
                           .AsString + '- ' + FieldByName('captionname').AsString;
                    tv_previlage.Items.AddChild(Mynode, ls_childNode);
                    inc(li_count);
                    Next;
               end;
          end;
      // mynode.Expanded:=true;
     end;
     oraQuery_MyNodeNode.free;

     ChildNode := MyNode.getFirstChild;

     while ChildNode <> nil do
     begin
           childnode.StateIndex:=1;
          if not ChildNode.HasChildren then
          begin
               Query_MainMenu:=TOraQuery.Create(nil);
               with Query_MainMenu do
               begin
                    li_childId := StrToInt
                      (Copy(ChildNode.Text, 3, pos('-', ChildNode.Text) - 3));

                    Close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    sql.Add('select distinct hoac_rootmenuid,(select rome_Captionname from hs_rome_rootmenu where rome_rootmenuid=hs_hoac_hospitalaccess.hoac_rootmenuid)Captionname from hs_hoac_hospitalaccess');
                    SQL.Add('where hoac_SUBMENUID = '+ IntToStr(li_childId));
                    SQL.Add('And hoac_hospitalid='+IntToStr(gi_ReportId));

                    //  (' SELECT * FROM hospitalaccess WHERE SUBMENUID = '
                    //       + IntToStr(li_childId));
                    SQL.Add(' order by hoac_rootmenuid');
                    Open;

                    First;
                    while not EOF do
                    begin

                          ls_childNode := '2'+'.'+FieldByName('hoac_ROOTMENUID')
                                .AsString + '- ' + FieldByName('captionname').AsString;
                         tv_previlage.Items.AddChild(ChildNode,ls_childNode);
                         Next;
                    end;
               end;

          end;
              //childnode.StateIndex:=2;
                with Query_checkbox do    ///to check checked  item first depth
               begin
                    close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    sql.Add('select * from hs_repr_REPORTPREVILAGE');
                    Sql.Add('where repr_USERID='+inttostr(pi_userid));
                    //Sql.Add('and uspr_stateindex=2');
                    //sql.Add('and uspr_acesstype=''MODULE''');
                    //SQL.SaveToFile('D:\T.TXT');
                    open;
                    first;
                   while not Query_checkbox.eof do
                    //for j := 0 to Query_checkbox.RecordCount - 1 do
                    begin
                         if Childnode.text=FieldByName('repr_nodetext').AsString then
                         begin
                              Childnode.StateIndex:=2;
                             // ChildNode.Expanded:=true;
                         end;

                         next;
                    end;
                end;

           // if childnode.SelectedIndex=2 then
          ChildNode := MyNode.GetNextChild(ChildNode);
          next;

     end;
     Query_MainMenu.free;
     ChildNode := MyNode.getFirstChild;
     for I := 0 to Li_count - 1 do
     //while ChildNode.HasChildren do
     begin
            li_childId := StrToInt
                           (Copy(ChildNode.Text, 3, (pos('-', ChildNode.Text) - 3)));
           // AddMyGrandChilds(li_childId,ChildNode);
            ChildNode:=Mynode.GetNextchild(ChildNode);
     end;

      ChildNode := MyNode.getFirstChild;
      ls_childNode:=ChildNode.Text;
     for I := 0 to Li_count - 1 do
     //while ChildNode.HasChildren do
     begin
                //showmessage(ChildNode.text);
               SelNode:= Childnode.getFirstChild;
               ls_childNode:=SelNode.Text;
                //showmessage(selnode.text);
          while selnode <> nil do
          begin
               li_childId := StrToInt
                 (Copy(SelNode.Text, 3, pos('-', SelNode.Text) - 3));
              //  AddCheckedOnes(li_childId,SelNode);
              while selnode <> nil do
     begin
          selnode.StateIndex:=1;
           with Query_checkbox do    ///to check checked  item third depth
           begin
               close;
               Session:=DM_Hospital.DB;
               sql.Clear;
               sql.Add('select * from hs_repr_reportprevilage');
               Sql.Add('where repr_userid='+inttostr(pi_userid));
               //SQL.SaveToFile('D:\T.TXT');
               open;
               first;
              while not Query_checkbox.eof do
               //for j := 0 to Query_checkbox.RecordCount - 1 do
               begin
                    if SelNode.text=FieldByName('repr_nodetext').AsString then
                    begin
                         SelNode.StateIndex:=2;
                         //GrandChildNode.Expanded:=true;

                    end;
                    next;
               end;
                selnode.Selected:=true;
                //tv_previlageClick(grandchildnode);
                selnode.Expanded:=true;
                selnode := ChildNode.GetNextChild(selnode);
                next;
          end;

     end;
                 SelNode := ChildNode.GetNextChild(SelNode);
                  //   if selnode=nil then
                    //    goto LRestart;

               next;
          end;
            //   LRestart:
            ChildNode := MyNode.GetNextChild(ChildNode);
             if ChildNode=nil then
                exit;
                next;
     end;

end;

procedure TForm_ReportPrevilege.AddMyGrandChilds(ChildId: Integer; ChildNode: TTreeNode);
var
 li_childId,i,li_count{,li_grandchildId}: Integer;
 ls_childNode:string;
 //lb_check:boolean;
 GrandNode,checknode,check2node{,grandgrandnode}: TTreeNode;
begin
     GrandNode := ChildNode.getFirstChild;
   //  check2node:= ChildNode.getFirstChild;

  {   while GrandNode <> nil do
     begin
     GrandNode.StateIndex:=1;
          if not GrandNode.HasChildren then
          begin
               with Query_AccTree do
               begin
                    li_childId := StrToInt
                      (Copy(GrandNode.Text, 3, pos('-', GrandNode.Text) - 3));

                    Close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    sql.Add
                      (' SELECT * FROM useraccesssubmenu WHERE submenuid = '
                           + IntToStr(li_childId));
                    SQL.Add(' order by submenuid');
                    Open;

                    First;
                    while not EOF do
                    begin

                          ls_childNode := '3'+'.'+FieldByName('submenuid')
                                .AsString + '- ' + FieldByName('captionname').AsString;

                         tv_previlage.Items.AddChild(GrandNode,ls_childNode);
                         inc(li_count);
                         Next;
                    end;
               end;
          end;
              // lb_check:=false;
             with Query_checkbox do     ///to check checked  item second depth
               begin
                    close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    sql.Add('select * from hs_uspr_userprivilege');
                    Sql.Add('where uspr_userid='+inttostr(pi_userid));
                    Sql.Add('and uspr_stateindex=2');
                    sql.Add('and uspr_acesstype=''MAINMENU''');
                    SQL.SaveToFile('D:\T.TXT');
                    open;
                    first;

                   while not Query_checkbox.eof do
                    //for j := 0 to Query_checkbox.RecordCount - 1 do
                    begin
                         if GrandNode.text=FieldByName('uspr_nodetext').AsString then
                         begin
                              GrandNode.StateIndex:=2;
                              //grandnode.Expanded:=true;
                              // lb_check:=true;
                         end;
                         next;
                    end;
                end;

              {  checknode:=check2node.getFirstChild;
               for I := 0 to Li_count - 1 do
               begin
                     with Query_checkbox do     ///to check checked  item third depth
                    begin
                         close;
                         databasename:=gs_databasename;
                         sql.Clear;
                         sql.Add('select * from hs_uspr_userprivilege');
                         Sql.Add('where uspr_userid='+inttostr(pi_userid));
                         Sql.Add('and uspr_stateindex=2');
                         sql.Add('and uspr_acesstype=''SUBMENU''');
                         SQL.SaveToFile('D:\T.TXT');
                         open;
                         first;
                        while not Query_checkbox.eof do
                         //for j := 0 to Query_checkbox.RecordCount - 1 do
                         begin
                              if checknode.text=FieldByName('uspr_nodetext').AsString then
                              begin
                                   checknode.StateIndex:=2;

                              end;
                              next;
                         end;
                    end;
                    checknode:=check2node.GetNextChild(checknode);

               end;
        {  GrandGrandNode:=GrandNode.getFirstChild;
          li_grandchildId:=StrToInt
                      (Copy(GrandGrandNode.Text, 1, pos(' - ', GrandGrandNode.Text) - 1));
          AddMyGrandGrandChilds(li_grandchildId,GrandGrandNode);
                                                                  }
     {     GrandNode := ChildNode.GetNextChild(GrandNode);
          next;
     end; }

end;
procedure TForm_ReportPrevilege.AddCheckedOnes(ChildId: Integer; ChildNode: TTreeNode);
 var
 li_childId: Integer;
 ls_childNode:string;
 GrandChildNode,selnode: TTreeNode;
// Query_Function:TQuery;
begin
     //GrandChildNode := ChildNode.getFirstChild;
        SelNode:= Childnode.getFirstChild;
        //ls_childNode:=selnode.Text;
     while selnode <> nil do
     begin
          selnode.StateIndex:=1;
           with Query_checkbox do    ///to check checked  item third depth
           begin
               close;
               Session:=DM_Hospital.DB;
               sql.Clear;
               sql.Add('select * from hs_repr_reportprevilage');
               Sql.Add('where repr_userid='+inttostr(pi_userid));
               //SQL.SaveToFile('D:\T.TXT');
               open;
               first;
              while not Query_checkbox.eof do
               //for j := 0 to Query_checkbox.RecordCount - 1 do
               begin
                    if SelNode.text=FieldByName('repr_nodetext').AsString then
                    begin
                         SelNode.StateIndex:=2;
                         //GrandChildNode.Expanded:=true;

                    end;
                    next;
               end;
                selnode.Selected:=true;
                //tv_previlageClick(grandchildnode);
                selnode.Expanded:=true;
                selnode := ChildNode.GetNextChild(selnode);
                next;
          end;
     //Query_Function.Destroy;
          //Query_Function.free;
     end;
end;

procedure TForm_ReportPrevilege.tv_previlageClick(Sender: TObject);
var
     node,childnode:ttreenode;
     li_childId,li_count,i:integer;
     li_childdepth:integer;
     ls_childNode:string;
     Query_Function:tquery;
begin

end;



procedure TForm_ReportPrevilege.tv_previlageNodeCheckedChanged(Sender: TObject;
  Node :TTreeNode; NewState: Boolean);
  var li_childdepth:Integer;
begin
     li_childdepth:=strtoint(Copy(node.Text, 1, pos('.', node.Text) - 1));
     if li_childdepth > 0 then
     begin
     if  NewState=true then
               node.StateIndex:=2

     else if  NewState=false then
     begin
          node.StateIndex:=1;
     end;
     end;


end;


procedure TForm_ReportPrevilege.BB_OKClick(Sender: TObject);
var
     li_childId,li_childId1,PREVILAGEID,li_count,i:integer;
     childnode,rootnode,selnode:ttreenode;
     Query_Function:toraquery;
     ls_test:string;
begin
     Query_Function:=ToraQuery.Create(nil);

      rootnode:=tv_previlage.Selected;
      ls_test:=rootnode.Text;
     // showmessage(rootnode.text);
      childnode:=rootnode.getFirstChild;

      //showmessage(childnode.text);
      if childnode <> nil then
      begin
             with Query_function do
             begin
                close;
                Session:=DM_Hospital.DB;
                sql.Clear;
                sql.Add('Delete from hs_repr_reportprevilage ');
                sql.Add('where repr_userid='+inttostr(pi_userid));
                //sql.Add('and nodetext='+Quotedstr(childnode.Text));
                //sql.add('and privilegeid='+inttostr(pi_getprevilegeid));
                //sql.SaveToFile('d:\ok1.txt');
                ExecSQL;
             end;

           while childnode <> nil do
           begin
               //li_childId1 :=strtoint(Copy(childnode.Text, 1,pos('.', childnode.Text) - 1));
               li_childId :=strtoint(Copy(childnode.Text, 3, pos('-', childnode.Text) - 3));

               if  childnode.StateIndex=2 then
               begin
                    PREVILAGEID := GetMaxID('hs_repr_reportprevilage', 'repr_PREVILAGEID');
                    with Query_function do
                     begin
                        close;
                        Session:=DM_Hospital.DB;
                        sql.Clear;
                        sql.Add('Insert into hs_repr_reportprevilage(repr_PREVILAGEID,repr_USERID,repr_SUBMENUID,repr_ROOTMENUID,repr_NODETEXT) ');
                        sql.Add('values('+inttostr(PREVILAGEID)+','+inttostr(pi_userid)+','+inttostr(li_childid)+','+inttostr(li_childid1)+','+Quotedstr(childnode.Text)+')');
                        //sql.SaveToFile('d:\ok.txt');
                        ExecSQL;
                     end;
                     //node.StateIndex:=2;
                    //showmessage('checked');
                    // showmessage(inttostr(li_childId));
                      //showmessage(inttostr(li_childdepth));
               end
               else if  childnode.StateIndex=1 then
               begin
                 with Query_function do
                     begin
                        close;
                        Session:=DM_Hospital.DB;
                        sql.Clear;
                        sql.Add('Delete from hs_repr_reportprevilage ');
                        sql.Add('where repr_userid='+inttostr(pi_userid));
                         sql.Add('and repr_nodetext='+Quotedstr(childnode.Text));
                       // sql.add('and uspr_userprivilegeid='+inttostr(uspr_previlegeid));
                        //sql.SaveToFile('d:\ok1.txt');
                        ExecSQL;

                     end;
                      //node.StateIndex:=1;
                    //showmessage('unchecked');
                    //showmessage(inttostr(li_childId));
                    //  showmessage(inttostr(li_childdepth));
               end;


               selnode:=childnode.getfirstchild;
               while selnode <> nil do
               begin
                         li_childId1 :=strtoint(Copy(selnode.Text, 3, pos('-', selnode.Text) - 3));
                         if  selnode.StateIndex=2 then
                         begin
                              PREVILAGEID := GetMaxID('hs_repr_reportprevilage', 'repr_PREVILAGEID');
                              with Query_function do
                               begin
                                  close;
                                  Session:=DM_Hospital.DB;
                                  sql.Clear;
                                  sql.Add('Insert into hs_repr_reportprevilage(repr_PREVILAGEID,repr_userid,repr_SUBMENUID,repr_ROOTMENUID,repr_nodetext) ');
                                  sql.Add('values('+inttostr(PREVILAGEID)+','+inttostr(pi_userid)+','+inttostr(li_childId)+','+inttostr(li_childId1)+','+Quotedstr(SelNode.Text)+')');
                                  //sql.SaveToFile('d:\ok.txt');
                                  ExecSQL;
                               end;
                               //node.StateIndex:=2;
                              //showmessage('checked');
                              // showmessage(inttostr(li_childId));
                                //showmessage(inttostr(li_childdepth));
                         end
                         else if  selnode.StateIndex=1 then
                         begin
                           with Query_function do
                               begin
                                  close;
                                  Session:=DM_Hospital.DB;
                                  sql.Clear;
                                  sql.Add('Delete from hs_repr_reportprevilage ');
                                  sql.Add('where repr_userid='+inttostr(pi_userid));
                                   sql.Add('and repr_nodetext='+Quotedstr(selnode.Text));
                                 // sql.add('and uspr_userprivilegeid='+inttostr(uspr_previlegeid));
                                  //sql.SaveToFile('d:\ok1.txt');
                                  ExecSQL;

                               end;
                                //node.StateIndex:=1;
                              //showmessage('unchecked');
                              //showmessage(inttostr(li_childId));
                              //  showmessage(inttostr(li_childdepth));
                         end;
                         SaveThirdDepth(li_childId,selnode);
                         selnode:=childnode.GetNextChild(selnode);
                         Next;
               end;
               {SaveThirdDepth(li_childId,li_childId); }
               //showmessage(selnode.text);
               childnode:=rootnode.GetNextChild(childnode);
               inc(li_count);
               //showmessage(childnode.text);
               Next;
               //showmessage(inttostr(node.StateIndex));

           end;
      end;

        Query_function.free;






     { for i := 0 to Clb_Previlege.Items.count - 1 do
       begin
       if Clb_Previlege.State[i] = cbchecked then
       begin
       with Query_SaveData do
       begin
       close;
       DatabaseName := gs_DatabaseName;
       sql.Clear;
       if not checkDatas(i + 1, gi_UserId) then
       begin
       sql.Add('insert into previlege (previlegeid,  USPR_USERID, accessid )');
       sql.Add('values ( (select Nvl(max(previlegeid),0)+1 from previlege) ');
       sql.Add(', ' + IntToStr(pi_userid) + ',' + IntToStr(i + 1));
       sql.Add(')');
       ExecSQL;
       end
       else
       begin
       //sql.add('update into previlege
       //ShowMessage('Sorry! Same Previlege');
       end;
       end;
       end
       else
       begin
       with Query_SaveData do
       begin
       close;
       DatabaseName := gs_DatabaseName;
       sql.Clear;
       if checkDatas(i + 1, gi_UserId) then
       begin
       sql.Add('delete from previlege');
       sql.Add('where USPR_USERID=' + IntToStr(pi_userid) );
       sql.Add('and accessid=' + IntToStr(i+1));
       ExecSQL;
       end;
       end;
       end;
       end;
       ShowDoneMessage;
       Form_Previlege.close; }

     ShowDoneMessage;
end;
procedure TForm_ReportPrevilege.SaveThirdDepth(Id: Integer; Node: TTreeNode);
var
Query_Function:Tquery;
thirdnode:ttreenode;
li_childId,uspr_previlegeid:integer;
begin
      thirdnode:= node.getfirstchild;
      Query_Function:=TQuery.Create(nil);
      while thirdnode <> nil do
      begin
          li_childId :=strtoint(Copy(thirdnode.Text, 3, pos('-', thirdnode.Text) - 3));

          if  thirdnode.StateIndex=2 then
          begin
               uspr_previlegeid := GetMaxID('HS_USPR_USERPRIVILEGE', 'uspr_userprivilegeid');
               with Query_function do
                begin
                   close;
                   databasename:=gs_databasename;
                   sql.Clear;
                   sql.Add('Insert into HS_USPR_USERPRIVILEGE(uspr_userprivilegeid,uspr_userid,uspr_acesstype,uspr_acesscontrolid,uspr_stateindex,uspr_nodetext) ');
                   sql.Add('values('+inttostr(uspr_previlegeid)+','+inttostr(pi_userid)+','+'''SUBMENU'''+','+inttostr(li_childId)+',2'+','+Quotedstr(thirdnode.Text)+')');
                   sql.SaveToFile('d:\ok.txt');
                   ExecSQL;
                end;
                //node.StateIndex:=2;
               //showmessage('checked');
               // showmessage(inttostr(li_childId));
                 //showmessage(inttostr(li_childdepth));
          end
          else if  thirdnode.StateIndex=1 then
          begin
            with Query_function do
                begin
                   close;
                   databasename:=gs_databasename;
                   sql.Clear;
                   sql.Add('Delete from HS_USPR_USERPRIVILEGE ');
                   sql.Add('where uspr_userid='+inttostr(pi_userid));
                   sql.Add('and uspr_acesstype=''SUBMENU''');
                   sql.Add('and uspr_acesscontrolid='+inttostr(li_childId));
                   sql.Add('and uspr_stateindex=2');
                    sql.Add('and nodetext='+Quotedstr(thirdnode.Text));
                  // sql.add('and uspr_userprivilegeid='+inttostr(uspr_previlegeid));
                   sql.SaveToFile('d:\ok1.txt');
                   ExecSQL;

                end;
                 //node.StateIndex:=1;
               //showmessage('unchecked');
               //showmessage(inttostr(li_childId));
               //  showmessage(inttostr(li_childdepth));
          end;
               SaveFourthDepth(li_childId,thirdnode);
               thirdnode:=Node.GetNextChild(thirdnode);
          //showmessage(childnode.text);
          Next;
      end;

end;
procedure TForm_ReportPrevilege.SaveFourthDepth(Id: Integer; Node: TTreeNode);
var
Query_Function:Tquery;
fourthnode:ttreenode;
li_childId,uspr_previlegeid:integer;
begin
     Query_Function:=TQuery.Create(nil);
     //showmessage(node.text);
     fourthnode:= node.getfirstchild;
     if fourthnode=nil then
     exit;
    // showmessage(fourthnode.text);

      while fourthnode <> nil do
      begin
          li_childId :=strtoint(Copy(fourthnode.Text, 3, pos('-', fourthnode.Text) - 3));

          if  fourthnode.StateIndex=2 then
          begin
               uspr_previlegeid := GetMaxID('HS_USPR_USERPRIVILEGE', 'uspr_userprivilegeid');
               with Query_function do
                begin
                   close;
                   databasename:=gs_databasename;
                   sql.Clear;
                   sql.Add('Insert into HS_USPR_USERPRIVILEGE(uspr_userprivilegeid,uspr_userid,uspr_acesstype,uspr_acesscontrolid,uspr_stateindex,uspr_nodetext) ');
                   sql.Add('values('+inttostr(uspr_previlegeid)+','+inttostr(pi_userid)+','+'''FUNCTION'''+','+inttostr(li_childId)+',2'+','+Quotedstr(fourthnode.Text)+')');
                   sql.SaveToFile('d:\ok.txt');
                   ExecSQL;
                end;
                //node.StateIndex:=2;
               //showmessage('checked');
               // showmessage(inttostr(li_childId));
                 //showmessage(inttostr(li_childdepth));
          end
          else if  fourthnode.StateIndex=1 then
          begin
            with Query_function do
                begin
                   close;
                   databasename:=gs_databasename;
                   sql.Clear;
                   sql.Add('Delete from HS_USPR_USERPRIVILEGE ');
                   sql.Add('where uspr_userid='+inttostr(pi_userid));
                   sql.Add('and uspr_acesstype=''FUNCTION''');
                   sql.Add('and uspr_acesscontrolid='+inttostr(li_childId));
                   sql.Add('and uspr_stateindex=2');
                    sql.Add('and uspr_nodetext='+Quotedstr(fourthnode.Text));
                  // sql.add('and uspr_userprivilegeid='+inttostr(uspr_previlegeid));
                   sql.SaveToFile('d:\ok1.txt');
                   ExecSQL;

                end;
                 //node.StateIndex:=1;
               //showmessage('unchecked');
               //showmessage(inttostr(li_childId));
               //  showmessage(inttostr(li_childdepth));
          end;
               fourthnode:=Node.GetNextChild(fourthnode);
          //showmessage(childnode.text);
          Next;
      end;

end;

function TForm_ReportPrevilege.checkDatas(accessid: Integer; userid: Integer): Boolean;
begin
     with Query1 do
     begin
          close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('select count(*) count from reportprevilage USPR');
          sql.Add('where USPR.USERID=' + #39 + Form_Users.Query_List.FieldByName('userid').AsString + #39);
          //sql.Add('and USPR.USPR_ACESSSTATUSID=' + inttostr(accessid));
          Open;
          if Query1.FieldByName('count').Asinteger > 0 then
               Result := true
          else
               Result := false;

     end;
end;


end.
