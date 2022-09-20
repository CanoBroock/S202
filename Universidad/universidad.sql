select apellido1, apellido2 from persona order by apellido1 asc
select nombre, apellido1, apellido2, telefono from persona where telefono is null
select nombre, apellido1, apellido2, fecha_nacimiento from persona where year(fecha_nacimiento) = 1999
select nombre, apellido1, apellido2, tipo from persona where tipo_ "profesor" and telefono is null and nif like '________K'
select nombre, curso, cuatrimestre, id_grado from asignatura where cuatrimestre = 1 and curso = 3 and id_grado = 7
select persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre from persona join profesor on persona.id = profesor.id_profesor join departamento on profesor.id_departamento = departamento.id order by apellido1 asc
select asignatura.nombre, curso_escolar.anyo_inicio, curso_escolar.anyo_fin from persona join alumno_se_matricula_asignatura on persona.id = alumno_se_matricula_asignatura.id_alumno join asignatura on alumno_se_matricula_asignatura.id_asignatura = asignatura.id join curso_escolar on asignatura.curso = curso_escolar.id where nif like '26902806M'
select persona.nombre, persona.apellido1, persona.apellido2 from persona join alumno_se_matricula_asignatura on persona.id = alumno_se_matricula_asignatura.id_alumno join curso_escolar on alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id where curso_escolar.id = 5
select persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre from persona join profesor on persona.id = profesor.id_profesor join departamento on profesor.id_departamento = departamento.id order by apellido1 asc
select departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre from persona join profesor on persona.id = profesor.id_profesor join departamento on profesor.id_departamento = departamento.id order by departamento.nombre asc
select persona.apellido1, persona.apellido2, persona.nombre from persona join profesor on persona.id = profesor.id_profesor join departamento on profesor.id_departamento = departamento.id and profesor.id_departamento is null
select departamento.nombre from persona join profesor on persona.id = profesor.id_profesor join departamento on profesor.id_departamento = departamento.id where profesor.id_departamento is null
select persona.nombre, persona.tipo, asignatura.nombre from persona right join asignatura on persona.id = asignatura.id_profesor
select asignatura.nombre, persona.nombre from asignatura right join persona on asignatura.id_profesor = persona.id
select departamento.nombre from persona join profesor on persona.id = profesor.id_profesor join departamento on profesor.id_departamento = departamento.id where profesor.id_departamento is null
select count(tipo) from persona where tipo = "alumno"
select count(fecha_nacimiento) from persona where year (fecha_nacimiento) = 1999
select departamento.nombre, count(profesor.id_profesor) as total_profes from profesor join departamento on profesor.id_departamento = departamento.id group by departamento.nombre order by total_profes desc
select grado.nombre, count(asignatura.id_grado) as numero_asignaturas from grado join asignatura on grado.id = asignatura.id_grado group by asignatura.id_grado
select grado.nombre, count(asignatura.id_grado) as numero_asignaturas from grado join asignatura on grado.id = asignatura.id_grado group by asignatura.id_grado having count(asignatura.id_grado) > 40
select grado.nombre, asignatura.tipo, sum(asignatura.creditos) as suma_creditos from grado join asignatura on grado.id = asignatura.id_grado group by asignatura.nombre
select * from persona where fecha_nacimiento = (select max(fecha_nacimiento)from persona) and tipo = "alumno"