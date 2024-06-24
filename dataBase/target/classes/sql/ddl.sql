DROP DATABASE IF EXISTS travel_agency;
CREATE DATABASE travel_agency;
USE travel_agency;

CREATE TABLE document_types (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40)
);

CREATE TABLE customers (
    id VARCHAR(20)  NOT NULL PRIMARY KEY,
    name VARCHAR(30),
    age INT,
    id_document INT,
    CONSTRAINT fk_customer_document_type FOREIGN KEY (id_document) REFERENCES document_types(id)
);

CREATE TABLE flight_fares (
    id INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(40),
    details TEXT,
    value DOUBLE(7,3)
);

CREATE TABLE trips (
    id INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    trip_date DATE,
    price_trip DOUBLE
);

CREATE TABLE trip_booking (
    id INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date DATE,
    id_trip INT,
    CONSTRAINT fk_trip_booking_trips FOREIGN KEY (id_trip) REFERENCES trips(id)
);

CREATE TABLE trip_booking_details (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_trip_booking INT,
    id_customers VARCHAR(20),
    id_fares INT,
    CONSTRAINT fk_details_trip_booking FOREIGN KEY (id_trip_booking) REFERENCES trip_booking(id),
    CONSTRAINT fk_booking_details_customers FOREIGN KEY (id_customers) REFERENCES customers(id),
    CONSTRAINT fk_booking_details_fares FOREIGN KEY (id_fares) REFERENCES flight_fares(id)
);

CREATE TABLE countries (
  id VARCHAR(5) NOT NULL PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE cities (
    id VARCHAR(5) NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    id_country VARCHAR(5) NOT NULL,
    
    CONSTRAINT fk_cities_countries FOREIGN KEY (id_country) REFERENCES countries (id)
);

CREATE TABLE airports (
    id VARCHAR(5) NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    id_city VARCHAR(5) NOT NULL,
    
    CONSTRAINT fk_airports_cities FOREIGN KEY ( id_city ) REFERENCES cities (id)
);

CREATE TABLE gates (
    id INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    gate_number VARCHAR(10) NOT NULL,
    id_airport VARCHAR(5),
    
    CONSTRAINT fk_gates_airports FOREIGN KEY ( id_airport ) REFERENCES airports (id)
);

CREATE TABLE airlines (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE tripulation_roles (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40)
);

CREATE TABLE employees (
    id VARCHAR(20) NOT NULL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    id_rol INTEGER NOT NULL,
    ingress_date DATE,
    id_airline INTEGER NOT NULL,
    id_airport VARCHAR(5),
    
    CONSTRAINT fk_employees_tripulation_roles FOREIGN KEY ( id_rol ) REFERENCES tripulation_roles (id),
    CONSTRAINT fk_employees_airlines FOREIGN KEY ( id_airline ) REFERENCES airlines (id),
    CONSTRAINT fk_employees_airports FOREIGN KEY ( id_airport ) REFERENCES airports (id)
);

CREATE TABLE revision_details (
    id VARCHAR(20) NOT NULL PRIMARY KEY,
    description TEXT,
    id_employee VARCHAR(20) NOT NULL,
    
    CONSTRAINT fk_revision_details_employees FOREIGN KEY ( id_employee ) REFERENCES employees (id)
);

CREATE TABLE manufacturers (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40)
);

CREATE TABLE models (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    id_manufacturer INT,
    CONSTRAINT fk_models_manufacturers FOREIGN KEY (id_manufacturer) REFERENCES manufacturers(id)
);

CREATE TABLE statuses (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30)
);

CREATE TABLE planes (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plates VARCHAR(30),
    capacity INT,
    fabrication_date DATE,
    id_status INT,
    id_model INT,
    CONSTRAINT fk_planes_statuses FOREIGN KEY (id_status) REFERENCES statuses(id),
    CONSTRAINT fk_planes_models FOREIGN KEY (id_model) REFERENCES models(id)
);

CREATE TABLE revisions (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    revision_date DATE,
    id_plane INT,
    CONSTRAINT fk_revisions_planes FOREIGN KEY (id_plane) REFERENCES planes(id)
);

CREATE TABLE rev_employee (
    id_employee VARCHAR(20) NOT NULL,
    id_revision INT NOT NULL,
    PRIMARY KEY (id_employee, id_revision)
);

CREATE TABLE flight_connections (
  id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  connection_number VARCHAR(20),
  id_trip INTEGER NOT NULL,
  id_plane INTEGER,
  id_origin VARCHAR(5),
  id_destination VARCHAR(5),
  CONSTRAINT fk_flight_connections_trips FOREIGN KEY ( id_trip ) REFERENCES trips (id),
  CONSTRAINT fk_flight_connections_planes FOREIGN KEY ( id_plane ) REFERENCES planes (id),
  CONSTRAINT fk_flight_connections_airport_origin FOREIGN KEY ( id_origin ) REFERENCES airports (id),
  CONSTRAINT fk_flight_connections_airport_destination FOREIGN KEY ( id_destination ) REFERENCES airports (id)
);

CREATE TABLE trip_crews (
  id_employee VARCHAR(20) NOT NULL,
  id_connection INTEGER NOT NULL,
  CONSTRAINT fk_trip_crews_employees FOREIGN KEY ( id_employee ) REFERENCES employees (id),
  CONSTRAINT fk_trip_crews_connections FOREIGN KEY ( id_connection ) REFERENCES flight_connections (id)
);
 
 -- Inserción de tipos de documentos
INSERT INTO document_types (name) VALUES
    ('Passport'),
    ('ID Card'),
    ('Driver''s License'),
    ('Visa');

-- Inserción de clientes
INSERT INTO customers (id, name, age, id_document) VALUES
    ('CUST001', 'Alice Johnson', 28, 1),
    ('CUST002', 'Bob Smith', 35, 2),
    ('CUST003', 'Eve Parker', 42, 3),
    ('CUST004', 'John Doe', 25, 1);

-- Inserción de tarifas de vuelo
INSERT INTO flight_fares (description, details, value) VALUES
    ('Economy Class', 'Standard fare with no extra services', 250.00),
    ('Business Class', 'Premium service with more legroom and meals', 800.00),
    ('First Class', 'Luxury service with personalized attention and exclusive lounge access', 1500.00);

-- Inserción de viajes
INSERT INTO trips (trip_date, price_trip) VALUES
    ('2024-07-15', 350.00),
    ('2024-08-20', 280.00),
    ('2024-09-10', 400.00),
    ('2024-06-23', 150.00),
    ('2024-06-24', 200.00),
    ('2024-06-25', 175.00),
    ('2024-06-26', 220.00),
    ('2024-06-27', 180.00);

-- Inserción de reservas de viaje
INSERT INTO trip_booking (date, id_trip) VALUES
    ('2024-06-25', 1),
    ('2024-06-26', 2),
    ('2024-06-27', 3);

-- Inserción de detalles de reserva de viaje
INSERT INTO trip_booking_details (id_trip_booking, id_customers, id_fares) VALUES
    (1, 'CUST001', 1),
    (2, 'CUST002', 2),
    (3, 'CUST003', 3),
    (3, 'CUST004', 1);

-- Inserción de países
INSERT INTO countries (id, name) VALUES
    ('USA', 'United States'),
    ('CAN', 'Canada'),
    ('GBR', 'United Kingdom');

-- Inserción de ciudades
INSERT INTO cities (id, name, id_country) VALUES
    ('NYC', 'New York City', 'USA'),
    ('LON', 'London', 'GBR'),
    ('TOR', 'Toronto', 'CAN');

-- Inserción de aeropuertos
INSERT INTO airports (id, name, id_city) VALUES
    ('JFK', 'John F. Kennedy International Airport', 'NYC'),
    ('LHR', 'Heathrow Airport', 'LON'),
    ('YYZ', 'Toronto Pearson International Airport', 'TOR');

-- Inserción de puertas de embarque
INSERT INTO gates (gate_number, id_airport) VALUES
    ('A1', 'JFK'),
    ('B2', 'LHR'),
    ('C3', 'YYZ');

-- Inserción de aerolíneas
INSERT INTO airlines (name) VALUES
    ('Delta Airlines'),
    ('British Airways'),
    ('Air Canada');

-- Inserción de roles de tripulación
INSERT INTO tripulation_roles (name) VALUES
    ('Pilot'),
    ('Co-Pilot'),
    ('Flight Attendant');

-- Inserción de empleados
INSERT INTO employees (id, name, id_rol, ingress_date, id_airline, id_airport) VALUES
    ('EMP001', 'Michael Johnson', 1, '2019-05-10', 1, 'JFK'),
    ('EMP002', 'Emily White', 3, '2020-01-15', 2, 'LHR'),
    ('EMP003', 'David Brown', 2, '2018-08-20', 3, 'YYZ');

-- Inserción de detalles de revisión
INSERT INTO revision_details (id, description, id_employee) VALUES
    ('REV001', 'Routine maintenance check', 'EMP001'),
    ('REV002', 'Emergency repair of landing gear', 'EMP002'),
    ('REV003', 'Inspection of avionics systems', 'EMP003');

-- Inserción de fabricantes de aviones
INSERT INTO manufacturers (name) VALUES
    ('Boeing'),
    ('Airbus'),
    ('Embraer');

-- Inserción de modelos de aviones
INSERT INTO models (name, id_manufacturer) VALUES
    ('737', 1),
    ('A320', 2),
    ('E190', 3);

-- Inserción de estados de aviones
INSERT INTO statuses (name) VALUES
    ('Active'),
    ('Under Maintenance'),
    ('Retired');

-- Inserción de aviones
INSERT INTO planes (plates, capacity, fabrication_date, id_status, id_model) VALUES
    ('N12345', 180, '2018-10-25', 1, 1),
    ('G-ABCD', 220, '2019-02-15', 2, 2),
    ('C-FGHIJ', 150, '2017-07-20', 1, 3);

-- Inserción de revisiones de aviones
INSERT INTO revisions (revision_date, id_plane) VALUES
    ('2023-12-05', 1),
    ('2024-02-20', 2),
    ('2024-06-10', 3);

-- Inserción de empleados por revisión
INSERT INTO rev_employee (id_employee, id_revision) VALUES
    ('EMP001', 1),
    ('EMP002', 2),
    ('EMP003', 3);

-- Inserción de conexiones de vuelo
INSERT INTO flight_connections (connection_number, id_trip, id_plane, id_origin, id_destination) VALUES
    ('FLIGHT001', 1, 1, 'JFK', 'LHR'),
    ('FLIGHT002', 2, 2, 'LHR', 'YYZ'),
    ('FLIGHT003', 3, 3, 'YYZ', 'JFK'),
    ('FLIGHT003', 3, 3, 'JFK', 'LHR'),
    ('CN12345', 4, NULL, 'JFK', 'LHR'),
    ('CN12346', 5, NULL, 'YYZ', 'LHR'),
    ('CN12347', 6, NULL, 'JFK', 'LHR'),
    ('CN12348', 7, NULL, 'JFK', 'YYZ'),
    ('CN12349', 8, NULL, 'YYZ', 'YYZ');

-- Inserción de tripulaciones de vuelo
INSERT INTO trip_crews (id_employee, id_connection) VALUES
    ('EMP001', 1),
    ('EMP002', 2),
    ('EMP003', 3);
