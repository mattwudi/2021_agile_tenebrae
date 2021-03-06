/*
* The CampaignDAO class is an interface that defines methods that must be implemented by other
*  java classes and is used here as a best practice.
* */

package dao;

import model.*;
import java.util.List;

public interface CampaignDAO {
    List<Weapon> retrieveWeapons() throws CampaignDAOException;
    List<Item> retrieveItems() throws CampaignDAOException;
    List<Spell> retrieveSpells() throws CampaignDAOException;
    List<PC> retrievePCs(Integer user_id) throws CampaignDAOException;
    List<NPC> retrieveNPCs(Integer user_id) throws CampaignDAOException;
    void addPC(PC pc) throws CampaignDAOException;
    void addNPC(NPC npc) throws CampaignDAOException;
    void modifyPC(PC pc, Integer char_id) throws CampaignDAOException;
    void modifyNPC(NPC npc, Integer char_id) throws CampaignDAOException;
    void deletePC(String name) throws CampaignDAOException;
    void deleteNPC(String name) throws CampaignDAOException;
    void addNote(Integer user_id, String contents) throws CampaignDAOException;
    List retrieveNotes(Integer user_id) throws CampaignDAOException;

}
