# <img width="35" height="35" src="https://img.icons8.com/?size=100&id=laYYF3dV0Iew&format=png&color=000000" alt="sql-server"> **SQL Cheat Sheet**

¡Bienvenido/a a **SQL Cheat Sheet**! Este repositorio es tu guía rápida y práctica para el lenguaje SQL (_Structured Query Language_). Si eres un principiante que está dando sus primeros pasos en bases de datos o un desarrollador experimentado que necesita un recordatorio rápido, ¡aquí encontrarás una referencia concisa y útil!

Aquí hallarás una colección organizada de los comandos, cláusulas y funciones clave de SQL, cada uno con una explicación clara y ejemplos de código ejecutables para que puedas aplicarlos directamente en tus consultas.

## Tabla de Contenidos

- [ **SQL Cheat Sheet**](#-sql-cheat-sheet)
  - [Tabla de Contenidos](#tabla-de-contenidos)
  - [🌎 Acerca de](#-acerca-de)
  - [🚀 ¿Qué encontrarás aquí?](#-qué-encontrarás-aquí)
  - [📂 Estructura del Repositorio](#-estructura-del-repositorio)
  - [📝 ¿Cómo Usarlo?](#-cómo-usarlo)
  - [🤝 Contribuciones](#-contribuciones)
  - [🫂 Referencias y Agradecimientos](#-referencias-y-agradecimientos)
  - [📃 Licencia](#-licencia)
  - [✉️ Contáctame](#️-contáctame)

## 🌎 Acerca de

**SQL** (_Structured Query Language_) es el lenguaje estándar utilizado para gestionar y manipular bases de datos relacionales. Es una habilidad fundamental para cualquier persona que trabaje con datos, desde analistas y científicos de datos hasta desarrolladores de software y administradores de bases de datos.

Este **SQL Cheat Sheet** tiene como objetivo simplificar el aprendizaje y la consulta rápida de los conceptos fundamentales de SQL. Está diseñado para ser un recurso accesible que te permita escribir consultas más eficientes y con mayor confianza.

## 🚀 ¿Qué encontrarás aquí?

- `01_data_definition_languages/` → Subdirectorios que contienen cada uno una familia de funciones y sintaxis de SQL.
  - Cada subdirectorio contiene:
  - Un archivo `.md` (ej: `data_definition_language.md`, `data_manipulation_language.md`) que ofrece una explicación general de los conceptos y su uso dentro de esa categoría.
  - Archivos `.sql` individuales (ej: `01_create.sql`, `02_alter.sql`) con ejemplos de código de SQL listos ser ejecutados.

## 📂 Estructura del Repositorio

El repositorio está organizado por temas principales de SQL para facilitar la navegación y el aprendizaje:

```bash
sql-cheat-sheet/
├── .gitattributes
├── .gitignore
├── LICENSE
├── README.md
├── 01_data_definition_language/
│   ├── data_definition_language.md
│   ├── 01_create.sql
│   ├── 02_alter.sql
│   └── ...
│
├── 02_data_manipulation_language/
│   ├── data_manipulation_language.md
│   ├── 01_insert.sql
│   ├── 02_select.sql
│   └── ...
│
├── 03_data_query_language/
│   ├── data_query_language.md
│   ├── 01_select.sql
│   ├── 02_from.sql
│   └── ...
│
├── 04_aggregate_functions/
│   ├── aggregate_queries
│   ├── 01_count.sql
│   ├── 02_sum.sql
│   └── ...
│
├── 05_data_constraints/
│   ├── data_constraints
│   ├── 01_not_null.sql
│   ├── 02_unique.sql
│   └── ...
└── ...
```

## 📝 ¿Cómo Usarlo?

Para sacarle el máximo provecho a este **SQL Cheat Sheet**, sigue estos pasos:

1. **Clona el repositorio:** Abre tu terminal o línea de comandos y clona este repositorio en tu máquina local:

   ```bash
   git clone https://https://github.com/ayorick23/sql-cheat-sheet.git
   ```

2. **Navega al directorio:**

   ```bash
   cd sql-cheat-sheet
   ```

3. **Explora los temas:** Dirígete al directorio `01_data_definition_language/` y explora las diferentes categorías. Por ejemplo, para entender los conceptos básicos de DDL como el comando `CREATE`:

   ```bash
   cd 01_data_definition_language/create.sql
   ```

4. **Lee las explicaciones:** Abre el archivo `.md` dentro de cada categoría para obtener una descripción general y pautas de uso.

   ```bash
   cat data_definition_language.md
   ```

5. **Revisa y ejecuta los ejemplos de SQL:** Cada archivo `.sql` contiene un ejemplo práctico del concepto. Puedes abrirlo para ver el código y ejecutarlo en tu gestor de bases de datos preferido (ej: SQL Server Management Studio, MySQL Workbench, pgAdmin, DBeaver, etc.).

   ```bash
   cat create.sql
   ```

   **Consejo:** Te recomiendo tener una base de datos de prueba configurada (ej: SQL Server, PostgreSQL, MySQL) para ejecutar estos ejemplos y ver los resultados en vivo.

## 🤝 Contribuciones

Las contribuciones son increíblemente valiosas! Si deseas mejorar este **SQL Cheat Sheet**, añadir nuevos temas, mejorar explicaciones o proporcionar más ejemplos, por favor:

1. Haz un fork de este repositorio.
2. Crea una nueva rama (`git checkout -b feature/nuevas-funciones-ventana`).
3. Realiza tus cambios y haz commit (`git commit -m 'Añadir sección sobre funciones de ventana'`).
4. Haz un push de tus cambios a tu fork (`git push origin feature/nuevas-funciones-ventana`).
5. Abre un Pull Request en este repositorio.

## 🫂 Referencias y Agradecimientos

Este repositorio ha sido creado recopilando y sintetizando información de diversas fuentes fiables sobre SQL. Quiero extender mi más sincero agradecimiento a los siguientes recursos, que han sido fundamentales para la construcción de este contenido:

- **Documentación oficial de SQL (SQL Server):** La fuente más precisa para comandos y características específicas de cada sistema de gestión de bases de datos.
  - [Documentación de SQL Server (Transact-SQL)](https://learn.microsoft.com/es-es/sql/t-sql/language-reference?view=sql-server-ver16)
- **Roadmap.sh:** Ruta de aprendizaje ordenada y estructurada para comenzar con SQL.
  - [SQL Roadmap](https://roadmap.sh/sql)

## 📃 Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.

## ✉️ Contáctame

Si tienes alguna pregunta o sugerencia, no dudes en contactarme:

[![GitHub](https://img.shields.io/badge/-GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/ayorick23)
[![Gmail](https://img.shields.io/badge/-Email-D14836?style=flat&logo=gmail&logoColor=white)](mailto:mayorickhenry@gmail.com)
[![LinkedIn](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/dereckmendez/)
[![Kaggle](https://img.shields.io/badge/-Kaggle-181717?style=flat&logo=kaggle&logoColor=white)](https://www.kaggle.com/dereckmendez)
