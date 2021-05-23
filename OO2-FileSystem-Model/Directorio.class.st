Class {
	#name : #Directorio,
	#superclass : #Inclusion,
	#instVars : [
		'subdirectorios'
	],
	#category : #'OO2-FileSystem-Model'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
"Método de clase. Crea un nuevo Directorio con nombre unString y en la fecha
unaFecha."
|instancia|
instancia :=super llamado: unString  creadoEl: unaFecha.
^instancia  

]

{ #category : #'as yet unclassified' }
Directorio >> agregar:unArchivo [
subdirectorios add:unArchivo.
]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasGrande [
"Retorna el archivo con mayor cantidad de bytes en cualquier nivel del filesystem
contenido por directorio receptor."


]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasNuevo [
"retorna el archivo con fecha de creacion más reciente en cualquier nivel del
filesystem contenido por directorio receptor."
]

{ #category : #initialization }
Directorio >> initialize [ 
subdirectorios:=OrderedCollection new.
]

{ #category : #accessing }
Directorio >> kBytes [ 
^32
]

{ #category : #'as yet unclassified' }
Directorio >> tamanoTotalOcupado [
"Retorna el espacio total ocupado en KB, incluyendo su contenido."
]
