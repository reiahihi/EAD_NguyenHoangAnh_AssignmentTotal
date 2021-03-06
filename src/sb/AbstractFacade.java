package sb;

// ****************************************** ************************************
// **************************    ************ User: MiTom
// *****************************    ********* Phone: 0966 941 840
// ********************************    ****** Email: 
// ****************************************** ************************************
// *****       ********       ******    ***** Package: sb
// *****        ******        ******    ***** Project: untitled27
// *****    *    ****    *    ******    ***** Date: 06-Feb-18
// *****    **    **    **    ******    ***** Time: 16:54
// *****    ***        ***    ******    ***** Name: abstractAhihi
// *****    **************    ******    ***** ************************************
// *****    **************    ******    ***** Created by IntelliJ IDEA.
// ****************************************** ************************************

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;

abstract class AbstractFacade<T>
{
    protected abstract Class getClassName();
    protected abstract EntityManager getEntityManager();

    public List<T> findAll()
    {
        CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        cq.select(cq.from(getClassName()));
        Query q = getEntityManager().createQuery(cq);
        return q.getResultList();
    }

    public T findEntity(String id)
    {
            return (T) getEntityManager().find(getClassName(), id);
    }

    public void destroy(T entity)
    {
        getEntityManager().remove(getEntityManager().merge(entity));
    }

    public void create(T entity) {
        getEntityManager().persist(entity);
    }

    public void edit(T entity) {
        getEntityManager().merge(entity);
    }

}
