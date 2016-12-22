package com.xyh.controller;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import annotation.Checker;
import annotation.Validator;

import com.xyh.domain.Album;
import com.xyh.domain.Photo;
import com.xyh.domain.Users;
import com.xyh.form.beans.AlbumForm;
import com.xyh.service.Inter.AlbumServiceInter;
import com.xyh.service.Inter.PhotoServiceInter;
import com.xyh.utils.UploadTools;

@Controller
@RequestMapping("/album")
public class AlbumController {

	@Resource
	private AlbumServiceInter albumService;
	@Resource
	private PhotoServiceInter photoService;

	@Value("#{configProperties['go_to_Album']}")
	private String go_to_Album;
	@Value("#{configProperties['go_to_AddAlbum']}")
	private String go_to_AddAlbum;
	@Value("#{configProperties['go_to_OneAlbum']}")
	private String go_to_OneAlbum;
	@Value("#{configProperties['goAddPhoto']}")
	private String goAddPhoto;
	@Value("#{configProperties['go_to_OnePhoto']}")
	private String go_to_OnePhoto;

	@RequestMapping("/goAlbum")
	public String gotoAlbum(HttpServletRequest request) {
		Users loginUser = (Users) request.getSession()
				.getAttribute("loginuser");
		List albumList = this.albumService.get("from Album where users.id = ?",
				new Object[] { Integer.valueOf(loginUser.getId()) });
		request.setAttribute("albumList", albumList);
		return go_to_Album;
	}

	@ResponseBody
	@RequestMapping("/test")
	public String test(HttpServletRequest request) {
		throw new NullPointerException("");
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/goAddAlbum")
	public String gotoAddAlbum(HttpServletRequest request) {
		Users loginuser = (Users) request.getSession()
				.getAttribute("loginuser");
		String hql = "from Album where users.id = ?";
		List<Album> albumlist = (List<Album>) this.albumService.get(hql,
				new Object[] { loginuser.getId() });
		request.setAttribute("albumList", albumlist);
		return go_to_AddAlbum;
	}

	@RequestMapping("/goAddPhoto")
	public String gotoAddPhotoUi(HttpServletRequest request, AlbumForm albumForm) {

		Album album = new Album();
		album.setName(albumForm.getName());
		album.setCreTime(new Date());
		album.setDescript(albumForm.getDescript());
		album.setUpdTime(new Date());
		Users loginUser = (Users) request.getSession()
				.getAttribute("loginuser");
		album.setUsers(loginUser);
		this.albumService.save(album);
		request.setAttribute("album", album);
		return goAddPhoto;
	}

	@Validator(checkers = { @Checker(name = "albumId", adapter = validator.NotNull.class, message = "albumId不能为null", errorCode = "0") })
	@RequestMapping("/selectAndGoAddPhoto")
	public String selectAndgoToAddPhotoUi(HttpServletRequest request,
			String albumID) {
		Album album = (Album) this.albumService.findById(Album.class,
				Integer.valueOf(albumID));
		request.setAttribute("album", album);
		return goAddPhoto;
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping("/oneAlbum")
	public String addAndGoOneAlbum(HttpServletRequest request,
			AlbumForm albumForm) {

		Users user = (Users) request.getSession().getAttribute("loginuser");
		CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		if (commonsMultipartResolver.isMultipart(request)) {
			MultipartRequest multiRequest = (MultipartRequest) request;
			Iterator<String> iter = multiRequest.getFileNames();

			while (iter.hasNext()) {
				MultipartFile file = multiRequest.getFile(iter.next());
				if (file.getOriginalFilename() != "") {
					String newFileName = UploadTools.uploadPhoto(request, file,
							user.getId() + "", albumForm.getId());
					Photo photo = new Photo();
					photo.setAddTime(new Date());
					photo.setAlbum((Album) this.photoService.findById(
							Album.class, Integer.valueOf(albumForm.getId())));
					photo.setPhoto(newFileName);
					photoService.save(photo);
				}
			}
		}

		List photoList = this.photoService.get("from Photo where album.id=?",
				new Object[] { Integer.valueOf(albumForm.getId()) });
		request.setAttribute("photolist", photoList);
		request.setAttribute(
				"thisAlbum",
				this.albumService.findById(Album.class,
						Integer.valueOf(albumForm.getId())));
		return go_to_OneAlbum;
	}

	@RequestMapping("/onePhoto")
	public String onePhotoUi() {
		return go_to_OnePhoto;
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping("/dirGo")
	public String dirGoOneAlbum(String albumID, HttpServletRequest request) {
		List photoList = this.photoService.get("from Photo where album.id=?",
				new Object[] { Integer.valueOf(albumID) });
		request.setAttribute(
				"thisAlbum",
				this.albumService.findById(Album.class,
						Integer.valueOf(albumID)));
		request.setAttribute("photolist", photoList);
		return go_to_OneAlbum;
	}

	public void setAlbumService(AlbumServiceInter albumService) {
		this.albumService = albumService;
	}

	public void setPhotoService(PhotoServiceInter photoService) {
		this.photoService = photoService;
	}

}
