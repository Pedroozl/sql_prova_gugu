select
    c.Numero as numero_candidato,
    c.Nome as nome_candidato,
    cg.NomeCargo as nome_cargo,
    p.Nome as nome_partido,
    (
        select sum(Quantidade)
        from votacoes
        where IDCandidato = c.Numero
    ) as quantidade_de_votos
from candidatos as c
    join cargos as cg
        on c.IDCargo = cg.IDCargo
    join partidos as p
        on c.IDPartido = p.Numero
    join votacoes as v
        on c.Numero = v.IDCandidato
where v.Quantidade > 10000
