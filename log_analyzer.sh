#!/bin/bash
# ---------------------------------------------
#  Log Analyzer & Error Report Generator
# ---------------------------------------------
# Parses system/application logs to detect errors, warnings,
# and critical events. Generates structured reports (TXT/CSV),
# supports cron scheduling, and compresses old reports.
# ---------------------------------------------

LOG_FILE="$1"
REPORT_DIR="reports"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT_TXT="$REPORT_DIR/report_$DATE.txt"
REPORT_CSV="$REPORT_DIR/report_$DATE.csv"

# Create reports directory if not exists
mkdir -p "$REPORT_DIR"

# Validate input
if [[ -z "$LOG_FILE" ]]; then
    echo "❌ Usage: $0 <log_file>"
    exit 1
elif [[ ! -f "$LOG_FILE" ]]; then
    echo "❌ Log file not found: $LOG_FILE"
    exit 1
fi

# Extract errors
ERRORS=$(grep -i "error" "$LOG_FILE")
WARNINGS=$(grep -i "warning" "$LOG_FILE")
CRITICAL=$(grep -i "critical" "$LOG_FILE")

# Count occurrences
COUNT_ERROR=$(echo "$ERRORS" | wc -l)
COUNT_WARNING=$(echo "$WARNINGS" | wc -l)
COUNT_CRITICAL=$(echo "$CRITICAL" | wc -l)

# Generate TXT report
{
    echo "=============================="
    echo "   📊 Log Analyzer Report"
    echo "   Generated: $(date)"
    echo "=============================="
    echo ""
    echo "[Summary]"
    echo "ERROR    → $COUNT_ERROR"
    echo "WARNING  → $COUNT_WARNING"
    echo "CRITICAL → $COUNT_CRITICAL"
    echo ""
    echo "[Top Recurring Issues]"
    grep -iE "error|warning|critical" "$LOG_FILE" | awk '{print $0}' | sort | uniq -c | sort -nr | head -10
} > "$REPORT_TXT"

# Generate CSV report
{
    echo "Type,Count"
    echo "ERROR,$COUNT_ERROR"
    echo "WARNING,$COUNT_WARNING"
    echo "CRITICAL,$COUNT_CRITICAL"
} > "$REPORT_CSV"

# Compress old reports (>5 days)
find "$REPORT_DIR" -name "*.txt" -mtime +5 -exec gzip {} \;

echo " Reports generated:"
echo "   - $REPORT_TXT"
echo "   - $REPORT_CSV"
