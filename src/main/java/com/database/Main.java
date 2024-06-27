package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.SQLException;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.IOException;
import java.util.stream.Collectors;

public class Main {

    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/travel_agency";
        String user = "root";
        String password = "12345";
        String resourcePath = "/sql/ddl.sql"; // Ruta dentro del directorio de recursos

        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement();
             InputStream is = Main.class.getResourceAsStream(resourcePath);
             BufferedReader br = new BufferedReader(new InputStreamReader(is))) {

            String content = br.lines().collect(Collectors.joining(System.lineSeparator()));
            String[] commands = content.split("--");

            for (String command : commands) {
                if (!command.trim().isEmpty()) {
                    stmt.execute(command);
                }
            }

            System.out.println("Archivo SQL ejecutado exitosamente.");

        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }
}
