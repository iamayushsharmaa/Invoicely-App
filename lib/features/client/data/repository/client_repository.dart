class ClientRepository{
  Future<void> createClient();
  Future<void> getAllClients();
  Future<void> getClientById();
  Future<void> updateClient();
  Future<void> deleteClient();
}