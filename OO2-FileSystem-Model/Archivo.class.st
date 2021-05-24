Class {
	#name : #Archivo,
	#superclass : #Inclusion,
	#instVars : [
		'kBytes'
	],
	#category : #'OO2-FileSystem-Model'
}

{ #category : #'as yet unclassified' }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
"Método de clase. Crea un nuevo archivo con nombre unString, de unNumero kBytes y
en la fecha unaFecha."
|instancia|
instancia :=super llamado: unString  creadoEl: unaFecha.
instancia kBytes:unNumero.
^instancia  
]

{ #category : #'as yet unclassified' }
Archivo >> convertirDirectorioACollection [
	^ self asOrderedCollection
]

{ #category : #accessing }
Archivo >> kBytes [
^kBytes
]

{ #category : #accessing }
Archivo >> kBytes:unNumero [
kBytes :=unNumero
]
