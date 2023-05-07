package service;

import dao.IUserDao;
import dao.UserDao;
import model.User;

import java.sql.SQLException;
import java.util.List;

public class ServiceUser implements IServiceUser{
    IUserDao userDao = new UserDao();
    @Override
    public void insertUser(User user) throws SQLException {
        userDao.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        User user = userDao.selectUser(id);
        return user;
    }

    @Override
    public List<User> selectAllUsers() {
        List<User> userList=userDao.selectAllUsers();
        return userList;
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        boolean check= userDao.deleteUser(id);
        return check;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        boolean check=userDao.updateUser(user);
        return check;
    }

    @Override
    public List<User> selectUsersSearch(String country) {
        List<User> list=userDao.selectUsersSearch(country);
        return list;
    }

    @Override
    public List<User> sortByName() {
        List<User> list=userDao.sortByName();
        return list;
    }

    @Override
    public String createByTransaction(User user) {
        String str=userDao.createByTransaction(user);
        return str;
    }
}
