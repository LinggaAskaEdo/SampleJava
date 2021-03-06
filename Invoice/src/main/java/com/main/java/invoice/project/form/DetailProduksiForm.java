package com.main.java.invoice.project.form;

import static com.main.java.invoice.project.form.POProduksiForm.tabelModel;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.NumberFormat;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDesktopPane;
import javax.swing.JFormattedTextField;
import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.text.NumberFormatter;

public class DetailProduksiForm extends JInternalFrame
{
	private static final long serialVersionUID = 1L;
	JDesktopPane desktopPane = new JDesktopPane();
	private JTextField TF_Media;
	private JTextField TF_Durasi;
	private JTextField TF_Hari;
	private JTextField TF_Uraian;
	private JTextField TF_Jenis;
	private JTextField TF_Jumlah;
	private JTextField TF_Barang_1;
	private JFormattedTextField textField_7;
	private JFormattedTextField TF_TotHarga_1;
	private JTextField TF_Barang_2;
	private JFormattedTextField TF_TotHarga_2;
	private JTextArea TA_Lokasi;
	private NumberFormat numformat = NumberFormat.getInstance();
	private NumberFormatter numformatter;
	String data[] = new String[13];

	public static void main(String[] args)
	{
		EventQueue.invokeLater(new Runnable()
		{
			public void run()
			{
				try
				{
					DetailProduksiForm frame = new DetailProduksiForm();
					frame.setVisible(true);
				}
				catch (Exception e)
				{
					e.printStackTrace();
				}
			}
		});
	}

	DetailProduksiForm()
	{
		setTitle("Detail Produksi");
		initializeForm();
	}

	@SuppressWarnings("unchecked")
	public void initializeForm()
	{
		setCurrencyNow();

		setClosable(true);
		//setBounds(100, 100, 630, 630);
		setBounds(100, 100, 540, 614);
		getContentPane().setLayout(null);
		
		getContentPane().setLayout(new javax.swing.BoxLayout(getContentPane(), javax.swing.BoxLayout.LINE_AXIS));
		getContentPane().add(desktopPane);
		
		JLabel lblPoNomor = new JLabel("Media");
		lblPoNomor.setBounds(45, 28, 91, 15);
		desktopPane.add(lblPoNomor);
		
		JLabel lblDurasi = new JLabel("Durasi");
		lblDurasi.setBounds(45, 59, 70, 15);
		desktopPane.add(lblDurasi);
		
		JLabel lblHari = new JLabel("Hari");
		lblHari.setBounds(45, 90, 70, 15);
		desktopPane.add(lblHari);
		
		JLabel lblDurasi_1 = new JLabel("Lokasi");
		lblDurasi_1.setBounds(45, 120, 70, 15);
		desktopPane.add(lblDurasi_1);
		
		JLabel lblPreProduction = new JLabel("Pre Production");
		lblPreProduction.setBounds(45, 182, 117, 15);
		desktopPane.add(lblPreProduction);
		
		JLabel lblIi = new JLabel("Uraian");
		lblIi.setBounds(66, 209, 70, 15);
		desktopPane.add(lblIi);
		
		JLabel lblJenis = new JLabel("Jenis");
		lblJenis.setBounds(66, 240, 70, 15);
		desktopPane.add(lblJenis);
		
		JLabel lblProduction = new JLabel("Production");
		lblProduction.setBounds(45, 267, 117, 15);
		desktopPane.add(lblProduction);
		
		JLabel lblJenis_1 = new JLabel("Jenis");
		lblJenis_1.setBounds(66, 294, 70, 15);
		desktopPane.add(lblJenis_1);
		
		JLabel lblBanyak = new JLabel("Jumlah");
		lblBanyak.setBounds(66, 327, 70, 15);
		desktopPane.add(lblBanyak);
		
		JLabel lblHargaSatuan = new JLabel("Harga Satuan");
		lblHargaSatuan.setBounds(66, 389, 111, 15);
		desktopPane.add(lblHargaSatuan);
		
		JLabel lblTotalHarga = new JLabel("Total Harga");
		lblTotalHarga.setBounds(66, 420, 96, 15);
		desktopPane.add(lblTotalHarga);
		
		JLabel lblNewLabel = new JLabel("Post Production");
		lblNewLabel.setBounds(45, 447, 132, 15);
		desktopPane.add(lblNewLabel);
		
		JLabel lblBarang = new JLabel("Barang");
		lblBarang.setBounds(66, 358, 70, 15);
		desktopPane.add(lblBarang);
		
		JLabel lblBarang_1 = new JLabel("Barang");
		lblBarang_1.setBounds(66, 474, 70, 15);
		desktopPane.add(lblBarang_1);
		
		JLabel lblTotalHarga_1 = new JLabel("Total Harga");
		lblTotalHarga_1.setBounds(66, 505, 96, 15);
		desktopPane.add(lblTotalHarga_1);
		
		TF_Media = new JTextField();
		TF_Media.setBounds(194, 26, 231, 19);
		desktopPane.add(TF_Media);
		TF_Media.setColumns(10);
		
		TF_Durasi = new JTextField();
		TF_Durasi.setBounds(194, 57, 114, 19);
		desktopPane.add(TF_Durasi);
		TF_Durasi.setColumns(10);
		
		TF_Hari = new JTextField();
		TF_Hari.setBounds(194, 88, 114, 19);
		desktopPane.add(TF_Hari);
		TF_Hari.setColumns(10);
		
		TA_Lokasi = new JTextArea();
		TA_Lokasi.setBorder(BorderFactory.createLineBorder(Color.LIGHT_GRAY));
		TA_Lokasi.setBounds(194, 119, 284, 53);
		desktopPane.add(TA_Lokasi);
		
		TF_Uraian = new JTextField();
		TF_Uraian.setBounds(194, 207, 162, 19);
		desktopPane.add(TF_Uraian);
		TF_Uraian.setColumns(10);
		
		TF_Jenis = new JTextField();
		TF_Jenis.setBounds(194, 238, 162, 19);
		desktopPane.add(TF_Jenis);
		TF_Jenis.setColumns(10);
		
		@SuppressWarnings("rawtypes")
		JComboBox CB_Jenis = new JComboBox();
		CB_Jenis.setBounds(194, 289, 162, 24);
		CB_Jenis.addItem("MAN POWER");
		CB_Jenis.addItem("EQUIPMENT");
		desktopPane.add(CB_Jenis);
		
		TF_Jumlah = new JTextField();
		TF_Jumlah.setBounds(194, 325, 49, 19);
		desktopPane.add(TF_Jumlah);
		TF_Jumlah.setColumns(10);
		
		TF_Barang_1 = new JTextField();
		TF_Barang_1.setBounds(194, 356, 162, 19);
		desktopPane.add(TF_Barang_1);
		TF_Barang_1.setColumns(10);
		
		textField_7 = new JFormattedTextField(numformatter);
		textField_7.setBounds(194, 387, 114, 19);
		desktopPane.add(textField_7);
		textField_7.setColumns(10);
		
		TF_TotHarga_1 = new JFormattedTextField(numformatter);
		TF_TotHarga_1.setBounds(194, 418, 114, 19);
		desktopPane.add(TF_TotHarga_1);
		TF_TotHarga_1.setColumns(10);
		
		TF_Barang_2 = new JTextField();
		TF_Barang_2.setBounds(194, 472, 162, 19);
		desktopPane.add(TF_Barang_2);
		TF_Barang_2.setColumns(10);
		
		TF_TotHarga_2 = new JFormattedTextField(numformatter);
		TF_TotHarga_2.setBounds(194, 503, 162, 19);
		desktopPane.add(TF_TotHarga_2);
		TF_TotHarga_2.setColumns(10);
		
		JButton btnTambah = new JButton("Tambah");
		btnTambah.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent arg0)
			{
				if(!TF_Jumlah.getText().matches("^[0-9]+$"))
				{
					JOptionPane.showMessageDialog(null, "Jumlah hanya bisa disi dengan angka", "Peringatan",
							JOptionPane.WARNING_MESSAGE);
				}
				else if(!TF_Hari.getText().matches("^[0-9]+$"))
				{
					JOptionPane.showMessageDialog(null, "Hari hanya bisa disi dengan angka", "Peringatan",
							JOptionPane.WARNING_MESSAGE);
				}
				else
				{
					data[0] = TF_Media.getText();
					data[1] = TF_Durasi.getText();
					data[2] = TF_Hari.getText();
					data[3] = TA_Lokasi.getText();
					data[4] = TF_Uraian.getText();
					data[5] = TF_Jenis.getText();
					data[6] = String.valueOf(CB_Jenis.getSelectedItem());
					data[7] = TF_Jumlah.getText();
					data[8] = TF_Barang_1.getText();
					data[9] = textField_7.getText();
					data[10] = TF_TotHarga_1.getText();
					data[11] = TF_Barang_2.getText();
					data[12] = TF_TotHarga_2.getText();

					tabelModel.insertRow(0, data);
					dispose();
				}
			}
		});
		//btnTambah.setBounds(450, 547, 117, 25);
		btnTambah.setBounds(361, 534, 117, 25);
		desktopPane.add(btnTambah);
	}

	private void setCurrencyNow()
	{
		//  set banyaknya angka akhir bilangan
		numformat.setMaximumFractionDigits(0);
		numformat.setMinimumFractionDigits(2);

		//  Deklarasikan NumberFormatter
		numformatter = new NumberFormatter(numformat);
		numformatter.setAllowsInvalid(false);
	}
}