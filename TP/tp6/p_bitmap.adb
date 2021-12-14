with Text_IO; use Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body P_Bitmap is

    procedure ajouter (val : Float ; tabf: in out Tab_Float ; bitmap: in out Tab_Boolean ;  imin : in out Integer ; imax : in out Integer ; length : in out Integer) is
    shouldAdd : Boolean;
    begin
        shouldAdd := False;
        for i in imin..imax loop
            if not shouldAdd and then not bitmap(i) then
                tabf(i) := val;
                bitmap(i) := True;
                shouldAdd := True;
            end if;
        end loop;

        if not shouldAdd then
            for i in reverse 1..(imin-1) loop
                if not shouldAdd and then not bitmap(i) then
                    for j in i..(imin-1) loop
                        tabf(j) := tabf(j+1);
                        bitmap(j) := bitmap(j+1);
                    end loop;
                    tabf(imin-1) := val;
                    bitmap(imin-1) := True;
                    shouldAdd := True;
                    imin := imin-1;
                end if;
            end loop;
        end if;

        if not shouldAdd then
            for i in imax..CMAX loop
                if not shouldAdd and then not bitmap(i) then
                    for j in reverse (imax+1)..CMAX loop
                        tabf(j) := tabf(j-1);
                        bitmap(j) := bitmap(j-1);
                    end loop;
                    tabf(imax+1) := val;
                    bitmap(imax+1) := True;
                    shouldAdd := True;
                    imax := imax+1;
                end if;
            end loop;
        end if;

        if shouldAdd then
            length := length + 1;
        end if;
    end ajouter;

    function rechercher (val : Float; tabf: in Tab_Float ;bitmap: in Tab_Boolean ; imin : in Integer ; imax : in Integer) return Integer is
    ind : Integer;
    begin
        ind := 0;

        for i in imin..imax loop
            if ind = 0 and then bitmap(i) and then tabf(i) = val then
                ind := i;
            end if;
        end loop;

        return ind;
    end rechercher;


    procedure suppression (ind : Integer ; bitmap: in out Tab_Boolean ;imin : in out Integer ; imax : in out Integer ; length : in out Integer) is
    begin
        bitmap(ind) := False;

        if ind <= imax and ind >= imin then
            length := length - 1;
        end if;

        if ind = imin and then imax /= imin then
            imin := imin + 1;
        end if;

        if ind = imax and then imax /= imin then
            imax := imax - 1;
        end if;
    
    end suppression;


    procedure afficher (tabf: in Tab_Float ; bitmap: in Tab_Boolean ;imin : in Integer ;imax : in Integer ; length : in Integer) is
    begin
        Put("Indice minimum :");
        Put(imin);
        New_Line(1);
        Put("Indice maximum :");
        Put(imax);
        New_Line(1);

        Put("|---------------|");
        New_Line(1);
        Put("INDICES :    ");
        Put("Tab_Boolean  ");
        Put(" Tab_Float");
        New_Line(1);
        Put_Line("|---------------|");
        for i in imin..imax loop
            Put(i);
            Put("   ");
            if bitmap(i) then
                Put("true");
            else
                Put("false");
            end if;
            Put("   ");
            Put(tabf(i));
            New_Line(1);
        end loop;
        Put_Line("|---------------|");
        New_Line(1);
        Put("Nb effectifs éléments : ");
        Put(length);
        Put_Line("Valeurs");
        New_Line(1);
        Put_Line("========");
        for i in imin..imax loop
            if bitmap(i) then
                Put(tabf(i));
            end if;
            New_Line(1);
        end loop;
        Put_Line("========");
    end afficher;


    procedure compacter (tabf: in out Tab_Float ; bitmap: in out Tab_Boolean ;imin : in Integer ;imax : in out Integer) is
    indice : Integer;
    begin
        indice := imin;
        while indice <= imax loop
            if not bitmap(indice) then
                for j in indice..(CMAX-1) loop
                    bitmap(j) := bitmap(j+1);
                    tabf(j) := tabf(j+1);
                end loop;
                imax := imax - 1;
            else
                indice := indice+1;
            end if;
        end loop;
    end compacter;

end P_Bitmap;



