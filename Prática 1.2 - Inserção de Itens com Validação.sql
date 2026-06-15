$$DELIMITER 

CREATE PROCEDURE sp_adicionar_item_venda(
    IN p_venda_id INT,
    IN p_produto_id INT,
    IN p_qtde_venda INT,
    OUT p_itens_vendas INT
)

BEGIN
    DECLARE v_estoque 
    INSERT INTO itens_vendas(
        qtde_venda, 
        valor_venda, 
        venda_id, 
        produto_id, 
        data_criacao, 
        data_atualizacao
    )