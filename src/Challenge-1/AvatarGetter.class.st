Class {
	#name : #AvatarGetter,
	#superclass : #Object,
	#category : #'Challenge-1'
}

{ #category : #'as yet unclassified' }
AvatarGetter class >> getAvatar: email [
| url |
	url := 'https://www.gravatar.com/avatar/', 
	(MD5 hashMessage: email trimBoth asLowercase ) hex, '.jpg'.
	^ (ZnEasy getJpeg: url) asMorph openInHand.
]
