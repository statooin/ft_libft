```
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_libft                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: statooin <statooin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/15 14:54:43 by statooin          #+#    #+#              #
#    Updated: 2020/11/09 20:18:35 by statooin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
```

# Custom C Standard Library: libft (2019)

[⚠️STATUS: ARCHIVAL / HISTORICAL REFERENCE]

## 📜 Overview
This repository contains a comprehensive re-implementation of core standard C library functions. Developed in 2019 at École 42, **libft** is the foundational project that replaces reliance on external libraries with custom-built, memory-safe alternatives.

Maintaining this archive serves as a testament to my deep-seated understanding of pointer arithmetic, heap memory management, and the internal mechanics of data structures.

## The Engineering Foundation (Why this matters for SRE)
Before orchestrating global clusters, an engineer must understand the primitives that run inside them. This project built the technical discipline required for high-level SRE roles:

* **Memory Hygiene:** Implementing functions like `ft_bzero` and `ft_calloc` from scratch instills a "Security by Default" mindset. Understanding how to properly initialize and clear memory is the first line of defense against data leakage and exploitation.
* **Algorithmic Efficiency:** Writing string manipulation (`ft_split`, `ft_strnstr`) and memory operations (`ft_memmove`) requires a deep understanding of time complexity and cache-friendly data access.
* **Data Structure Fundamentals:** The inclusion of the "Bonus" linked list library (`ft_lst*`) demonstrates proficiency in dynamic data structures—knowledge that translates directly to understanding kernel schedulers and resource allocation algorithms.

## Technical Deep-Dive
The library is categorized into three main functional areas, all built with strict adherence to the C standard:

* **String & Character Logic:** Robust implementations of ASCII analysis and complex string transformations (`ft_strmapi`, `ft_strtrim`, `ft_substr`).
* **Memory Management:** Low-level buffer operations including `ft_memcmp`, `ft_memcpy`, and `ft_memmove` (handling overlapping memory regions safely).
* **Linked List Framework:** A full suite of utilities for dynamic list management, including creation, deletion, iteration, and mapping (`ft_lstmap`).

## Project Contents
* **Libc Functions:** Re-creations of `atoi`, `calloc`, `strdup`, etc.
* **Additional Functions:** Non-standard but essential utilities like `ft_itoa` and `ft_split`.
* **Bonus Functions:** A dedicated linked list management library.
* **Makefile:** A professional build system supporting `all`, `clean`, `fclean`, and `re` targets.

---
*This archive is part of my professional evolution, highlighting a deep-dive into memory management and primitive data structures that informs my high-level architectural decisions today.*
