package com.pdf.parser.form;

import java.awt.EventQueue;
import java.util.List;
import java.util.Objects;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDesktopPane;
import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import com.pdf.parser.dao.ParserDAO;
import com.pdf.parser.util.GeneratorUtil;

public class GenerateForm extends JInternalFrame
{
	private static final long serialVersionUID = -619476909040204312L;

	private JDesktopPane desktopPane = new JDesktopPane();
	private final JLabel lblPengajuan = new JLabel("No. Pengajuan:");
	private final JComboBox<String> comboBox = new JComboBox<>();
	private final JButton btnExport = new JButton("Export");
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args)
	{
		EventQueue.invokeLater(() -> {
			try
			{
				GenerateForm frame = new GenerateForm();
				frame.setVisible(true);
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		});
	}

	GenerateForm()
	{
		setTitle("Generate Report");
		initializeForm();
		loadData();
	}

	private void initializeForm()
	{
		setClosable(true);
		setBounds(30, 50, 529, 166);
		getContentPane().setLayout(null);

		getContentPane().setLayout(new javax.swing.BoxLayout(getContentPane(), javax.swing.BoxLayout.LINE_AXIS));
		getContentPane().add(desktopPane);

		lblPengajuan.setBounds(6, 34, 101, 16);
		desktopPane.add(lblPengajuan);

		comboBox.setBounds(105, 30, 394, 27);
		desktopPane.add(comboBox);

		btnExport.setBounds(6, 66, 85, 29);
		btnExport.addActionListener(e -> {
			GeneratorUtil generatorUtil = new GeneratorUtil();
			boolean status = generatorUtil.processExcel(Objects.requireNonNull(comboBox.getSelectedItem()).toString());

			if (status)
			{
				JOptionPane.showMessageDialog(null, "Export Berhasil !!!", "", JOptionPane.INFORMATION_MESSAGE);
			}
			else
			{
				JOptionPane.showMessageDialog(null, "Export Gagal !!!", "", JOptionPane.ERROR_MESSAGE);
			}
		});
		desktopPane.add(btnExport);
	}

	private void loadData()
	{
		try
		{
			ParserDAO parserDAO = new ParserDAO();
			List<String> nomorPengajuan = parserDAO.loadNomorPengajuan();

			if (!nomorPengajuan.isEmpty())
			{
				for (String data : nomorPengajuan)
				{
					comboBox.addItem(data);
				}
			}
			else
			{
				System.out.println("Data nomor pengajuan kosong !!!");
				btnExport.setEnabled(false);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}