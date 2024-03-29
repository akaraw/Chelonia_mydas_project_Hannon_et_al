myvolcano <- function(res) {
  library(EnhancedVolcano)
  vol2 <- EnhancedVolcano(res,
                          lab = rownames(res),
                          x = 'log2FoldChange',
                          y = 'padj', 
                          selectLab = NULL, #rownames(res)[which(names(keyvals) %in% c('high', 'low'))],
                          xlab = bquote(~Log[2]~ 'fold change'),
                          title = NULL, #'Volcano plot - Difference in Kids compared to Adults ',
                          subtitle = NULL, #'~ without treatment effect(i.e. without Virus infection)',
                          pCutoff = 0.05,
                          FCcutoff = 0.58,
                          pointSize = 5,
                          labSize = 3.0,
                          labCol = 'black',
                          labFace = 'bold',
                          boxedLabels = F,
                          ylim = c(0,2.5),
                          xlim = c(-7.5,7.5),
                          colAlpha = 3/4,
                          gridlines.major = F,
                          gridlines.minor = F,
                          col = c("grey30", "palegreen3", "lightslateblue", "orangered2"),
                          legendPosition = c(0.85, 0.7),
                          legendLabels = c("NS", bquote(~Log[2]~'fold change (±1.5)'), 'p-adj < 0.05', bquote(~Log[2]~ 'fold change & p-adj')),
                          legendLabSize = 8,
                          legendIconSize = 2.5,
                          drawConnectors = F,
                          widthConnectors = 1.0, caption = NULL,
                          colConnectors = 'black') 
  
  vol2
  vol2 = vol2 + ggplot2::theme(axis.text.y = element_blank(), axis.title = element_text(size = 12),
                               text = element_text(family = 'serif', face = 'bold')) + 
    scale_y_continuous(breaks=NULL) 
  print(vol2)
  
}
