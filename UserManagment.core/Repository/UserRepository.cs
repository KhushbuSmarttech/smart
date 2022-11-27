using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace UserManagment.core.Repository
{
    public class UserRepository : IDisposable
    {
        private readonly DemosmartEntities demosmartEntities = new DemosmartEntities();
        public void Delete(int UserID)
        {
            User user = demosmartEntities.Users.Find(UserID);
            demosmartEntities.Users.Remove(user);
            Save();
        }  

        public void Insert(User user)
        {
            demosmartEntities.Users.Add(user);
            Save();
        }

        public void Update(User user)
        {
            demosmartEntities.Entry(user).State = EntityState.Modified;
            Save();
        }

        public User UserAuthentication(string username, string userPassword)
        {
            return (from c in demosmartEntities.Users
                    where c.UserName == username && c.UserPassword == userPassword
                    select c).FirstOrDefault();
        }

        public void Save()
        {
            demosmartEntities.SaveChanges();
        }

        public IEnumerable<User> GetAllUser()
        {
            return demosmartEntities.Users.ToList();
        }

        public User GetUserById(int UserID)
        {
            return demosmartEntities.Users.Find(UserID);
        }

        private bool _disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (_disposed)
            {
                if (disposing)
                {
                    demosmartEntities.Dispose();
                }
            }
            _disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}


