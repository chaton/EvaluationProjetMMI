<?php
// Inclure le fichier de configuration
require_once('config.php');

// Requête de test
$sql = "SELECT * FROM Etudiant";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Affichage des données
  while ($row = $result->fetch_assoc()) {
    echo "ID: " . $row["IdEtudiant_Etudiant"] . "<br>";
    echo "Numéro d'étudiant: " . $row["NumeroEtudiant_Etudiant"] . "<br>";
    echo "Nom: " . $row["Nom_Etudiant"] . "<br>";
    echo "Prénom: " . $row["Prenom_Etudiant"] . "<br>";
    echo "Date de naissance: " . $row["DateNaiss_Etudiant"] . "<br>";
    echo "<br>";
  }
} else {
  echo "Aucun résultat trouvé.";
}
?>
