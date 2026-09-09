"""
Interactive Unit Converter Tool
Features: Robust error handling, comprehensive conversions, and a clean CLI menu.
"""

def show_menu(title, options):
    print(f"\n{"="*10} {title} {"="*10}")
    for key, value in options.items():
        print(f"[{key}] {value}")
    print("=" * (22 + len(title)))

def get_valid_float(prompt):
    while True:
        try:
            return float(input(prompt))
        except ValueError:
            print("❌ Invalid input! Please enter a valid numerical value.")

def convert_length():
    options = {"1": "Meters to Feet", "2": "Feet to Meters", "3": "Kilometers to Miles", "4": "Miles to Kilometers", "B": "Back to Main Menu"}
    while True:
        show_menu("LENGTH CONVERTER", options)
        choice = input("Select an option: ").strip().upper()
        
        if choice == "B":
            break
        elif choice == "1":
            val = get_valid_float("Enter meters: ")
            print(f"👉 {val} meters = {val * 3.28084:.4f} feet")
        elif choice == "2":
            val = get_valid_float("Enter feet: ")
            print(f"👉 {val} feet = {val / 3.28084:.4f} meters")
        elif choice == "3":
            val = get_valid_float("Enter kilometers: ")
            print(f"👉 {val} km = {val * 0.621371:.4f} miles")
        elif choice == "4":
            val = get_valid_float("Enter miles: ")
            print(f"👉 {val} miles = {val / 0.621371:.4f} km")
        else:
            print("❌ Invalid choice. Please pick a number from the menu.")

def convert_weight():
    options = {"1": "Kilograms to Pounds", "2": "Pounds to Kilograms", "3": "Grams to Ounces", "4": "Ounces to Grams", "B": "Back to Main Menu"}
    while True:
        show_menu("WEIGHT CONVERTER", options)
        choice = input("Select an option: ").strip().upper()
        
        if choice == "B":
            break
        elif choice == "1":
            val = get_valid_float("Enter kilograms: ")
            print(f"👉 {val} kg = {val * 2.20462:.4f} lbs")
        elif choice == "2":
            val = get_valid_float("Enter pounds: ")
            print(f"👉 {val} lbs = {val / 2.20462:.4f} kg")
        elif choice == "3":
            val = get_valid_float("Enter grams: ")
            print(f"👉 {val} grams = {val * 0.035274:.4f} ounces")
        elif choice == "4":
            val = get_valid_float("Enter ounces: ")
            print(f"👉 {val} ounces = {val / 0.035274:.4f} grams")
        else:
            print("❌ Invalid choice. Please pick a number from the menu.")

def convert_temperature():
    options = {"1": "Celsius to Fahrenheit", "2": "Fahrenheit to Celsius", "3": "Celsius to Kelvin", "4": "Kelvin to Celsius", "B": "Back to Main Menu"}
    while True:
        show_menu("TEMPERATURE CONVERTER", options)
        choice = input("Select an option: ").strip().upper()
        
        if choice == "B":
            break
        elif choice == "1":
            val = get_valid_float("Enter °C: ")
            print(f"👉 {val}°C = {(val * 9/5) + 32:.2f}°F")
        elif choice == "2":
            val = get_valid_float("Enter °F: ")
            print(f"👉 {val}°F = {(val - 32) * 5/9:.2f}°C")
        elif choice == "3":
            val = get_valid_float("Enter °C: ")
            print(f"👉 {val}°C = {val + 273.15:.2f} K")
        elif choice == "4":
            val = get_valid_float("Enter Kelvin (K): ")
            if val < 0:
                print("❌ Temperature cannot be below absolute zero (0 K)!")
            else:
                print(f"👉 {val} K = {val - 273.15:.2f}°C")
        else:
            print("❌ Invalid choice. Please pick a number from the menu.")

def convert_volume():
    options = {"1": "Liters to Gallons (US)", "2": "Gallons (US) to Liters", "3": "Milliliters to Fluid Ounces", "4": "Fluid Ounces to Milliliters", "B": "Back to Main Menu"}
    while True:
        show_menu("VOLUME CONVERTER", options)
        choice = input("Select an option: ").strip().upper()
        
        if choice == "B":
            break
        elif choice == "1":
            val = get_valid_float("Enter liters: ")
            print(f"👉 {val} L = {val * 0.264172:.4f} gal")
        elif choice == "2":
            val = get_valid_float("Enter gallons: ")
            print(f"👉 {val} gal = {val / 0.264172:.4f} L")
        elif choice == "3":
            val = get_valid_float("Enter milliliters: ")
            print(f"👉 {val} mL = {val * 0.033814:.4f} fl oz")
        elif choice == "4":
            val = get_valid_float("Enter fluid ounces: ")
            print(f"👉 {val} fl oz = {val / 0.033814:.4f} mL")
        else:
            print("❌ Invalid choice. Please pick a number from the menu.")

def main():
    main_options = {
        "1": "Length Conversions",
        "2": "Weight Conversions",
        "3": "Temperature Conversions",
        "4": "Volume Conversions",
        "Q": "Quit Application"
    }
    
    print("Welcome to the Ultimate Python Unit Converter!")
    
    while True:
        show_menu("MAIN MENU", main_options)
        choice = input("Select a category: ").strip().upper()
        
        if choice == "Q":
            print("\nThank you for using the Unit Converter! Goodbye. 👋")
            break
        elif choice == "1":
            convert_length()
        elif choice == "2":
            convert_weight()
        elif choice == "3":
            convert_temperature()
        elif choice == "4":
            convert_volume()
        else:
            print("❌ Invalid choice. Please select a valid category from the menu.")

if __name__ == "__main__":
    main()
