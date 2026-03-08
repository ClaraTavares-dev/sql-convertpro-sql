INSERT INTO conversoes (user_id, source, source_type, target_format, status, job_id, started_at) VALUES
(1, '/uploads/documento1.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'pdf', 'completed', 'job_001', NOW()),
(1, '/uploads/imagem1.jpg', 'image/jpeg', 'png', 'completed', 'job_002', NOW()),
(2, '/uploads/video1.mp4', 'video/mp4', 'avi', 'processing', 'job_003', NOW()),
(2, '/uploads/audio1.mp3', 'audio/mpeg', 'wav', 'completed', 'job_004', NOW()),
(3, '/uploads/planilha1.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'csv', 'failed', 'job_005', NOW()),
(4, '/uploads/apresentacao1.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'pdf', 'pending', NULL, NULL);

SELECT * FROM conversoes;

-- essa tabela também está referenciando a tabela usuarios(lembre-se)

