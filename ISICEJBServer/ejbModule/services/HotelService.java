package services;

import java.util.List;

import dao.IDaoLocale;
import dao.IDaoRemote;
import entities.Hotel;
import entities.Ville;
import jakarta.annotation.security.PermitAll;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;


@Stateless(name = "ghita")

public class HotelService implements IDaoRemote<Hotel>, IDaoLocale<Hotel> {

	
	@PersistenceContext
	private EntityManager em1;

	@Override
	@PermitAll	
	public Hotel create(Hotel o) {
		em1.persist(o);
		return o;
	}

	@Override
	@PermitAll	
	public boolean delete(Hotel o) {
		if (o != null) {
	        // Check if the entity is managed before trying to remove it
	        if (em1.contains(o)) {
	            em1.remove(o);
	        } else {
	            // If the entity is detached, merge it first and then remove
	            Hotel managedEntity = em1.merge(o);
	            em1.remove(managedEntity);
	        }
	        return true;
	    }
	    return false;	}

	@Override
	@PermitAll	
	public Hotel update(Hotel o) {
		 Hotel existingHotel = em1.find(Hotel.class, o.getId());

		    if (existingHotel != null) {
		        existingHotel.setNom(o.getNom());
		        existingHotel.setAdresse(o.getAdresse());
		        existingHotel.setTelephone(o.getTelephone());
		        existingHotel.setVille(o.getVille()); // Assurez-vous d'avoir une méthode setVille appropriée dans la classe Hotel

		        em1.merge(existingHotel);
		    }

		    return o;
	}

	@Override
	@PermitAll	
	public Hotel findById(int id) {
		// TODO Auto-generated method stub
		return em1.find(Hotel.class, id);
	}

	@Override
	@PermitAll	
	public List<Hotel> findAll() {
		Query query = em1.createQuery("select h from Hotel h");
		return query.getResultList();
	}
    
	@Override
	@PermitAll
	public List<Hotel> findByVille(Ville ville) {
	    System.out.println("Searching for hotels in city: " + ville.getNom());

	    Query query = em1.createQuery("SELECT h FROM Hotel h WHERE h.ville = :ville");
	    query.setParameter("ville", ville);
	   
	    List<Hotel> result = query.getResultList();

	    System.out.println("Found " + result.size() + " hotels in city.");

	    return result;
	}

}
