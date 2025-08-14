enum AppEnvItems { mockup, local, test, production }

// const kAppEnv = "mockup"; // kAppEnv: mockup | local | test | production
const kAppEnv = AppEnvItems.mockup;

const kApiLocalUrl = "http://localhost:8080/api/v1";
const kApiTestUrl = "https://bsddevteam.com/api/v1";
