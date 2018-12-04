CREATE FUNCTION OverReserva() 
RETURNS TRIGGER AS '
BEGIN
	IF EXISTS(
		SELECT reserva.horasaida, reserva.saidaprevista, pagamento_estacionamento.valor
		FROM reserva
		INNER JOIN pagamento_estacionamento ON reserva.fk_pagamento_estacionamento_id = pagamento_estacionamento.id
		WHERE reserva.horasaida > reserva.saidaprevista
	) THEN
		UPDATE pagamento_escaionamento SET valor = valor * 1.1
		WHERE EXISTS (
			SELECT reserva.horasaida, reserva.saidaprevista, pagamento_estacionamento.valor
			FROM reserva
			INNER JOIN pagamento_estacionamento ON reserva.fk_pagamento_estacionamento_id = pagamento_estacionamento.id
			WHERE reserva.horasaida > reserva.saidaprevista
		);
	END IF;
	RETURN NULL;
END'
LANGUAGE plpgsql;

CREATE TRIGGER checkTempoReserva
BEFORE INSERT OR UPDATE ON pagamento_estacionamento
FOR EACH ROW
EXECUTE PROCEDURE OverReserva();