;; title: Mock Token - SIP-010 Compliant Test Token
;; version: 1.0.0
;; summary: A simple SIP-010 compliant fungible token implementation with minting capability for testing purposes
;; description: This contract implements a basic SIP-010 fungible token standard with additional minting functionality. It's designed for testing and development purposes, allowing anyone to mint tokens to any address. The token includes all required SIP-010 functions: transfer, get-name, get-symbol, get-decimals, get-balance, get-total-supply, and get-token-uri.

(impl-trait 'SP3FBR2AGK5H9QBDH3EEN6DF8EK8JY7RX8QJ5SVTE.sip-010-trait-ft-standard.sip-010-trait)

(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-not-token-owner (err u101))

;; No maximum supply!
(define-fungible-token mock-token)

(define-public (transfer (amount uint) (sender principal) (recipient principal) (memo (optional (buff 34))))
	(begin
		(asserts! (is-eq tx-sender sender) err-not-token-owner)
		(try! (ft-transfer? mock-token amount sender recipient))
		(match memo to-print (print to-print) 0x)
		(ok true)
	)
)

(define-read-only (get-name)
	(ok "Mock Token")
)

(define-read-only (get-symbol)
	(ok "MT")
)

(define-read-only (get-decimals)
	(ok u6)
)

(define-read-only (get-balance (who principal))
	(ok (ft-get-balance mock-token who))
)

(define-read-only (get-total-supply)
	(ok (ft-get-supply mock-token))
)

(define-read-only (get-token-uri)
	(ok none)
)

(define-public (mint (amount uint) (recipient principal))
    (ft-mint? mock-token amount recipient)
)