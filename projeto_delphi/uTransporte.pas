unit uTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;
  
type
   Transporte = class
  private
    FMetros: Integer;
    FNome: string;
    procedure Setmetros(const Value: Integer);
    procedure Setnome(const Value: string);

   protected
     property Nome:string read FNome write SetNome;
     property Metros: Integer read FMetros write SetMetros;
     procedure Move();virtual;
   end;

   carro = class(Transporte)

     procedure Move(); override;
   end;

   Aviao = class(Transporte)
     procedure Move(); override;
   end;
implementation


{ Transporte }

procedure Transporte.Move;
begin
  ShowMessage(FNome + ' moveu ' + IntToStr(FMetros) + 'm.');
end;

procedure Transporte.Setmetros(const Value: Integer);
begin
  FMetros := Value;
end;

procedure Transporte.Setnome(const Value: string);
begin
  FNome := Value;
end;

{ carro }

procedure carro.Move;
begin
  FNome := 'Porche 911';
  FMetros:= 100;
  inherited;
end;

{ Aviao }

procedure Aviao.Move;
begin
  FNome := 'Boing 747';
  FMetros:= 2500;

  inherited;
end;

end.
