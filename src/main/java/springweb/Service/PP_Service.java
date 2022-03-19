package springweb.Service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import springweb.Repository.PP_Dao;
import springweb.vo.FileInfo;
import springweb.vo.Pro_Comment;
import springweb.vo.Pro_Like;
import springweb.vo.Pro_Pics;

@Service 
public class PP_Service {
	
	@Autowired
	private PP_Dao dao;
	
	@Value("${upload}")
	private String uploadPath;
	
	// 1. 전체 조회리스트
		// 3-1로 대체
		
		// 2. 게시물 읽기
		public Pro_Pics getPP(String id){
			
			return dao.getPP(id);
		};
		
		// 3. 정렬기준 조회리스트 => order by 대신 인덱스를 사용하라?
		public ArrayList<Pro_Pics> getPPListDate(){
			
			return dao.getPPListDate();
		};
		
		
		public ArrayList<Pro_Pics> getPPListView(){
			
			return dao.getPPListView();
		};
			
			
		public ArrayList<Pro_Pics> getPPListLike(){
			
			return dao.getPPListLike();
		};
			
		
		// 4. 지역명 조회리스트
		public ArrayList<Pro_Pics> getPPListP(String place){
			
			return dao.getPPListP(place);
		};
		
		// 5. 태그별 조회리스트
		public ArrayList<Pro_Pics> getPPListC(String category){
			
			return dao.getPPListC(category);
		};
		
		
		// ppPhoto가 String에서 Multipartfile로 바뀌었다.... 음... fname 대신 그냥 원래의 ppPhoto를 사용하는게 나았나....
		
		// 6. 게시물 등록
		public void insertPP(Pro_Pics ins) {
			MultipartFile mf = ins.getPpFile();
			String fname = mf.getOriginalFilename();
			
			// 일단 파일명은 저장되어야하기에
			ins.setPpPhoto(fname);
	
			dao.insertPP(ins);
			
			if(ins.getPpFile()!=null) { // 업로드한 게 있을 때에만 실행
				
				try { // 이렇게 try-catch문이 밖에 있으면 하나라도 문제가 있으면 예외 처리한다.
	
					System.out.println("경로명:"+uploadPath); // 요건 실제 경로명
					System.out.println("첨부파일명:"+fname);
					File file = new File(uploadPath+fname); //여기서 이렇게 서비스의 업로드폴더명 + 파일명 객체를 만들어주고

					mf.transferTo(file); // 여기서 파일 업로드 ㄱㄱ
					
					// insert에서 ppPhoto를 뺴면 이렇게하면 파일업로드는 되는데, 이제 불러올 때가 문제네...
					// 일단은 multipartFile로 받는거 따로, ppPhoto따로 해줄까?
					// ppPhoto는 ins.setPpPhoto(fname)을 해준다음 insert가 실행되게끔...
					//dao.insertFileInfo( new FileInfo(uploadPath,fname) ); // 굳이 이건 필요없을듯..
				

				}catch(IllegalStateException e) {
					System.out.println(e.getMessage());
				}catch(IOException e) {
					System.out.println(e.getMessage());
				}catch(Exception e) {
					System.out.println(e.getMessage());
				}
			}
			
		}

		public void insertFileInfo(FileInfo ins) {
			dao.insertFileInfo(ins);
		};

		
		// 7. 게시물 삭제
		public void deletePP(String id) {
			
			dao.deletePP(id);
		}
		
		
		// 8. 게시물 수정
		public void updatePP(Pro_Pics ins) {
			
			MultipartFile mf = ins.getPpFile();
			String fname = mf.getOriginalFilename();
			
			// 일단 파일명은 저장되어야하기에
			ins.setPpPhoto(fname);
	
			dao.updatePP(ins);
			
			// 특정한 위치에 첨부파일 업로드..
			// Multipart가 배열이 됬기 떄문에 반복문으로 처리해야한다
			
			if(ins.getPpFile()!=null) { // 업로드한 게 있을 때에만 실행
				
				try { // 이렇게 try-catch문이 밖에 있으면 하나라도 문제가 있으면 예외 처리한다.
	
					System.out.println("경로명:"+uploadPath); // 요건 실제 경로명
					System.out.println("첨부파일명:"+fname);
					File file = new File(uploadPath+fname); //여기서 이렇게 서비스의 업로드폴더명 + 파일명 객체를 만들어주고

					mf.transferTo(file); // 여기서 파일 업로드 ㄱㄱ
					
					// insert에서 ppPhoto를 뺴면 이렇게하면 파일업로드는 되는데, 이제 불러올 때가 문제네...
					// 일단은 multipartFile로 받는거 따로, ppPhoto따로 해줄까?
					// ppPhoto는 ins.setPpPhoto(fname)을 해준다음 insert가 실행되게끔...
					//dao.insertFileInfo( new FileInfo(uploadPath,fname) ); // 굳이 이건 필요없을듯..
				

				}catch(IllegalStateException e) {
					System.out.println(e.getMessage());
				}catch(IOException e) {
					System.out.println(e.getMessage());
				}catch(Exception e) {
					System.out.println(e.getMessage());
				}
			}
			
		
		}
		
		public void updatePPnoPic(Pro_Pics ins){
			dao.updatePPnoPic(ins);
		};
		
		// 9. 댓글 불러오기
		public ArrayList<Pro_Comment> getPPComment(String ppId){
			
			return dao.getPPComment(ppId);
		}; 
	
		
		// 10. 댓글 등록
		public void insertPPComment(Pro_Comment ins) {
			
			dao.insertPPComment(ins);
		}
		
		// 11. 댓글 삭제
		public void deletePPComment(String id) {
			
			dao.deletePPComment(id);
		}
		
		// 12. 좋아요 수 불러오기
		public int getPPLikeCnt(String ppId){
			
			return dao.getPPLikeCnt(ppId);
		}
		
		// 13. 좋아요 등록
		public void insertPPLike(Pro_Like ins){
			
			dao.insertPPLike(ins);
			dao.plusPPLikecnt(ins.getPpId());
		};

		
		// 14. 좋아요 등록여부 체크
		public int hasPPLike(Pro_Like ins) {
			
			return dao.hasPPLike(ins);
		}

		
		// 15. 좋아요 삭제
		public void deletePPLike(Pro_Like ins) {
			
			dao.deletePPLike(ins);
			dao.minusPPLikecnt(ins.getPpId());
		}
		
		// 16. 조회수 증가
		public void addPPView(String ppId) {
			dao.addPPView(ppId);
		}
	
		// 17. 댓글 수 불러오기
		public int getPPCommentCnt(String ppId) {
			
			return dao.getPPCommentCnt(ppId);
		};
		
		

}
