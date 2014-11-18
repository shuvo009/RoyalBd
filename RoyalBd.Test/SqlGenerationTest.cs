using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.DataAccess.Utility;
using RoyalBd.Model;
using Xunit;

namespace RoyalBd.Test
{
   
    public class SqlGenerationTest
    {
         

        public SqlGenerationTest()
        {
            
        }

        [Fact]
        public void InsertScript()
        {
            var challanItem = new ChallanItem
            {
                Amount = 100,
                Description = "description",
                ChallanId = 1,
                ItemNo = "123456",
                Quantity = 60,
                Rate = 10,
                Unit = "ss"
            };
            var scriptG = new SqlGenerator<ChallanItem>();
            var script = scriptG.InsertQuery(challanItem);
            var dbScript = "INSERT INTO ChallanItem (Id,Description,ItemNo,Quantity,Unit,Rate,Amount,ChallanId) VALUES (0,'description',123456,60,'ss',10,100,1)";
            Assert.Equal(script,dbScript);
        }

        [Fact]
        public void UpdateScript()
        {
            var challanItem = new ChallanItem
            {
                Amount = 100,
                Description = "description",
                ChallanId = 1,
                ItemNo = "123456",
                Quantity = 60,
                Rate = 10,
                Unit = "ss",
                Id = 100
            };
            var scriptG = new SqlGenerator<ChallanItem>();
            var script = scriptG.UpdateQuery(challanItem);
            var dbScript = "UPDATE ChallanItem SET Description='description',ItemNo=123456,Quantity=60,Unit='ss',Rate=10,Amount=100,ChallanId=1 WHERE Id=100";
            Assert.Equal(script, dbScript);
        }

        [Fact]
        public void FindQuery()
        {
            var scriptG = new SqlGenerator<ChallanItem>();
            var script = scriptG.FindQuery(100);
            var dbScript = "SELECT * FROM ChallanItem WHERE Id=100";
            Assert.Equal(script, dbScript); 
        }

        [Fact]
        public void RemoveQuery()
        {
            var scriptG = new SqlGenerator<ChallanItem>();
            var script = scriptG.RemoveQuery(100);
            var dbScript = "DELETE FROM ChallanItem WHERE Id=100";
            Assert.Equal(script, dbScript);
        }

        [Fact]
        public void AllDataQuery()
        {
            var scriptG = new SqlGenerator<ChallanItem>();
            var script = scriptG.AllDataQuery();
            var dbScript = "SELECT * FROM ChallanItem";
            Assert.Equal(script, dbScript);
        }
    }
}
