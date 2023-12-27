import tkinter as tk
from functools import partial

def main():
    # Entrada inicial en CLI
    num_players = int(input("Enter the number of players (1-8): "))
    if num_players < 1 or num_players > 8:
        print("Invalid number of players. It should be between 1 and 8.")
        return

    players = []
    for i in range(num_players):
        name = input(f"Enter the name of Player {i + 1}: ")
        players.append({"name": name, "points": 0, "bet": 0})

    # Configuración de la ventana principal
    window = tk.Tk()
    window.title("Betting Game")

    # Tamaño de la fuente
    font_size = 50

    # Configuración del marco principal
    main_frame = tk.Frame(window)
    main_frame.pack()

    def update_status_message(message):
        clear_frame()
        status_label = tk.Label(main_frame, text=message, font=("Helvetica", font_size))
        status_label.pack()

    def place_bets():
        update_status_message("Players, place your bets (0-9):")
        for i in range(num_players):
            player_label = tk.Label(main_frame, text=f"{players[i]['name']}'s bet:", font=("Helvetica", font_size))
            player_label.pack()
            bet_buttons_frame = tk.Frame(main_frame)
            bet_buttons_frame.pack()
            for j in range(10):
                btn = tk.Button(bet_buttons_frame, text=str(j), command=partial(set_bet, i, j), font=("Helvetica", font_size))
                btn.pack(side="left")
        confirm_button = tk.Button(main_frame, text="Confirm Bets", command=lambda: confirm_bets(0), font=("Helvetica", font_size))
        confirm_button.pack()

    def set_bet(player_index, bet):
        players[player_index]['bet'] = bet

    def confirm_bets(player_index):
        if player_index < num_players:
            update_status_message(f"Did {players[player_index]['name']} make the bet of {players[player_index]['bet']}? (Y/N)")
            yes_btn = tk.Button(main_frame, text="Y", command=partial(process_bet, player_index, True, player_index + 1), font=("Helvetica", font_size))
            yes_btn.pack()
            no_btn = tk.Button(main_frame, text="N", command=partial(process_bet, player_index, False, player_index + 1), font=("Helvetica", font_size))
            no_btn.pack()
        else:
            show_scores()

    def process_bet(player_index, did_bet, next_index):
        if did_bet:
            players[player_index]['points'] += players[player_index]['bet'] + 10
            confirm_bets(next_index)
        else:
            ask_for_points(player_index, next_index)

    def ask_for_points(player_index, next_index):
        update_status_message(f"How many points did {players[player_index]['name']} earn? (0-9):")
        for i in range(10):
            btn = tk.Button(main_frame, text=str(i), command=partial(set_points, player_index, i, next_index), font=("Helvetica", font_size))
            btn.pack(side="left")

    def set_points(player_index, points, next_index):
        players[player_index]['points'] += points
        confirm_bets(next_index)

    def show_scores():
        update_status_message("Scores this round:")
        for player in players:
            score_label = tk.Label(main_frame, text=f"{player['name']}\t{player['points']} points", font=("Helvetica", font_size))
            score_label.pack()
        continue_button = tk.Button(main_frame, text="Continue", command=place_bets, font=("Helvetica", font_size))
        continue_button.pack()
        end_game_button = tk.Button(main_frame, text="End Game", command=window.destroy, font=("Helvetica", font_size))
        end_game_button.pack()

    def clear_frame():
        for widget in main_frame.winfo_children():
            widget.destroy()

    place_bets_button = tk.Button(main_frame, text="Place Bets", command=place_bets, font=("Helvetica", font_size))
    place_bets_button.pack()

    window.mainloop()

if __name__ == "__main__":
    main()
