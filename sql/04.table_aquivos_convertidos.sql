CREATE TABLE arquivos_convertidos (
    id INT NOT NULL AUTO_INCREMENT,
    conversion_id INT NOT NULL,
    file_path VARCHAR(500) NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    mime_type VARCHAR(100) NOT NULL,
    size_in_bytes BIGINT NOT NULL,
    disk VARCHAR(50) NOT NULL DEFAULT 'LOCAL',
    is_downloadable BOOLEAN NOT NULL DEFAULT TRUE,
    expires_at DATETIME,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (conversion_id) REFERENCES conversoes(id) ON DELETE CASCADE,
    INDEX idx_conversion_id (conversion_id),
    INDEX idx_expires_at (expires_at)
) DEFAULT CHARSET=utf8mb4;

desc arquivos_convertidos;

ALTER TABLE arquivos_convertidos 
ADD CONSTRAINT uk_conversion_id UNIQUE (conversion_id);
