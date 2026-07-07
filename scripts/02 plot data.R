# Cumulative curve
p_cumulative <- ggplot(ues_legionnaires, aes(x = report_date, y = cumulative_cases)) +
  geom_line(color = "firebrick", linewidth = 1) +
  geom_point(size = 2, color = "firebrick") +
  scale_x_date(date_breaks = "1 day", date_labels = "%b %d") +
  labs(
    title = "Cumulative Confirmed Legionnaires' Disease Cases",
    subtitle = "Upper East Side, NYC — ZIP codes 10028, 10128, 10075",
    x = "Report date", y = "Cumulative confirmed cases",
    caption = "Source: NYC Health Dept press releases. Dates reflect public\nreporting, not symptom onset — true epi curve unavailable."
  ) +
  theme_minimal()

# "New cases per reporting interval" bar chart (epi-curve-style,
# but irregular bin widths — label clearly)
p_new_cases <- ggplot(ues_legionnaires, aes(x = report_date, y = new_cases)) +
  geom_col(fill = "steelblue") +
  scale_x_date(date_breaks = "1 day", date_labels = "%b %d") +
  labs(
    title = "New Confirmed Cases Between Report Dates",
    subtitle = "Upper East Side Legionnaires' cluster, 2026",
    x = "Report date", y = "New cases since prior report",
    caption = "Irregular reporting intervals — not a true daily epi curve."
  ) +
  theme_minimal()

# Save to output/
ggsave("output/ues_legionnaires_cumulative_curve.png",
       plot = p_cumulative, width = 8, height = 5, dpi = 300)

ggsave("output/ues_legionnaires_new_cases.png",
       plot = p_new_cases, width = 8, height = 5, dpi = 300)