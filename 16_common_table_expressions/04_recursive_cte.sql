-- Construir una jerarquía de empleados desde el CEO hacia abajo
WITH RECURSIVE JerarquiaEmpleados AS (
    -- Miembro Ancla: Seleccionar al CEO (el que no tiene jefe)
    SELECT
        empleado_id,
        nombre,
        jefe_id,
        1 AS Nivel
    FROM
        Empleados_Jerarquia
    WHERE
        jefe_id IS NULL

    UNION ALL

    -- Miembro Recursivo: Unir con la CTE para encontrar los subordinados directos
    SELECT
        e.empleado_id,
        e.nombre,
        e.jefe_id,
        je.Nivel + 1 AS Nivel
    FROM
        Empleados_Jerarquia e
    INNER JOIN
        JerarquiaEmpleados je ON e.jefe_id = je.empleado_id
)

SELECT
    empleado_id,
    nombre,
    jefe_id,
    Nivel
FROM
    JerarquiaEmpleados
ORDER BY
    Nivel, empleado_id;