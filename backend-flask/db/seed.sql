-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Nyamekye Asford', 'nyamekyeasford@gmail.com', 'nyamekyeasford' ,'MOCK'),
  ('Andrew Bayko', 'asfordcoin@gmail.com', 'bayko' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'nyamekyeasford' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )
