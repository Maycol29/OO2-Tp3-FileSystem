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

{ #category : #accessing }
Directorio >> agregar:unArchivo [
subdirectorios add:unArchivo.
]

{ #category : #accessing }
Directorio >> archivoMasGrande [
^self porTamano last
]

{ #category : #accessing }
Directorio >> archivoMasNuevo [
^self porFecha last.
]

{ #category : #'private ' }
Directorio >> convertirDirectorioACollection [
^subdirectorios  flatCollect:  [:arch | arch convertirDirectorioACollection ]
]

{ #category : #initialization }
Directorio >> initialize [ 
subdirectorios:=OrderedCollection new.
]

{ #category : #accessing }
Directorio >> kBytes [
	^self tamanoTotalOcupado 
]

{ #category : #'private ' }
Directorio >> porFecha [
	^self convertirDirectorioACollection asSortedCollection: [ :each1 :each2 | 
each1 fechaCreacion  <= each2 fechaCreacion ]
]

{ #category : #'private ' }
Directorio >> porTamano [
	^(self convertirDirectorioACollection asSortedCollection: [ :each1 :each2 | 
each1 kBytes  <= each2 kBytes ])
]

{ #category : #accessing }
Directorio >> subdirectorios [
^subdirectorios 
]

{ #category : #accessing }
Directorio >> tamanoTotalOcupado [
"Retorna el espacio total ocupado en KB, incluyendo su contenido."
^((subdirectorios sumNumbers: [:arch|arch kBytes ])+32)

]
