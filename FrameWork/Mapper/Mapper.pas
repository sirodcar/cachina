unit Mapper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, RTTI,  DB, GenericEntidade, strUtils;

type
   TMapper = class
   private
     class function GetTableName(Obj: TGenericEntidade): String; static;
     class function GetKeyField(Obj: TGenericEntidade): String; static;

   public
      class var Contexto : TRttiContext;
      class var TypObj   : TRttiType;

      class procedure Send_ComponentToObject(Form:TForm;
                                             Objeto: TGenericEntidade);static;
      class procedure Send_ObjectToComponent( Objeto: TGenericEntidade;
                                              Form:TForm);static;
      class procedure Send_ObjectToDataSet( Objeto: TGenericEntidade;
                                            DataSet: TDataSet;
                                            State:TDataSetState);static;
      class procedure Send_DataSetToObject(DataSet: TDataSet;
                                           Objeto: TGenericEntidade); static;
      class procedure Send_DataSetToComponent( DataSet: TDataSet;
                                               Form: TForm); static;
      class function Parser_SQLInsert(Objeto: TGenericEntidade):string;static;
      class function Parser_SQLUpdate(Objeto: TGenericEntidade):string;static;
      class function Parser_SQLDelete(Objeto: TGenericEntidade): string; static;
      class function Parser_SQLSelect(Entidade: TGenericEntidade; where : string = ''): string; static;


      class function Parser_SQLSelectId(Entidade: TGenericEntidade; id : string = ''): string;

      class procedure SetValue(Form:TForm;
                               Objeto: TGenericEntidade;
                               Propriedade,
                               value: string);
   end;

implementation

uses AtributoEntidade;

class procedure TMapper.Send_ComponentToObject(Form:TForm;
                                               Objeto: TGenericEntidade);
var
   j  : Integer;
   Prop     : TRttiProperty;
   Atributo : TCustomAttribute;
begin
   try
      Contexto := TRttiContext.Create;
      for j := 0 to Form.componentcount -1 do
      begin
         TypObj := Contexto.GetType(Objeto.ClassInfo);
         for Prop in TypObj.GetProperties do
         begin
            if Prop.Name = Form.components[j].Name  then
            begin
               Prop.SetValue( Objeto , TEdit(Form.components[j]).Text );
               TEdit(Form.components[j]).Text:= '';
            end;
         end;
      end;
   finally
      Contexto.Free;
   end;
end;

class procedure TMapper.Send_ObjectToComponent( Objeto: TGenericEntidade;
                                                Form:TForm);
var
   j  : Integer;
   Prop     : TRttiProperty;
begin
   try
      Contexto := TRttiContext.Create;
      for j := 0 to Form.componentcount -1 do
      begin
         TypObj := Contexto.GetType(Objeto.ClassInfo);
         for Prop in TypObj.GetProperties do
         begin
            if Prop.Name = Form.components[j].Name then
            begin
               TEdit(Form.components[j]).text := Prop.GetValue(Objeto).AsString;
            end;
         end;
      end;
   finally
     Contexto.Free;
   end;
end;

class procedure TMapper.Send_ObjectToDataSet( Objeto: TGenericEntidade;
                                              DataSet: TDataSet;
                                              State:TDataSetState );
var
   j  : Integer;
   Prop     : TRttiProperty;
begin
   try
      if State = dsInsert then
         DataSet.append
      else
         DataSet.edit;

      Contexto := TRttiContext.Create;
      for j := 0 to DataSet.Fieldcount -1 do
      begin
         TypObj := Contexto.GetType(Objeto.ClassInfo);
         for Prop in TypObj.GetProperties do
         begin
            if Prop.Name = DataSet.Fields[j].fieldname then
            begin
               DataSet.FieldByName(Prop.Name).AsString  := Prop.GetValue(Objeto).AsString;
            end;
         end;
      end;

      DataSet.post;
   finally
     Contexto.Free;
   end;
end;

class procedure TMapper.SetValue(Form:TForm;
                                 Objeto: TGenericEntidade;
                                 Propriedade,
                                 Value: string);
var
   j  : Integer;
   Prop     : TRttiProperty;
   Atributo : TCustomAttribute;
begin
   try
      Contexto := TRttiContext.Create;
      for j := 0 to Form.componentcount -1 do
      begin
         TypObj := Contexto.GetType(Objeto.ClassInfo);
         for Prop in TypObj.GetProperties do
         begin
            if (Prop.Name = Form.components[j].Name) and (Propriedade = Prop.Name)  then
            begin
               if value <> '' then
                  Prop.SetValue( Objeto , Value )
               else
                  Prop.SetValue( Objeto , TEdit(Form.components[j]).Text );
            end;
         end;
      end;
   finally
      Contexto.Free;
   end;
end;

class procedure TMapper.Send_DataSetToComponent( DataSet: TDataSet;
                                                 Form: TForm);
var
   j  : Integer;
   Prop     : TRttiProperty;
begin
   try
      Contexto := TRttiContext.Create;
      for j := 0 to Form.componentcount -1 do
      begin
         TypObj := Contexto.GetType(DataSet.ClassInfo);
         if DataSet.FindField(Form.components[j].Name) <> nil then
         begin
            TEdit(Form.components[j]).text := DataSet.FieldByName(Form.components[j].Name).AsString;

         end;
      end;
   finally
     Contexto.Free;
   end;
end;

class procedure TMapper.Send_DataSetToObject( DataSet:TDataSet;
                                              Objeto: TGenericEntidade);
var
   j  : Integer;
   Prop     : TRttiProperty;
   Atributo : TCustomAttribute;
begin
   try
      Contexto := TRttiContext.Create;
      for j := 0 to DataSet.fieldcount -1 do
      begin
         TypObj := Contexto.GetType(Objeto.ClassInfo);
         for Prop in TypObj.GetProperties do
         begin
            if Prop.Name = DataSet.fields[j].FieldName  then
            begin
               Prop.SetValue( Objeto , DataSet.FieldByName(Prop.Name ).AsString );

            end;
         end;
      end;
   finally
     Contexto.Free;
   end;
end;

class function TMapper.GetKeyField(Obj: TGenericEntidade): String;
var
   Contexto: TRttiContext;
   TypObj: TRttiType;
   Atributo: TCustomAttribute;
   strTable: String;
begin
   try
      Contexto := TRttiContext.Create;
      TypObj := Contexto.GetType(TObject(Obj).ClassInfo);
      for Atributo in TypObj.GetAttributes do
      begin
         if Atributo is KeyField then
         begin
            result:= TableName(Atributo).Name;
         end;
      end;
   finally
     Contexto.Free;
   end;
end;

class function TMapper.GetTableName(Obj: TGenericEntidade): String;
var
   Contexto: TRttiContext;
   TypObj: TRttiType;
   Atributo: TCustomAttribute;
   strTables: String;
begin
   try
      Contexto := TRttiContext.Create;
      TypObj := Contexto.GetType(TObject(Obj).ClassInfo);
      for Atributo in TypObj.GetAttributes do
      begin
         if (Atributo is TableName) or ( Atributo is JOIN) then
         begin
            strTables := strTables +' '+TableName(Atributo).Name;
         end;
      end;
      result:= strTables
   finally
     Contexto.Free;
   end;
end;

class function TMapper.Parser_SQLInsert(Objeto: TGenericEntidade): string;
var
   Prop   : TRttiProperty;
   Values : string;
   Fields : string;
begin
   try
      Contexto := TRttiContext.Create;
      TypObj := Contexto.GetType(Objeto.ClassInfo);
      for Prop in TypObj.GetProperties do
      begin
         if Fields = '' then
         begin
            Fields := Prop.Name;
            Values := quotedstr(Prop.GetValue(Objeto).AsString);
         end
         else
         begin
            Fields := Fields +' , '+ Prop.Name;
            Values := Values +' , '+ quotedstr(Prop.GetValue(Objeto).AsString);
         end;
      end;
      result := ' INSERT INTO '+ GetTableName( Objeto ) +' ('+Fields +') VALUES ('+Values+')';
   finally
      Contexto.Free;
   end;
end;

class function TMapper.Parser_SQLSelect(Entidade: TGenericEntidade;Where : string  = ''): string;
var
   Prop   : TRttiProperty;
   Values : string;
   Fields : string;
   Atributo: TCustomAttribute;
begin
   try
      Contexto := TRttiContext.Create;
      TypObj := Contexto.GetType(Entidade.ClassInfo);
      for Prop in TypObj.GetProperties do
      begin
          if Fields = '' then
           Fields := Fields + Prop.Name
        else
           Fields := Fields +' , '+ Prop.Name;
      end;
      result := 'Select  '+ Fields +' From '+ GetTableName( Entidade )+ifthen( Where <> '', ' where '+ Where, '');
   finally
      Contexto.Free;
   end;
end;

class function TMapper.Parser_SQLSelectId(Entidade: TGenericEntidade; id : string = ''): string;
var
   Prop   : TRttiProperty;
   Values : string;
   Fields : string;
   Atributo: TCustomAttribute;
   Where: string;
begin
   try
      Contexto := TRttiContext.Create;
      TypObj := Contexto.GetType(Entidade.ClassInfo);
      for Prop in TypObj.GetProperties do
      begin
       for Atributo in Prop.GetAttributes do
        begin
           if Atributo is KeyField then
           begin
              Where := KeyField(Atributo).Name + ' = '+ ifthen( id <> '', id, Prop.GetValue(Entidade).AsString );
           end;
        end;
        if Fields = '' then
           Fields := Fields + Prop.Name
        else
           Fields := Fields +' , '+ Prop.Name;
      end;
      result := 'Select  '+ Fields +' From '+ GetTableName( Entidade )+' where '+ Where ;
   finally
      Contexto.Free;
   end;
end;

class function TMapper.Parser_SQLUpdate(Objeto: TGenericEntidade): string;
var
   Prop   : TRttiProperty;
   Values : string;
   Fields : string;
   Atributo: TCustomAttribute;
   Where: string;
begin
  try
     Contexto := TRttiContext.Create;
     TypObj := Contexto.GetType(Objeto.ClassInfo);
     for Prop in TypObj.GetProperties do
     begin
       for Atributo in Prop.GetAttributes do
       begin
          if Atributo is KeyField then
          begin
             Where := KeyField(Atributo).Name + ' = '+Prop.GetValue(Objeto).AsString
          end;
       end;

       if Fields = '' then
          Fields := Fields + Prop.Name +' = '+quotedstr(Prop.GetValue(Objeto).AsString)
       else
          Fields := Fields +' , '+ Prop.Name +' = '+quotedstr(Prop.GetValue(Objeto).AsString);
     end;
     result := 'Update '+ GetTableName( Objeto ) +' Set '+ Fields +
               ' where '+ Where ;
  finally
     Contexto.Free;
  end;
end;


class function TMapper.Parser_SQLDelete(Objeto: TGenericEntidade): string;
var
   Prop   : TRttiProperty;
   Values : string;
   Atributo: TCustomAttribute;
   Where: string;
begin
   try
      Contexto := TRttiContext.Create;
      TypObj := Contexto.GetType(Objeto.ClassInfo);
      for Prop in TypObj.GetProperties do
      begin
         for Atributo in Prop.GetAttributes do
         begin
            if Atributo is KeyField then
            begin
               Where := KeyField(Atributo).Name + ' = '+ Prop.GetValue(Objeto).AsString
            end;
         end;
      end;
      result := 'Delete From '+ GetTableName( Objeto ) +' where '+Where;
   finally
      Contexto.Free;
   end;
end;

end.

