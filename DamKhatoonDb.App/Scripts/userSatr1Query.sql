INSERT INTO Users(
    
    Username,
    Password,
    Name,
    Age,
    Email,
    LastLogin,
    DataCreated,
    Rank,
    PasswordResetToken,
    ResetTokenExpiry,
    PasswordHash
)
VALUES (
                                    -- Id
    N'ali_reza',                      -- Username
    N'MySecretPass123',               -- Password
    N'علی رضایی',                     -- Name
    28,                               -- Age
    N'ali@example.com',               -- Email
    1684100000,                       -- LastLogin (Unix timestamp)
    1684000000,                       -- DataCreated (Unix timestamp)
    N'Gold',                          -- Rank
    N'token_xyz_2024',                -- PasswordResetToken
    '2025-01-15 14:30:00',            -- ResetTokenExpiry
    N'hashed_password_abc123'         -- PasswordHash
);