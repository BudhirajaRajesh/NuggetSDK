Pod::Spec.new do |s|
  s.name             = 'NuggetSDK'
  s.version          = '0.1.2'
  s.summary          = 'The Nugget SDK for iOS.'
  s.description      = <<-DESC
                     A longer description of NuggetSDK.
                     DESC
  s.homepage         = 'https://github.com/BudhirajaRajesh/NuggetSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' } # Assuming MIT, create a LICENSE file if you don't have one
  s.author           = { 'Zomato' => 'rajesh.budhiraja@zomato.com' }
  s.source           = { :git => 'https://github.com/BudhirajaRajesh/NuggetSDK'}

  s.ios.deployment_target = '14.0'
  s.swift_versions = ['5.0']

  s.source_files = 'Sources/NuggetSDK/**/*.swift'

  # External dependencies
  s.dependency 'JTAppleCalendar', '8.0.5'
  s.dependency 'Alamofire', '~> 5.10.2'
  s.dependency 'Nuke', '10.7.1'
  
  # Download and prepare all required XCFrameworks with checksum verification
  s.prepare_command = <<-CMD
    # Function to verify checksum
    verify_checksum() {
      local file=$1
      local expected=$2
      local actual=$(shasum -a 256 "$file" | cut -d' ' -f1)
      if [ "$actual" != "$expected" ]; then
        echo "Error: Checksum verification failed for $file. Expected: $expected, Actual: $actual"
        exit 1
      fi
    }

    echo "Downloading and unzipping Nugget..."
    curl -L https://github.com/BudhirajaRajesh/NuggetSDK/releases/download/0.1.2-Nugget/Nugget.xcframework.zip -o Nugget.xcframework.zip
    verify_checksum "Nugget.xcframework.zip" "25a301c4bb30fc253834cfe6d3c8d7eef6149ef147b8838faf42ebc786ec6041"
    unzip -o Nugget.xcframework.zip
    rm Nugget.xcframework.zip

    echo "Downloading and unzipping NuggetFoundation..."
    curl -L https://github.com/BudhirajaRajesh/NuggetSDK/releases/download/0.1.2-NuggetFoundation/NuggetFoundation.xcframework.zip -o NuggetFoundation.xcframework.zip
    verify_checksum "NuggetFoundation.xcframework.zip" "7daad184becf5a19f4d4a8657fe11187e2354de3d72eb1dfd7c49645487e4f03"
    unzip -o NuggetFoundation.xcframework.zip
    rm NuggetFoundation.xcframework.zip

    echo "Downloading and unzipping NuggetJumbo..."
    curl -L https://github.com/BudhirajaRajesh/NuggetSDK/releases/download/0.1.2-NuggetJumbo/NuggetJumbo.xcframework.zip -o NuggetJumbo.xcframework.zip
    verify_checksum "NuggetJumbo.xcframework.zip" "85a1b62bfbf84c4b7422f720683fedf66a8fa7579cfbe3315eac850f643550f7"
    unzip -o NuggetJumbo.xcframework.zip
    rm NuggetJumbo.xcframework.zip

    echo "Downloading and unzipping ZApiManager..."
    curl -L https://github.com/BudhirajaRajesh/NuggetSDK/releases/download/0.1.2-ZApiManager/ZApiManager.xcframework.zip -o ZApiManager.xcframework.zip
    verify_checksum "ZApiManager.xcframework.zip" "9999ca464cadd3751ace81e33d6b6d18c6cc3d92b1dcc53662bc750e4c51b017"
    unzip -o ZApiManager.xcframework.zip
    rm ZApiManager.xcframework.zip
  CMD

  # Specify all vendored frameworks
  s.vendored_frameworks = [
    'Nugget.xcframework',
    'NuggetFoundation.xcframework',
    'NuggetJumbo.xcframework',
    'ZApiManager.xcframework'
  ]
  
  # If Nugget is a private pod, uncomment and update the following line with the correct source
  # s.dependency 'Nugget', '~> x.y.z'

  # If your SDK has different submodules or requires more complex structure,
  # you might use subspecs.
end 
