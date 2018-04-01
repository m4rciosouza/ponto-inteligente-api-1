CREATE​​ TABLE​​ ​ `empresa​ ` ​ ​ (
​ ​ `id​` ​ ​ bigint​ (20) ​ ​ NOT​​ ​ NULL​ ,
​ ​ `cnpj​` ​ ​ varchar​ (255​) ​ ​ NOT​​ ​ NULL​ ,
​ ​ `data_atualizacao` datetime​ ​ NOT​​ ​ NULL​ ,
​ ​ `data_criacao​` ​ ​ datetime​ ​ NOT​​ ​ NULL​ ,
​ ​ `razao_social​` ​ ​ varchar​ ( ​ 255​ ) ​ ​ NOT​​ ​ NULL
)​ ​ ENGINE​ = ​ InnoDB​ ​ DEFAULT​​ ​ CHARSET​ = ​ utf8;

CREATE TABLE `funcionario`(
 `id` bigint(20) NOT NULL,
 `cpf` varchar(255) NOT NULL,
 `data_atualizacao` datetime NOT NULL,
 `data_criacao` datetime NOT NULL,
 `email` varchar(255) NOT NULL,
 `nome` varchar(255) NOT NULL,
 `perfil` varchar(255) NOT NULL,
 `qtd_horas_almoco` FLOAT DEFAULT NULL,
 `qtd_horas_trabalho_almoco` FLOAT DEFAULT NULL,
 `senha` varchar(255) NOT NULL,
 `valor_hora` decimal(19,2) DEFAULT NULL,
 `empresa_id` bigint(20) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE `funcionario`(
 `id` bigint(20) NOT NULL,
 `data` datetime NOT NULL,
 `data_atualizacao` datetime NOT NULL,
 `data_criacao` datetime NOT NULL,
 `descricao` varchar(255) DEFAULT NULL,
 `localizacao` varchar(255) DEFAULT NULL,
 `tipo` varchar(255) NOT  NULL,
 `funcionario_id` bigint(20) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;


ALTER TABLE `empresa` ADD PRIMARY KEY (`id`);
ALTER TABLE `funcionario` ADD PRIMARY KEY (`id`), 
			  ADD KEY `FK4cm1kg523jlopyexjbmi6y54j` (`empresa_id`);
ALTER TABLE `lancamento` ADD PRIMARY KEY (`id`), 
			  ADD KEY `FK6i4k5v18wah7feutye9kbpi4` (`funcionario_id`);


ALTER TABLE `empresa` MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
ALTER TABLE `funcionario` MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
ALTER TABLE `lancamento` MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;


ALTER TABLE `funcionario` ADD CONSTRAINT `FK4cm1kg523jlopyexjbmi6y54j` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`);
ALTER TABLE `lancamento`  ADD CONSTRAINT `FK6i4k5v18wah7feutye9kbpi4` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`);

INSERT INTO `empresa` (`id`, `cnpj`, `data_atualizacao`, `data_criacao`, `racao_social`) VALUES (​ NULL​ , ​ '82198127000121'​ , ​ CURRENT_DATE​ (), ​ CURRENT_DATE​ (), ​ 'Empresa
ADMIN'​ );




















