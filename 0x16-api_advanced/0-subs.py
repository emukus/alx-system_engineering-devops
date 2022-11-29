#!/usr/bin/python3
"""Function that queries the Reddit API to return the no. of subscribers
for a given subreddit."""
import requests


def number_of_subscribers(subreddit):
    """Returns the no. of subscribers"""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {'User-Agent': 'Python/requests'}
    req = requests.get(url, headers=headers, allow_redirects=False)

    try:
        resp = req.json()
        return resp.get("data", {}).get("subscribers", 0)
    except Exception:
        return 0
