package com.kh.pugis.service.consulting.service;

// import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.pugis.service.consulting.dao.SalesDataDao;
import com.kh.pugis.service.consulting.domain.ByAgeSales;
import com.kh.pugis.service.consulting.domain.ByFacilitySales;
import com.kh.pugis.service.consulting.domain.ByGenderSales;
import com.kh.pugis.service.consulting.domain.ByTicketSales;
import com.kh.pugis.service.consulting.domain.TotalSales;

@Service
@Transactional
public class SalesDataExcelServiceImpl implements SalesDataExcelService{
	@Autowired
	SalesDataDao sdd;
	
	// 전체 매출 출력
	@Override
	public void totalExcelDown(String date, HttpServletResponse resp) throws Exception {
		List<TotalSales> list = sdd.totalsalelist(date);
		
		try {
			// 워크북 생성
			Workbook wb = new HSSFWorkbook();
			Sheet sheet = wb.createSheet("매출");
			Row row = null;
			Cell cell = null;
			int rowNo = 0;

			// 테이블 헤더용 스타일
			CellStyle headStyle = wb.createCellStyle();
			// 가는 경계선
			headStyle.setBorderTop(BorderStyle.THIN);
			headStyle.setBorderBottom(BorderStyle.THIN);
			headStyle.setBorderLeft(BorderStyle.THIN);
			headStyle.setBorderRight(BorderStyle.THIN);
			// 배경색
			headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
			headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			// 데이터는 가운데 정렬합니다.
			headStyle.setAlignment(HorizontalAlignment.CENTER);
			
			// 데이터용 경계 스타일 테두리만 지정
			CellStyle bodyStyle = wb.createCellStyle();
			bodyStyle.setBorderTop(BorderStyle.THIN);
			bodyStyle.setBorderBottom(BorderStyle.THIN);
			bodyStyle.setBorderLeft(BorderStyle.THIN);
			bodyStyle.setBorderRight(BorderStyle.THIN);

			// 헤더 생성
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellStyle(headStyle);
			cell.setCellValue("날짜");
			cell = row.createCell(1);
			cell.setCellStyle(headStyle);
			cell.setCellValue("티켓 매출");
			cell = row.createCell(2);
			cell.setCellStyle(headStyle);
			cell.setCellValue("부대시설 매출");
			cell = row.createCell(3);
			cell.setCellStyle(headStyle);
			cell.setCellValue("개별 총 매출");
			
			// 데이터 부분 생성
			for(TotalSales tts : list) {
				row = sheet.createRow(rowNo++);
				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(tts.getSales_date());
				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(tts.getCustomer_ticketSales());
				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(tts.getCustomer_facilitySales());
				cell = row.createCell(3);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(tts.getTotal_sales());
			}
			
			// 파일명 지정
			resp.setContentType("application/vnd.ms-excel");
			resp.setHeader("Content-Disposition", "attachment;filename=totalsales.xls");
			
			wb.write(resp.getOutputStream());
			wb.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

	// 부대시설 매출 출력
	@Override
	public void facilityExcelDown(String date, HttpServletResponse resp) throws Exception {
		List<ByFacilitySales> list = sdd.facilitysalelist(date);
		
		try {
			// 워크북 생성
			Workbook wb = new HSSFWorkbook();
			Sheet sheet = wb.createSheet("매출");
			Row row = null;
			Cell cell = null;
			int rowNo = 0;

			// 테이블 헤더용 스타일
			CellStyle headStyle = wb.createCellStyle();
			// 가는 경계선
			headStyle.setBorderTop(BorderStyle.THIN);
			headStyle.setBorderBottom(BorderStyle.THIN);
			headStyle.setBorderLeft(BorderStyle.THIN);
			headStyle.setBorderRight(BorderStyle.THIN);
			// 배경색
			headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
			headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			// 데이터는 가운데 정렬합니다.
			headStyle.setAlignment(HorizontalAlignment.CENTER);
			
			// 데이터용 경계 스타일 테두리만 지정
			CellStyle bodyStyle = wb.createCellStyle();
			bodyStyle.setBorderTop(BorderStyle.THIN);
			bodyStyle.setBorderBottom(BorderStyle.THIN);
			bodyStyle.setBorderLeft(BorderStyle.THIN);
			bodyStyle.setBorderRight(BorderStyle.THIN);

			// 헤더 생성
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellStyle(headStyle);
			cell.setCellValue("날짜");
			cell = row.createCell(1);
			cell.setCellStyle(headStyle);
			cell.setCellValue("부대시설 명");
			cell = row.createCell(2);
			cell.setCellStyle(headStyle);
			cell.setCellValue("부대시설 매출");
			
			// 데이터 부분 생성
			for(ByFacilitySales fs : list) {
				row = sheet.createRow(rowNo++);
				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(fs.getSales_date());
				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(fs.getFacility_name());
				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(fs.getFacility_sales());
			}
			
			// 파일명 지정
			resp.setContentType("application/vnd.ms-excel");
			resp.setHeader("Content-Disposition", "attachment;filename=facilitysales.xls");
			
			wb.write(resp.getOutputStream());
			wb.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	// 티켓 매출 엑셀 출력
	@Override
	public void ticketExcelDown(String date, HttpServletResponse resp) throws Exception {
		List<ByTicketSales> list = sdd.ticketsalelist(date);
		
		try {
			// 워크북 생성
			Workbook wb = new HSSFWorkbook();
			Sheet sheet = wb.createSheet("매출");
			Row row = null;
			Cell cell = null;
			int rowNo = 0;

			// 테이블 헤더용 스타일
			CellStyle headStyle = wb.createCellStyle();
			// 가는 경계선
			headStyle.setBorderTop(BorderStyle.THIN);
			headStyle.setBorderBottom(BorderStyle.THIN);
			headStyle.setBorderLeft(BorderStyle.THIN);
			headStyle.setBorderRight(BorderStyle.THIN);
			// 배경색
			headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
			headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			// 데이터는 가운데 정렬합니다.
			headStyle.setAlignment(HorizontalAlignment.CENTER);
			
			// 데이터용 경계 스타일 테두리만 지정
			CellStyle bodyStyle = wb.createCellStyle();
			bodyStyle.setBorderTop(BorderStyle.THIN);
			bodyStyle.setBorderBottom(BorderStyle.THIN);
			bodyStyle.setBorderLeft(BorderStyle.THIN);
			bodyStyle.setBorderRight(BorderStyle.THIN);

			// 헤더 생성
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellStyle(headStyle);
			cell.setCellValue("날짜");
			cell = row.createCell(1);
			cell.setCellStyle(headStyle);
			cell.setCellValue("티켓 종류");
			cell = row.createCell(2);
			cell.setCellStyle(headStyle);
			cell.setCellValue("티켓 매출");
			
			// 데이터 부분 생성
			for(ByTicketSales ts : list) {
				row = sheet.createRow(rowNo++);
				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(ts.getSales_date());
				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(ts.getTicket_name());
				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(ts.getTicket_sales());
			}
			
			// 파일명 지정
			resp.setContentType("application/vnd.ms-excel");
			resp.setHeader("Content-Disposition", "attachment;filename=ticketsales.xls");
			
			wb.write(resp.getOutputStream());
			wb.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	// 성별 별 매출 엑셀 출력
	@Override
	public void genderExcelDown(String date, HttpServletResponse resp) throws Exception {
		List<ByGenderSales> list = sdd.gendersalelist(date);
		
		try {
			// 워크북 생성
			Workbook wb = new HSSFWorkbook();
			Sheet sheet = wb.createSheet("매출");
			Row row = null;
			Cell cell = null;
			int rowNo = 0;

			// 테이블 헤더용 스타일
			CellStyle headStyle = wb.createCellStyle();
			// 가는 경계선
			headStyle.setBorderTop(BorderStyle.THIN);
			headStyle.setBorderBottom(BorderStyle.THIN);
			headStyle.setBorderLeft(BorderStyle.THIN);
			headStyle.setBorderRight(BorderStyle.THIN);
			// 배경색
			headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
			headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			// 데이터는 가운데 정렬합니다.
			headStyle.setAlignment(HorizontalAlignment.CENTER);
			
			// 데이터용 경계 스타일 테두리만 지정
			CellStyle bodyStyle = wb.createCellStyle();
			bodyStyle.setBorderTop(BorderStyle.THIN);
			bodyStyle.setBorderBottom(BorderStyle.THIN);
			bodyStyle.setBorderLeft(BorderStyle.THIN);
			bodyStyle.setBorderRight(BorderStyle.THIN);

			// 헤더 생성
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellStyle(headStyle);
			cell.setCellValue("날짜");
			cell = row.createCell(1);
			cell.setCellStyle(headStyle);
			cell.setCellValue("성별");
			cell = row.createCell(2);
			cell.setCellStyle(headStyle);
			cell.setCellValue("티켓 매출");
			cell = row.createCell(3);
			cell.setCellStyle(headStyle);
			cell.setCellValue("부대시설 매출");
			
			// 데이터 부분 생성
			for(ByGenderSales gs : list) {
				row = sheet.createRow(rowNo++);
				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(gs.getSales_date());
				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(gs.getGender_group());
				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(gs.getGender_ticketSales());
				cell = row.createCell(3);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(gs.getGender_facilitySales());
			}
			
			// 파일명 지정
			resp.setContentType("application/vnd.ms-excel");
			resp.setHeader("Content-Disposition", "attachment;filename=gendersales.xls");
			
			wb.write(resp.getOutputStream());
			wb.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	// 연령대별 매출 엑셀 출력
	@Override
	public void ageExcelDown(String date, HttpServletResponse resp) throws Exception {
		List<ByAgeSales> list = sdd.agesalelist(date);
		
		try {
			// 워크북 생성
			Workbook wb = new HSSFWorkbook();
			Sheet sheet = wb.createSheet("매출");
			Row row = null;
			Cell cell = null;
			int rowNo = 0;

			// 테이블 헤더용 스타일
			CellStyle headStyle = wb.createCellStyle();
			// 가는 경계선
			headStyle.setBorderTop(BorderStyle.THIN);
			headStyle.setBorderBottom(BorderStyle.THIN);
			headStyle.setBorderLeft(BorderStyle.THIN);
			headStyle.setBorderRight(BorderStyle.THIN);
			// 배경색
			headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
			headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			// 데이터는 가운데 정렬합니다.
			headStyle.setAlignment(HorizontalAlignment.CENTER);
			
			// 데이터용 경계 스타일 테두리만 지정
			CellStyle bodyStyle = wb.createCellStyle();
			bodyStyle.setBorderTop(BorderStyle.THIN);
			bodyStyle.setBorderBottom(BorderStyle.THIN);
			bodyStyle.setBorderLeft(BorderStyle.THIN);
			bodyStyle.setBorderRight(BorderStyle.THIN);

			// 헤더 생성
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellStyle(headStyle);
			cell.setCellValue("날짜");
			cell = row.createCell(1);
			cell.setCellStyle(headStyle);
			cell.setCellValue("연령대");
			cell = row.createCell(2);
			cell.setCellStyle(headStyle);
			cell.setCellValue("티켓 매출");
			cell = row.createCell(3);
			cell.setCellStyle(headStyle);
			cell.setCellValue("부대시설 매출");
			
			// 데이터 부분 생성
			for(ByAgeSales as : list) {
				row = sheet.createRow(rowNo++);
				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(as.getSales_date());
				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(as.getAge_group());
				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(as.getAge_ticketSales());
				cell = row.createCell(3);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(as.getAge_facilitySales());
			}
			
			// 파일명 지정
			resp.setContentType("application/vnd.ms-excel");
			resp.setHeader("Content-Disposition", "attachment;filename=agesales.xls");
			
			wb.write(resp.getOutputStream());
			wb.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
}
