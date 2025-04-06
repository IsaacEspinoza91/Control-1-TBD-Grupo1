# Control-1-TBD-Grupo1

Modificaciones realizadad al esquema presentado

1. Se introdujo el atributo 'stock' en la relación entre Producto y Tienda.
2. Se eliminó el atributo 'id_producto' de la tabla VENTA, trasladando la clave foránea a la tabla PROD-VENTA. Se destaca que una venta puede contener varios productos.
3. Se modificó la relación entre VENDEDOR y VENTA, reubicando la clave foránea de PROD-VENTA a VENTA. Esta decisión se basa en la mayor relevancia de la venta hacia un vendedor, evitando redundancias ante posibles múltiples registros de ventas relacionados con un mismo vendedor.
4. Se añadió el atributo 'lugar' a la entidad TIENDA.
5. Se ajustó la relación entre VENTA y TIPO_DOC, considerando este último como un atributo que indica el tipo de documento. Se eliminó la tabla TIPO_DOC debido a la simplicidad de tener solo dos registros: boleta y factura.
6. Se estableció la clave primaria 'id' para la entidad Empleado en lugar del RUT, siguiendo las recomendaciones de utilizar identificadores en lugar de números de identificación personal para propósitos internos.
7. Se renombró la relación entre Empleado y Comuna de Trabajo a 'Vive', reflejando consultas que mencionan la comuna donde reside el empleado.
8. Se optó por mantener solo el atributo 'monto' en la entidad SUELDO en lugar de incluir descuentos, bonos, AFP, FONASA, entre otros. Esta decisión simplifica las consultas al proporcionar únicamente el dato del sueldo de cada empleado.
9. Se eliminó la tabla Sueldo debido a la redundancia de almacenar registros asociados únicamente a un empleado individual.
10. Se eliminó el atributo 'fecha_pago' de la entidad EMPLEADO, dado que indicar una fecha específica carece de sentido práctico, considerando que el pago se realiza cada mes en fechas variables (yyyy-mm-dd).
11. Se eliminó la tabla Vendedor, ya que almacenaba una clave primaria compuesta entre 'id_vendedor' e 'id_empleado'. Esta decisión simplifica la estructura y evita complicaciones en la creación de poblados, cumpliendo con las restricciones de MySQL respecto a claves incrementales dentro de claves compuestas.
