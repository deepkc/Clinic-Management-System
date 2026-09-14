unit Unit_MenuPrevilage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,DM,
  Dialogs,AdvCheckTreeView, ImgList, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ComCtrls, StdCtrls, Buttons,
  ExtCtrls;

type
  TForm_MenuPrevilage = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label_UserName: TLabel;
    BB_OK: TBitBtn;
    BB_Exit: TBitBtn;
    Panel3: TPanel;
    tv_previlage: TAdvCheckTreeView;
    Query_SaveData: TOraQuery;
    Query_LoadData: TOraQuery;
    Query_Blank: TOraQuery;
    Query_Checkbox: TOraQuery;
    il1: TImageList;
    OraQuery_MyNodeNode: TOraQuery;
    Query_AccTree: TOraQuery;
    Query1: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure tv_previlageNodeCheckedChanged(Sender: TObject; Node: TTreeNode;
      NewState: Boolean);
    procedure BB_OKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BB_ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
          PbIsUser: Boolean;
          Pi_Groupid: Integer;
          pedit: Boolean;
          ps_username: string;
          pi_userid: Integer;
          pi_hospitalid:Integer;
          ps_Hospital:string;
          pi_getprevilegeid: Integer;
          arr_ModalId: Array of Integer;
          arr_MenuId: Array of Integer;
          arr_SubMenuId: Array of Integer;
          arr_FunctionId: Array of Integer;
          procedure AddMyChilds(MyId: Integer; Rootnode: TTreeNode);
           procedure AddCheckedOnes(ChildId: Integer; ChildNode: TTreeNode);
    { Public declarations }
  end;

var
  Form_MenuPrevilage: TForm_MenuPrevilage;

implementation

Uses Fxn;


{$R *.dfm}

procedure TForm_MenuPrevilage.AddCheckedOnes(ChildId: Integer;
  ChildNode: TTreeNode);
 var
 li_childId: Integer;
 ls_childNode:string;
 GrandChildNode,selnode: TTreeNode;
// Query_Function:TOraQuery;
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
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.Add('select * from HS_MEPR_MENUPREVILAGE');
               Sql.Add('where MEPR_USERID='+inttostr(pi_userid));
               //SQL.SaveToFile('D:\T.TXT');
               open;
               first;
              while not Query_checkbox.eof do
               //for j := 0 to Query_checkbox.RecordCount - 1 do
               begin
                    if SelNode.text=FieldByName('MEPR_NODETEXT').AsString then
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

procedure TForm_MenuPrevilage.AddMyChilds(MyId: Integer; Rootnode: TTreeNode);
var
 li_ParentId,li_childId,li_GrandChildId,li_childId1,li_count,I,j: Integer;
 ls_RootNode,ls_ParentNode,ls_childNode,ls_GrandChildNode:string;
 lb_NodePosted:Boolean;
 li_ParentCount,li_ChildCount,li_GrandChildCount:Integer;
 //lb_check:boolean;
 RootNode1,ParentNode,ChildNode,GrandChildNode,SelNode,firstNode,testnode: TTreeNode;
Query_MainMenu,Query_SubMenu:TOraQuery;
label
     LRestart;
begin
     li_ParentCount:=1;
     li_count:=0;
     li_ChildCount:=0;
     Rootnode.StateIndex:=3;
     if not Rootnode.HasChildren then
     begin
          //Query_MyNodeNode:=ToraQuery.Create(nil);
          with oraQuery_MyNodeNode do
          begin
               Close;
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.Add(' Select * from HS_MODU_Module order by MODU_MODULEID ');
               Open;

               First;
               while not EOF do
               begin
                         ls_ParentNode :='1'+'.'+ FieldByName('MODU_MODULEID')
                           .AsString + '- ' + FieldByName('MODU_MODULENAME').AsString;
                    tv_previlage.Items.AddChild(Rootnode, ls_ParentNode);
                    inc(li_count);
                    Next;
               end;
          end;
      // mynode.Expanded:=true;
     end;
     oraQuery_MyNodeNode.free;
     //to load node 1st item
     ChildNode := Rootnode.getFirstChild;
     lb_NodePosted:=False;

     while ChildNode <> nil do
     begin
           childnode.StateIndex:=1;
          if not ChildNode.HasChildren then
          begin
               lb_NodePosted:=False;
               Query_MainMenu:=TOraQuery.Create(nil);
               with Query_MainMenu do
               begin
                    li_childId := StrToInt
                      (Copy(ChildNode.Text, 3, pos('-', ChildNode.Text) - 3));

                    Close;
                    Session := DM_Hospital.DB;
                    sql.Clear;
                    sql.Add (' SELECT * FROM HS_MAME_MainMenu WHERE MAME_ModuleId = '+ IntToStr(li_childId));
                    SQL.Add(' order by MAME_MAINMENUID');
                    //sql.savetofile('D:\ave.txt');
                    Open;

                    First;
                    while not Query_MainMenu.EOF do
                    begin

                          ls_childNode := '2'+'.'+FieldByName('MAME_MAINMENUID')
                                .AsString + '- ' + FieldByName('MAME_MAINMENU').AsString;
                         tv_previlage.Items.AddChild(ChildNode,ls_childNode);

                         if lb_NodePosted=False then
                         GrandChildNode := ChildNode.getFirstChild
                         else
                         GrandChildNode := ChildNode.GetNextChild(firstNode);
                         //Next;
                         while GrandChildNode <> nil do
                         begin
                              GrandChildNode.StateIndex:=1;
                              if not GrandChildNode.HasChildren then
                              begin
                                   Query_SubMenu:=TOraQuery.Create(Nil);
                                   with Query_SubMenu do
                                   begin
                                        li_GrandChildId := StrToInt
                                          (Copy(GrandChildNode.Text, 3, pos('-', GrandChildNode.Text) - 3));

                                        Close;
                                        Session := DM_Hospital.DB;
                                        sql.Clear;
                                        sql.Add (' SELECT * FROM HS_SUME_SUBMENU WHERE SUME_MainMenuid = '+ IntToStr(li_GrandChildId));
                                        SQL.Add(' order by SUME_SUBMENUID');
                                        //sql.savetofile('D:\ave.txt');
                                        Open;

                                        First;
                                        while not Query_SubMenu.EOF do
                                        begin
                                        lb_NodePosted:=True;

                                              ls_GrandChildNode := '3'+'.'+FieldByName('Sume_Submenuid')
                                                    .AsString + '- ' + FieldByName('SUME_SUBMENU').AsString;
                                             tv_previlage.Items.AddChild(GrandChildNode,ls_GrandChildNode);
                                             Query_SubMenu.Next;
                                        end;

                                        firstNode:=GrandChildNode;
                                        testnode:= GrandChildNode.getFirstChild;
                                        while testnode<>Nil do
                                        begin
                                             with Query_checkbox do    ///to check checked  item first depth
                                             begin
                                                  close;
                                                  Session := DM_Hospital.DB;
                                                  sql.Clear;
                                                  sql.Add('select * from HS_MEPR_MENUPREVILAGE');
                                                  Sql.Add('where mepr_userid='+inttostr(pi_userid)+' and MEPR_ACCESSTYPE=''SUBMENU''');
                                                  SQL.Add('and MEPR_NODETEXT='+QuotedStr(testnode.Text));
                                                  //SQL.SaveToFile('C:\T.TXT');
                                                  open;
                                                  first;
                                                 while not Query_checkbox.eof do
                                                  //for j := 0 to Query_checkbox.RecordCount - 1 do
                                                  begin
                                                       if FieldByName('MEPR_CAPTIONNAME').AsString<>'' then
                                                       begin
                                                            testnode.StateIndex:=2;
                                                           // ChildNode.Expanded:=true;
                                                       end;

                                                       next;
                                                  end;
                                             end;
                                             testnode:=GrandChildNode.GetNextChild(testnode);
                                        end;
                                        with Query_checkbox do    ///to check checked  item first depth
                                        begin
                                             close;
                                             Session := DM_Hospital.DB;
                                             sql.Clear;
                                             sql.Add('select * from HS_MEPR_MENUPREVILAGE');
                                             Sql.Add('where mepr_userid='+inttostr(pi_userid)+' and MEPR_ACCESSTYPE=''MAINMENU''');
                                             SQL.Add('and MEPR_NODETEXT='+QuotedStr(GrandChildNode.Text));
                                             //SQL.SaveToFile('C:\T.TXT');
                                             open;
                                             first;
                                             if FieldByName('MEPR_CAPTIONNAME').AsString<>'' then
                                             begin
                                                  GrandChildNode.StateIndex:=2;
                                                 // ChildNode.Expanded:=true;
                                             end;
                                        end;

                                        GrandChildNode:=nil;
                                        Next;

                                   end;
                              end;

                         end;
                         with Query_checkbox do    ///to check checked  item first depth
                         begin
                              close;
                              Session := DM_Hospital.DB;
                              sql.Clear;
                              sql.Add('select * from HS_MEPR_MENUPREVILAGE');
                              Sql.Add('where mepr_userid='+inttostr(pi_userid)+' and MEPR_ACCESSTYPE=''MODULE''');
                              SQL.Add('and MEPR_NODETEXT='+QuotedStr(ChildNode.Text));
                              //SQL.SaveToFile('C:\T.TXT');
                              open;
                              first;
                              if FieldByName('MEPR_CAPTIONNAME').AsString<>'' then
                              begin
                                   ChildNode.StateIndex:=2;
                                  // ChildNode.Expanded:=true;
                              end;
                         end;
                         Query_MainMenu.Next;
                    end;
               end;

          end;
          ChildNode := Rootnode.GetNextChild(ChildNode);
          inc(li_ChildCount);
          next;

     end;

     {ParentNode:=MyNode.getFirstChild;
     for I := 0 to li_count - 1 do
     //while ChildNode.HasChildren do
     begin
            li_ParentId := StrToInt
                           (Copy(ParentNode.Text, 3, (pos('-', ParentNode.Text) - 3)));
           // AddMyGrandChilds(li_childId,ChildNode);
            ParentNode:=MyNode.GetNextchild(ParentNode);
     end;}
     /////
     (*ChildNode:=nil;
     GrandChildNode:=nil;

     ParentNode:=MyNode.getFirstChild;
     //li_GrandChildId :=strtoint(Copy(GrandChildNode.Text, 3, pos('-', GrandChildNode.Text) - 3));
     with Query_checkbox do    ///to check checked  item third depth
     begin
          close;
          DatabaseName:=gs_DatabaseName;
          sql.Clear;
          sql.Add('select * from HS_MEPR_MENUPREVILAGE');
          Sql.Add('where mepr_userid='+inttostr(pi_userid));
          //SQL.SaveToFile('D:\T.TXT');
          open;
          first;
          while not Query_checkbox.eof do
          //for j := 0 to Query_checkbox.RecordCount - 1 do
          begin
               if ParentNode<>Nil then
               begin
                    while ParentNode<>Nil do
                    begin
                         if ParentNode.text=Query_checkbox.FieldByName('MEPR_NODETEXT').AsString then
                         begin
                              ParentNode.StateIndex:=2;
                         end;
                         ChildNode:=ParentNode.getFirstChild;
                         if ChildNode<>Nil then
                         begin
                              while ChildNode<>nil do
                              begin
                                   if ChildNode.text=Query_checkbox.FieldByName('MEPR_NODETEXT').AsString then
                                   begin
                                        ChildNode.StateIndex:=2;
                                   end;
                                   GrandChildNode:=ChildNode.getFirstChild;
                                   if GrandChildNode<>Nil then
                                   begin
                                        while GrandChildNode<>Nil do
                                        begin
                                             if GrandChildNode.text=Query_checkbox.FieldByName('MEPR_NODETEXT').AsString then
                                             begin
                                                  GrandChildNode.StateIndex:=2;
                                             end;
                                             GrandChildNode:=ChildNode.GetNextChild(GrandChildNode);
                                        end;
                                   end;
                                   ChildNode:=ParentNode.GetNextChild(ChildNode);
                              end;
                         end;;
                         ParentNode:=MyNode.GetNextChild(ParentNode);
                    //Next;
                    end;
               end;

               Query_checkbox.next;
          end;
     end;   *)


                   //childnode.StateIndex:=2;
     Query_MainMenu.free;
     Query_SubMenu.Free;
end;

procedure TForm_MenuPrevilage.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF (Key = VK_F12) Then
          BB_OKClick(Sender);
     if Key = 27 then
          BB_ExitClick(Sender);
end;

procedure TForm_MenuPrevilage.FormShow(Sender: TObject);
var
     Rootnode,mainnode:TTreeNode;
     li_depth:integer;

begin
     Rootnode := nil;
     mainnode:=nil;
     if tv_previlage.Items.Count < 1 then
     begin
          tv_previlage.Items.Add(Rootnode,'0.0- Guided Menu');
     end;
     AddMyChilds(1, tv_previlage.TopItem);
     tv_previlage.TopItem.Expand(true);
     //showmessage(tv_previlage.TopItem.Text);
     li_depth:=strtoint(Copy(tv_previlage.TopItem.Text, 1, pos('.', tv_previlage.TopItem.Text) - 1));
     if li_depth=1 then
          tv_previlage.TopItem.Parent.Selected:=true
     else if li_depth=2 then
          tv_previlage.TopItem.Parent.Parent.Selected:=true
     else if li_depth=3 then
          tv_previlage.TopItem.Parent.Parent.Parent.Selected:=true
     else if li_depth=4 then
          tv_previlage.TopItem.Parent.Parent.Parent.Parent.Selected:=true;

end;

procedure TForm_MenuPrevilage.tv_previlageNodeCheckedChanged(Sender: TObject;
  Node: TTreeNode; NewState: Boolean);
  var li_childdepth:Integer;
     RootNode: TTreeNode;
   ParentNode: TTreeNode;
   ls_text:string;
   ChildNode,GrandChildNode: TTreeNode;
   i: Integer;
begin
     li_childdepth:=strtoint(Copy(node.Text, 1, pos('.', node.Text) - 1));

     //Node.GetNextChild(Node);
     //node.getNextSibling
     RootNode:=Node.getFirstChild;
     if RootNode=nil then
     ParentNode:=Node.getFirstChild;
     if ParentNode=nil then
     ChildNode:=Node.getFirstChild;
     if ChildNode=nil then
     GrandChildNode:=Node.getFirstChild;
     //ls_text :=ParentNode.Text;

     if Node<>Nil then
     begin
          {if  NewState=true then
               RootNode.StateIndex:=2

          else if  NewState=false then
          begin
               RootNode.StateIndex:=1;
          end;}
          if RootNode<>Nil then
          begin
               if RootNode.HasAsParent(Node)=True then
               begin
                    if  NewState=true then
                         RootNode.Parent.StateIndex:=2

                    else if  NewState=false then
                    begin
                         RootNode.Parent.StateIndex:=1;
                    end;
               end;

               while RootNode<>Nil do
               begin
                    if  NewState=true then
                         RootNode.StateIndex:=2

                    else if  NewState=false then
                    begin
                         RootNode.StateIndex:=1;
                    end;

                    ParentNode:= RootNode.getFirstChild;

                    while ParentNode<>Nil do
                    begin
                         if ParentNode.HasAsParent(Node)=True then
                         begin
                              if  NewState=true then
                                   ParentNode.Parent.StateIndex:=2

                              else if  NewState=false then
                              begin
                                   ParentNode.Parent.StateIndex:=1;
                              end;
                         end;
                         if  NewState=true then
                              ParentNode.StateIndex:=2

                         else if  NewState=false then
                         begin
                              ParentNode.StateIndex:=1;
                         end;

                         ChildNode:=ParentNode.getFirstChild;


                         while ChildNode<>nil do
                         begin
                              if ChildNode.HasAsParent(Node)=True then
                              begin
                                   if  NewState=true then
                                        ChildNode.Parent.StateIndex:=2

                                   else if  NewState=false then
                                   begin
                                        ChildNode.Parent.StateIndex:=1;
                                   end;
                              end;
                              if  NewState=true then
                                   ChildNode.StateIndex:=2

                              else if  NewState=false then
                              begin
                                   ChildNode.StateIndex:=1;
                              end;

                              GrandChildNode:=ChildNode.getFirstChild;

                              while GrandChildNode<>Nil do
                              begin
                                   if GrandChildNode.HasAsParent(Node)=True then
                                   begin
                                        if  NewState=true then
                                             GrandChildNode.Parent.StateIndex:=2

                                        else if  NewState=false then
                                        begin
                                             GrandChildNode.Parent.StateIndex:=1;
                                        end;
                                   end;
                                   if  NewState=true then
                                        GrandChildNode.StateIndex:=2

                                   else if  NewState=false then
                                   begin
                                        GrandChildNode.StateIndex:=1;
                                   end;
                                   GrandChildNode:=ChildNode.GetNextChild(GrandChildNode);
                                   Next;
                              end;
                              ChildNode:=ParentNode.GetNextChild(ChildNode);
                              Next;
                         end;
                         ParentNode:=RootNode.GetNextChild(ParentNode);
                         Next;
                    end;

                    RootNode:=Node.GetNextChild(RootNode);
                    Next;
               end;
          end
          else if ParentNode<>Nil then
          begin
               while ParentNode<>Nil do
               begin
                    if  NewState=true then
                         ParentNode.StateIndex:=2

                    else if  NewState=false then
                    begin
                         ParentNode.StateIndex:=1;
                    end;

                    ChildNode:=ParentNode.getFirstChild;

                    while ChildNode<>nil do
                    begin
                         if  NewState=true then
                              ChildNode.StateIndex:=2

                         else if  NewState=false then
                         begin
                              ChildNode.StateIndex:=1;
                         end;

                         GrandChildNode:=ChildNode.getFirstChild;

                         while GrandChildNode<>Nil do
                         begin
                              if  NewState=true then
                                   GrandChildNode.StateIndex:=2

                              else if  NewState=false then
                              begin
                                   GrandChildNode.StateIndex:=1;
                              end;
                              GrandChildNode:=ChildNode.GetNextChild(GrandChildNode);
                              Next;
                         end;
                         ChildNode:=ParentNode.GetNextChild(ChildNode);
                         Next;
                    end;
                    ParentNode:=RootNode.GetNextChild(ParentNode);
                    Next;
               end;
          end
          else if ChildNode<>Nil then
          begin
               while ChildNode<>nil do
               begin
                    if  NewState=true then
                         ChildNode.StateIndex:=2

                    else if  NewState=false then
                    begin
                         ChildNode.StateIndex:=1;
                    end;

                    GrandChildNode:=ChildNode.getFirstChild;

                    while GrandChildNode<>Nil do
                    begin
                         if  NewState=true then
                              GrandChildNode.StateIndex:=2

                         else if  NewState=false then
                         begin
                              GrandChildNode.StateIndex:=1;
                         end;
                         GrandChildNode:=ChildNode.GetNextChild(GrandChildNode);
                         Next;
                    end;
                    ChildNode:=ParentNode.GetNextChild(ChildNode);
                    Next;
               end;
          end
          else if GrandChildNode<>Nil then
          begin
               while GrandChildNode<>Nil do
               begin
                    if  NewState=true then
                         GrandChildNode.StateIndex:=2

                    else if  NewState=false then
                    begin
                         GrandChildNode.StateIndex:=1;
                    end;
                    GrandChildNode:=ChildNode.GetNextChild(GrandChildNode);
                    Next;
               end;
          end
          else if li_childdepth > 0 then
          begin
               if li_childdepth=1 then
               begin
                    if  NewState=true then
                    Node.Parent.StateIndex:=2
                    else if NewState=False then
                    Node.Parent.StateIndex:=1;
               end
               else if li_childdepth=2 then
               begin
                    if  NewState=true then
                    Node.Parent.Parent.StateIndex:=2
                    else if  NewState=False then
                    Node.Parent.Parent.StateIndex:=1;
               end
               else if li_childdepth=3 then
               begin
                    if  NewState=true then
                    Node.Parent.Parent.Parent.StateIndex:=2
                    else if  NewState=true then
                    Node.Parent.Parent.Parent.StateIndex:=1;
               end
               else if li_childdepth=4 then
               begin
                    if  NewState=true then
                    Node.Parent.Parent.Parent.Parent.StateIndex:=2
                    else if  NewState=true then
                    Node.Parent.Parent.Parent.Parent.StateIndex:=1;
               end;


               if  NewState=true then
                    node.StateIndex:=2

               else if  NewState=false then
               begin
                    node.StateIndex:=1;
               end;
          end;

     end
     else if li_childdepth > 0 then
     begin
          if Node.HasAsParent(Node)=True then
          begin

          end;
          if  NewState=true then
               node.StateIndex:=2

          else if  NewState=false then
          begin
               node.StateIndex:=1;
          end;
     end;

end;

procedure TForm_MenuPrevilage.BB_ExitClick(Sender: TObject);
begin
     close;
end;

procedure TForm_MenuPrevilage.BB_OKClick(Sender: TObject);
var
     li_RootId,li_ParentId,li_childId,li_GrandChild,li_childId1,PREVILAGEID,li_depth,li_count,i:integer;
     ChildNode,RootNode,GrandChildNode,ParentNode:ttreenode;
     ls_RootNodeCaption,ls_ParentCaption,ls_ChildCaption,ls_GrandChildCaption:string;
     Query_Function:TOraQuery;
begin
     Query_Function:=TOraQuery.Create(nil);

     li_depth:=strtoint(Copy(tv_previlage.TopItem.Text, 1, pos('.', tv_previlage.TopItem.Text) - 1));
     if li_depth=1 then
          tv_previlage.TopItem.Parent.Selected:=true
     else if li_depth=2 then
          tv_previlage.TopItem.Parent.Parent.Selected:=true
     else if li_depth=3 then
          tv_previlage.TopItem.Parent.Parent.Parent.Selected:=true
     else if li_depth=4 then
          tv_previlage.TopItem.Parent.Parent.Parent.Parent.Selected:=true;

     RootNode:=tv_previlage.Selected;
     //RootNode:=tv_previlage.get
     //RootNode:=RootNode.getFirstChild;
     if RootNode=nil then
     ParentNode:=tv_previlage.Selected.getFirstChild;
     if ParentNode=nil then
     ChildNode:=tv_previlage.Selected.getFirstChild;
     if ChildNode=nil then
     GrandChildNode:=tv_previlage.Selected.getFirstChild;
     //childnode:=rootnode.Selected;
     //GrandChildNode:=childnode.getFirstChild;

     if RootNode <> nil then
     begin
          with Query_function do
          begin
               close;
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.Add('Delete from HS_MEPR_MENUPREVILAGE ');
               Sql.Add('where MEPR_USERID='+inttostr(pi_userid));
               //sql.SaveToFile('d:\ok1.txt');
               ExecSQL;
          end;

          while RootNode <> nil do
          begin
               //li_childId1 :=strtoint(Copy(childnode.Text, 1,pos('.', childnode.Text) - 1));
               li_RootId :=strtoint(Copy(RootNode.Text, 3, pos('-', RootNode.Text) - 3));
               ls_RootNodeCaption:=Trim(Copy(RootNode.Text, pos('-', RootNode.Text)+1,99));

               if  RootNode.StateIndex=2 then
               begin
                    PREVILAGEID := GetMaxID('HS_MEPR_MENUPREVILAGE', 'MEPR_PREVILAGEID');
                    with Query_function do
                    begin
                         close;
                         Session := DM_Hospital.DB;
                         sql.Clear;
                         sql.Add('Insert into HS_MEPR_MENUPREVILAGE(MEPR_PREVILAGEID,MEPR_USERID,MEPR_ROOTID,MEPR_NODETEXT,MEPR_CAPTIONNAME) ');
                         sql.Add('values('+inttostr(PREVILAGEID)+','+inttostr(pi_userid)+','+inttostr(li_RootId)+','+Quotedstr(RootNode.Text)+','+QuotedStr(ls_RootNodeCaption)+')');
                         //sql.SaveToFile('d:\ok.txt');
                         ExecSQL;
                    end;
               end
               else if  RootNode.StateIndex=1 then
               begin
                    with Query_function do
                    begin
                         close;
                         Session := DM_Hospital.DB;
                         sql.Clear;
                         sql.Add('Delete from HS_MEPR_MENUPREVILAGE ');
                         sql.Add('where MEPR_USERID='+inttostr(pi_userid));
                         sql.Add('and MEPR_NODETEXT='+Quotedstr(RootNode.Text));
                         //sql.SaveToFile('d:\ok1.txt');
                         ExecSQL;

                    end;
               end;

               ParentNode:=RootNode.getfirstchild;

               while ParentNode <> nil do
               begin
                    li_ParentId :=strtoint(Copy(ParentNode.Text, 3, pos('-', ParentNode.Text) - 3));
                    ls_ParentCaption:=Trim( Copy(ParentNode.Text, pos('-', ParentNode.Text)+1,99));
                    if  ParentNode.StateIndex=2 then
                    begin
                         PREVILAGEID := GetMaxID('HS_MEPR_MENUPREVILAGE', 'MEPR_PREVILAGEID');
                         with Query_function do
                         begin
                              close;
                              Session := DM_Hospital.DB;
                              sql.Clear;
                              sql.Add('Insert into HS_MEPR_MENUPREVILAGE(MEPR_PREVILAGEID,MEPR_USERID,MEPR_MODULEID,MEPR_ROOTID,MEPR_NODETEXT,MEPR_CAPTIONNAME,MEPR_AccessType) ');
                              sql.Add('values('+inttostr(PREVILAGEID)+','+inttostr(pi_userid)+','+IntToStr(li_ParentId)+','+inttostr(li_RootId)+','+Quotedstr(ParentNode.Text)+','+QuotedStr(ls_ParentCaption)+','+QuotedStr('MODULE')+')');
                              //sql.SaveToFile('d:\ok.txt');
                              ExecSQL;
                         end;
                    end
                    else if  ParentNode.StateIndex=1 then
                    begin
                         with Query_function do
                         begin
                              close;
                              Session := DM_Hospital.DB;
                              sql.Clear;
                              sql.Add('Delete from HS_MEPR_MENUPREVILAGE ');
                              sql.Add('where MEPR_USERID='+inttostr(pi_userid));
                              sql.Add('and MEPR_NODETEXT='+Quotedstr(ParentNode.Text));
                              ExecSQL;

                         end;
                    end;

                    ChildNode:=ParentNode.getfirstchild;
                    while ChildNode<>Nil do
                    begin
                         li_childId :=strtoint(Copy(ChildNode.Text, 3, pos('-', ChildNode.Text) - 3));
                         ls_ChildCaption:=Trim( Copy(ChildNode.Text, pos('-', ChildNode.Text)+1,99));
                         if  ChildNode.StateIndex=2 then
                         begin
                              PREVILAGEID := GetMaxID('HS_MEPR_MENUPREVILAGE', 'MEPR_PREVILAGEID');
                              with Query_function do
                              begin
                                   close;
                                   Session := DM_Hospital.DB;
                                   sql.Clear;
                                   sql.Add('Insert into HS_MEPR_MENUPREVILAGE(MEPR_PREVILAGEID,MEPR_USERID,MEPR_MENUID,MEPR_MODULEID,MEPR_ROOTID,MEPR_NODETEXT,MEPR_CAPTIONNAME,MEPR_AccessType) ');
                                   sql.Add('values('+inttostr(PREVILAGEID)+','+inttostr(pi_userid)+','+inttostr(li_childId)+','+inttostr(li_ParentId)+','+IntToStr(li_RootId)+','+Quotedstr(ChildNode.Text)+','+QuotedStr(ls_ChildCaption)+','+QuotedStr('MAINMENU')+')');
                                   //sql.SaveToFile('d:\ok.txt');
                                   ExecSQL;
                              end;
                         end
                         else if  ChildNode.StateIndex=1 then
                         begin
                              with Query_function do
                              begin
                                   close;
                                   Session := DM_Hospital.DB;
                                   sql.Clear;
                                   sql.Add('Delete from HS_MEPR_MENUPREVILAGE ');
                                   sql.Add('where MEPR_USERID='+inttostr(pi_userid));
                                   sql.Add('and MEPR_NODETEXT='+Quotedstr(ChildNode.Text));
                                   ExecSQL;

                              end;
                         end;
                         GrandChildNode:=ChildNode.getFirstChild;
                         while GrandChildNode<>Nil do
                         begin
                              li_GrandChild :=strtoint(Copy(GrandChildNode.Text, 3, pos('-', GrandChildNode.Text) - 3));
                              ls_GrandChildCaption:=Trim( Copy(GrandChildNode.Text, pos('-', GrandChildNode.Text)+1,99));
                              if  GrandChildNode.StateIndex=2 then
                              begin
                                   PREVILAGEID := GetMaxID('HS_MEPR_MENUPREVILAGE', 'MEPR_PREVILAGEID');
                                   with Query_function do
                                   begin
                                        close;
                                        Session := DM_Hospital.DB;
                                        sql.Clear;
                                        sql.Add('Insert into HS_MEPR_MENUPREVILAGE(MEPR_PREVILAGEID,MEPR_USERID,MEPR_SUBMENUID,MEPR_MENUID,MEPR_MODULEID,MEPR_ROOTID,MEPR_NODETEXT,MEPR_CAPTIONNAME,MEPR_AccessType) ');
                                        sql.Add('values('+inttostr(PREVILAGEID)+','+inttostr(pi_userid)+','+IntToStr(li_GrandChild)+','+IntToStr(li_childId)+','+inttostr(li_ParentId)+','+inttostr(li_RootId)+','+Quotedstr(GrandChildNode.Text)+','+QuotedStr(ls_GrandChildCaption)+','+QuotedStr('SUBMENU')+ ')');
                                        //sql.SaveToFile('d:\ok.txt');
                                        ExecSQL;
                                   end;
                              end
                              else if  GrandChildNode.StateIndex=1 then
                              begin
                                   with Query_function do
                                   begin
                                        close;
                                        Session := DM_Hospital.DB;
                                        sql.Clear;
                                        sql.Add('Delete from HS_MEPR_MENUPREVILAGE ');
                                        sql.Add('where MEPR_USERID='+inttostr(pi_userid));
                                        sql.Add('and MEPR_NODETEXT='+Quotedstr(GrandChildNode.Text));
                                        ExecSQL;

                                   end;
                              end;
                              GrandChildNode:=ChildNode.GetNextChild(GrandChildNode);
                              Next;
                         end;

                         ChildNode:=ParentNode.GetNextChild(ChildNode);
                         Next;
                    end;
                    ParentNode:=RootNode.GetNextChild(ParentNode);
                    Next;
               end;
               RootNode:=tv_previlage.TopItem.GetNextChild(ParentNode);
               inc(li_count);
               Next;
          end;
          ShowDoneMessage;
     end;
     Query_function.free;
     //ShowDoneMessage;

end;

end.
