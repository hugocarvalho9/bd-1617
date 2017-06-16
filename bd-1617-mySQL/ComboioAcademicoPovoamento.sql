-- inserir estudantes
INSERT INTO estudante VALUES (11111111, 'Gonçalo Lopes', 'Universidade do Minho', 'M');
INSERT INTO estudante VALUES (11221511, 'Luis Carvalho', 'Universidade do Porto', 'M');
INSERT INTO estudante VALUES (15661111, 'Rita Lopes', 'Universidade de Vigo', 'F');
INSERT INTO estudante VALUES (11111661, 'Bruno Rodrigues', 'Universidade do Minho', 'M');
INSERT INTO estudante VALUES (11112221, 'Ana Cunha', 'Instituto Politecnico V. Castelo', 'F');
INSERT INTO estudante VALUES (11166171, 'Rui Pereira', 'Universidade do Porto', 'M');
INSERT INTO estudante VALUES (11999991, 'Filipa Pinto', 'Universidade de Santiago Compostela', 'F');
INSERT INTO estudante VALUES (33311111, 'Leticia Sousa', 'Universidade do Minho', 'F');
INSERT INTO estudante VALUES (14441111, 'Miguel Oliveira', 'Universidade de Vigo', 'M');
INSERT INTO estudante VALUES (11115581, 'Andreia Cunha', 'Universidade do Minho', 'F');
INSERT INTO estudante VALUES (11131321, 'Sónia Pereira', 'Universidade do Porto', 'F');
INSERT INTO estudante VALUES (15551111, 'Marta Lopes', 'Instituto Politecnico V. Castelo', 'F');
INSERT INTO estudante VALUES (34453215, 'Ricardo Guedes', 'Instituto Politecnico Cavado e Ave', 'M');
INSERT INTO estudante VALUES (34555219, 'João Matos', 'Instituto Politecnico Cavado e Ave', 'M');


-- inserir funcionários
INSERT INTO funcionario VALUES (1, 'João Sousa');
INSERT INTO funcionario VALUES (2, 'Vitor Silva');
INSERT INTO funcionario VALUES (3, 'Inês Alves');
INSERT INTO funcionario VALUES (4, 'Sara Lima');

-- inserir comboios
INSERT INTO comboio VALUES (1, 'Apenas trabalha de manhã');
INSERT INTO comboio VALUES (2, 'Realiza percursos entre Braga-Porto');
INSERT INTO comboio VALUES (3, NULL);
INSERT INTO comboio VALUES (4, 'Percursos em Espanha');

-- inserir lugares comboio 1 (1 única carruagem com 8 lugares)
INSERT INTO lugar VALUES (1, 1, 1, 'A');
INSERT INTO lugar VALUES (2, 1, 2, 'A');
INSERT INTO lugar VALUES (3, 1, 3, 'A');
INSERT INTO lugar VALUES (4, 1, 4, 'A');
INSERT INTO lugar VALUES (5, 1, 5, 'A');
INSERT INTO lugar VALUES (6, 1, 6, 'A');
INSERT INTO lugar VALUES (7, 1, 7, 'A');
INSERT INTO lugar VALUES (8, 1, 8, 'A');

-- inserir lugares comboio 2 (2 carruagens, 3 lugares cada)
INSERT INTO lugar VALUES (1, 2, 1, 'A');
INSERT INTO lugar VALUES (2, 2, 2, 'A');
INSERT INTO lugar VALUES (3, 2, 3, 'A');
INSERT INTO lugar VALUES (4, 2, 1, 'B');
INSERT INTO lugar VALUES (5, 2, 2, 'B');
INSERT INTO lugar VALUES (6, 2, 3, 'B');

-- inserir lugares comboio 3 (1 única carruagem com 8 lugares)
INSERT INTO lugar VALUES (1, 3, 1, 'A');
INSERT INTO lugar VALUES (2, 3, 2, 'A');
INSERT INTO lugar VALUES (3, 3, 3, 'A');
INSERT INTO lugar VALUES (4, 3, 4, 'A');
INSERT INTO lugar VALUES (5, 3, 5, 'A');
INSERT INTO lugar VALUES (6, 3, 6, 'A');
INSERT INTO lugar VALUES (7, 3, 7, 'A');
INSERT INTO lugar VALUES (8, 3, 8, 'A');

-- inserir lugares comboio 4 (2 carruagens, 3 lugares cada)
INSERT INTO lugar VALUES (1, 4, 1, 'A');
INSERT INTO lugar VALUES (2, 4, 2, 'A');
INSERT INTO lugar VALUES (3, 4, 3, 'A');
INSERT INTO lugar VALUES (4, 4, 1, 'B');
INSERT INTO lugar VALUES (5, 4, 2, 'B');
INSERT INTO lugar VALUES (6, 4, 3, 'B');

-- inserir viagens

-- comboio 1
INSERT INTO viagem VALUES (1, '2.50', '09:30:00', '10:15:00', 'Viana do Castelo', 'Barcelos', 1);
INSERT INTO viagem VALUES (2, '2.50', '11:00:00', '11:45:00', 'Barcelos', 'Viana do Castelo', 1);
-- comboio 2
INSERT INTO viagem VALUES (3, '2.00', '10:00:00', '11:00:00', 'Braga', 'Porto', 2);
INSERT INTO viagem VALUES (4, '2.00', '11:00:00', '11:45:00', 'Porto', 'Braga', 2);
-- comboio 3
INSERT INTO viagem VALUES (5, '2.00', '12:00:00', '13:00:00', 'Braga', 'Porto', 3);
INSERT INTO viagem VALUES (6, '2.80', '15:00:00', '16:00:00', 'Porto', 'Barcelos', 3);
INSERT INTO viagem VALUES (7, '2.30', '17:00:00', '17:50:00', 'Barcelos', 'Viana do Castelo', 3);
INSERT INTO viagem VALUES (8, '4.30', '19:00:00', '20:30:00', 'Viana do Castelo', 'Braga', 3);
-- comboio 4
INSERT INTO viagem VALUES (9, '3.30', '12:00:00', '13:00:00', 'Santiago de Compostela', 'Corunha', 4);
INSERT INTO viagem VALUES (10, '3.30', '16:00:00', '17:00:00', 'Corunha', 'Santiago de Compostela', 4);


-- inserir reservas
-- viagem 1 (duas reservas para o dia 2016-12-20 e uma para o dia 2016-12-21)
INSERT INTO bilhete VALUES (1, '2.50', '20161220', '20161123', 2, 1, 11999991, 1);
INSERT INTO bilhete VALUES (2, '2.50', '20161220', '20161124', 3, 2, 14441111, 1);
INSERT INTO bilhete VALUES (3, '2.50', '20161221', '20161124', 2, 3, 11999991, 1);
-- viagem 2 (uma reserva para o dia 2016-12-19)
INSERT INTO bilhete VALUES (4, '2.50', '20161219', '20161125', 1, 4, 11111111, 2);
-- viagem 3 (duas reservas para o dia 2016-12-20)
INSERT INTO bilhete VALUES (5, '2.00', '20161220', '20161125', 5, 2, 11221511, 3);
INSERT INTO bilhete VALUES (6, '2.00', '20161220', '20161125', 3, 2, 34453215, 3);
-- viagem 4 (viagem lotada para o dia 2016-12-21)
INSERT INTO bilhete VALUES (7, '2.00', '20161221', '20161127', 1, 1, 11111111 , 4);
INSERT INTO bilhete VALUES (8, '2.00', '20161221', '20161127', 2, 1, 11221511, 4);
INSERT INTO bilhete VALUES (9, '2.00', '20161221', '20161127', 3, 1, 15661111, 4);
INSERT INTO bilhete VALUES (10, '2.00', '20161221', '20161127', 4, 1, 11111661 , 4);
INSERT INTO bilhete VALUES (11, '2.00', '20161221', '20161127', 5, 1, 11112221, 4);
INSERT INTO bilhete VALUES (12, '2.00', '20161221', '20161127', 6, 1, 11166171, 4);
-- viagem 5 (sem reservas)
-- viagem 6 (uma reserva para o dia 2016-12-21)
INSERT INTO bilhete VALUES (13, '2.80', '20161221', '20161127', 2, 3, 11999991, 6);
-- viagem 7 (uma reserva para o dia 2016-12-22 e uma reserva para o dia 2016-12-23)
INSERT INTO bilhete VALUES (14, '2.30', '20161222', '20161126', 1, 2, 33311111, 7);
INSERT INTO bilhete VALUES (15, '2.30', '20161223', '20161126', 3, 2, 14441111, 7);
-- viagem 8 (duas reservas para o dia 2016-12-21)
INSERT INTO bilhete VALUES (16, '4.30', '20161221', '20161127', 4, 2, 11115581, 8);
INSERT INTO bilhete VALUES (17, '4.30', '20161221', '20161127', 5, 2, 14441111, 8);
-- viagem 9 (uma reserva para o dia 2016-12-23)
INSERT INTO bilhete VALUES (18, '3.30', '20161223', '20161126', 1, 2, 11131321, 9);
-- viagem 10 (tres reservas para o dia 2016-12-23)
INSERT INTO bilhete VALUES (19, '3.30', '20161223', '20161130', 1, 1, 15551111, 10);
INSERT INTO bilhete VALUES (20, '3.30', '20161223', '20161130', 2, 1, 34453215, 10);
INSERT INTO bilhete VALUES (21, '3.30', '20161223', '20161130', 3, 1, 34555219, 10);


