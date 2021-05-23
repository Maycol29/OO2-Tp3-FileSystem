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

{ #category : #'as yet unclassified' }
Inclusion >> nombre: unString creadoEl: unaFecha [
nombre:=unString .
fechaCreacion :=unaFecha .
]
