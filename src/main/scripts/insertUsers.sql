INSERT INTO public.users(
	user_id, address1, address2, city, country, phone_cell, phone_home, phone_work, state, zip, email, first_name, last_name, role)
	VALUES (1, '2123 Santa Monica', 'Apartment ', 'Los Angeles', 'USA', '213-321-4214', '321-424-3214', '442-2342-5411', 'CA', '90024-1235', 'admin@email.com', 'Bruce', 'Wayne', 'ADMIN'),
   		   (2, '124 Star Labs', 'Apartment 3', 'Detriot', 'USA', '994-234-1244', '994-321-3214', '994-221-4223', 'CA', '7292-4211', 'staff@email.com', 'Barry', 'Allen', 'STAFF'),
   		   (3, '3213 A street', 'Apartment 3', 'Chicago', 'USA', '323-123-1234', '323-321-3214', '232-231-1124', 'CA', '4271-2311', 'user@email.com', 'Barak', 'Obama', 'USER');