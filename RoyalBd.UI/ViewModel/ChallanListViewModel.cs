using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using GalaSoft.MvvmLight.Command;
using Microsoft.Practices.Unity;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.Model;
using RoyalBd.Model.Model;
using RoyalBd.UI.View;

namespace RoyalBd.UI.ViewModel
{
    public class ChallanListViewModel : BaseViewModel<Challan>
    {
        private readonly IChallanRepository _challanRepository;
        private readonly IUnityContainer _unityContainer;
        private ObservableCollection<Challan> _challans;

        public ChallanListViewModel(IChallanRepository challanRepository, IUnityContainer unityContainer)
            : base(challanRepository)
        {
            _challanRepository = challanRepository;
            _unityContainer = unityContainer;
            InitalCommands();
            SearchCommandExecute(new SearchModel { From = DateTime.Today, To = DateTime.Today });
        }

        #region Relay Command

        public RelayCommand<int> ViewChallanCommand { get; private set; }
        public RelayCommand<SearchModel> SearchCommand { get; set; }
        #endregion

        #region Property

        public ObservableCollection<Challan> Challans
        {
            get { return _challans; }
            set
            {
                _challans = value;
                RaisePropertyChanged(() => Challans);
            }
        }

        #endregion

        #region Private Command

        private void InitalCommands()
        {
            ViewChallanCommand = new RelayCommand<int>(ViewChallanCommandExecute);
            SearchCommand = new RelayCommand<SearchModel>(SearchCommandExecute);
        }


        private void ViewChallanCommandExecute(int id)
        {
            var challanView = _unityContainer.Resolve<ChallanView>();
            challanView.Show();
            challanView.LoadChallan(id);
        }

        private void SearchCommandExecute(SearchModel searchModel)
        {
            try
            {
                Challans = new ObservableCollection<Challan>(_challanRepository.Search(searchModel));
            }
            catch (Exception ex)
            {
                ShowErrorMessage(ex.Message);
            }
        }
        #endregion
    }
}
