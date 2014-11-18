using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Windows;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.UI.Helpers;

namespace RoyalBd.UI.ViewModel
{
    public class BaseViewModel<T> : ViewModelBase where T : class , new()
    {
        private readonly IBaseRepository<T> _baseRepository;
        private string _addUpdateButtonContent;
        private bool _isEditMode;
        private ObservableCollection<T> _allItems;
        private const string SoftwareName = "RoyalBd";

        public BaseViewModel(IBaseRepository<T> baseRepository)
        {
            _baseRepository = baseRepository;
            InitalRelayCommand();
            AddUpdateButtonContent = "Add";
            AllItems = new ObservableCollection<T>();
        }

        #region Property

        public string AddUpdateButtonContent
        {
            get { return _addUpdateButtonContent; }
            set
            {
                _addUpdateButtonContent = value;
                RaisePropertyChanged(() => AddUpdateButtonContent);
            }
        }

        public bool IsEditMode
        {
            get { return _isEditMode; }
            set
            {
                _isEditMode = value;
                RaisePropertyChanged(() => IsEditMode);
            }
        }

        public ObservableCollection<T> AllItems
        {
            get { return _allItems; }
            set
            {
                _allItems = value;
                RaisePropertyChanged(() => AllItems);
            }
        }

        #endregion

        #region Relay Command

        public RelayCommand<T> AddUpdateCommand { get; private set; }
        public RelayCommand<int> DeleteCommand { get; private set; }
        public RelayCommand<T> EditCommand { get; private set; }

        #endregion

        #region Public Methods

        public void LoadAllItem()
        {
            AllItems = new ObservableCollection<T>(_baseRepository.All());
        }
        #endregion

        #region internal Methods

        private void AddUpdateCommandExecute(T entity)
        {
            if (!IsEditMode)
                AddCommandExecute(entity);
            else
                UpdateCommandExecute(entity);
        }

        internal void AddCommandExecute(T entity)
        {
            try
            {
                if (!YesNoMessageBox("Are You Sure Are You Want To Add ?")) return;
                _baseRepository.Add(entity);
                ShowMessage("Successfully Added");
                entity.ClearAllProperty();
            }
            catch (Exception exception)
            {
                ShowErrorMessage(exception.Message);
            }
        }

        internal virtual void UpdateCommandExecute(T entity)
        {
            try
            {
                if (!YesNoMessageBox("Are You Sure Are You Want To Update ?")) return;
                _baseRepository.Update(entity);
                ShowMessage("Successfully Updated");
            }
            catch (Exception exception)
            {
                ShowErrorMessage(exception.Message);
            }
        }

        internal virtual void DeleteCommandExecute(int id)
        {
            try
            {
                if (!YesNoMessageBox("Are You Sure Are You Want To Delete ?")) return;
                _baseRepository.Remove(id);
                ShowMessage("Successfully Deleted");
                LoadAllItem();
            }
            catch (Exception exception)
            {
                ShowErrorMessage(exception.Message);
            }
        }

        internal bool YesNoMessageBox(string message)
        {
            return MessageBox.Show(message, SoftwareName, MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes;
        }

        internal void ShowMessage(string message)
        {
            MessageBox.Show(message, SoftwareName, MessageBoxButton.OK, MessageBoxImage.Information);
        }

        internal void ShowErrorMessage(string message)
        {
            MessageBox.Show(message, SoftwareName, MessageBoxButton.OK, MessageBoxImage.Error);
        }

        internal virtual void EditCommandExecute(T entity)
        {

        }

        #endregion

        #region Private Methods

        private void InitalRelayCommand()
        {
            AddUpdateCommand = new RelayCommand<T>(AddUpdateCommandExecute);
            DeleteCommand = new RelayCommand<int>(DeleteCommandExecute);
            EditCommand = new RelayCommand<T>(EditCommandExecute);
        }
        #endregion
    }
}
