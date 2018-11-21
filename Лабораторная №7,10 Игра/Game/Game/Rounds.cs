﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Game
{
    class Rounds
    {
        private List<Round> _rounds = new List<Round>();

        public void AddRound(int bank, int[] score, Players players)
        {
            _rounds.Add(new Round(bank,score,players));
        }
        public Round this[int i]
        {
            get => _rounds[i];
            set => _rounds[i] = value;
        }

        public void AddInDB(Players Players)
        {
            var connection = @"Data Source=DESKTOP-FPQ69BF\SQLSERVER;Initial Catalog=GameDice;Integrated Security=True";
            for (var i = 0; i < Players.Length(); i++)
            {
                var checkQuery = $"SELECT Name, Score From Player WHERE Name='{Players[i].Name}'";
                var scoreQuery = $"SELECT Score, Score From Player WHERE Name='{Players[i].Name}'";

                var insertQuery = $"INSERT INTO Player(Name,Score) VALUES('{Players[i].Name}','{Players[i].SumMoney}')";
                
                using (var con = new SqlConnection(connection))
                {
                    con.Open();
                    var cmd = new SqlCommand(checkQuery, con);
                    var cmdScore = new SqlCommand(scoreQuery, con);
                    var res = cmd.ExecuteScalar();
                    var resScore = cmdScore.ExecuteScalar();
                    if (res != null)
                    {
                        var resultMoney = Convert.ToInt32(resScore);
                        resultMoney += Convert.ToInt32(Players[i].SumMoney);
                        var updateQuery = $"UPDATE Player SET Score='{resultMoney}'WHERE Name='{Players[i].Name}'";
                        var cmdUpd = new SqlCommand(updateQuery, con);
                        cmdUpd.ExecuteNonQuery();
                    }
                    else
                    {
                        var cmdIns = new SqlCommand(insertQuery, con);
                        cmdIns.ExecuteNonQuery();
                    }
                    con.Close();
                }

            }
        }
    }
}
