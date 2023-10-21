package hm.bank.Model;

import Services.ClientService;
import Services.CreditRequestService;
import hm.bank.Model.DAO.IMPLEMANTATION.ClientIMPL;
import hm.bank.Model.DAO.INTERFACES.ClientDAO;
import hm.bank.Model.DAO.INTERFACES.CreditState;
import hm.bank.Model.DTO.Agency;
import hm.bank.Model.DTO.Client;
import hm.bank.Model.DTO.CreditRequest;
import hm.bank.Utils.JPAUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.time.LocalDate;
import java.util.Optional;
import jakarta.persistence.EntityManager;


public class main {
    public static void main(String[] args) {
        try {
//            Query query = session.createQuery("FROM Client WHERE code LIKE :codeValue ");
//            Client result = (Client) query.setParameter("codeValue", "%code%").uniqueResult();
//            System.out.println(result.getBirthDate());

            EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
            entityManager.getTransaction().begin();

            LocalDate date = LocalDate.now();
            Client client = new Client("hamza", "elbakkouri", date, "0625182280", "hay dchiar", "code55");
//            Agency agency = new Agency("222", "hamza", "test", "0625182280");
//            CreditRequest CreditRequest = new CreditRequest(2, agency, client, 555, 6666, 666, date, "the first desc", CreditState.Pending);
//            CreditRequestService creditNew = new CreditRequestService();
//            creditNew.CreateCreditRequest(CreditRequest);

            ClientService newClient = new ClientService();
            newClient.createClient(client);
//
//            Transaction transaction = session.beginTransaction();
//            session.save(client);
//            transaction.commit();
//            System.out.println("Data inserted successfully.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
