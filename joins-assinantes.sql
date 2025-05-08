-- a) Listar os nomes dos assinantes, seguido dos dados do endereço e os telefones correspondentes.
SELECT a.nm_assinante, e.ds_endereco, e.complemento, e.bairro, e.cep, t.ds_tipo
FROM Assinante a
LEFT JOIN Endereco e ON a.cd_endereco = e.cd_endereco
LEFT JOIN Tipo_Assinante t ON a.cd_tipo = t.cd_tipo;

-- b) Listar os nomes dos assinantes, seguido do seu ramo, ordenados por ramo e posteriormente por nome.
SELECT a.nm_assinante, r.ds_ramo
FROM Assinante a
INNER JOIN Ramo r ON a.cd_ramo = r.cd_ramo
ORDER BY r.ds_ramo, a.nm_assinante;

-- c) Listar os assinantes do município de Pelotas que são do tipo residencial.
SELECT a.nm_assinante
FROM Assinante a
INNER JOIN Endereco e ON a.cd_endereco = e.cd_endereco
INNER JOIN Municipio m ON e.cd_municipio = m.cd_municipio
WHERE m.ds_municipio = 'Pelotas';

-- d) Listar os nomes dos assinantes que possuem mais de um telefone.
SELECT a.nm_assinante
FROM Assinante a
INNER JOIN Telefone t ON a.cd_assinante = t.cd_assinante
GROUP BY a.nm_assinante
HAVING COUNT(t.n_fone) > 1;

-- e) Listar os nomes dos assinantes seguido do número do telefone, tipo de assinante comercial, com endereço em Natal ou João Câmara.
SELECT a.nm_assinante, t.dd, t.n_fone, ta.ds_tipo, e.ds_endereco, m.ds_municipio
FROM Assinante a
INNER JOIN Telefone t ON a.cd_assinante = t.cd_assinante
INNER JOIN Tipo_Assinante ta ON a.cd_tipo = ta.cd_tipo
INNER JOIN Endereco e ON a.cd_endereco = e.cd_endereco
INNER JOIN Municipio m ON e.cd_municipio = m.cd_municipio
WHERE ta.ds_tipo = 'comercial' AND (m.ds_municipio = 'Natal' OR m.ds_municipio = 'João Câmara');
