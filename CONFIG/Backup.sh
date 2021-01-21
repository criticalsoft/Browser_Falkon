rm -rf ./falkon/
cp -r ~/.config/falkon/ ./


rm -rf ./falkon_$(date +"%Y%m%d")/
cp -r ./falkon/ ./falkon_$(date +"%Y%m%d")/




sync
echo SYNC




