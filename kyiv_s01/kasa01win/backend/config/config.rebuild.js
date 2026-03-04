module.exports = {
  dialect: 'mysql',
  username: 'root',
  password: 'cashboxcom',
  database: 'webcashbox',
  host: 'localhost',
  port: 3306,
  // The retry config if Deadlock Happened
  retry: {
    match: [/Deadlock/i],
    max: 3, // Maximum rety 3 times
    backoffBase: 3000, // Initial backoff duration in ms. Default: 100,
    backoffExponent: 5, // Exponent to increase backoff each try. Default: 1.1
  },
  syncModelsOnStart: true,
  windowsVersion: true
};
