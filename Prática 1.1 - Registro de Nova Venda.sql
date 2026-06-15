DELIMITER $$

CREATE PROCEDURE sp_registrar_venda(
    IN p_cliente_id INT,
    OUT p_venda_id
)

BEGIN 
    INSERT INTO vendas(
        data_venda,
        valor_total, 
        status_venda, 
        cliente_id, 
        data_criacao, 
        data_atualizacao
    )
    VALUES (
        NOW(), 
        0.00, 
        'P', 
        p_cliente_id, 
        NOW(), 
        NOW()
    );

    SET p_venda_id = p_cliente_id;
END $$

DELIMITER ;