package com.charliebrown.profiles;

import java.util.List;

public interface ProfilesDAO {

	void insert(Profiles p);
	void update(Profiles p);
	
	void delete(int pid);
	
	Profiles getProfile(int pid);
	List<Profiles> getAllProfile();
	List<Profiles> getAllEmail();
}
