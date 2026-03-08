CREATE TABLE conversoes (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    source VARCHAR(255) NOT NULL,
    source_type VARCHAR(150) NOT NULL, -- Corrigido para 150
    target_format VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    job_id VARCHAR(100),
    atributo_1 VARCHAR(255),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    started_at DATETIME,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    INDEX idx_user_id (user_id),
    INDEX idx_status (status),
    INDEX idx_job_id (job_id)
) DEFAULT CHARSET=utf8mb4;

ALTER TABLE conversoes 
MODIFY user_id INT NULL;

ALTER TABLE conversoes
DROP COLUMN atributo_1;

describe conversoes;
