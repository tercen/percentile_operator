library(tercen)
library(dplyr)

ctx = tercenCtx()
prob <- as.double(ctx$op.value('percentile'))

ctx %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(percentile = quantile(.y, probs = c(prob))) %>%
  ctx$addNamespace() %>%
  ctx$save()
