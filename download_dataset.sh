mkdir -p dataset/train
cd dataset/train

for i in {1..20}
do
    if [ ! -f "dark-side-train-data-part${i}.zip" ]; then
        wget https://xeek-public-287031953319-eb80.s3.amazonaws.com/dark-side/dark-side-train-data-part${i}.zip
    else
        echo "dark-side-train-data-part${i}.zip 已存在"
    fi
done

unzip -q '*.zip'
cd ..

mkdir -p dataset/test
cd dataset/test

for i in {1..5}
do
    if [ ! -f "dark-side-test-data-part-${i}.zip" ]; then
        wget https://xeek-public-287031953319-eb80.s3.amazonaws.com/dark-side/dark-side-test-data-part-${i}.zip
    else
        echo "dark-side-test-data-part-${i}.zip 已存在"
    fi
done

unzip -q '*.zip'
cd ..
