echo '{
  "query": "{
    Get{
      SimSearch (
        limit: 3
        nearText: {
          concepts: [\"pop\"],
        }
      ){
        genre
        title
        artist
      }
    }
  }"
}' | curl -X POST -H 'Content-Type: application/json' -d @- localhost:8080/v1/graphql > results.json