package mulcam.kb04.gifthub.GiftHub.service;

import org.springframework.stereotype.Service;

import mulcam.kb04.gifthub.GiftHub.dto.CustomerDto;
import mulcam.kb04.gifthub.GiftHub.dto.StoreDto;

@Service
public interface MyPageService {
	public StoreDto findByStoreId(String id);
	public CustomerDto findByCustomerId(String id);
	
	public void save(StoreDto storeDto);
	public void MemberSave(CustomerDto customerDto);
}
