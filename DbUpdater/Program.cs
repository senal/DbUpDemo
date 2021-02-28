using DbUp;
using Microsoft.Extensions.Configuration;
using System;
using System.IO;
using System.Reflection;

namespace DbUpdater
{
    public class Program
    {
        public static int Main(string[] args)
        {

            var config = new ConfigurationBuilder()
                        .SetBasePath(Directory.GetCurrentDirectory())
                        .AddJsonFile("appsettings.json")
                        .Build();
            var connectionString = config.GetConnectionString("taskstore");

            var dbUpdater = DeployChanges.To
            .SqlDatabase(connectionString)
            .WithScriptsEmbeddedInAssembly(Assembly.GetExecutingAssembly())
            .LogToConsole()
            .Build();

#if DEBUG
            Console.Write(connectionString);
            EnsureDatabase.For.SqlDatabase(connectionString);
#endif

            var result = dbUpdater.PerformUpgrade();
            
            if (!result.Successful)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine(result.Error);
                Console.ResetColor();
                return -1;
            }




            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine("Success!");
            Console.ResetColor();

            return 0;
        }

        
    }
}
