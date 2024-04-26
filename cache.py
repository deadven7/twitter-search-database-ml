import time
from collections import OrderedDict

class SearchCache:
    def __init__(self, max_size=100, ttl=3600):
        """
        Initializes the cache with a maximum size and time-to-live (ttl) values.

        Args:
        - max_size (int): Maximum number of items that the cache can hold.
        - ttl (int): Time-to-live of each cache entry in seconds.
        """
        self.max_size = max_size
        self.ttl = ttl
        # initialize an ordered dictionary that will be used as the cache
        self.cache = OrderedDict()

    def __contains__(self, key):
        """
        Returns a boolean value indicating if a key is present in the cache.

        Args:
        - key (str): Key to look up in the cache.

        Returns:
        - bool: True if the key is present in the cache, False otherwise.
        """
        return key in self.cache

    def __getitem__(self, key):
        """
        Retrieves the value and timestamp from the cache for a given key.

        Args:
        - key (str): Key to look up in the cache.

        Returns:
        - Any: Value associated with the given key.

        Raises:
        - KeyError: If the cache entry has expired.
        """
        # retrieve the value and timestamp from the cache for a given key
        try:
            value, timestamp = self.cache[key]
        except KeyError:
            print(f"Cache entry with key '{key}' not found.")
            return None
        # check if the cache entry has expired by comparing its timestamp with the current time
        if time.time() - timestamp > self.ttl:
            # remove the expired cache entry
            self.cache.pop(key)
            # print an error message indicating the cache entry has expired
            print(f"Cache entry with key '{key}' has expired.")
            return None
        # move the accessed cache entry to the end of the ordered dictionary
        self.cache.move_to_end(key)
        # return the value associated with the given key
        return value


    def __setitem__(self, key, value):
        """
        Adds or updates a cache entry for the given key with its corresponding value and timestamp.

        Args:
        - key (str): Key to add or update in the cache.
        - value (Any): Value to associate with the given key in the cache.
        """
        # check if the given key is already present in the cache
        if key in self.cache:
            # move the existing cache entry to the end of the ordered dictionary
            self.cache.move_to_end(key)
        # adds a new cache entry for the given key with its corresponding value and timestamp
        self.cache[key] = (value, time.time())
        # check if the cache has exceeded its maximum size
        if len(self.cache) > self.max_size:
            # remove the least recently used cache entry (i.e., the first item in the ordered dictionary)
            self.cache.popitem(last=False)
