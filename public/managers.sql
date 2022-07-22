create table managers
(
	id uuid default gen_random_uuid() not null
		constraint managers_pk
			primary key,
	user_id uuid not null
		constraint managers_fn
			references users,
	created_at timestamp default now()
);

comment on column managers.user_id is 'The relationship between the manager entity and base user';

alter table managers owner to postgres;

