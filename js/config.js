export const APP_CONFIG = {
  APP_NAME: 'SKBA Smart Work',
  MODE: 'auto',
  SUPABASE_URL: 'REPLACE_WITH_SUPABASE_URL',
  SUPABASE_ANON_KEY: 'REPLACE_WITH_SUPABASE_ANON_KEY',
  DEMO_USERS: [
    {
      id: 'demo-eng-1',
      email: 'engineer@skba.local',
      password: '1234',
      display_name: '김응준',
      role: 'Engineer',
      crew: 'A',
      building: '1동',
      lang: 'ko'
    },
    {
      id: 'demo-op-1',
      email: 'operator1@skba.local',
      password: '1234',
      display_name: 'Operator 1',
      role: 'Operator',
      crew: 'B',
      building: '1동',
      lang: 'ko'
    },
    {
      id: 'demo-samkoo-1',
      email: 'samkoo1@skba.local',
      password: '1234',
      display_name: 'Samkoo 1',
      role: 'Samkoo',
      crew: 'C',
      building: '2동',
      lang: 'ko'
    }
  ]
};
