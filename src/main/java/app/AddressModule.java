package app;

import org.springframework.stereotype.Repository;

@Repository("address")
public class AddressModule {
	public int addressInsert() {
		System.out.println("test");
		return 0;
	}
}
