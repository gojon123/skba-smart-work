export const APP_CONFIG = {
  APP_NAME: 'SKBA Smart Work',
  MODE: 'auto',
  SUPABASE_URL: 'REPLACE_WITH_SUPABASE_URL',
  SUPABASE_ANON_KEY: 'REPLACE_WITH_SUPABASE_ANON_KEY',
  DEMO_USERS: [
    {
      id: 'demo-samkoo-1',
      email: 'engineer@skba.local',
      password: '1234',
      display_name: '김응준',
      role: 'Samkoo',
      crew: 'A',
      building: '1동',
      lang: 'ko'
    },
    {
      id: 'demo-eng-1',
      email: 'engineertech@skba.local',
      password: '1234',
      display_name: '천준범',
      role: 'Engineer',
      crew: 'B',
      building: '1동',
      lang: 'ko'
    },
    {
      id: 'demo-op-1',
      email: 'operator1@skba.local',
      password: '1234',
      display_name: '아무개',
      role: 'Operator',
      crew: 'B',
      building: '1동',
      lang: 'ko'
    }
  ]
};
