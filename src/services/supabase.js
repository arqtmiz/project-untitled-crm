import { createClient } from '@supabase/supabase-js';

// Credenciais do projeto Supabase do SanitaCRM.
// Definidas no arquivo .env (veja .env.example) — nunca fixas no código.
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  throw new Error(
    'Configure VITE_SUPABASE_URL e VITE_SUPABASE_ANON_KEY no arquivo .env (veja .env.example).',
  );
}

const supabase = createClient(supabaseUrl, supabaseKey);

export default supabase;

export { supabaseUrl };
