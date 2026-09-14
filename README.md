# Simple Interest Calculator

A lightweight, multi-language reference implementation and calculator tool for computing Simple Interest and total accrued amounts.

---

## 📌 Overview

This project provides clear mathematical definitions, code implementations, and interactive visual concepts for calculating Simple Interest based on principal amount, annual interest rate, and time duration.

---

## 📐 Formula

Simple Interest ($I$) is calculated using the standard formula:

$$I = \frac{P \times R \times T}{100}$$

$$\text{Total Amount } (A) = P + I$$

### Variables Definition
* **$P$ (Principal):** Initial amount of money deposited or borrowed.
* **$R$ (Rate of Interest):** Annual interest rate percentage.
* **$T$ (Time Period):** Time duration for investment/loan in years.

---

## 📊 Example Calculation

If you invest **$1,000** at an annual interest rate of **5%** for **3 years**:

* **$P$** = 1000
* **$R$** = 5
* **$T$** = 3

$$I = \frac{1000 \times 5 \times 3}{100} = 150$$

$$A = 1000 + 150 = 1150$$

* **Simple Interest:** $150.00
* **Total Amount:** $1,150.00

---

## 💻 Code Implementations

### Python

```python
def calculate_simple_interest(principal: float, rate: float, time: float) -> tuple[float, float]:
    """Calculates simple interest and total final amount.
    
    Args:
        principal (float): Principal amount
        rate (float): Annual interest rate (%)
        time (float): Time in years
        
    Returns:
        tuple[float, float]: (Simple Interest, Total Amount)
    """
    interest = (principal * rate * time) / 100
    total_amount = principal + interest
    return interest, total_amount

# Example usage
if __name__ == "__main__":
    p, r, t = 1000.0, 5.0, 3.0
    interest, total = calculate_simple_interest(p, r, t)
    print(f"Interest: ${interest:.2f} \vert{} Total:${total:.2f}")
