---
title: Diagramas Mermaid
---

Aqui está um fluxograma simples renderizado automaticamente pelo Mermaid no Starlight:

```mermaid
graph TD
    A[Início] --> B{Decisão}
    B -- Sim --> C[Executar Ação]
    B -- Não --> D[Encerrar]
    C --> D