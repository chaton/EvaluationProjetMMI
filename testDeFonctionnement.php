<?php
// Inclure le fichier de configuration
require_once('connexion.php');

// Requête de test
$sql = "SELECT * FROM Etudiant";
print('La requete est : '.$sql.'</br>');

$result = $conn->query($sql) or die($conn->error);
print('Le résultat est : '.$result->num_rows.'</br>');

print('<h1> Affichage des données : </h1>');
if ($result->num_rows > 0) {
  // Création du tableau
  echo "<table>";
  
  // En-têtes de colonne
  echo "<tr>";
  // on extrait les noms des colonnes
  foreach ($row = $result->fetch_assoc() as $columnName => $value) {
    echo "<th>$columnName</th>";
  }
  echo "</tr>";
  // on reutilise la ligne précedente pour en extraire les données
  echo "<tr>";
    foreach ($row as $value) {
    echo "<td>$value</td>";
  }
  echo "</tr>";


  // Affichage des données
  while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    foreach ($row as $value) {
      echo "<td>$value</td>";
    }
    echo "</tr>";
  }
  
  echo "</table>";
} else {
  echo "Aucun résultat trouvé.";
}
?>
