/***************************************************************************************
 * No part of this program may be photocopied reproduced or translated to another program
 * language without prior written consent of Matias E. Iseas
 **************************************************************************************/
package com.corecto.web.dao.impl;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.corecto.web.dao.TratamientoDAO;
import com.corecto.web.model.pojo.extra.Tratamiento;


/**
 * TODO comment<br>
 * <br>
 * <b>Change log:</b>
 * <ul>
 * <li>1.0 20/02/2013 - Xpost - initial version</li>
 * </ul>
 * 
 * @author Xpost
 * @version 1.0
 */
public class TratamientoDAOImpl extends HibernateDaoSupport implements TratamientoDAO {

	Logger LOG = LoggerFactory.getLogger(TratamientoDAOImpl.class);


    @Override
	public long saveNewTratamiento(Tratamiento  tratamiento) throws DataAccessException {
    	LOG.info("TratamientoDAOImpl.saveNewTratamiento()");
        getHibernateTemplate().save(tratamiento);
        return tratamiento.getIdtratamiento();
    }
    

    @Override
	@SuppressWarnings("unchecked")
    public Tratamiento loadTratamientoById(final Long idtratamiento) throws DataAccessException {

        List<Tratamiento> listResult = getHibernateTemplate().find(
                "select C from Tratamiento as C where C.idtratamiento=" + idtratamiento);

        if (listResult.isEmpty()) {
            return null;
        } else
            return listResult.get(0);
    }
    

    @Override
	@SuppressWarnings("unchecked")
    public Tratamiento loadTratamientoByConsulta(final Long idconsulta) throws DataAccessException {

        List<Tratamiento> listResult = new ArrayList<Tratamiento>();
        HibernateCallback callback = new HibernateCallback() {

            public Object doInHibernate(Session session) throws HibernateException, SQLException {

                Query query = session.createQuery(
                        "select P "
                                + " FROM Tratamiento as P, Consulta as C " 
                        		+ " WHERE P.consulta=C.idconsulta and C.idconsulta="+idconsulta);

                List result = query.list();
                return result;

            }
        };

        listResult = (List<Tratamiento>) this.getHibernateTemplate().execute(callback);
        LOG.info("Cantidad:"+listResult.size());
        return listResult.get(0);
    }
    
/*
  
 
    
    public List<Cliente> getClientsByParameters(final String name,final String lastName, final String cuit, final String score,final String fieldSort, final String sort) throws DataAccessException {

        List<Cliente> listResult = new ArrayList<Cliente>();
        HibernateCallback callback = new HibernateCallback() {

            public Object doInHibernate(Session session) throws HibernateException, SQLException {

            	Criteria criteria = session.createCriteria(Cliente.class);
            	if (name!=null){
            		criteria.add( Restrictions.like("nombre", name+"%") );
            	}          	
				if (lastName!=null){
            		criteria.add( Restrictions.like("apellido", lastName+"%") );
            	}
				if (cuit!=null){
            		criteria.add( Restrictions.eq( "cuit", cuit ));
            	}
				if (score!=null){
            		criteria.add( Restrictions.eq( "puntuacion", new Integer(score) ));
            	}

				if (!fieldSort.isEmpty()){
					if (sort.contains("asc")){
						criteria.addOrder(Order.asc(fieldSort));
					}						
					else{
						criteria.addOrder(Order.desc(fieldSort));
					}
				}
				return criteria.list();
            }
        };

        listResult = (List<Cliente>) this.getHibernateTemplate().execute(callback);
        LOG.info("Cantidad:"+listResult.size());
        return listResult;
    }
    
    @SuppressWarnings("unchecked")
    public List<EstadoCli> loadAllClientState() throws DataAccessException {

        List<EstadoCli> lstResults = getHibernateTemplate().find(
                "select E from EstadoCli as E");

        if (lstResults.isEmpty()) {
            return null;
        } else
            return lstResults;
    }
    
    @SuppressWarnings("unchecked")
    public Integer loadLastClientId() throws DataAccessException {

        List<Integer> lstCliente = getHibernateTemplate().find(
                "select max(idcliente) FROM Cliente");

        if (lstCliente.isEmpty()) {
            return null;
        } else
            return lstCliente.get(0);
    }
    
    
    
    
    public void deleteClient(Cliente cliente) throws DataAccessException {
    	LOG.info("deleteClient()");
        getHibernateTemplate().delete(cliente);
    }*/

	

}
