using System;

class Program
{
    static void Main()
    {
        int n = 5;
        int[,] spiralTable = new int[n, n];

        // Postavljanje početnih vrijednosti
        int value = 1;
        int minCol = 0;
        int maxCol = n - 1;
        int minRow = 0;
        int maxRow = n - 1;

        // Spiralno popunjavanje tablice
        while (value <= n * n)
        {
            // Popuni desno po gornjem retku
            for (int i = minCol; i <= maxCol; i++)
            {
                spiralTable[minRow, i] = value++;
            }
            minRow++;

            // Popuni dolje po desnom stupcu
            for (int i = minRow; i <= maxRow; i++)
            {
                spiralTable[i, maxCol] = value++;
            }
            maxCol--;

            // Popuni lijevo po donjem retku
            for (int i = maxCol; i >= minCol; i--)
            {
                spiralTable[maxRow, i] = value++;
            }
            maxRow--;

            // Popuni gore po lijevom stupcu
            for (int i = maxRow; i >= minRow; i--)
            {
                spiralTable[i, minCol] = value++;
            }
            minCol++;
        }

        // Ispis tablice
        PrintTable(spiralTable, n);
    }

    static void PrintTable(int[,] table, int n)
    {
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n; j++)
            {
                Console.Write(table[i, j].ToString().PadLeft(3) + " ");
            }
            Console.WriteLine();
        }
    }
}

