# Info

## What is socket programming?

Socket programming is a way of connecting two nodes on a network to comunicate with each other.

## Diagram

```
      Server                Client
   ------------            -------- 
  | setsockopt |          | Socket |
   ------------            --------
        |                      |
        v                      |
      ------                   |
     | Bind |                  |
      ------                   |
        |   ---------------    |
        v   v              |   v
     --------              ---------    
    | Listen |            | Connect |
     --------              ---------
        |                      |
        v                      |
     --------                  |
    | Accept |                 |
     --------                  |
        |                      |
        v                      v
   -----------            -----------   
  | Send/Recv | <------> | Send/Recv |
   -----------            -----------
```

## Stages

### Socket creation

`int sockfd = socket(domain, type, protocol)`

* sockfd: socket descriptor, an integer.

* domain: integer, **communitacion domain**


