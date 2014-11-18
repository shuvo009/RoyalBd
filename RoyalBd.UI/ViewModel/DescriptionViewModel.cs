using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.Unity;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.Model;
using RoyalBd.UI.View;

namespace RoyalBd.UI.ViewModel
{
    public class DescriptionViewModel : BaseViewModel<Description>
    {
        private readonly IUnityContainer _unityContainer;

        public DescriptionViewModel(IDescriptionRepository descriptionRepository, IUnityContainer unityContainer)
            : base(descriptionRepository)
        {
            _unityContainer = unityContainer;
        }

        internal override void EditCommandExecute(Description entity)
        {
            var descriptionView = _unityContainer.Resolve<DescriptionView>();
            descriptionView.Show();
            descriptionView.EditMode(entity);
        }
    }
}
