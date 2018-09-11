package cn.ppj.springBoot.utils;

import java.io.FileOutputStream;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;

public class POIPagingSheetExcel {

	public static void createExcel(String[] header, String[][] dataAll, int maxRow, String path) {

		// 创建工作簿
		HSSFWorkbook wk = new HSSFWorkbook();

		int pageSheet = (dataAll.length / maxRow) + 1;// 分的页数
		int unFill = (dataAll.length % maxRow); // 最后一页数据<50条

		for (int k = 0; k < pageSheet; k++) {
			HSSFSheet sheet = wk.createSheet("第" + (k + 1) + "页");
			initHeader(header, sheet, wk);
			String[][] data;
			if (k != pageSheet - 1) {
				data = new String[maxRow][dataAll[0].length];
				for (int i = 0; i < maxRow; i++) {
					for (int j = 0; j < dataAll[0].length; j++) {
						data[i][j] = dataAll[k * maxRow + i][j];
					}
				}
			} else {// 最后一页的数据
				data = new String[unFill][dataAll[0].length];
				for (int i = 0; i < unFill; i++) {
					for (int j = 0; j < dataAll[0].length; j++) {
						data[i][j] = dataAll[k * maxRow + i][j];
					}
				}
			}
			creatCell(header, data, sheet, wk);
		}

		//生成Excel
		try {
			FileOutputStream fileOut = new FileOutputStream(path);
			wk.write(fileOut);
			fileOut.close();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	//设置表头
	private static void initHeader(String[] header, HSSFSheet sheet, HSSFWorkbook wk) {

		// 初始化
		HSSFRow headerRow = sheet.createRow(0);
		HSSFCellStyle style = wk.createCellStyle();

		// 位置
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		style.setBorderBottom(CellStyle.BORDER_THIN);
		style.setBorderLeft(CellStyle.BORDER_THIN);
		style.setBorderRight(CellStyle.BORDER_THIN);
		style.setBorderTop(CellStyle.BORDER_THIN);

		// 背景
		style.setFillForegroundColor(HSSFColor.SKY_BLUE.index);
		style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);

		// 字体
		HSSFFont font = wk.createFont();
		font.setFontName("Microsoft YaHei");
		font.setFontHeightInPoints((short) 15);
		font.setBold(true);
		style.setFont(font);

		// text
		for (int i = 0; i < header.length; i++) {
			HSSFCell headerCell = headerRow.createCell(i);
			headerCell.setCellStyle(style);
			headerCell.setCellValue(header[i]);
		}
	}

	// 设置表体
	private static void creatCell(String[] header, String[][] data, HSSFSheet sheet, HSSFWorkbook wk) {
		
		for (int i = 1; i < header.length; i++) {
			sheet.setColumnWidth(i, 60 * 256);
//			sheet.autoSizeColumn(1, true);
		}

		HSSFCellStyle style = wk.createCellStyle();

		// 边框
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		style.setBorderBottom(CellStyle.BORDER_THIN);
		style.setBorderLeft(CellStyle.BORDER_THIN);
		style.setBorderRight(CellStyle.BORDER_THIN);
		style.setBorderTop(CellStyle.BORDER_THIN);

		// 背景
		style.setFillForegroundColor(HSSFColor.WHITE.index);
		style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);

		// 字体
		HSSFFont font = wk.createFont();
		font.setFontName("Microsoft YaHei");
		font.setFontHeightInPoints((short) 12);
		style.setFont(font);

		// text
		if (data.length != 0) {
			for (int i = 0; i < data.length; i++) { // 控制行
				HSSFRow dataRow = sheet.createRow(i + 1);
				for (int j = 0; j < data[0].length; j++) { // 控制列
					HSSFCell headerCell =  dataRow.createCell(j);
					headerCell.setCellStyle(style);
					headerCell.setCellValue(data[i][j]);
				}
			}
		}
	}

}
