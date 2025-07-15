
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
'Segtruck' AS cooperativa

FROM silver.insurance_registration ir
LEFT OUTER JOIN silver.insurance_reg_set irs ON irs.parent=ir.id
LEFT OUTER JOIN silver.insurance_reg_set_coverage irsc ON irsc.parent = irs.id
LEFT OUTER JOIN silver.insurance_reg_set_cov_trailer irsct ON irsct.parent = irsc.id

LEFT OUTER JOIN silver.cliente cli ON cli.codigo = ir.customer_id
LEFT OUTER JOIN silver.representante r ON r.codigo = irs.id_unity
LEFT OUTER JOIN silver.insurance_status ins ON ins.id = irs.id_status
LEFT OUTER JOIN silver.catalogo cat ON cat.cnpj_cpf = cli.cnpj_cpf
LEFT OUTER JOIN silver.catalogo cata ON cata.cnpj_cpf = r.cnpj_cpf
LEFT OUTER JOIN silver.insurance_vehicle iv ON iv.id=irsc.id_vehicle
LEFT OUTER JOIN silver.insurance_trailer it ON it.id=irsct.id_trailer
LEFT OUTER JOIN silver.insurance_trailer itt ON itt.id=irsc.id_trailer


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
'Stcoop' AS cooperativa

FROM stcoop.insurance_registration ir
LEFT OUTER JOIN stcoop.insurance_reg_set irs ON irs.parent=ir.id
LEFT OUTER JOIN stcoop.insurance_reg_set_coverage irsc ON irsc.parent = irs.id
LEFT OUTER JOIN stcoop.insurance_reg_set_cov_trailer irsct ON irsct.parent = irsc.id

LEFT OUTER JOIN stcoop.cliente cli ON cli.codigo = ir.customer_id
LEFT OUTER JOIN stcoop.representante r ON r.codigo = irs.id_unity
LEFT OUTER JOIN stcoop.insurance_status ins ON ins.id = irs.id_status
LEFT OUTER JOIN stcoop.catalogo cat ON cat.cnpj_cpf = cli.cnpj_cpf
LEFT OUTER JOIN stcoop.catalogo cata ON cata.cnpj_cpf = r.cnpj_cpf
LEFT OUTER JOIN stcoop.insurance_vehicle iv ON iv.id=irsc.id_vehicle
LEFT OUTER JOIN stcoop.insurance_trailer it ON it.id=irsct.id_trailer
LEFT OUTER JOIN stcoop.insurance_trailer itt ON itt.id=irsc.id_trailer


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
'Viavante' AS cooperativa

FROM viavante.insurance_registration ir
LEFT OUTER JOIN viavante.insurance_reg_set irs ON irs.parent=ir.id
LEFT OUTER JOIN viavante.insurance_reg_set_coverage irsc ON irsc.parent = irs.id
LEFT OUTER JOIN viavante.insurance_reg_set_cov_trailer irsct ON irsct.parent = irsc.id

LEFT OUTER JOIN viavante.cliente cli ON cli.codigo = ir.customer_id
LEFT OUTER JOIN viavante.representante r ON r.codigo = irs.id_unity
LEFT OUTER JOIN viavante.insurance_status ins ON ins.id = irs.id_status
LEFT OUTER JOIN viavante.catalogo cat ON cat.cnpj_cpf = cli.cnpj_cpf
LEFT OUTER JOIN viavante.catalogo cata ON cata.cnpj_cpf = r.cnpj_cpf
LEFT OUTER JOIN viavante.insurance_vehicle iv ON iv.id=irsc.id_vehicle
LEFT OUTER JOIN viavante.insurance_trailer it ON it.id=irsct.id_trailer
LEFT OUTER JOIN viavante.insurance_trailer itt ON itt.id=irsc.id_trailer


WHERE CAST(COALESCE(iv.board, it.board, itt.board, iv.chassi, it.chassi, itt.chassi) AS VARCHAR) IS NOT NULL
AND ins.id IN (7,11, 5, 10, 16, 17, 22, 23)
