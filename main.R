library(tercen)
library(dplyr)

prob <- as.double(ctx$op.value('percentile'))

(ctx = tercenCtx())  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(percentile = quantile(.y, probs = c(prob))) %>%
  ctx$addNamespace() %>%
  ctx$save()
