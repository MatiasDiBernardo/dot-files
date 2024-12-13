#!/bin/bash

SESSION_NAME="my_session"

# Check if the session already exists
if tmux has-session -t $SESSION_NAME 2>/dev/null; then
    echo "Session $SESSION_NAME already exists. Attaching to it."

    # Se podría actualizar (sería para el caso donde justo update algo en el celu y no cerre sesion)
    # tmux send-keys -t $SESSION_NAME:1 'git pull' C-m

    # Attach to session
    tmux attach-session -t $SESSION_NAME
else
    # Create a new session and name it
    tmux new-session -d -s $SESSION_NAME

    # Rename the first window 
    tmux rename-window -t $SESSION_NAME:1 'notes'
    tmux send-keys -t $SESSION_NAME:1 'oo' C-m

    # Create a second window and run a note comand
    tmux new-window -t $SESSION_NAME -n 'code'

    # Attach to the created session
    tmux attach-session -t $SESSION_NAME
fi

# Sube los cambios al repo
cd  "/home/diber/Vault/Notardas"

git add .

git commit -m "Automatic vault update"

git push

echo "Sincronización de vault terminada"
