""" Modulo para determinar numeros primos

Desarrollado por: Oriana Maita

"""


class PrimeClass(object):
    """Clase de Numeros Primos

    Esta clase da soporte para los numeros primos

    """

    def is_prime(self, num_int):
        """Determina si un numero es primo

        Dado un numero entero, retorna verdadero en caso de
        ser primo y falso en el caso contrario.

        """

        if num_int < 2:
            es_primo = False
        else:
            es_primo = True

        divisor = 2
        while es_primo and divisor < num_int:
            if num_int % divisor == 0:
                es_primo = False
            divisor = divisor + 1

        return es_primo
