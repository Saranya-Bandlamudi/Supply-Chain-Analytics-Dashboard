import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("Supply Chain Python Project/supply_chain.csv")

supplier_revenue = df.groupby("Supplier name")["Revenue generated"].sum()

top5 = supplier_revenue.sort_values(ascending=False).head(5)

plt.figure(figsize=(8,5))
top5.plot(kind="barh")

plt.title("Top Supplier Performance")
plt.xlabel("Revenue")
plt.ylabel("Supplier")

plt.tight_layout()
plt.show()