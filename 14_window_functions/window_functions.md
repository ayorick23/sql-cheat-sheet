# Window Functions

Las **Funciones de Ventana** (_Window Functions_) son una de las características más avanzadas y potentes de SQL. Permiten realizar cálculos sobre un conjunto de filas relacionadas con la fila actual, conocido como "ventana", sin agrupar el resultado de la consulta. A diferencia de las funciones de agregación estándar (`SUM`, `AVG`, `COUNT`), las funciones de ventana no colapsan las filas; es decir, el número de filas en el resultado de la consulta es el mismo que en la entrada, pero a cada fila se le añade un valor calculado basado en su ventana.

Las funciones de ventana son increíblemente útiles para tareas como calcular promedios móviles, clasificar resultados, calcular sumas acumuladas, o comparar valores entre filas relacionadas.

La sintaxis clave para una función de ventana es la cláusula `OVER()`.

```sql
FUNCION_DE_VENTANA(columna) OVER (
    [PARTITION BY columna1, columna2, ...]
    [ORDER BY columna3 [ASC|DESC], columna4 [ASC|DESC], ...]
    [ROWS/RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW / valor PRECEDING AND valor FOLLOWING]
)
```

1. **`PARTITION BY`:** Divide el conjunto de resultados en particiones (grupos) a las que se aplica la función de ventana de forma independiente. Es similar a `GROUP BY` pero no colapsa las filas. Si se omite, la función opera sobre todo el conjunto de resultados como una sola partición.

2. **`ORDER BY`:** Define el orden de las filas dentro de cada partición. Esto es crucial para funciones de ranking o cálculos acumulativos.

3. **`ROWS` / `RANGE` (Definición del Marco de Ventana):** Opcional. Especifica las filas exactas dentro de la partición sobre las que operará la función.

   - `ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW`: Incluye todas las filas desde el inicio de la partición hasta la fila actual. Útil para sumas acumuladas.
   - `ROWS BETWEEN X PRECEDING AND Y FOLLOWING`: Incluye X filas antes y Y filas después de la fila actual.
   - `ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING`: Incluye desde la fila actual hasta el final de la partición.
   - Si se omite `ROWS` o `RANGE`, el marco predeterminado varía según la función y si hay un ORDER BY. Para funciones de ranking, es `RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW`. Para agregaciones sin `ORDER BY` en el `OVER()`, es `RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING` (toda la partición).
