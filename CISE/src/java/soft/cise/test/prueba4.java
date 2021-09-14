/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package soft.cise.test;

import java.util.ArrayList;

import soft.cise.modeloDTO.reporteDTO;
import soft.cise.modeloDao.reporteDAO;

/**
 *
 * @author SISTEMA
 */
public class prueba4 {

    public static void main(String[] args) {
        int mes = 6;
        reporteDAO reportedao = new reporteDAO();
        ArrayList<reporteDTO> reporteProducto = reportedao.reporteProducto(mes);
        double total =0;
        for (reporteDTO reporte : reporteProducto) {
            total += reporte.getCantidad()*reporte.getPrecioCompra();

        }

        System.out.println(""+ total);
    }

}
