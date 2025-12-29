# 📊 Key Findings — Content Engagement, Churn & Monetization Analytics

## 1. User Base Overview
- Total Users Analyzed: **1,200**
- Analysis period covers user engagement, churn behavior, and monetization performance.

---

## 2. Churn Insights
- Overall churn rate is **very high (~99.7%)**, indicating:
  - Either an aggressive churn definition, or
  - A highly competitive content consumption environment
- Engagement score difference between churned and active users was **not statistically significant** (p-value > 0.05), suggesting:
  - Engagement alone may not fully explain churn
  - Other factors (pricing, content relevance, acquisition source) may contribute

---

## 3. Revenue & Subscription Performance
| Subscription Plan | Avg 30-Day Revenue |
|------------------|--------------------|
| Free             | Lowest             |
| Basic            | Moderate           |
| Premium          | **Highest**        |

- Premium users generate **~2x–4x more revenue** than Free users
- Monetization improves significantly with higher subscription tiers

---

## 4. Churn Risk Segmentation
Users were segmented using a composite churn risk score based on:
- Engagement score
- Engagement volatility
- Engagement trend

### Risk Distribution:
- Low Risk: **33.3%**
- Medium Risk: **33.3%**
- High Risk: **33.3%**

> Equal segmentation is expected due to quantile-based binning (pd.qcut)

---

## 5. Strategic Insights
- High-risk users still show reasonable engagement → **early warning opportunity**
- Revenue growth should focus on:
  - Retaining Premium users
  - Upselling Basic users
- Engagement volatility is a strong churn indicator

---

## 6. Business Recommendations
- Introduce personalized content for high-risk users
- Improve onboarding experience for Free → Basic upgrades
- Monitor engagement volatility instead of raw watch time alone

---

📌 **Conclusion**  
This project demonstrates how engagement analytics, churn modeling, and monetization metrics can be combined to support data-driven product and revenue decisions.
