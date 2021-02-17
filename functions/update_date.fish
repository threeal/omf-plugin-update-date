function update_date -d "Update system date"
  set google_date (wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)
  sudo date -s $google_date"Z"
end
