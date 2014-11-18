using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.Unity;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.DataAccess.Repository;
using RoyalBd.Model;
using RoyalBd.UI.View;

namespace RoyalBd.UI.ViewModel
{
    public class ItemViewModel : BaseViewModel<Item>
    {
        private readonly IUnityContainer _unityContainer;

        public ItemViewModel(ItemRepository itemRepository, IUnityContainer unityContainer)
            : base(itemRepository)
        {
            _unityContainer = unityContainer;
        }

        internal override void EditCommandExecute(Item entity)
        {
            var itemView = _unityContainer.Resolve<ItemView>();
            itemView.Show();
            itemView.EditMode(entity);
        }
    }
}
