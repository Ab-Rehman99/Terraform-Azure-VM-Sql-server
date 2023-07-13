resource "azurerm_mssql_server" "server" {
  name                         = "abdul-sql-server"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
  version                      = "12.0"
  minimum_tls_version          = "1.2"
}

resource "azurerm_mssql_database" "db" {
  name      = var.sql_db_name
  server_id = azurerm_mssql_server.server.id
}