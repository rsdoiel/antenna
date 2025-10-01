
for DBNAME in columns.db craft.db food.db going_electric.db home.db journalism.db libraries.db north_america.db pacific.db pages.db planet.db retro_computing.db science_and_technology.db small_papers.db socal_north.db writing.db; do
  if [ -f "${DBNAME}" ]; then rm "${DBNAME}"; fi
  CNAME="$(basename "${DBNAME}" ".db").md"
  #echo "antenna add \"${CNAME}\""
  antenna add "${CNAME}"
done
