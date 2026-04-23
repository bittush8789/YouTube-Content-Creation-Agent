# Qdrant Installation Guide (Docker)

## 1. What is Qdrant?
Qdrant is a vector database and vector similarity search engine.

## 2. Why use it?
- To store and search AI embeddings (Vector DB).
- Core for RAG (Retrieval-Augmented Generation) in LLMOps.
- High performance for AI-powered search.

## 3. Installation Steps (via Docker)
```bash
docker run -p 6333:6333 -p 6334:6334 -v $(pwd)/qdrant_storage:/qdrant/storage:z dcr.qdrant.io/qdrant/qdrant
```

## 4. Verify Install
1. Open your browser to `http://localhost:6333/dashboard`.
2. You should see the Qdrant Web UI.

## 5. Basic Commands
Interactions are usually via REST API or Python client.
```python
from qdrant_client import QdrantClient
client = QdrantClient("localhost", port=6333)
```

## 6. Common Issues
- **Issue**: Data not persisting.
- **Fix**: Ensure the volume `-v` path is correctly specified in your Docker command.
