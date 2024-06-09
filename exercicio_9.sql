delete from votacoes where IDZona IN (select z.IDZona from zonas_secoes as z inner join votacoes as v on z.IDZona = v.IDZona where z.Qtde_eleitores < 1000);
delete from zonas_secoes where IDZona IN (select z.IDZona from zonas_secoes as z where z.Qtde_eleitores < 1000)
