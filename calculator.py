"""Modulo para sumar lista de numeros enteros

Desarrollado por: Oriana Maita

"""


class CalculatorClass(object):
    """Clase Caluladora

    Esta clase da soporte realizar operaciones en
    lista de numeros.

    """
    def sum(self, num_list):
        """Suma de una lista de numero

        Dada una lista de numeros, retorna la suma de
        dichos numeros.

        """

        result = 0
        for num in num_list:
            result = num + result

        return result
