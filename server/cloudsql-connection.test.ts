import { describe, it, expect } from 'vitest';
import mysql from 'mysql2/promise';

describe('Google Cloud SQL Connection', () => {
  it('should connect to Cloud SQL instance successfully', async () => {
    const connection = await mysql.createConnection({
      host: '34.31.42.182',
      port: 3306,
      user: 'root',
      password: process.env.CLOUD_SQL_ROOT_PASSWORD,
      database: 'tamilai',
      connectTimeout: 10000,
    });

    // Test connection with a simple query
    const [rows] = await connection.execute('SELECT 1 as test');
    
    expect(rows).toBeDefined();
    expect(Array.isArray(rows)).toBe(true);
    expect((rows as any)[0].test).toBe(1);
    
    await connection.end();
    
    console.log('✅ Successfully connected to Google Cloud SQL!');
  }, 15000); // 15 second timeout
});
