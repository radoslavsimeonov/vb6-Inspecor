Attribute VB_Name = "modUserDetails"
Option Explicit

Public Type Elements
    ID      As Integer
    Desc    As String
    Abbr    As String
    Serial  As String
End Type

Public RegisterHDDIndex As Integer
Public bWorkstationHasOwner As Boolean

Public Rank()        As Elements
Public UnitType()    As Elements

Private iWorkstationOwnerIndex As Integer

Public Property Get WorkstationOwnerIndex() As Integer
    WorkstationOwnerIndex = iWorkstationOwnerIndex
End Property

Property Let WorkstationOwnerIndex(iValue As Integer)
    iWorkstationOwnerIndex = iValue
End Property

Private Sub AddElement(el() As Elements, sAbbr As String, sDesc As String)
Dim i As Integer
    
    i = UBound(el)
    el(i).ID = i
    el(i).Abbr = sAbbr
    el(i).Desc = sDesc
    i = i + 1
    ReDim Preserve el(i)
End Sub

Public Sub FillElements2(el() As Elements, ctrl As Control)
Dim i As Integer
Dim LI As ListItem

    ctrl.ListItems.Clear
    ctrl.ListItems.Add , , ""
    
    For i = 0 To UBound(el) - 1
        Set LI = ctrl.ListItems.Add(, , el(i).Desc)
    Next i
End Sub

Public Function Fill_Rank(cmb As Control, Optional sCase As Integer = 0) As Elements()
Dim tmpStr() As String
ReDim Rank(0)
    
    AddElement Rank, "OR-1", RankSplit("Private;������ 1 ����", sCase)
    AddElement Rank, "OR-4", RankSplit("Lance Corporal;������ ������", sCase)
'    AddElement Rank, "OR-4", RankSplit("�������� 1 ����;������ ������ 1 ����", sCase)
'    AddElement Rank, "OR-4", RankSplit("�������� 2 ����;������ ������ 2 ����", sCase)
    AddElement Rank, "OR-5", RankSplit("Corporal;�������� II ������", sCase)
    AddElement Rank, "OR-6", RankSplit("Sergeant;�������� I ������", sCase)
    AddElement Rank, "OR-7", RankSplit("Staff/Colour Sergeant;������ ��������", sCase)
    AddElement Rank, "OR-8", RankSplit("Warrant Officer Class 2;������", sCase)
    AddElement Rank, "OR-9", RankSplit("Warrant Officer Class 1;��������� ��������", sCase)
'    AddElement Rank, "OR-9", RankSplit("��������� �������� 1 ����;��������� �������� 1 ����", sCase)
'    AddElement Rank, "OR-9", RankSplit("��������� �������� 2 ����;��������� �������� 2 ����", sCase)
    AddElement Rank, "OF-1", RankSplit("Officer Cadet;���������", sCase)
    AddElement Rank, "OF-1", RankSplit("Lieutenant;������ ���������", sCase)
    AddElement Rank, "OF-2", RankSplit("Captain;�������-���������", sCase)
    AddElement Rank, "OF-3", RankSplit("Major;������� III ����", sCase)
    AddElement Rank, "OF-4", RankSplit("Lieutenant Colonel;������� II ����", sCase)
    AddElement Rank, "OF-5", RankSplit("Colonel;������� I ����", sCase)
    AddElement Rank, "OF-6", RankSplit("Brigadier;�������", sCase)
    AddElement Rank, "OF-7", RankSplit("Major General;�������������", sCase)
    AddElement Rank, "OF-8", RankSplit("Lieutenant General;�����������", sCase)
    AddElement Rank, "OF-9", RankSplit("General;�������", sCase)
    AddElement Rank, "CIV", RankSplit("Civilian;������� ��������", sCase)

    Fill_Rank = Rank
    FillElements2 Rank, cmb
End Function

Private Function RankSplit(str As String, Pos As Integer) As String
Dim tmpStr() As String
    
    tmpStr = Split(str, ";")
    RankSplit = tmpStr(Pos)
End Function

Public Function Fill_UnitType(cmb As Control) As Elements()
ReDim UnitType(0)

    AddElement UnitType, "MOD", "������������ �� ���������"
    AddElement UnitType, "JFC", "��������� ���������� �� ������"
    AddElement UnitType, "LF", "��������� ������"
    AddElement UnitType, "AF", "�������������� ����"
    AddElement UnitType, "NAVY", "������������ ����"
    AddElement UnitType, "SCI", "������-�������� ��� �������������"
    AddElement UnitType, "DRU", "�����, ����� ��������� �� ���������"

    Fill_UnitType = UnitType
    FillElements2 UnitType, cmb
End Function

Public Sub SwitchForcesRanks(iList As Integer, cmb As Control)

    Dim tmpIdx As Integer
    
    tmpIdx = cmb.SelectedItem.Index
    
    cmb.Clear
    Rank = Fill_Rank(cmb, iList)
    If Len(cmb.Text) > 0 Then cmb.ListIndex = tmpIdx
    
End Sub

