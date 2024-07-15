create or replace package ZF_JSI is

PROCEDURE GRAVA_CLIENTE(I_NR_CNPJ        IN CLIENTE_JSI.NR_CNPJ%TYPE,
                        I_DS_RAZAOSOCIAL IN CLIENTE_JSI.DS_RAZAOSOCIAL%TYPE,
                        I_NM_FANTASIA    IN CLIENTE_JSI.NM_FANTASIA%TYPE,
                        I_DS_ENDERECO    IN CLIENTE_JSI.DS_ENDERECO%TYPE,
                        I_NR_TELEFONE    IN CLIENTE_JSI.NR_TELEFONE%TYPE,
                        O_MENSAGEM       OUT VARCHAR2); 
                     
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  
  PROCEDURE GRAVA_FUNCIONARIO(I_NR_CPF         IN FUNCIONARIO_JSI.NR_CPF%TYPE,
                              I_NM_FUNCIONARIO IN FUNCIONARIO_JSI.NM_FUNCIONARIO%TYPE,
                              I_DT_NASCIMENTO  IN FUNCIONARIO_JSI.DT_NASCIMENTO%TYPE,
                              I_DS_CARGO       IN FUNCIONARIO_JSI.DS_CARGO%TYPE,
                              I_NR_TELEFONE    IN FUNCIONARIO_JSI.NR_TELEFONE%TYPE,
                              I_DS_ENDERECO    IN FUNCIONARIO_JSI.DS_ENDERECO%TYPE,
                              I_DT_CONTRATACAO IN FUNCIONARIO_JSI.DT_CONTRATACAO%TYPE,
                              O_MENSAGEM       OUT VARCHAR2);
            
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  
  PROCEDURE GRAVA_FORNECEDOR(I_NR_CNPJ        IN FORNECEDOR_JSI.NR_CNPJ%TYPE,
                          I_DS_RAZAOSOCIAL IN FORNECEDOR_JSI.DS_RAZAOSOCIAL%TYPE,
                          I_NM_FANTASIA    IN FORNECEDOR_JSI.NM_FANTASIA%TYPE,
                          I_DS_ENDERECO    IN FORNECEDOR_JSI.DS_ENDERECO%TYPE,
                          I_NR_TELEFONE    IN FORNECEDOR_JSI.NR_TELEFONE%TYPE,
                          O_MENSAGEM       OUT VARCHAR2);  
             
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
         
  PROCEDURE GRAVA_CONTRATO(IO_CD_CONTRATO   IN OUT CONTRATO_JSI.CD_CONTRATO%TYPE,
                           I_VL_TOTAL       IN CONTRATO_JSI.VL_TOTAL%TYPE,
                           I_DS_CONTRATO    IN CONTRATO_JSI.DS_CONTRATO%TYPE,
                           I_DS_STATUS      IN CONTRATO_JSI.DS_STATUS%TYPE,
                           I_DT_INICIO      IN CONTRATO_JSI.DT_INICIO%TYPE,
                           I_DT_TERMINO     IN CONTRATO_JSI.DT_TERMINO%TYPE,
                           I_QT_PARCELAS    IN CONTRATO_JSI.QT_PARCELAS%TYPE,
                           I_NR_CNPJCLIENTE IN CONTRATO_JSI.CNPJ_CLIENTE%TYPE,
                           O_MENSAGEM       OUT VARCHAR2);
             
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
  PROCEDURE GRAVA_VIAGEM(IO_CD_VIAGEM          IN OUT VIAGEM_JSI.CD_VIAGEM%TYPE,
                          I_DT_IDA             IN VIAGEM_JSI.DT_IDA%TYPE,
                          I_DT_VOLTA           IN VIAGEM_JSI.DT_VOLTA%TYPE,
                          I_DS_VIAGEM          IN VIAGEM_JSI.DS_VIAGEM%TYPE,
                          I_DS_STATUS          IN VIAGEM_JSI.DS_STATUS%TYPE,
                          I_VL_DISPONIBILIZADO IN VIAGEM_JSI.VL_DISPONIBILIZADO%TYPE,
                          O_MENSAGEM           OUT VARCHAR2);
                          
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
  PROCEDURE GRAVA_CONTRATO_VIAGEM(IO_CD_CONTRATO_VIAGEM IN OUT CONTRATO_VIAGEM_JSI.CD_CONTRATO_VIAGEM%TYPE,
                                  I_CD_CONTRATO         IN CONTRATO_VIAGEM_JSI.CD_CONTRATO%TYPE,
                                  I_CD_VIAGEM           IN CONTRATO_VIAGEM_JSI.CD_VIAGEM%TYPE,
                                  O_MENSAGEM            OUT VARCHAR2);
                                  
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
 /*PROCEDURE GRAVA_FUNCIONARIO_VIAGEM(IO_CD_FUNCIONARIO_VIAGEM IN OUT FUNCIONARIO_VIAGEM_JSI.CD_FUNCIONARIO_VIAGEM%TYPE,
                                    I_NR_CPFFUNC             IN FUNCIONARIO_VIAGEM_JSI.NR_CPFFUNC%TYPE,
                                    I_CD_VIAGEM              IN FUNCIONARIO_VIAGEM_JSI.CD_VIAGEM%TYPE,
                                    I_VL_DISPONIBILIZADO     IN FUNCIONARIO_VIAGEM_JSI.VL_DISPONIBILIZADO%TYPE,
                                    I_DS_STATUS              IN FUNCIONARIO_VIAGEM_JSI.Ds_STATUS%TYPE,
                                   O_MENSAGEM               OUT VARCHAR2); */
    
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
  PROCEDURE GRAVA_CATEGORIA(IO_CD_CATEGORIA IN OUT CATEGORIA_JSI.CD_CATEGORIA%TYPE,
                            I_DS_CATEGORIA  IN CATEGORIA_JSI.DS_CATEGORIA%TYPE,
                            O_MENSAGEM      OUT VARCHAR2);
      
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  
  PROCEDURE GRAVA_DESPESA(IO_CD_DESPESA  IN OUT DESPESA_JSI.CD_DESPESA%TYPE,
                          I_VL_DESPESA   IN DESPESA_JSI.VL_DESPESA%TYPE,
                          I_DS_DESPESA   IN DESPESA_JSI.DS_DESPESA%TYPE,
                          I_DT_DESPESA   IN DESPESA_JSI.DT_DESPESA%TYPE,
                          I_DS_STATUS   IN DESPESA_JSI.DS_STATUS%TYPE,
                          I_NR_CPFFUNC   IN DESPESA_JSI.NR_CPFFUNC%TYPE,
                          I_CD_CATEGORIA IN DESPESA_JSI.CD_CATEGORIA%TYPE,
                          I_CD_VIAGEM    IN DESPESA_JSI.CD_VIAGEM%TYPE,
                          I_NR_CNPJFORN  IN DESPESA_JSI.NR_CNPJFORN%TYPE,
                          O_MENSAGEM     OUT VARCHAR2);
     
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
  PROCEDURE GRAVA_RECEBIMENTO(IO_CD_RECEBIMENTO IN OUT RECEBIMENTO_JSI.CD_RECEBIMENTO%TYPE,
                              I_DS_RECEBIMENTO   IN RECEBIMENTO_JSI.DS_RECEBIMENTO%TYPE,
                              I_CD_CONTRATO     IN RECEBIMENTO_JSI.CD_CONTRATO%TYPE,
                              I_VL_RECEBIMENTO  IN RECEBIMENTO_JSI.VL_RECEBIMENTO%TYPE,
                              I_DS_STATUS       IN RECEBIMENTO_JSI.DS_STATUS%TYPE,
                              I_DT_RECEBIMENTO  IN RECEBIMENTO_JSI.DT_RECEBIMENTO%TYPE,
                              I_DT_VENCIMENTO  IN RECEBIMENTO_JSI.DT_VENCIMENTO%TYPE,
                              O_MENSAGEM        OUT VARCHAR2);
                                                                                                                                                                 
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  
  PROCEDURE EXCLUI_CLIENTE(I_NR_CNPJ   IN CLIENTE_JSI.NR_CNPJ%TYPE,
                           O_MENSAGEM OUT VARCHAR2);
                          
          
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  
  PROCEDURE EXCLUI_FUNCIONARIO(I_NR_CPF   IN FUNCIONARIO_JSI.NR_CPF%TYPE,
                               O_MENSAGEM OUT VARCHAR2);
    
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
         
  PROCEDURE EXCLUI_FORNECEDOR(I_NR_CNPJ   IN FORNECEDOR_JSI.NR_CNPJ%TYPE,
                              O_MENSAGEM OUT VARCHAR2);
                              
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
         
  PROCEDURE EXCLUI_CATEGORIA(I_CD_CATEGORIA IN CATEGORIA_JSI.CD_CATEGORIA%TYPE,
                             O_MENSAGEM     OUT VARCHAR2);                     
       
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
         
  PROCEDURE EXCLUI_RECEBIMENTO(I_CD_RECEBIMENTO IN RECEBIMENTO_JSI.CD_RECEBIMENTO%TYPE,
                               O_MENSAGEM       OUT VARCHAR2);
                                                        
end ZF_JSI;
/
create or replace package body ZF_JSI is

  PROCEDURE GRAVA_CLIENTE(I_NR_CNPJ        IN CLIENTE_JSI.NR_CNPJ%TYPE,
                          I_DS_RAZAOSOCIAL IN CLIENTE_JSI.DS_RAZAOSOCIAL%TYPE,
                          I_NM_FANTASIA    IN CLIENTE_JSI.NM_FANTASIA%TYPE,
                          I_DS_ENDERECO    IN CLIENTE_JSI.DS_ENDERECO%TYPE,
                          I_NR_TELEFONE    IN CLIENTE_JSI.NR_TELEFONE%TYPE,
                          O_MENSAGEM       OUT VARCHAR2) IS
                       
  E_GERAL EXCEPTION;

  BEGIN
    IF LENGTH(I_NR_CNPJ) <> 14 THEN
      O_MENSAGEM := 'Informe um CNPJ válido!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DS_RAZAOSOCIAL IS NULL THEN
      O_MENSAGEM := 'Informe a razão social';
      RAISE E_GERAL;
    END IF;
    
    IF I_NM_FANTASIA IS NULL THEN
      O_MENSAGEM := 'Informe o nome fantasia';
      RAISE E_GERAL;
    END IF;
    
    IF I_DS_ENDERECO IS NULL THEN
      O_MENSAGEM := 'Informe o endereço';
      RAISE E_GERAL;
    END IF;
    
    IF I_NR_TELEFONE IS NULL THEN
      O_MENSAGEM := 'Informe o telefone';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      INSERT INTO CLIENTE_JSI(NR_CNPJ,
                              DS_RAZAOSOCIAL,
                              NM_FANTASIA,
                              DS_ENDERECO,
                              NR_TELEFONE)
                      VALUES (I_NR_CNPJ,
                              I_DS_RAZAOSOCIAL,
                              I_NM_FANTASIA,
                              I_DS_ENDERECO,
                              I_NR_TELEFONE);
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE CLIENTE_JSI
             SET DS_RAZAOSOCIAL = I_DS_RAZAOSOCIAL,
                 NM_FANTASIA    = I_NM_FANTASIA,
                 DS_ENDERECO    = I_DS_ENDERECO,
                 NR_TELEFONE    = I_NR_TELEFONE
           WHERE CLIENTE_JSI.NR_CNPJ = I_NR_CNPJ;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao atualizar o cliente: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao inserir o cliente: '||SQLERRM;
    END;
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_CLIENTE] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que insere o cliente: '||SQLERRM;
  END;
          
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  
  PROCEDURE GRAVA_FUNCIONARIO(I_NR_CPF         IN FUNCIONARIO_JSI.NR_CPF%TYPE,
                              I_NM_FUNCIONARIO IN FUNCIONARIO_JSI.NM_FUNCIONARIO%TYPE,
                              I_DT_NASCIMENTO  IN FUNCIONARIO_JSI.DT_NASCIMENTO%TYPE,
                              I_DS_CARGO       IN FUNCIONARIO_JSI.DS_CARGO%TYPE,
                              I_NR_TELEFONE    IN FUNCIONARIO_JSI.NR_TELEFONE%TYPE,
                              I_DS_ENDERECO    IN FUNCIONARIO_JSI.DS_ENDERECO%TYPE,
                              I_DT_CONTRATACAO IN FUNCIONARIO_JSI.DT_CONTRATACAO%TYPE,
                              O_MENSAGEM       OUT VARCHAR2) IS
                       
  E_GERAL EXCEPTION;

  BEGIN
    IF LENGTH(I_NR_CPF) <> 11 THEN
      O_MENSAGEM := 'Informe um CPF válido!';
      RAISE E_GERAL;
    END IF;
    
    IF I_NM_FUNCIONARIO IS NULL THEN
      O_MENSAGEM := 'Informe o nome do funcionário!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DT_NASCIMENTO IS NULL THEN
      O_MENSAGEM := 'Informe a data de nascimento!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DS_CARGO IS NULL THEN
      O_MENSAGEM := 'Informe o cargo!';
      RAISE E_GERAL;
    END IF;
    
    IF I_NR_TELEFONE IS NULL THEN
      O_MENSAGEM := 'Informe o telefone!';
      RAISE E_GERAL;
    END IF;
        
    IF I_DS_ENDERECO IS NULL THEN
      O_MENSAGEM := 'Informe o endereço!';
      RAISE E_GERAL;
    END IF;
        
    IF I_DT_CONTRATACAO IS NULL THEN
      O_MENSAGEM := 'Informe a data da contratação!';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      INSERT INTO FUNCIONARIO_JSI(NR_CPF,
                                  NM_FUNCIONARIO,
                                  DT_NASCIMENTO,
                                  DS_CARGO,
                                  NR_TELEFONE,
                                  DS_ENDERECO,
                                  DT_CONTRATACAO,
                                  DS_STATUS)
                          VALUES (I_NR_CPF,
                                  I_NM_FUNCIONARIO,
                                  I_DT_NASCIMENTO,
                                  I_DS_CARGO,
                                  I_NR_TELEFONE,
                                  I_DS_ENDERECO,
                                  I_DT_CONTRATACAO,
                                  'LIVRE');
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE FUNCIONARIO_JSI
             SET NM_FUNCIONARIO = I_NM_FUNCIONARIO,
                 DT_NASCIMENTO  = I_DT_NASCIMENTO,
                 DS_CARGO       = I_DS_CARGO,
                 NR_TELEFONE    = I_NR_TELEFONE,
                 DS_ENDERECO    = I_DS_ENDERECO,
                 DT_CONTRATACAO = I_DT_CONTRATACAO
           WHERE FUNCIONARIO_JSI.NR_CPF = I_NR_CPF;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao atualizar o funcionário: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao inserir o funcionário: '||SQLERRM;
    END;
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_FUNCIONARIO] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que insere o funcionário: '||SQLERRM;
  END;
          
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  
  PROCEDURE GRAVA_FORNECEDOR(I_NR_CNPJ        IN FORNECEDOR_JSI.NR_CNPJ%TYPE,
                          I_DS_RAZAOSOCIAL IN FORNECEDOR_JSI.DS_RAZAOSOCIAL%TYPE,
                          I_NM_FANTASIA    IN FORNECEDOR_JSI.NM_FANTASIA%TYPE,
                          I_DS_ENDERECO    IN FORNECEDOR_JSI.DS_ENDERECO%TYPE,
                          I_NR_TELEFONE    IN FORNECEDOR_JSI.NR_TELEFONE%TYPE,
                          O_MENSAGEM       OUT VARCHAR2) IS
                       
  E_GERAL EXCEPTION;

  BEGIN
    IF LENGTH(I_NR_CNPJ) <> 14 THEN
      O_MENSAGEM := 'Informe um CNPJ válido!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DS_RAZAOSOCIAL IS NULL THEN
      O_MENSAGEM := 'Informe a razão social';
      RAISE E_GERAL;
    END IF;
    
    IF I_NM_FANTASIA IS NULL THEN
      O_MENSAGEM := 'Informe o nome fantasia';
      RAISE E_GERAL;
    END IF;
    
    IF I_DS_ENDERECO IS NULL THEN
      O_MENSAGEM := 'Informe o endereço';
      RAISE E_GERAL;
    END IF;
    
    IF I_NR_TELEFONE IS NULL THEN
      O_MENSAGEM := 'Informe o telefone';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      INSERT INTO FORNECEDOR_JSI(NR_CNPJ,
                              DS_RAZAOSOCIAL,
                              NM_FANTASIA,
                              DS_ENDERECO,
                              NR_TELEFONE)
                      VALUES (I_NR_CNPJ,
                              I_DS_RAZAOSOCIAL,
                              I_NM_FANTASIA,
                              I_DS_ENDERECO,
                              I_NR_TELEFONE);
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE FORNECEDOR_JSI
             SET DS_RAZAOSOCIAL = I_DS_RAZAOSOCIAL,
                 NM_FANTASIA    = I_NM_FANTASIA,
                 DS_ENDERECO    = I_DS_ENDERECO,
                 NR_TELEFONE    = I_NR_TELEFONE
           WHERE FORNECEDOR_JSI.NR_CNPJ = I_NR_CNPJ;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao atualizar o fornecedor: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao inserir o fornecedor: '||SQLERRM;
    END;
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_FORNECEDOR] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que insere o fornecedor: '||SQLERRM;
  END;
           
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
         
  PROCEDURE GRAVA_CONTRATO(IO_CD_CONTRATO   IN OUT CONTRATO_JSI.CD_CONTRATO%TYPE,
                           I_VL_TOTAL       IN CONTRATO_JSI.VL_TOTAL%TYPE,
                           I_DS_CONTRATO    IN CONTRATO_JSI.DS_CONTRATO%TYPE,
                           I_DS_STATUS      IN CONTRATO_JSI.DS_STATUS%TYPE,
                           I_DT_INICIO      IN CONTRATO_JSI.DT_INICIO%TYPE,
                           I_DT_TERMINO     IN CONTRATO_JSI.DT_TERMINO%TYPE,
                           I_QT_PARCELAS    IN CONTRATO_JSI.QT_PARCELAS%TYPE,
                           I_NR_CNPJCLIENTE IN CONTRATO_JSI.CNPJ_CLIENTE%TYPE,
                           O_MENSAGEM       OUT VARCHAR2) IS
                       
  E_GERAL EXCEPTION;
  V_VL_PARCELA CONTRATO_JSI.VL_TOTAL%TYPE;
  V_DT_PARCELA DATE;
  
  BEGIN
    IF IO_CD_CONTRATO IS NULL THEN
      BEGIN
        SELECT MAX(CD_CONTRATO)
          INTO IO_CD_CONTRATO
          FROM CONTRATO_JSI;
      EXCEPTION
        WHEN OTHERS THEN
          IO_CD_CONTRATO :=0;
      END;
      IO_CD_CONTRATO := NVL(IO_CD_CONTRATO, 0) + 1;
    END IF;
    
    IF LENGTH(I_NR_CNPJCLIENTE) <> 14 THEN
      O_MENSAGEM := 'Informe um CNPJ válido!';
      RAISE E_GERAL;
    END IF;
    
    IF I_NR_CNPJCLIENTE IS NULL THEN
      O_MENSAGEM := 'O cliente deve ser informado!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DS_CONTRATO IS NULL THEN
      O_MENSAGEM := 'Informe a descrição do contrato!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DT_INICIO IS NULL THEN
      O_MENSAGEM := 'Informe a data de início do contrato!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DT_TERMINO IS NULL THEN
      O_MENSAGEM := 'Informe a data de fim do contrato!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DT_TERMINO < I_DT_INICIO THEN
      O_MENSAGEM := 'A data de início deve ser anterior à data de fim!';
      RAISE E_GERAL;
    END IF;
    
    IF I_QT_PARCELAS IS NULL THEN
      O_MENSAGEM := 'Informe o número de parcelas!';
      RAISE E_GERAL;
    END IF;
    
    V_VL_PARCELA := I_VL_TOTAL / I_QT_PARCELAS;
    V_DT_PARCELA := I_DT_INICIO;
    
    BEGIN
      INSERT INTO CONTRATO_JSI(CD_CONTRATO,
                               VL_TOTAL,
                               DS_CONTRATO,
                               DS_STATUS,
                               DT_INICIO,
                               DT_TERMINO,
                               QT_PARCELAS,
                               CNPJ_CLIENTE)
                       VALUES (IO_CD_CONTRATO,
                               I_VL_TOTAL,
                               I_DS_CONTRATO,
                               ' ',
                               I_DT_INICIO,
                               I_DT_TERMINO,
                               I_QT_PARCELAS,
                               I_NR_CNPJCLIENTE);
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE CONTRATO_JSI
             SET VL_TOTAL     = I_VL_TOTAL,
                 DS_CONTRATO  = I_DS_CONTRATO,
                 DS_STATUS    = I_DS_STATUS,
                 DT_INICIO    = I_DT_INICIO,
                 DT_TERMINO   = I_DT_TERMINO,
                 QT_PARCELAS  = I_QT_PARCELAS,
                 CNPJ_CLIENTE = I_NR_CNPJCLIENTE
           WHERE CONTRATO_JSI.CD_CONTRATO = IO_CD_CONTRATO;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao  atualizar o contrato: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao inserir o contrato: '||SQLERRM;
    END;
    
    FOR I IN 1..I_QT_PARCELAS LOOP
      BEGIN
        INSERT INTO RECEBIMENTO_JSI(CD_RECEBIMENTO, 
                                    DS_RECEBIMENTO,
                                    CD_CONTRATO, 
                                    VL_RECEBIMENTO, 
                                    DT_VENCIMENTO, 
                                    DS_STATUS)
                            VALUES (IO_CD_CONTRATO * 1000 + I,
                                    'PARCELA ' || I,
                                    IO_CD_CONTRATO, 
                                    V_VL_PARCELA, 
                                    ADD_MONTHS(V_DT_PARCELA, I - 1),
                                    'PENDENTE');
      EXCEPTION
        WHEN OTHERS THEN
          O_MENSAGEM := 'Erro ao criar recebimentos: ' || SQLERRM;
          RAISE E_GERAL;
      END;
    END LOOP;
    
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_CONTRATO] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que insere o contrato: '||SQLERRM;
  END;
           
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
  PROCEDURE GRAVA_VIAGEM(IO_CD_VIAGEM          IN OUT VIAGEM_JSI.CD_VIAGEM%TYPE,
                          I_DT_IDA             IN VIAGEM_JSI.DT_IDA%TYPE,
                          I_DT_VOLTA           IN VIAGEM_JSI.DT_VOLTA%TYPE,
                          I_DS_VIAGEM          IN VIAGEM_JSI.DS_VIAGEM%TYPE,
                          I_DS_STATUS          IN VIAGEM_JSI.DS_STATUS%TYPE,
                          I_VL_DISPONIBILIZADO IN VIAGEM_JSI.VL_DISPONIBILIZADO%TYPE,
                          O_MENSAGEM           OUT VARCHAR2) IS
                       
  E_GERAL EXCEPTION;

  BEGIN
    IF IO_CD_VIAGEM IS NULL THEN
      BEGIN
        SELECT MAX(CD_VIAGEM)
          INTO IO_CD_VIAGEM
          FROM VIAGEM_JSI;
      EXCEPTION
        WHEN OTHERS THEN
          IO_CD_VIAGEM :=0;
      END;
      IO_CD_VIAGEM := NVL(IO_CD_VIAGEM, 0) + 1;
    END IF;  
    
    IF I_DT_IDA IS NULL THEN
      O_MENSAGEM := 'Informe a data de ida!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DT_VOLTA IS NULL THEN
      O_MENSAGEM := 'Informe a data de volta!';
      RAISE E_GERAL;
    END IF;
    
    IF I_DS_VIAGEM IS NULL THEN
      O_MENSAGEM := 'Informe o nome ou descrição da viagem!';
      RAISE E_GERAL;
    END IF;

    IF I_VL_DISPONIBILIZADO IS NULL THEN
      O_MENSAGEM := 'Informe o valor disponibilizado da viagem!';
      RAISE E_GERAL;
    END IF;

    BEGIN
      INSERT INTO VIAGEM_JSI(CD_VIAGEM,
                             DT_IDA,
                             DT_VOLTA,
                             DS_VIAGEM,
                             DS_STATUS,
                             VL_DISPONIBILIZADO)
                      VALUES (IO_CD_VIAGEM,
                              I_DT_IDA,
                              I_DT_VOLTA,
                              I_DS_VIAGEM,
                              I_DS_STATUS,
                              I_VL_DISPONIBILIZADO);
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE VIAGEM_JSI
             SET DT_IDA             = I_DT_IDA,
                 DT_VOLTA           = I_DT_VOLTA,
                 DS_VIAGEM          = I_DS_VIAGEM,
                 DS_STATUS          = I_DS_STATUS,
                 VL_DISPONIBILIZADO = I_VL_DISPONIBILIZADO
           WHERE VIAGEM_JSI.CD_VIAGEM = IO_CD_VIAGEM;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao atualizar os dados da viagem: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao inserir a viagem: '||SQLERRM;
    END;
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_VIAGEM] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que insere a viagem: '||SQLERRM;
  END;
  
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
  PROCEDURE GRAVA_CONTRATO_VIAGEM(IO_CD_CONTRATO_VIAGEM IN OUT CONTRATO_VIAGEM_JSI.CD_CONTRATO_VIAGEM%TYPE,
                                  I_CD_CONTRATO         IN CONTRATO_VIAGEM_JSI.CD_CONTRATO%TYPE,
                                  I_CD_VIAGEM           IN CONTRATO_VIAGEM_JSI.CD_VIAGEM%TYPE,
                                  O_MENSAGEM            OUT VARCHAR2) IS
        
  E_GERAL EXCEPTION;
  V_COUNT NUMBER;
  BEGIN
    IF IO_CD_CONTRATO_VIAGEM IS NULL THEN
      BEGIN
        SELECT MAX(CD_CONTRATO_VIAGEM)
          INTO IO_CD_CONTRATO_VIAGEM
          FROM CONTRATO_VIAGEM_JSI;
      EXCEPTION
        WHEN OTHERS THEN
          IO_CD_CONTRATO_VIAGEM :=0;
      END;
      IO_CD_CONTRATO_VIAGEM := NVL(IO_CD_CONTRATO_VIAGEM, 0) + 1;
    END IF;
    
    IF I_CD_CONTRATO IS NULL THEN
      O_MENSAGEM := 'Informe o contrato!';
      RAISE E_GERAL;
    END IF;
    
    IF I_CD_VIAGEM IS NULL THEN
      O_MENSAGEM := 'Informe a viagem!';
      RAISE E_GERAL;
    END IF;
    
    SELECT COUNT(*)
      INTO V_COUNT
      FROM CONTRATO_VIAGEM_JSI
     WHERE CD_CONTRATO = I_CD_CONTRATO
       AND CD_VIAGEM = I_CD_VIAGEM;
       
    IF V_COUNT > 0 THEN
      O_MENSAGEM := 'Este contrato já está relacionado à essa viagem';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      INSERT INTO CONTRATO_VIAGEM_JSI(CD_CONTRATO_VIAGEM,
                                      CD_CONTRATO,
                                      CD_VIAGEM)
                              VALUES (IO_CD_CONTRATO_VIAGEM,
                                      I_CD_CONTRATO,
                                      I_CD_VIAGEM);
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE CONTRATO_VIAGEM_JSI
             SET CD_CONTRATO = I_CD_CONTRATO,
                 CD_VIAGEM = I_CD_VIAGEM
           WHERE CONTRATO_VIAGEM_JSI.CD_CONTRATO_VIAGEM = IO_CD_CONTRATO_VIAGEM;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao atualizar a relação entre contrato e viagem: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao relacinar o contrato com a viagem: '||SQLERRM;
    END;
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_CONTRATO_VIAGEM] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que relaciona um contrato com uma viagem: '||SQLERRM;
  END;
  
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
  /*PROCEDURE GRAVA_FUNCIONARIO_VIAGEM(IO_CD_FUNCIONARIO_VIAGEM IN OUT FUNCIONARIO_VIAGEM_JSI.CD_FUNCIONARIO_VIAGEM%TYPE,
                                     I_NR_CPFFUNC             IN FUNCIONARIO_VIAGEM_JSI.NR_CPFFUNC%TYPE,
                                     I_CD_VIAGEM              IN FUNCIONARIO_VIAGEM_JSI.CD_VIAGEM%TYPE,
                                     I_VL_DISPONIBILIZADO     IN FUNCIONARIO_VIAGEM_JSI.VL_DISPONIBILIZADO%TYPE,
                                     I_DS_STATUS              IN FUNCIONARIO_VIAGEM_JSI.Ds_STATUS%TYPE,
                                     O_MENSAGEM               OUT VARCHAR2) IS
                       
  E_GERAL EXCEPTION;

  BEGIN
    IF IO_CD_FUNCIONARIO_VIAGEM IS NULL THEN
      BEGIN
        SELECT MAX(CD_FUNCIONARIO_VIAGEM)
          INTO IO_CD_FUNCIONARIO_VIAGEM
          FROM FUNCIONARIO_VIAGEM_JSI;
      EXCEPTION
        WHEN OTHERS THEN
          IO_CD_FUNCIONARIO_VIAGEM :=0;
      END;
      IO_CD_FUNCIONARIO_VIAGEM := NVL(IO_CD_FUNCIONARIO_VIAGEM, 0) + 1;
    END IF;  
    
    IF I_NR_CPFFUNC IS NULL THEN
      O_MENSAGEM := 'Informe o Funcionário!';
      RAISE E_GERAL;
    END IF;
    
    IF I_CD_VIAGEM IS NULL THEN
      O_MENSAGEM := 'Informe o código da viagem!';
      RAISE E_GERAL;
    END IF;
    
    IF I_VL_DISPONIBILIZADO IS NULL THEN
      O_MENSAGEM := 'Informe o valor disponibilizado para esse funcionário!';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      INSERT INTO FUNCIONARIO_VIAGEM_JSI(CD_FUNCIONARIO_VIAGEM,
                                         NR_CPFFUNC,
                                         CD_VIAGEM,
                                         VL_DISPONIBILIZADO,
                                         DS_STATUS)
                                 VALUES (IO_CD_FUNCIONARIO_VIAGEM,
                                         I_NR_CPFFUNC,
                                         I_CD_VIAGEM,
                                         I_VL_DISPONIBILIZADO,
                                         I_DS_STATUS);
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE FUNCIONARIO_VIAGEM_JSI
             SET NR_CPFFUNC         = I_NR_CPFFUNC,
                 CD_VIAGEM          = I_CD_VIAGEM,
                 VL_DISPONIBILIZADO = I_VL_DISPONIBILIZADO,
                 DS_STATUS          = I_DS_STATUS
           WHERE FUNCIONARIO_VIAGEM_JSI.CD_FUNCIONARIO_VIAGEM = IO_CD_FUNCIONARIO_VIAGEM;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao atualizar os dados da relação do funcionário com a viagem: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao inserir a relação do funcionário com a viagem: '||SQLERRM;
    END;
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_FUNCIONARIO_VIAGEM] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que relaciona o funcionáiro com a viagem: '||SQLERRM;
  END;*/
  
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
  PROCEDURE GRAVA_CATEGORIA(IO_CD_CATEGORIA IN OUT CATEGORIA_JSI.CD_CATEGORIA%TYPE,
                            I_DS_CATEGORIA  IN CATEGORIA_JSI.DS_CATEGORIA%TYPE,
                            O_MENSAGEM      OUT VARCHAR2) IS
                       
  E_GERAL EXCEPTION;

  BEGIN
    IF IO_CD_CATEGORIA IS NULL THEN
      BEGIN
        SELECT MAX(CD_CATEGORIA)
          INTO IO_CD_CATEGORIA
          FROM CATEGORIA_JSI;
      EXCEPTION
        WHEN OTHERS THEN
          IO_CD_CATEGORIA :=0;
      END;
      IO_CD_CATEGORIA := NVL(IO_CD_CATEGORIA, 0) + 1;
    END IF;
    
    IF I_DS_CATEGORIA IS NULL THEN
      O_MENSAGEM := 'Informe o nome da categoria!';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      INSERT INTO CATEGORIA_JSI(CD_CATEGORIA,
                                DS_CATEGORIA)
                        VALUES (IO_CD_CATEGORIA,
                                I_DS_CATEGORIA);
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE CATEGORIA_JSI
             SET DS_CATEGORIA = I_DS_CATEGORIA
           WHERE CATEGORIA_JSI.CD_CATEGORIA = IO_CD_CATEGORIA;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao atualizar os dados da categoria: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao inserir a categoria: '||SQLERRM;
    END;
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_CATEGORIA] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que grava uma categoria: '||SQLERRM;
  END;
  
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
  PROCEDURE GRAVA_DESPESA(IO_CD_DESPESA  IN OUT DESPESA_JSI.CD_DESPESA%TYPE,
                          I_VL_DESPESA   IN DESPESA_JSI.VL_DESPESA%TYPE,
                          I_DS_DESPESA   IN DESPESA_JSI.DS_DESPESA%TYPE,
                          I_DT_DESPESA   IN DESPESA_JSI.DT_DESPESA%TYPE,
                          I_DS_STATUS    IN DESPESA_JSI.DS_STATUS%TYPE,
                          I_NR_CPFFUNC   IN DESPESA_JSI.NR_CPFFUNC%TYPE,
                          I_CD_CATEGORIA IN DESPESA_JSI.CD_CATEGORIA%TYPE,
                          I_CD_VIAGEM    IN DESPESA_JSI.CD_VIAGEM%TYPE,
                          I_NR_CNPJFORN  IN DESPESA_JSI.NR_CNPJFORN%TYPE,
                          O_MENSAGEM     OUT VARCHAR2) IS
                       
  E_GERAL EXCEPTION;

  BEGIN
    IF IO_CD_DESPESA IS NULL THEN
      BEGIN
        SELECT MAX(CD_DESPESA)
          INTO IO_CD_DESPESA
          FROM DESPESA_JSI;
      EXCEPTION
        WHEN OTHERS THEN
          IO_CD_DESPESA :=0;
      END;
      IO_CD_DESPESA := NVL(IO_CD_DESPESA, 0) + 1;
    END IF;
    
    IF I_VL_DESPESA IS NULL THEN
      O_MENSAGEM := 'Informe o valor da despesa!';
      RAISE E_GERAL;
    END IF;
        
    IF I_DS_DESPESA IS NULL THEN
      O_MENSAGEM := 'Informe a descrição da despesa!';
      RAISE E_GERAL;
    END IF;
        
    IF I_DT_DESPESA IS NULL THEN
      O_MENSAGEM := 'Informe a data da despesa!';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      INSERT INTO DESPESA_JSI(CD_DESPESA,
                              VL_DESPESA,
                              DS_DESPESA,
                              DT_DESPESA,
                              DS_STATUS,
                              NR_CPFFUNC,
                              CD_CATEGORIA,
                              CD_VIAGEM,
                              NR_CNPJFORN)
                      VALUES (IO_CD_DESPESA,
                              I_VL_DESPESA,
                              I_DS_DESPESA,
                              I_DT_DESPESA,
                              I_DS_STATUS,
                              I_NR_CPFFUNC,
                              I_CD_CATEGORIA,
                              I_CD_VIAGEM,
                              I_NR_CNPJFORN);
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE DESPESA_JSI
             SET VL_DESPESA   = I_VL_DESPESA,
                 DS_DESPESA   = I_DS_DESPESA,
                 DT_DESPESA   = I_DT_DESPESA,
                 DS_STATUS    = I_DS_STATUS,
                 NR_CPFFUNC   = I_NR_CPFFUNC,
                 CD_CATEGORIA = I_CD_CATEGORIA,
                 CD_VIAGEM    = I_CD_VIAGEM,
                 NR_CNPJFORN  = I_NR_CNPJFORN
           WHERE DESPESA_JSI.CD_DESPESA = IO_CD_DESPESA;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao atualizar os dados da despesa: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao inserir a despesa: '||SQLERRM;
    END;
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_DESPESA] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que grava uma despesa: '||SQLERRM;
  END;  
    
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
    
   PROCEDURE GRAVA_RECEBIMENTO(IO_CD_RECEBIMENTO IN OUT RECEBIMENTO_JSI.CD_RECEBIMENTO%TYPE,
                              I_DS_RECEBIMENTO   IN RECEBIMENTO_JSI.DS_RECEBIMENTO%TYPE,
                              I_CD_CONTRATO      IN RECEBIMENTO_JSI.CD_CONTRATO%TYPE,
                              I_VL_RECEBIMENTO   IN RECEBIMENTO_JSI.VL_RECEBIMENTO%TYPE,
                              I_DS_STATUS        IN RECEBIMENTO_JSI.DS_STATUS%TYPE,
                              I_DT_RECEBIMENTO   IN RECEBIMENTO_JSI.DT_RECEBIMENTO%TYPE,
                              I_DT_VENCIMENTO    IN RECEBIMENTO_JSI.DT_VENCIMENTO%TYPE,
                              O_MENSAGEM         OUT VARCHAR2) IS
                       
  E_GERAL EXCEPTION;
  V_COUNT NUMBER;

  BEGIN
    
    IF IO_CD_RECEBIMENTO IS NULL THEN
       IO_CD_RECEBIMENTO := I_CD_CONTRATO * 1000 + V_COUNT; 
    END IF;
    
    
    IF I_VL_RECEBIMENTO IS NULL THEN
      O_MENSAGEM := 'Informe o valor do recebimento!';
      RAISE E_GERAL;
    END IF;
        
    IF I_DS_RECEBIMENTO IS NULL THEN
      O_MENSAGEM := 'Informe a descrição do recebimento!';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      INSERT INTO RECEBIMENTO_JSI(CD_RECEBIMENTO,
                                  DS_RECEBIMENTO,
                                  CD_CONTRATO,
                                  VL_RECEBIMENTO,
                                  DS_STATUS,
                                  DT_RECEBIMENTO,
                                  DT_VENCIMENTO)
                           VALUES (I_CD_CONTRATO,
                                   I_DS_RECEBIMENTO,
                                   I_CD_CONTRATO,
                                   I_VL_RECEBIMENTO,
                                   I_DS_STATUS,
                                   I_DT_RECEBIMENTO,
                                   I_DT_VENCIMENTO);
    EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
        BEGIN
          UPDATE RECEBIMENTO_JSI
             SET DS_RECEBIMENTO = NVL(I_DS_RECEBIMENTO, DS_RECEBIMENTO),
                 CD_CONTRATO    = NVL(I_CD_CONTRATO, CD_CONTRATO),
                 VL_RECEBIMENTO = NVL(I_VL_RECEBIMENTO, VL_RECEBIMENTO),
                 DS_STATUS      = NVL(I_DS_STATUS, DS_STATUS),
                 DT_RECEBIMENTO = NVL(I_DT_RECEBIMENTO, DT_RECEBIMENTO),
                 DT_VENCIMENTO  = NVL(I_DT_VENCIMENTO, DT_VENCIMENTO)
           WHERE RECEBIMENTO_JSI.CD_RECEBIMENTO = IO_CD_RECEBIMENTO;
        EXCEPTION
          WHEN OTHERS THEN
            O_MENSAGEM := 'Erro ao atualizar os dados do recebimento: '||SQLERRM;
        END;
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao inserir o recebimento: '||SQLERRM;
    END;
    
    COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[GRAVA_RECEBIMENTO] '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que grava um recebimento: '||SQLERRM;
  END;
                 
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
         
  PROCEDURE EXCLUI_CLIENTE(I_NR_CNPJ   IN CLIENTE_JSI.NR_CNPJ%TYPE,
                           O_MENSAGEM OUT VARCHAR2) IS
    E_GERAL EXCEPTION;
  BEGIN
    IF I_NR_CNPJ IS NULL THEN
      O_MENSAGEM := 'Informe o CNPJ do cliente que deseja excluir';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      DELETE CLIENTE_JSI
       WHERE CLIENTE_JSI.NR_CNPJ = I_NR_CNPJ;
    EXCEPTION
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao excluir o cliente: '||SQLERRM;
        RAISE E_GERAL;
    END;
  COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[EXCLUI_CLIENTE]: '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que exclui um cliente: '||SQLERRM;
  END;
          
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  
  PROCEDURE EXCLUI_FUNCIONARIO(I_NR_CPF   IN FUNCIONARIO_JSI.NR_CPF%TYPE,
                               O_MENSAGEM OUT VARCHAR2) IS
    E_GERAL EXCEPTION;
  BEGIN
    IF I_NR_CPF IS NULL THEN
      O_MENSAGEM := 'Informe o CPF do funcionário que deseja excluir';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      DELETE FUNCIONARIO_JSI
       WHERE FUNCIONARIO_JSI.NR_CPF = I_NR_CPF;
    EXCEPTION
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao excluir o funcionário: '||SQLERRM;
        RAISE E_GERAL;
    END;
  COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[EXCLUI_FUNCIONARIO]: '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que exclui um funcionário: '||SQLERRM;
  END;
  
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
         
  PROCEDURE EXCLUI_FORNECEDOR(I_NR_CNPJ   IN FORNECEDOR_JSI.NR_CNPJ%TYPE,
                              O_MENSAGEM OUT VARCHAR2) IS
    E_GERAL EXCEPTION;
  BEGIN
    IF I_NR_CNPJ IS NULL THEN
      O_MENSAGEM := 'Informe o CNPJ do fornecedor que deseja excluir';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      DELETE FORNECEDOR_JSI
       WHERE FORNECEDOR_JSI.NR_CNPJ = I_NR_CNPJ;
    EXCEPTION
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao excluir o fornecedor: '||SQLERRM;
        RAISE E_GERAL;
    END;
  COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[EXCLUI_FORNECEDOR]: '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que exclui um fornecedor: '||SQLERRM;
  END;
  
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
         
  PROCEDURE EXCLUI_CATEGORIA(I_CD_CATEGORIA IN CATEGORIA_JSI.CD_CATEGORIA%TYPE,
                             O_MENSAGEM     OUT VARCHAR2) IS
    E_GERAL EXCEPTION;
  BEGIN
    IF I_CD_CATEGORIA IS NULL THEN
      O_MENSAGEM := 'Informe o código da categoria que deseja excluir';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      DELETE CATEGORIA_JSI
       WHERE CATEGORIA_JSI.CD_CATEGORIA = I_CD_CATEGORIA;
    EXCEPTION
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao excluir a categoria: '||SQLERRM;
        RAISE E_GERAL;
    END;
  COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[EXCLUI_CATEGORIA]: '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que exclui uma categoria: '||SQLERRM;
  END;
  
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
         
  PROCEDURE EXCLUI_RECEBIMENTO(I_CD_RECEBIMENTO IN RECEBIMENTO_JSI.CD_RECEBIMENTO%TYPE,
                               O_MENSAGEM       OUT VARCHAR2) IS
    E_GERAL EXCEPTION;
  BEGIN
    IF I_CD_RECEBIMENTO IS NULL THEN
      O_MENSAGEM := 'Informe o recebimento que deseja excluir';
      RAISE E_GERAL;
    END IF;
    
    BEGIN
      DELETE RECEBIMENTO_JSI
       WHERE RECEBIMENTO_JSI.CD_RECEBIMENTO = I_CD_RECEBIMENTO;
    EXCEPTION
      WHEN OTHERS THEN
        O_MENSAGEM := 'Erro ao excluir o recebimento: '||SQLERRM;
        RAISE E_GERAL;
    END;
  COMMIT;
  EXCEPTION
    WHEN E_GERAL THEN
      ROLLBACK;
      O_MENSAGEM := '[EXCLUI_RECEBIMENTO]: '||O_MENSAGEM;
    WHEN OTHERS THEN
      ROLLBACK;
      O_MENSAGEM := 'Erro no procedimento que exclui um raecebimento: '||SQLERRM;
  END; 
  
end ZF_JSI;
/
