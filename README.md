# Twitter Data Search Application

## Project Overview
This project develops a comprehensive search application for analyzing Twitter data. Leveraging the capabilities of MongoDB for unstructured data and PostgreSQL for structured data, this application facilitates efficient data storage, retrieval, and analysis, focusing on user interactions and Twitter content.

## Features
- **Structured and Unstructured Data Management**: Utilizes PostgreSQL for structured user data and MongoDB for unstructured tweet data.
- **Advanced Search Capabilities**: Enables users to search tweets by hashtags, user handles, and specific time ranges, with additional drill-down options.
- **Performance Optimization**: Incorporates indexing and partitioning to enhance database performance and caching mechanisms to speed up frequent queries.

## Methodologies
### Data Handling
- **Data Parsing and Insertion**: Python scripts parse JSON data for structured and unstructured information, which are then inserted into PostgreSQL and MongoDB respectively.
- **Data Normalization and Indexing**: Implements normalization for consistent data format and indexes critical attributes like user names and tweet content for quicker access.

### Search Mechanism
- **Complex Query Handling**: Employs SQL and NoSQL queries to extract relevant information based on user-input criteria such as text search, hashtags, and user engagement metrics.
- **Engagement Analysis**: Calculates a relevance score for tweets based on engagement metrics like replies, quotes, favorites, and retweets to rank search results.

### Optimization Techniques
- **Partitioning**: Applies data partitioning on tweet creation times to manage large datasets effectively, improving query performance by focusing on smaller data chunks.
- **Caching**: Uses an LRU (Least Recently Used) caching strategy to store frequently accessed data, reducing load times and database queries with a set TTL (Time to Live) for cache validity.

## Architecture
- **Dual Database System**: Integrates both PostgreSQL and MongoDB to handle different data types, optimizing for both relational and flexibility needs.
- **Indexing Strategy**: Employs compound indexing on user data and simple indexing on tweets to facilitate efficient data retrieval.

## Results
- **Performance Metrics**: Demonstrates significant improvements in query performance and system responsiveness through the use of indexing, partitioning, and caching.
- **User Experience**: Offers an intuitive interface for users to perform detailed searches and obtain results quickly, significantly enhancing user interaction with data.

## Team Contributions
- Amaan Vora
- Jahnavi Shah
- Atharva Sherekar
- Keshvi Gupta


## Conclusion
This search application for Twitter data provides a robust tool for analyzing and extracting valuable insights from Twitter, enhancing research capabilities in social media analytics. Through the strategic use of database management and optimization techniques, this project effectively handles large volumes of data to deliver fast and relevant search results.
