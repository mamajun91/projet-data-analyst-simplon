SELECT * from ventes;

--chiffre d'affairs total
select sum(prix*qte) as ca_total from ventes;

--ventes par produits
select produit, 
	   sum(prix*qte) as ca_produit, 
	   sum(qte) as quantite_totale from ventes
GROUP BY produit
ORDER by ca_produit desc;

--ventes par régions
select region,
	   sum(prix*qte) as ca_region,
       sum(qte) as quantite_totale from ventes
group by region
order by ca_region desc;
