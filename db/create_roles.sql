CREATE ROLE world_viewer;
GRANT SELECT ON ALL TABLES IN SCHEMA world TO public, world_viewer;

GRANT USAGE ON SCHEMA world TO anon, public, world_viewer;
GRANT ALL ON ALL TABLES IN SCHEMA world TO anon, public, world_viewer;
GRANT ALL ON ALL ROUTINES IN SCHEMA world TO anon, public, world_viewer;
GRANT ALL ON ALL SEQUENCES IN SCHEMA world TO anon, public, world_viewer;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA world GRANT ALL ON TABLES TO anon, public, world_viewer;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA world GRANT ALL ON ROUTINES TO anon, public, world_viewer;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA world GRANT ALL ON SEQUENCES TO anon, public, world_viewer;


CREATE ROLE world_editor;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA world TO world_editor;

