# Casos de uso
# Administrador
## ------- Trayecto -------

## Caso de Uso 2: Asignar Tripulación a Trayecto ---
- **Descripción:** Permite asignar empleados a un trayecto específico.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Asignar Tripulación" en el menú principal.

  2. El sistema muestra una lista de trayectos disponibles.

  3. El administrador selecciona un trayecto.

  4. El sistema muestra una lista de empleados disponibles.

  5. El administrador selecciona los empleados a asignar al trayecto.

  6. El sistema guarda la asignación en la base de datos.

  7. El sistema confirma la asignación exitosa de la tripulación.


- **Postcondiciones:** Los empleados seleccionados son asignados al trayecto en la base de datos.
- **Excepciones:**
  - Si el trayecto seleccionado no existe, el sistema muestra un mensaje de error.
  - Si no hay empleados disponibles, el sistema muestra un mensaje de error.

## Caso de Uso 17: Asignar Aeronave a Trayecto ---
- **Descripción:** Permite asignar una aeronave a un trayecto específico.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**

  1. El administrador selecciona la opción "Asignar Aeronave a Trayecto" en el menú principal.

  2. El sistema muestra una lista de trayectos disponibles.

  3. El administrador selecciona un trayecto.

  4. El sistema muestra una lista de aeronaves disponibles.

  5. El administrador selecciona una aeronave para el trayecto.

  6. El sistema guarda la asignación en la base de datos.

  7. El sistema confirma la asignación exitosa de la aeronave.

- **Postcondiciones:** La aeronave es asignada al trayecto en la base de datos.
- **Excepciones:**
  - Si el trayecto seleccionado no existe, el sistema muestra un mensaje de error.
  - Si no hay aeronaves disponibles, el sistema muestra un mensaje de error.

## Caso de Uso 26: Consultar Asignación de Tripulación ---
- **Descripción:** Permite consultar la asignación de tripulación para un trayecto específico.
- **Actor Principal:** Administrador del Sistema, Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de administrador o agente de ventas.
- **Flujo Principal:**
  1. El usuario selecciona la opción "Consultar Asignación de Tripulación" en el menú principal.
  2. El sistema solicita al usuario ingresar el identificador del trayecto.

  3. El usuario ingresa el identificador del trayecto.

  4. El sistema busca las asignaciones de tripulación en la base de datos.

  5. El sistema muestra la información de la tripulación asignada al trayecto.

- **Postcondiciones:** La información de la tripulación asignada es mostrada al usuario.
- **Excepciones:** Si el trayecto no tiene tripulación asignada, el sistema muestra un mensaje de error.

## Caso de Uso 27: Consultar Escalas de un Trayecto ---
- **Descripción:** Permite consultar las escalas asociadas a un trayecto específico.
- **Actor Principal:** Administrador del Sistema, Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de administrador o agente de ventas.
- **Flujo Principal:**
  1. El usuario selecciona la opción "Consultar Escalas de un Trayecto" en el menú principal.

  2. El sistema solicita al usuario ingresar el identificador del trayecto.

  3. El usuario ingresa el identificador del trayecto.

  4. El sistema busca las escalas asociadas en la base de datos.

  5. El sistema muestra la información de las escalas asociadas al trayecto.

- **Postcondiciones:** La información de las escalas asociadas es mostrada al usuario.
- **Excepciones:** Si el trayecto no tiene escalas registradas, el sistema muestra un mensaje de error.

## Caso de Uso 28: Actualizar Información de Escala ---
- **Descripción:** Permite actualizar la información de una escala registrada.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Actualizar Escala" en el menú principal.

  2. El sistema solicita al administrador ingresar el identificador de la escala.

  3. El administrador ingresa el identificador de la escala.

  4. El sistema muestra la información actual de la escala.

  5. El administrador ingresa los nuevos detalles de la escala.

  6. El sistema valida la información ingresada.

  7. El sistema actualiza la información de la escala en la base de datos.

  8. El sistema confirma la actualización exitosa de la escala.
- **Postcondiciones:** La información de la escala es actualizada y almacenada en la base de datos.
- **Excepciones:**
  - Si la escala no está registrada, el sistema muestra un mensaje de error.
  - Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de error.

## Caso de Uso 29: Eliminar Escala ---
- **Descripción:** Permite eliminar una escala del sistema.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Eliminar Escala" en el menú principal.

  2. El sistema solicita al administrador ingresar el identificador de la escala.

  3. El administrador ingresa el identificador de la escala.

  4. El sistema valida la existencia de la escala.

  5. El sistema elimina la escala de la base de datos.

  6. El sistema confirma la eliminación exitosa de la escala.

- **Postcondiciones:** La escala es eliminada de la base de datos.
- **Excepciones:**
Si la escala no está registrada, el sistema muestra un mensaje de error.

## Caso de Uso 9: Consultar Información de Trayecto  ---
- **Descripción:** Permite consultar la información de un trayecto específico.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**

  1. El administrador selecciona la opción "Consultar Trayecto" en el menú principal.

  2. El sistema solicita al administrador ingresar el identificador del trayecto.

  3. El administrador ingresa el identificador del trayecto.

  4. El sistema busca la información del trayecto en la base de datos.

  5. El sistema muestra la información del trayecto.


- **Postcondiciones:** La información del trayecto es mostrada al administrador.
- **Excepciones:** Si el trayecto no está registrado, el sistema muestra un mensaje de error.


## Caso de Uso 18: Actualizar Información de Trayecto ---
- **Descripción:** Permite actualizar la información de un trayecto registrado.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**

  1. El administrador selecciona la opción "Actualizar Trayecto" en el menú principal.

  2. El sistema solicita al administrador ingresar el identificador del trayecto.

  3. El administrador ingresa el identificador del trayecto.

  4. El sistema muestra la información actual del trayecto.

  5. El administrador ingresa los nuevos detalles del trayecto.

  6. El sistema valida la información ingresada.

  7. El sistema actualiza la información del trayecto en la base de datos.

  8. El sistema confirma la actualización exitosa del trayecto.


- **Postcondiciones:** La información del trayecto es actualizada y almacenada en la base de datos.
- **Excepciones:**
  - Si el trayecto no está registrado, el sistema muestra un mensaje de error.
  - Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de error.

## Caso de Uso 19: Eliminar Trayecto ---
- **Descripción:** Permite eliminar un trayecto del sistema.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**

  1. El administrador selecciona la opción "Eliminar Trayecto" en el menú principal.

  2. El sistema solicita al administrador ingresar el identificador del trayecto.

  3. El administrador ingresa el identificador del trayecto.

  4. El sistema valida la existencia del trayecto.

  5. El sistema elimina el trayecto de la base de datos.

  6. El sistema confirma la eliminación exitosa del trayecto.


- **Postcondiciones:** El trayecto es eliminado de la base de datos.
- **Excepciones:** Si el trayecto no está registrado, el sistema muestra un mensaje de error.
---
## ------- Aeropuerto -------
## Caso de Uso 10: Registrar Aeropuerto ---
- **Descripción:** Permite registrar un nuevo aeropuerto en el sistema.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**

  1. El administrador selecciona la opción "Registrar Aeropuerto" en el menú principal.

  2. El sistema solicita al administrador ingresar los detalles del aeropuerto: ID, nombre, ciudad, país.

  3. El administrador ingresa los detalles solicitados.

  4. El sistema valida la información ingresada.

  5. El sistema guarda el nuevo aeropuerto en la base de datos.

  6. El sistema confirma el registro exitoso del aeropuerto.


- **Postcondiciones:** El aeropuerto es registrado y almacenado en la base de datos.
- **Excepciones:** Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de error.

## Caso de Uso 11: Consultar Información de Aeropuerto ---
- **Descripción:** Permite consultar la información de un aeropuerto registrado.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Consultar Aeropuerto" en el menú principal.

  2. El sistema solicita al administrador ingresar el ID del aeropuerto.

  3. El administrador ingresa el ID del aeropuerto.

  4. El sistema busca la información del aeropuerto en la base de datos.

  5. El sistema muestra la información del aeropuerto.

- **Postcondiciones:** La información del aeropuerto es mostrada al administrador.
- **Excepciones:** Si el aeropuerto no está registrado, el sistema muestra un mensaje de error.

## Caso de Uso 20: Actualizar Información de Aeropuerto ---
- **Descripción:** Permite actualizar la información de un aeropuerto registrado.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**

  1. El administrador selecciona la opción "Actualizar Aeropuerto" en el menú principal.

  2. El sistema solicita al administrador ingresar el ID del aeropuerto.

  3. El administrador ingresa el ID del aeropuerto.

  4. El sistema muestra la información actual del aeropuerto.

  5. El administrador ingresa los nuevos detalles del aeropuerto.

  6. El sistema valida la información ingresada.

  7. El sistema actualiza la información del aeropuerto en la base de datos.

  8. El sistema confirma la actualización exitosa del aeropuerto.


- **Postcondiciones:** La información del aeropuerto es actualizada y almacenada en la base de datos.
- **Excepciones:**
  - Si el aeropuerto no está registrado, el sistema muestra un mensaje de error.
  - Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de
  error.

## Caso de Uso 21: Eliminar Aeropuerto ---
- **Descripción:** Permite eliminar un aeropuerto del sistema.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Eliminar Aeropuerto" en el menú principal.

  2. El sistema solicita al administrador ingresar el ID del aeropuerto.

  3. El administrador ingresa el ID del aeropuerto.

  4. El sistema valida la existencia del aeropuerto.

  5. El sistema elimina el aeropuerto de la base de datos.

  6. El sistema confirma la eliminación exitosa del aeropuerto.


- **Postcondiciones:** El aeropuerto es eliminado de la base de datos.
- **Excepciones:** Si el aeropuerto no está registrado, el sistema muestra un mensaje de error.
---

## ------- Avion -------
## Caso de Uso 1: Registrar Avión ---
- **Descripción:** Permite registrar un nuevo avión en el sistema con todos sus detalles.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Registrar Avión" en el menú principal.

  2. El sistema solicita al administrador ingresar los detalles del avión: matrícula, capacidad, fecha de fabricación, estado, aerolínea, modelo.

  3. El administrador ingresa los detalles solicitados.

  4. El sistema valida la información ingresada.

  5. El sistema guarda el nuevo avión en la base de datos.

  6. El sistema confirma el registro exitoso del avión.


- **Postcondiciones:** El avión es registrado y almacenado en la base de datos. 
- **Excepciones:**
  - Si la matrícula del avión ya existe, el sistema muestra un mensaje de error.
  - Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de error.


## Caso de Uso 15: Actualizar Información de Avión ---
- **Descripción:** Permite actualizar la información de un avión registrado.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Actualizar Avión" en el menú principal.

  2. El sistema solicita al administrador ingresar la matrícula del avión.

  3. El administrador ingresa la matrícula del avión.

  4. El sistema muestra la información actual del avión.

  5. El administrador ingresa los nuevos detalles del avión.

  6. El sistema valida la información ingresada.

  7. El sistema actualiza la información del avión en la base de datos.

  8. El sistema confirma la actualización exitosa del avión.


- **Postcondiciones:** La información del avión es actualizada y almacenada en la base de datos.
- **Excepciones:**
  -  Si el avión no está registrado, el sistema muestra un mensaje de error.
  -  Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de error. 

## Caso de Uso 8: Consultar Información de Avión ---
- **Descripción:** Permite consultar la información de un avión registrado.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**

  1. El administrador selecciona la opción "Consultar Avión" en el menú principal.

  2. El sistema solicita al administrador ingresar la matrícula del avión.

  3. El administrador ingresa la matrícula del avión.

  4. El sistema busca la información del avión en la base de datos.

  5. El sistema muestra la información del avión.

- **Postcondiciones:** La información del avión es mostrada al administrador.
- **Excepciones:** Si el avión no está registrado, el sistema muestra un mensaje de error.

## Caso de Uso 16: Eliminar Avión ---
- **Descripción:** Permite eliminar un avión del sistema.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Eliminar Avión" en el menú principal.

  2. El sistema solicita al administrador ingresar la matrícula del avión.

  3. El administrador ingresa la matrícula del avión.

  4. El sistema valida la existencia del avión.

  5. El sistema elimina el avión de la base de datos.

  6. El sistema confirma la eliminación exitosa del avión.

  - **Postcondiciones:** El avión es eliminado de la base de datos.
  - **Excepciones:** Si el avión no está registrado, el sistema muestra un mensaje de error.

## ------- Tarifa de Vuelo -------
## Caso de Uso 30: Registrar Tarifa de Vuelo ---
- **Descripción:** Permite registrar una nueva tarifa de vuelo en el sistema.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Registrar Tarifa de Vuelo" en el menú principal.

  2. El sistema solicita al administrador ingresar los detalles de la tarifa: descripción valor.

  3. El administrador ingresa los detalles solicitados.

  4. El sistema valida la información ingresada.

  5. El sistema guarda la nueva tarifa en la base de datos.

  6. El sistema confirma el registro exitoso de la tarifa.


- **Postcondiciones:** La tarifa es registrada y almacenada en la base de datos.
- **Excepciones:**
Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de
error.

## Caso de Uso 31: Actualizar Información de Tarifa de Vuelo ---
- **Descripción:** Permite actualizar la información de una tarifa de vuelo registrada.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Actualizar Tarifa de Vuelo" en el menú principal.

  2. El sistema solicita al administrador ingresar el identificador de la tarifa.

  3. El administrador ingresa el identificador de la tarifa.

  4. El sistema muestra la información actual de la tarifa.

  5. El administrador ingresa los nuevos detalles de la tarifa.

  6. El sistema valida la información ingresada.

  7. El sistema actualiza la información de la tarifa en la base de datos.

  8. El sistema confirma la actualización exitosa de la tarifa.

- **Postcondiciones:** La información de la tarifa es actualizada y almacenada en la base de datos.
- **Excepciones:**
  - Si la tarifa no está registrada, el sistema muestra un mensaje de error.
  - Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de
  error.

## Caso de Uso 33: Consultar Tarifa de Vuelo ---
- **Descripción:** Permite consultar la información de una tarifa de vuelo específica.
- **Actor Principal:** Administrador del Sistema, Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de administrador o agente de ventas.
- **Flujo Principal:**
  1. El usuario selecciona la opción "Consultar Tarifa de Vuelo" en el menú principal.

  2. El sistema solicita al usuario ingresar el identificador de la tarifa.

  3. El usuario ingresa el identificador de la tarifa.

  4. El sistema busca la información de la tarifa en la base de datos.

  5. El sistema muestra la información de la tarifa.

- **Postcondiciones:** La información de la tarifa es mostrada al usuario.
- **Excepciones:** Si la tarifa no está registrada, el sistema muestra un mensaje de error.

## Caso de Uso 32: Eliminar Tarifa de Vuelo ---
- **Descripción:** Permite eliminar una tarifa de vuelo del sistema.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Eliminar Tarifa de Vuelo" en el menú principal.

  2. El sistema solicita al administrador ingresar el identificador de la tarifa.

  3. El administrador ingresa el identificador de la tarifa.

  4. El sistema valida la existencia de la tarifa.

  5. El sistema elimina la tarifa de la base de datos.

  6. El sistema confirma la eliminación exitosa de la tarifa.


- **Postcondiciones:** La tarifa es eliminada de la base de datos.
- **Excepciones:**
Si la tarifa no está registrada, el sistema muestra un mensaje de error.
---

## ----- Tipo de Documento -----
## Caso de Uso 34: Registrar Tipo de Documento ---
- **Descripción:** Permite registrar un nuevo tipo de documento en el sistema.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Registrar Tipo de Documento" en el menú principal.

  2. El sistema solicita al administrador ingresar los detalles del tipo de documento: nombre.

  3. El administrador ingresa los detalles solicitados.

  4. El sistema valida la información ingresada.

  5. El sistema guarda el nuevo tipo de documento en la base de datos.

  6. El sistema confirma el registro exitoso del tipo de documento.
- **Postcondiciones:** El tipo de documento es registrado y almacenado en la base de datos.
- **Excepciones:** Si el campo obligatorio no es ingresado, el sistema muestra un mensaje de error.
## Caso de Uso 35: Actualizar Tipo de Documento ---
- **Descripción:** Permite actualizar la información de un tipo de documento registrado.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**
  1. El administrador selecciona la opción "Actualizar Tipo de Documento" en el menú principal.

  2. El sistema solicita al administrador ingresar el identificador del tipo de documento.

  3. El administrador ingresa el identificador del tipo de documento.

  4. El sistema muestra la información actual del tipo de documento.

  5. El administrador ingresa los nuevos detalles del tipo de documento.

  6. El sistema valida la información ingresada.

  7. El sistema actualiza la información del tipo de documento en la base de datos.

  8. El sistema confirma la actualización exitosa del tipo de documento.

- **Postcondiciones:** La información del tipo de documento es actualizada y almacenada en la base de datos.
- **Excepciones:**
  - Si el tipo de documento no está registrado, el sistema muestra un mensaje de error.
  - Si el campo obligatorio no es ingresado, el sistema muestra un mensaje de error.

## Caso de Uso 36: Eliminar Tipo de Documento ---
- **Descripción:** Permite eliminar un tipo de documento del sistema.
- **Actor Principal:** Administrador del Sistema
- **Precondiciones:** El usuario debe tener privilegios de administrador.
- **Flujo Principal:**

  1. El administrador selecciona la opción "Eliminar Tipo de Documento" en el menú principal.

  2. El sistema solicita al administrador ingresar el identificador del tipo de documento.

  3. El administrador ingresa el identificador del tipo de documento.

  4. El sistema valida la existencia del tipo de documento.

  5. El sistema elimina el tipo de documento de la base de datos.

  6. El sistema confirma la eliminación exitosa del tipo de documento.
- **Postcondiciones:** El tipo de documento es eliminado de la base de datos.
- **Excepciones:** Si el tipo de documento no está registrado, el sistema muestra un mensaje de error.

## Caso de Uso 37: Consultar Tipo de Documento ---
- **Descripción:** Permite consultar la información de un tipo de documento específico.
- **Actor Principal:** Administrador del Sistema, Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de administrador o agente de ventas.
- **Flujo Principal:**
  1. El usuario selecciona la opción "Consultar Tipo de Documento" en el menú principal.

  2. El sistema solicita al usuario ingresar el identificador del tipo de documento.

  3. El usuario ingresa el identificador del tipo de documento.

  4. El sistema busca la información del tipo de documento en la base de datos.

  5. El sistema muestra la información del tipo de documento.

- **Postcondiciones:** La información del tipo de documento es mostrada al usuario.
- **Excepciones:** Si el tipo de documento no está registrado, el sistema muestra un mensaje de error.
---
---
# AGENTE DE VENTAS
## ----- Reserva de vuelo -----
## Caso de Uso 3: Crear Reserva de Vuelo
- **Descripción:** Permite crear una nueva reserva de vuelo para un cliente.
- **Actor Principal:** Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de agente de ventas.
- **Flujo Principal:**
  1. El agente de ventas selecciona la opción "Crear Reserva" en el menú principal.

  2. El sistema solicita al agente ingresar los detalles de la reserva: cliente, trayecto,  fecha, tarifa.

  3. El agente ingresa los detalles solicitados.

  4. El sistema valida la información ingresada.

  5. El sistema guarda la nueva reserva en la base de datos.

  6. El sistema confirma la creación exitosa de la reserva.

- **Postcondiciones:** La reserva es registrada y almacenada en la base de datos.
- **Excepciones:**
  - Si el cliente no está registrado, el sistema muestra un mensaje de error.
  - Si el trayecto seleccionado no existe, el sistema muestra un mensaje de error.
  - Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de error.

## Caso de Uso 6: Consultar Reserva de Vuelo
- **Descripción:** Permite consultar las reservas de vuelo de un cliente o de un trayecto específico.
- **Actor Principal:** Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de agente de ventas.
- **Flujo Principal:**
  1. El agente de ventas selecciona la opción "Consultar Reserva" en el menú principal.

  2. El sistema solicita al agente ingresar el identificador del cliente o del trayecto.

  3. El agente ingresa el identificador solicitado.

  4. El sistema busca las reservas en la base de datos.

  5. El sistema muestra las reservas encontradas.

- **Postcondiciones:** Las reservas son mostradas al agente.
- **Excepciones:** Si no se encuentran reservas, el sistema muestra un mensaje de error.

## Caso de Uso 14: Eliminar Reserva de Vuelo
- **Descripción:** Permite eliminar una reserva de vuelo existente.
- **Actor Principal:** Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de agente de ventas.
- **Flujo Principal:**
  1. El agente de ventas selecciona la opción "Eliminar Reserva" en el menú principal.

  2. El sistema solicita al agente ingresar el identificador de la reserva.

  3. El agente ingresa el identificador de la reserva.

  4. El sistema valida la existencia de la reserva.

  5. El sistema elimina la reserva de la base de datos.

  6. El sistema confirma la eliminación exitosa de la reserva.

- **Postcondiciones:** La reserva es eliminada de la base de datos.
- **Excepciones:** Si la reserva no está registrada, el sistema muestra un mensaje de error.

## Caso de Uso 23: Consultar Información de Vuelo
- **Descripción:** Permite consultar la información de un vuelo específico.
- **Actor Principal:** Administrador del Sistema, Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de administrador o agente de ventas.
- **Flujo Principal:**

  1. El usuario selecciona la opción "Consultar Vuelo" en el menú principal.

  2. El sistema solicita al usuario ingresar el número de vuelo.

  3. El usuario ingresa el número de vuelo.

  4. El sistema busca la información del vuelo en la base de datos.

  5. El sistema muestra la información del vuelo.

- **Postcondiciones:** La información del vuelo es mostrada al usuario.
- **Excepciones:** Si el vuelo no está registrado, el sistema muestra un mensaje de error.
rf

---

## Caso de Uso 7: Registrar Cliente
- **Descripción:** Permite registrar un nuevo cliente en el sistema.
- **Actor Principal:** Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de agente de ventas.
- **Flujo Principal:**
  1. El agente de ventas selecciona la opción "Registrar Cliente" en el menú principal.

  2. El sistema solicita al agente ingresar los detalles del cliente: nombre, edad, tipo de   documento, número de documento.

  3. El agente ingresa los detalles solicitados.

  4. El sistema valida la información ingresada.

  5. El sistema guarda el nuevo cliente en la base de datos.

  6. El sistema confirma el registro exitoso del cliente.

- **Postcondiciones:** El cliente es registrado y almacenado en la base de datos.
- **Excepciones:** Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de error.

## Caso de Uso 5: Consultar Información de Cliente
- **Descripción:** Permite consultar la información de un cliente registrado.
- **Actor Principal:** Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de agente de ventas.
- **Flujo Principal:**
  1. El agente de ventas selecciona la opción "Consultar Cliente" en el menú principal.

  2. El sistema solicita al agente ingresar el identificador del cliente.

  3. El agente ingresa el identificador del cliente.

  4. El sistema busca la información del cliente en la base de datos.

  5. El sistema muestra la información del cliente.

- **Postcondiciones:** La información del cliente es mostrada al agente.
- **Excepciones:** Si el cliente no está registrado, el sistema muestra un mensaje de error.

## Caso de Uso 13: Actualizar Información de Cliente
- **Descripción:** Permite actualizar la información de un cliente registrado.
- **Actor Principal:** Agente de Ventas
- **Precondiciones:** El usuario debe tener privilegios de agente de ventas.
- **Flujo Principal:**
  1. El agente de ventas selecciona la opción "Actualizar Cliente" en el menú principal.

  2. El sistema solicita al agente ingresar el identificador del cliente.

  3. El agente ingresa el identificador del cliente.

  4. El sistema muestra la información actual del cliente.

  5. El agente ingresa los nuevos detalles del cliente.

  6. El sistema valida la información ingresada.

  7. El sistema actualiza la información del cliente en la base de datos.

  8. El sistema confirma la actualización exitosa del cliente.

- **Postcondiciones:** La información del cliente es actualizada y almacenada en la base de datos.
- **Excepciones:**
  - Si el cliente no está registrado, el sistema muestra un mensaje de error.
  - Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de
  error.

---

## Caso de Uso 4: Registrar Revisión de Mantenimiento
- **Descripción:** Permite registrar una revisión de mantenimiento para un avión.
- **Actor Principal:** Técnico de Mantenimiento
- **Precondiciones:** El usuario debe tener privilegios de técnico de mantenimiento.
- **Flujo Principal:**

  1. El técnico selecciona la opción "Registrar Revisión" en el menú principal.

  2. El sistema solicita al técnico ingresar los detalles de la revisión: avión, fecha, descripción, empleado responsable.
  3. El técnico ingresa los detalles solicitados.

  4. El sistema valida la información ingresada.

  5. El sistema guarda la nueva revisión en la base de datos.

  6. El sistema confirma el registro exitoso de la revisión.

- **Postcondiciones:** La revisión es registrada y almacenada en la base de datos.
- **Excepciones:**
    - Si el avión seleccionado no existe, el sistema muestra un mensaje de error.
    - Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de error.

## Caso de Uso 24: Actualizar Información de Revisión
- **Descripción:** Permite actualizar la información de una revisión de mantenimiento.
- **Actor Principal:** Técnico de Mantenimiento
- **Precondiciones:** El usuario debe tener privilegios de técnico de mantenimiento.
- **Flujo Principal:**

  1. El técnico selecciona la opción "Actualizar Revisión" en el menú principal.

  2. El sistema solicita al técnico ingresar el identificador de la revisión.

  3. El técnico ingresa el identificador de la revisión.

  4. El sistema muestra la información actual de la revisión.

  5. El técnico ingresa los nuevos detalles de la revisión.

  6. El sistema valida la información ingresada.

  7. El sistema actualiza la información de la revisión en la base de datos.

  8. El sistema confirma la actualización exitosa de la revisión.

- **Postcondiciones:** La información de la revisión es actualizada y almacenada en la base de datos.
- **Excepciones:**
  - Si la revisión no está registrada, el sistema muestra un mensaje de error.
  - Si alguno de los campos obligatorios no es ingresado, el sistema muestra un mensaje de error.

  ## Caso de Uso 12: Consultar Historial de Revisiones de Avión
- **Descripción:** Permite consultar el historial de revisiones de mantenimiento de un avión específico.
- **Actor Principal:** Técnico de Mantenimiento
- **Precondiciones:** El usuario debe tener privilegios de técnico de mantenimiento.
- **Flujo Principal:**
  1. El técnico selecciona la opción "Consultar Historial de Revisiones" en el menú principal.

  2. El sistema solicita al técnico ingresar la matrícula del avión.

  3. El técnico ingresa la matrícula del avión.

  4. El sistema busca el historial de revisiones en la base de datos.

  5. El sistema muestra el historial de revisiones del avión.

- **Postcondiciones:** El historial de revisiones del avión es mostrado al técnico.
- **Excepciones:** Si el avión no tiene revisiones registradas, el sistema muestra un mensaje de error.


## Caso de Uso 25: Eliminar Revisión de Mantenimiento
- **Descripción:** Permite eliminar una revisión de mantenimiento del sistema.
- **Actor Principal:** Técnico de Mantenimiento
- **Precondiciones:** El usuario debe tener privilegios de técnico de mantenimiento.
- **Flujo Principal:**
  1. El técnico selecciona la opción "Eliminar Revisión" en el menú principal.

  2. El sistema solicita al técnico ingresar el identificador de la revisión.

  3. El técnico ingresa el identificador de la revisión.

  4. El sistema valida la existencia de la revisión.

  5. El sistema elimina la revisión de la base de datos.

  6. El sistema confirma la eliminación exitosa de la revisión.

- **Postcondiciones:** La revisión es eliminada de la base de datos.
- **Excepciones:** Si la revisión no está registrada, el sistema muestra un mensaje de error.
---