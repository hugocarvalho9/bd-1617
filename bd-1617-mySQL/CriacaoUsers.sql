-- Criacao de users
-- Administrador
CREATE USER 'admin'@'localhost';
	SET PASSWORD FOR 'admin'@'localhost' = 'admin123';
    
-- Funcionarios
CREATE USER 'func1'@'localhost';
	SET PASSWORD FOR 'func1'@'localhost' = 'func1';
    
CREATE USER 'func2'@'localhost';
	SET PASSWORD FOR 'func2'@'localhost' = 'func2';

CREATE USER 'func3'@'localhost';
	SET PASSWORD FOR 'func3'@'localhost' = 'func3';

CREATE USER 'func4'@'localhost';
	SET PASSWORD FOR 'func4'@'localhost' = 'func4';
    
-- Permissoes
-- Administrador
GRANT SELECT, INSERT, UPDATE, DELETE ON comboioacademico.* TO 'admin'@'localhost';

-- Funcionarios
-- estudante
GRANT SELECT, INSERT, DELETE, UPDATE ON comboioacademico.estudante TO 'func1'@'localhost', 
																	  'func2'@'localhost', 
                                                                      'func3'@'localhost', 
                                                                      'func4'@'localhost';
-- bilhete
GRANT SELECT, INSERT, DELETE, UPDATE ON comboioacademico.bilhete TO 'func1'@'localhost', 
																	'func2'@'localhost', 
                                                                    'func3'@'localhost', 
                                                                    'func4'@'localhost';
-- viagem
GRANT SELECT ON comboioacademico.viagem TO 'func1'@'localhost', 
										   'func2'@'localhost', 
                                           'func3'@'localhost', 
                                           'func4'@'localhost';
REVOKE INSERT, DELETE, UPDATE ON comboioacademico.viagem FROM 'func1'@'localhost', 
															  'func2'@'localhost', 
                                                              'func3'@'localhost', 
                                                              'func4'@'localhost';
-- comboio
GRANT SELECT ON comboioacademico.comboio TO 'func1'@'localhost', 
											'func2'@'localhost', 
                                            'func3'@'localhost', 
                                            'func4'@'localhost';
REVOKE INSERT, DELETE, UPDATE ON comboioacademico.comboio FROM 'func1'@'localhost', 
															   'func2'@'localhost', 
                                                               'func3'@'localhost', 
                                                               'func4'@'localhost';
-- lugar
GRANT SELECT ON comboioacademico.lugar TO 'func1'@'localhost', 
										  'func2'@'localhost', 
                                          'func3'@'localhost', 
                                          'func4'@'localhost';
REVOKE INSERT, DELETE, UPDATE ON comboioacademico.lugar FROM 'func1'@'localhost', 
															 'func2'@'localhost', 
                                                             'func3'@'localhost', 
                                                             'func4'@'localhost';
-- funcionario
GRANT SELECT ON comboioacademico.funcionario TO 'func1'@'localhost', 
												'func2'@'localhost', 
                                                'func3'@'localhost', 
                                                'func4'@'localhost';
REVOKE INSERT, DELETE, UPDATE ON comboioacademico.funcionario FROM 'func1'@'localhost', 
																   'func2'@'localhost', 
                                                                   'func3'@'localhost', 
                                                                   'func4'@'localhost';