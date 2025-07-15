
SELECT DISTINCT
CAST(
    CONCAT(
        CAST(ir.id AS VARCHAR),
        CAST(irs.id AS VARCHAR),
        '1') 
    AS VARCHAR) AS id_conjunto,
CAST(ir.id AS INTEGER) AS matricula,
CAST(irs.id AS INTEGER) AS conjunto,
CAST(irs.date_activation AS DATE) as data_ativacao,
CAST(irs.data_registration AS DATE) as data_registro, --data_registration
CAST(COALESCE(irs.date_inital_effect, DATE_ADD('year', -1, irs.date_final_effect)) AS DATE) AS data_vigencia,
CAST(irs.date_cancellation AS DATE) AS data_de_cancelamento,
CAST(cat.nome AS VARCHAR) AS associado,
CAST(COALESCE(iv.board, it.board, itt.board) AS VARCHAR) AS placa,
CAST(COALESCE(iv.chassi,it.chassi,itt.chassi) AS VARCHAR) as chassi,
CAST(COALESCE(iv.id,it.id,itt.id) AS VARCHAR) as id_placa,
CAST(cata.fantasia AS VARCHAR) AS unidade,
CAST(ins.description AS VARCHAR) AS "status",
isss.description as "status_beneficio",
c.DESCRIPTION as "categoria",
b.description as "beneficio",
tc.DESCRIPTION as "tipo_categoria",
'Segtruck' AS cooperativa

FROM silver.insurance_registration ir
LEFT JOIN silver.insurance_reg_set irs ON irs.parent=ir.id
LEFT JOIN silver.insurance_reg_set_coverage irsc ON irsc.parent = irs.id
LEFT JOIN silver.insurance_reg_set_cov_trailer irsct ON irsct.parent = irsc.id

LEFT JOIN silver.cliente cli ON cli.codigo = ir.customer_id
LEFT JOIN silver.representante r ON r.codigo = irs.id_unity
LEFT JOIN silver.insurance_status ins ON ins.id = irs.id_status
LEFT JOIN silver.catalogo cat ON cat.cnpj_cpf = cli.cnpj_cpf
LEFT JOIN silver.catalogo cata ON cata.cnpj_cpf = r.cnpj_cpf
LEFT JOIN silver.insurance_vehicle iv ON iv.id=irsc.id_vehicle
LEFT JOIN silver.insurance_trailer it ON it.id=irsct.id_trailer
LEFT JOIN silver.insurance_trailer itt ON itt.id=irsc.id_trailer

LEFT JOIN silver.insurance_status isss ON isss.id = irsc.id_status
LEFT JOIN silver.price_list_benefits plb ON plb.id = irsc.id_price_list
LEFT JOIN silver.type_category tc ON tc.id = plb.id_type_category
LEFT JOIN silver.category c ON c.id = tc.id_category
LEFT JOIN silver.benefits b ON b.id = c.id_benefits


WHERE CAST(COALESCE(iv.board, it.board, itt.board, iv.chassi, it.chassi, itt.chassi) AS VARCHAR) IS NOT NULL
AND ins.id IN (7,11, 5, 10, 16, 17, 22, 23)

-------------------------------------------------------------
UNION ALL
-------------------------------------------------------------

SELECT DISTINCT
CAST(
    CONCAT(
        CAST(ir.id AS VARCHAR),
        CAST(irs.id AS VARCHAR),
        '2') 
    AS VARCHAR) AS id_conjunto,
CAST(ir.id AS INTEGER) AS matricula,
CAST(irs.id AS INTEGER) AS conjunto,
CAST(irs.date_activation AS DATE) as data_ativacao,
CAST(irs.data_registration AS DATE) as data_registro, --data_registration
CAST(COALESCE(irs.date_inital_effect, DATE_ADD('year', -1, irs.date_final_effect)) AS DATE) AS data_vigencia,
CAST(irs.date_cancellation AS DATE) AS data_de_cancelamento,
CAST(cat.nome AS VARCHAR) AS associado,
CAST(COALESCE(iv.board, it.board, itt.board) AS VARCHAR) AS placa,
CAST(COALESCE(iv.chassi,it.chassi,itt.chassi) AS VARCHAR) as chassi,
CAST(COALESCE(iv.id,it.id,itt.id) AS VARCHAR) as id_placa,
CAST(cata.fantasia AS VARCHAR) AS unidade,
CAST(ins.description AS VARCHAR) AS "status",
isss.description as "status_beneficio",
c.DESCRIPTION as "categoria",
b.description as "beneficio",
tc.DESCRIPTION as "tipo_categoria",
'Stcoop' AS cooperativa

FROM stcoop.insurance_registration ir
LEFT JOIN stcoop.insurance_reg_set irs ON irs.parent=ir.id
LEFT JOIN stcoop.insurance_reg_set_coverage irsc ON irsc.parent = irs.id
LEFT JOIN stcoop.insurance_reg_set_cov_trailer irsct ON irsct.parent = irsc.id

LEFT JOIN stcoop.cliente cli ON cli.codigo = ir.customer_id
LEFT JOIN stcoop.representante r ON r.codigo = irs.id_unity
LEFT JOIN stcoop.insurance_status ins ON ins.id = irs.id_status
LEFT JOIN stcoop.catalogo cat ON cat.cnpj_cpf = cli.cnpj_cpf
LEFT JOIN stcoop.catalogo cata ON cata.cnpj_cpf = r.cnpj_cpf
LEFT JOIN stcoop.insurance_vehicle iv ON iv.id=irsc.id_vehicle
LEFT JOIN stcoop.insurance_trailer it ON it.id=irsct.id_trailer
LEFT JOIN stcoop.insurance_trailer itt ON itt.id=irsc.id_trailer

LEFT JOIN stcoop.insurance_status isss ON isss.id = irsc.id_status
LEFT JOIN stcoop.price_list_benefits plb ON plb.id = irsc.id_price_list
LEFT JOIN stcoop.type_category tc ON tc.id = plb.id_type_category
LEFT JOIN stcoop.category c ON c.id = tc.id_category
LEFT JOIN stcoop.benefits b ON b.id = c.id_benefits


WHERE CAST(COALESCE(iv.board, it.board, itt.board, iv.chassi, it.chassi, itt.chassi) AS VARCHAR) IS NOT NULL
AND ins.id IN (7,11, 5, 10, 16, 17, 22, 23)

-------------------------------------------------------------
UNION ALL
-------------------------------------------------------------

SELECT DISTINCT
CAST(
    CONCAT(
        CAST(ir.id AS VARCHAR),
        CAST(irs.id AS VARCHAR),
        '3') 
    AS VARCHAR) AS id_conjunto,
CAST(ir.id AS INTEGER) AS matricula,
CAST(irs.id AS INTEGER) AS conjunto,
CAST(irs.date_activation AS DATE) as data_ativacao,
CAST(irs.data_registration AS DATE) as data_registro, --data_registration
CAST(COALESCE(irs.date_inital_effect, DATE_ADD('year', -1, irs.date_final_effect)) AS DATE) AS data_vigencia,
CAST(irs.date_cancellation AS DATE) AS data_de_cancelamento,
CAST(cat.nome AS VARCHAR) AS associado,
CAST(COALESCE(iv.board, it.board, itt.board) AS VARCHAR) AS placa,
CAST(COALESCE(iv.chassi,it.chassi,itt.chassi) AS VARCHAR) as chassi,
CAST(COALESCE(iv.id,it.id,itt.id) AS VARCHAR) as id_placa,
CAST(cata.fantasia AS VARCHAR) AS unidade,
CAST(ins.description AS VARCHAR) AS "status",
isss.description as "status_beneficio",
c.DESCRIPTION as "categoria",
b.description as "beneficio",
tc.DESCRIPTION as "tipo_categoria",

'Viavante' AS cooperativa

FROM viavante.insurance_registration ir
LEFT JOIN viavante.insurance_reg_set irs ON irs.parent=ir.id
LEFT JOIN viavante.insurance_reg_set_coverage irsc ON irsc.parent = irs.id
LEFT JOIN viavante.insurance_reg_set_cov_trailer irsct ON irsct.parent = irsc.id

LEFT JOIN viavante.cliente cli ON cli.codigo = ir.customer_id
LEFT JOIN viavante.representante r ON r.codigo = irs.id_unity
LEFT JOIN viavante.insurance_status ins ON ins.id = irs.id_status
LEFT JOIN viavante.catalogo cat ON cat.cnpj_cpf = cli.cnpj_cpf
LEFT JOIN viavante.catalogo cata ON cata.cnpj_cpf = r.cnpj_cpf
LEFT JOIN viavante.insurance_vehicle iv ON iv.id=irsc.id_vehicle
LEFT JOIN viavante.insurance_trailer it ON it.id=irsct.id_trailer
LEFT JOIN viavante.insurance_trailer itt ON itt.id=irsc.id_trailer

LEFT JOIN viavante.insurance_status isss ON isss.id = irsc.id_status
LEFT JOIN viavante.price_list_benefits plb ON plb.id = irsc.id_price_list
LEFT JOIN viavante.type_category tc ON tc.id = plb.id_type_category
LEFT JOIN viavante.category c ON c.id = tc.id_category
LEFT JOIN viavante.benefits b ON b.id = c.id_benefits


WHERE CAST(COALESCE(iv.board, it.board, itt.board, iv.chassi, it.chassi, itt.chassi) AS VARCHAR) IS NOT NULL
AND ins.id IN (7,11, 5, 10, 16, 17, 22, 23)
