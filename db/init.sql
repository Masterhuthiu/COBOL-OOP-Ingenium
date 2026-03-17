CREATE TABLE IF NOT EXISTS policy (
  policy_id BIGINT PRIMARY KEY,
  eff_date DATE,
  owner_id BIGINT,
  owner_name VARCHAR(100),
  owner_birth DATE,
  insured_id BIGINT,
  insured_name VARCHAR(100),
  insured_birth DATE,
  status VARCHAR(50),
  product VARCHAR(100),
  billing VARCHAR(50),
  issue_date DATE,
  paid_to DATE,
  overloan_exp DATE,
  amt_billed BIGINT,
  suffix INT,
  prem_mode VARCHAR(20),
  sundry_amt BIGINT,
  true_prem BIGINT,
  last_prem BIGINT,
  curr VARCHAR(20),
  overloan_least BIGINT,
  apa_least BIGINT
);

-- dữ liệu mẫu để test
INSERT INTO policy (
  policy_id, eff_date, owner_id, owner_name, owner_birth,
  insured_id, insured_name, insured_birth,
  status, product, billing,
  issue_date, paid_to, overloan_exp,
  amt_billed, suffix, prem_mode,
  sundry_amt, true_prem, last_prem,
  curr, overloan_least, apa_least
) VALUES (
  800016251, '2014-10-28', 1000027885, 'Nguyen T Thien', '1992-09-07',
  1000027885, 'Nguyen T Thien', '1992-09-07',
  'PREMIUM PAYING', 'PVI Sun Life Foresight', 'Direct Bill',
  '2014-08-13', '2014-11-13', NULL,
  2500000, 2, 'QUARTERLY',
  0, 2500000, 2500000,
  'VND', 0, 0
)
ON CONFLICT (policy_id) DO NOTHING;
