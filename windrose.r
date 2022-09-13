pdf("windrose_kirov.pdf")
data <- read.csv("meteodata_kirov.csv", sep = ";", skip = 1)
n <- rep(0, times = 8)
data <- data$WindDirection
data <- data[!is.na(data)]
n[1] <- length(data[data == 180])
n[2] <- length(data[data == 135])
n[3] <- length(data[data == 90])
n[4] <- length(data[data == 45])
n[5] <- length(data[data == 0])
n[6] <- length(data[data == 315])
n[7] <- length(data[data == 270])
n[8] <- length(data[data == 225])
color <- "#0000FF"
plot(NULL, NULL, axes = FALSE, xlab = "", ylab = "", xlim = c(-1.1 * max(n), 1.1 * max(n)), ylim = c(-1.1 * max(n), 1.1 * max(n)))
polygon(c(-n[3], -n[2] / sqrt(2), 0, n[8] / sqrt(2), n[7], n[6] / sqrt(2), 0, -n[4] / sqrt(2)), c(0, n[2] / sqrt(2), n[1], n[8] / sqrt(2), 0, -n[6] / sqrt(2), -n[5], -n[4] / sqrt(2)), col = "#C0C0FF", border = color, lwd = 2)
arrows(-1.1 * max(n), 0, 1.1 * max(n), 0, code = 3)
points(0, 0)
arrows(0, 1.1 * max(n), 0, -1.1 * max(n), code = 3)
arrows(-1.1 * max(n) / sqrt(2), 1.1 * max(n) / sqrt(2), 1.1 * max(n) / sqrt(2), -1.1 * max(n) / sqrt(2), code = 3)
arrows(-1.1 * max(n) / sqrt(2), -1.1 * max(n) / sqrt(2), 1.1 * max(n) / sqrt(2), 1.1 * max(n) / sqrt(2), code = 3)
dev.off()
pdf("windrose_saint-petersburg.pdf")
data <- read.csv("meteodata_sankt-peterburg.csv", sep = ";", skip = 1)
n <- rep(0, times = 8)
data <- data$WindDirection
data <- data[!is.na(data)]
n[1] <- length(data[data == 180])
n[2] <- length(data[data == 135])
n[3] <- length(data[data == 90])
n[4] <- length(data[data == 45])
n[5] <- length(data[data == 0])
n[6] <- length(data[data == 315])
n[7] <- length(data[data == 270])
n[8] <- length(data[data == 225])
color <- "#0000FF"
plot(NULL, NULL, axes = FALSE, xlab = "", ylab = "", xlim = c(-1.1 * max(n), 1.1 * max(n)), ylim = c(-1.1 * max(n), 1.1 * max(n)))
polygon(c(-n[3], -n[2] / sqrt(2), 0, n[8] / sqrt(2), n[7], n[6] / sqrt(2), 0, -n[4] / sqrt(2)), c(0, n[2] / sqrt(2), n[1], n[8] / sqrt(2), 0, -n[6] / sqrt(2), -n[5], -n[4] / sqrt(2)), col = "#C0C0FF", border = color, lwd = 2)
arrows(-1.1 * max(n), 0, 1.1 * max(n), 0, code = 3)
points(0, 0)
arrows(0, 1.1 * max(n), 0, -1.1 * max(n), code = 3)
arrows(-1.1 * max(n) / sqrt(2), 1.1 * max(n) / sqrt(2), 1.1 * max(n) / sqrt(2), -1.1 * max(n) / sqrt(2), code = 3)
arrows(-1.1 * max(n) / sqrt(2), -1.1 * max(n) / sqrt(2), 1.1 * max(n) / sqrt(2), 1.1 * max(n) / sqrt(2), code = 3)
dev.off()