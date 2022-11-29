#!/usr/bin/python3
"""Function that queries the Reddit API to print the titles of the first
10 hot posts for a given subreddit."""
import requests


def top_ten(subreddit):
    """Prints the first 10 hot posts listed."""
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    params = {'limit': 10}
    headers = {'User-Agent': 'Python/requests'}
    req = requests.get(url, headers=headers, params=params,
                       allow_redirects=False)

    try:
        resp = req.json()
        posts = resp.get("data", {}).get("children", None)
        if posts is None:
            print(None)
        else:
            [print(post.get("data").get("title")) for post in posts]
    except Exception:
        print(None)
