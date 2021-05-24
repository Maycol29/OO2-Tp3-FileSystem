Class {
	#name : #Inclusion,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'fechaCreacion'
	],
	#category : #'OO2-FileSystem-Model'
}

{ #category : #'as yet unclassified' }
Inclusion class >> llamado: unString creadoEl: unaFecha [
|instancia|
instancia:= self new.
instancia nombre:unString creadoEl:unaFecha .
^instancia
]

{ #category : #accessing }
Inclusion >> fechaCreacion [
^fechaCreacion 
]

{ #category : #accessing }
Inclusion >> kBytes [ 
self subclassResponsibility.
]

{ #category : #accessing }
Inclusion >> nombre [ 
^nombre
]

{ #category : #accessing }
Inclusion >> nombre: unString creadoEl: unaFecha [
nombre:=unString .
fechaCreacion :=unaFecha .
]
