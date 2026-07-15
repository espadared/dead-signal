# Dead Signal

A 4–6 player party game where **your own AI assistant might be lying to you**.

## The story

Your crew is stranded on the freighter *Meridian* after an accident. Earth is
silent. Five system crises stand between you and the rescue window, and every
decision depends on advice from each player's personal AI assistant.

The catch: the crash damaged the AI core.

- Some assistants are **reliable** — they tell the truth.
- One is **corrupted** — it lies convincingly, and its owner has *no idea*.
- One is **eccentric** — honest, but so strange it's hard to trust.
- And one **player** is secretly the **saboteur**. Their AI knows it, feeds
  them the real answers, and coaches their lies.

Each round: read the crisis, privately ask your AI what to do (3 questions),
argue in the crew chat about whose AI to believe, then vote. Wrong choices
burn oxygen. Survive all five crises, then unmask the saboteur to win.

## How to run it

**On this Mac:** double-click `Start Dead Signal.command`, then everyone on
the same WiFi opens the address it prints.

**With live AI assistants** (needs an Anthropic API key):

    ANTHROPIC_API_KEY=sk-ant-... python3 server.py

**Without a key** the game runs in *demo mode*: the assistants use
pre-written responses, and the whole game is still fully playable.

## Hosting on Render (play with friends anywhere)

Same recipe as Couple Chemistry:

1. Push this folder to a GitHub repository.
2. On render.com: New → Web Service → pick the repo. The included
   `render.yaml` sets everything up (free plan).
3. In the Render dashboard, add an environment variable
   `ANTHROPIC_API_KEY` with your key (or skip it for demo mode).

## Files

- `server.py` — the whole game server (rooms, roles, crises, AI calls).
  Pure Python standard library, no packages to install.
- `public/index.html` — the phone-friendly game screen.
- `render.yaml` — one-click Render hosting setup.
