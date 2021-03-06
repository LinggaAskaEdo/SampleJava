package com.main.java.invoice.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.main.java.invoice.project.pojo.MasterClient;
import com.main.java.invoice.project.preference.StaticPreference;

/**
 * Created by dery on 2/24/18.
 */
public class MasterClientDAO
{
    private Connection connect = null;
    private Statement statement = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public void addUpdate(MasterClient masterClient, int flag)
    {
        String query;

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(StaticPreference.URL, StaticPreference.USERNAME, StaticPreference.PASSWORD);

            if (flag == 0)
            {
                query = "INSERT INTO MASTER_CLIENT(NAME, ADDRESS, NO_NPWP, SATKER_PPK, INFORMATION)" +
                        "VALUES (?, ?, ?, ?, ?)";

                preparedStatement = connect.prepareStatement(query);
                preparedStatement.setString(1, masterClient.getName());
                preparedStatement.setString(2, masterClient.getAddress());
                preparedStatement.setString(3, masterClient.getNoNpwp());
                preparedStatement.setString(4, masterClient.getSatkerPpk());
                preparedStatement.setString(5, masterClient.getInformation());
            }
            else
            {
                query = "UPDATE MASTER_CLIENT set ADDRESS = ?, NO_NPWP = ?, SATKER_PPK = ?, INFORMATION = ?" +
                        "WHERE NAME = ?";

                preparedStatement = connect.prepareStatement(query);
                preparedStatement.setString(1, masterClient.getAddress());
                preparedStatement.setString(2, masterClient.getNoNpwp());
                preparedStatement.setString(3, masterClient.getSatkerPpk());
                preparedStatement.setString(4, masterClient.getInformation());
                preparedStatement.setString(5, masterClient.getName());
            }

            preparedStatement.executeUpdate();

        }
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            close();
        }

    }

    public List<MasterClient> GetAllMasterClient ()
    {
        List<MasterClient> allMasterClient = new ArrayList<>();

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(StaticPreference.URL, StaticPreference.USERNAME, StaticPreference.PASSWORD);

            String query = "SELECT MASTER_CLIENT_ID, NAME, ADDRESS, NO_NPWP, SATKER_PPK, INFORMATION FROM MASTER_CLIENT";

            statement = connect.createStatement();
            resultSet = statement.executeQuery(query);

            while (resultSet.next())
            {
                MasterClient masterClient = new MasterClient();
                masterClient.setMasterClientId(resultSet.getInt(1));
                masterClient.setName(resultSet.getString(2));
                masterClient.setAddress(resultSet.getString(3));
                masterClient.setNoNpwp(resultSet.getString(4));
                masterClient.setSatkerPpk(resultSet.getString(5));
                masterClient.setInformation(resultSet.getString(6));

                allMasterClient.add(masterClient);
            }
        }
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            close();
        }

        return allMasterClient;
    }

    public List<MasterClient> GetAllMasterClientComboBox ()
    {
        List<MasterClient> allMasterClient = new ArrayList<>();

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(StaticPreference.URL, StaticPreference.USERNAME, StaticPreference.PASSWORD);

            String query = "SELECT MASTER_CLIENT_ID, NAME, ADDRESS, NO_NPWP, SATKER_PPK, INFORMATION FROM MASTER_CLIENT";

            statement = connect.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            resultSet = statement.executeQuery(query);

            while (resultSet.next())
            {
                MasterClient masterClient = new MasterClient();
                masterClient.setMasterClientId(resultSet.getInt(1));
                masterClient.setName(resultSet.getString(2));
                masterClient.setAddress(resultSet.getString(3));
                masterClient.setNoNpwp(resultSet.getString(4));
                masterClient.setSatkerPpk(resultSet.getString(5));
                masterClient.setInformation(resultSet.getString(6));

                allMasterClient.add(masterClient);
            }
        }
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            close();
        }

        return allMasterClient;
    }

    public MasterClient GetMasterClientById(MasterClient masterClient)
    {
        MasterClient getMasterClient = new MasterClient();

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(StaticPreference.URL, StaticPreference.USERNAME, StaticPreference.PASSWORD);

            String query = "SELECT NAME, ADDRESS, NO_NPWP, SATKER_PPK, INFORMATION FROM MASTER_CLIENT WHERE MASTER_CLIENT_ID = ?" ;

            preparedStatement = connect.prepareStatement(query);
            preparedStatement.setInt(1, masterClient.getMasterClientId());

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next())
            {
                getMasterClient.setName(resultSet.getString(1));
                getMasterClient.setAddress(resultSet.getString(2));
                getMasterClient.setNoNpwp(resultSet.getString(3));
                getMasterClient.setSatkerPpk(resultSet.getString(4));
                getMasterClient.setInformation(resultSet.getString(5));
            }
        }
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            close();
        }

        return getMasterClient;
    }

    public void DeleteMasterClientById (MasterClient masterClient)
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(StaticPreference.URL, StaticPreference.USERNAME, StaticPreference.PASSWORD);

            String query = "DELETE FROM MASTER_CLIENT WHERE NAME = ?";

            preparedStatement = connect.prepareStatement(query);
            preparedStatement.setString(1, masterClient.getName());

            preparedStatement.executeUpdate();
        }
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            close();
        }
    }

    private void close()
    {
        try
        {
            if (resultSet != null)
            {
                resultSet.close();
            }

            if (preparedStatement != null)
            {
                preparedStatement.close();
            }

            if (statement != null)
            {
                statement.close();
            }

            if (connect != null)
            {
                connect.close();
            }
        }
        catch (Exception ignored)
        {}
    }
}