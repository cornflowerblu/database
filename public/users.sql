create table users
(
	id uuid default gen_random_uuid() not null
		constraint user_pk
			primary key,
	user_id text not null,
	created_at timestamp default now(),
	first_name text,
	last_name text
);

comment on column users.id is 'Internal identifier for the user';

comment on column users.user_id is 'An ID provided by the Auth system';

alter table users owner to postgres;

