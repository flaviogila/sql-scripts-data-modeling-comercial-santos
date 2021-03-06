--restrições 

ALTER TABLE PESSOA
ADD CONSTRAINT CK_TIPO_CLI
CHECK (TIPO_PESSOA IN ('CLF','CLJ','FAB'));


ALTER TABLE FORNECEDORES
ADD CONSTRAINT CK_FORMA_ENTREGA
CHECK (forma_entrega IN ('TRANSPORTADORA','CORREIO','PROPIO_TRA,OUTROS'));

ALTER TABLE LOGRADOURO
ADD CONSTRAINT CK_LOGRADOURO
CHECK (tipo_logra IN ('AVE','VIL','RUA','PRC'));

ALTER TABLE CIDADE
ADD CONSTRAINT CK_UF
CHECK (uf_cid IN ('SP','RJ','PR','MG'));

ALTER TABLE PEDIDO
ADD CONSTRAINT UQ_PEDIDO
UNIQUE (num_ped);

ALTER TABLE PEDIDO_PRODUTO
ADD CONSTRAINT CK_PAGAMENTO
CHECK (troca_prod IN ('S','N'));

ALTER TABLE PAGAMENTO
ADD CONSTRAINT CK_PAGAMENTO
CHECK (nome_tipo_pag IN ('DINHEIRO','CREDITO','DINHEIRO'));

ALTER TABLE PRODUTO
ADD CONSTRAINT UQ_PRODUTO
UNIQUE (REF_PROD);

ALTER TABLE PRODUTO
ADD CONSTRAINT CK_PRODUTO
CHECK (ATIVO_S_N IN ('S','N'));
