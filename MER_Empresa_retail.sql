-- Crear los tres usuarios
CREATE USER 'ana_crm'@'localhost' IDENTIFIED BY 'Retail2026!Caja';
CREATE USER 'pedro_mkt'@'localhost' IDENTIFIED BY 'Retail2026!Stock';
CREATE USER 'marta_auditoria'@'localhost' IDENTIFIED BY 'Retail2026!Admin';

-- Permisos para ana_crm
GRANT SELECT, INSERT, UPDATE, DELETE ON empresa_retail.Clientes TO 'ana_crm'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON empresa_retail.Interacciones TO 'ana_crm'@'localhost';

-- Permisos para pedro_mkt
GRANT SELECT, INSERT, UPDATE, DELETE ON empresa_retail.Canales TO 'pedro_mkt'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON empresa_retail.Campanas TO 'pedro_mkt'@'localhost';
GRANT SELECT ON empresa_retail.Clientes TO 'pedro_mkt'@'localhost';

-- Permisos para marta_auditoria
GRANT SELECT ON empresa_retail.Conversiones TO 'marta_auditoria'@'localhost';
GRANT EXECUTE ON PROCEDURE empresa_retail.* TO 'marta_auditoria'@'localhost';

-- Aplicar cambios
FLUSH PRIVILEGES;