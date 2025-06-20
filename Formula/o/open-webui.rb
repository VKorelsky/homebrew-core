class OpenWebui < Formula
  include Language::Python::Virtualenv

  desc "User-friendly AI Interface (Supports Ollama, OpenAI API, ...)"
  homepage "https://github.com/open-webui/open-webui"
  url "https://files.pythonhosted.org/packages/68/d4/766bd5c1cb8838875356258c0d9d75e3b2502d381c1921b605a01314c05f/open_webui-0.6.13-py3-none-any.whl" # contains pre-built frontend code
  sha256 "ade69a731d04bce61e49a10423b9fde8ae691d35fd220a1f72c2230de6de45f5"
  license :cannot_represent # Modified BSD-3-Clause license requiring preservation of the "Open WebUI" branding

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "rust" => :build # bcrypt
  depends_on "ninja" => :build # pyarrow
  depends_on "libpq" => :build# psycopg2-binary

  depends_on "python@3.11"
  depends_on "apache-arrow" # pyarrow
  depends_on "ffmpeg" 
  depends_on "geos" # shapely
  depends_on "numpy"
  depends_on "pytorch"
  depends_on "opencv"
  depends_on "onnxruntime"

  depends_on "sentencepiece" 

  depends_on "grpc"
  depends_on "protobuf"
  uses_from_macos "zlib" # grpcio

  depends_on "pybind11"  => :build # ctranslate2
  depends_on "spdlog"    => :build # ctranslate2

  on_linux do
    depends_on "patchelf" => :build # pyarrow
  end

  def python
    "python3.11"
  end

  resource "playwright" do
    url "https://github.com/microsoft/playwright-python/archive/refs/tags/v1.49.1.tar.gz"
    sha256 "c68709e1ad19a1635df16a5b08361b9f98463e97f6a559e220ea1d6434ddfbe2"
  end

  # resource "milvus-lite" do 
  #   url "https://github.com/milvus-io/milvus-lite/archive/refs/tags/v2.4.12.tar.gz"
  #   sha256 "916ba69acfa140178a0afb5d76f645df44ad6147645c769d987785febfc96fe3"
  # end

  resource "ctranslate2" do 
    url "https://github.com/OpenNMT/CTranslate2.git", 
        tag: "v4.6.0",
        revision: "617405f4b050e994e829d527da6caa0e0030afe7"
  end

  resource "accelerate" do
    url "https://files.pythonhosted.org/packages/97/33/47bbd507e3a851d33d19ce7b2141c5ea3689bfae91ba168044d7db24b0e9/accelerate-1.7.0.tar.gz"
    sha256 "e8a2a5503d6237b9eee73cc8d36cf543f9c2d8dd2c6713450b322f5e6d53a610"
  end

  resource "aiocache" do
    url "https://files.pythonhosted.org/packages/7a/64/b945b8025a9d1e6e2138845f4022165d3b337f55f50984fbc6a4c0a1e355/aiocache-0.12.3.tar.gz"
    sha256 "f528b27bf4d436b497a1d0d1a8f59a542c153ab1e37c3621713cb376d44c4713"
  end

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/0b/03/a88171e277e8caa88a4c77808c20ebb04ba74cc4681bf1e9416c862de237/aiofiles-24.1.0.tar.gz"
    sha256 "22a075c9e5a3810f0c2e48f3008c94d68c65d763b9b03857924c99e57355166c"
  end

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/26/30/f84a107a9c4331c14b2b586036f40965c128aa4fee4dda5d3d51cb14ad54/aiohappyeyeballs-2.6.1.tar.gz"
    sha256 "c3f9d0113123803ccadfdf3f0faa505bc78e6a72d1cc4806cbd719826e943558"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/fe/ed/f26db39d29cd3cb2f5a3374304c713fe5ab5a0e4c8ee25a0c45cc6adf844/aiohttp-3.11.11.tar.gz"
    sha256 "bb49c7f1e6ebf3821a42d81d494f538107610c3a705987f53068546b0e90303e"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/ba/b5/6d55e80f6d8a08ce22b982eafa278d823b541c925f11ee774b0b9c43473d/aiosignal-1.3.2.tar.gz"
    sha256 "a8c255c66fafb1e499c9351d0bf32ff2d8a0321595ebac3b93713656d2436f54"
  end

  resource "alembic" do
    url "https://files.pythonhosted.org/packages/00/1e/8cb8900ba1b6360431e46fb7a89922916d3a1b017a8908a7c0499cc7e5f6/alembic-1.14.0.tar.gz"
    sha256 "b00892b53b3642d0b8dbedba234dbf1924b69be83a9a769d5a624b01094e304b"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/63/84/95126ee8df1acedd60bd03fe368d6335d65fe92e2c97581a81a82e8f576b/anthropic-0.52.2.tar.gz"
    sha256 "9047bc960e8513950579c9cb730c16a84af3fcb56341ad7dc730772f83757050"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/95/7d/4c1bd541d4dffa1b52bd83fb8527089e097a106fc90b467a7313b105f840/anyio-4.9.0.tar.gz"
    sha256 "673c0c244e15788651a4ff38710fea9675823028a6f08a5eda409e0c9840a028"
  end

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "apscheduler" do
    url "https://files.pythonhosted.org/packages/5e/34/5dcb368cf89f93132d9a31bd3747962a9dc874480e54333b0c09fa7d56ac/APScheduler-3.10.4.tar.gz"
    sha256 "e6df071b27d9be898e486bc7940a7be50b4af2e9da7c08f0744a96d4bd4cef4a"
  end

  resource "argon2-cffi" do
    url "https://files.pythonhosted.org/packages/31/fa/57ec2c6d16ecd2ba0cf15f3c7d1c3c2e7b5fcb83555ff56d7ab10888ec8f/argon2_cffi-23.1.0.tar.gz"
    sha256 "879c3e79a2729ce768ebb7d36d4609e3a78a4ca2ec3a9f12286ca057e3d0db08"
  end

  resource "argon2-cffi-bindings" do
    url "https://files.pythonhosted.org/packages/b9/e9/184b8ccce6683b0aa2fbb7ba5683ea4b9c5763f1356347f1312c32e3c66e/argon2-cffi-bindings-21.2.0.tar.gz"
    sha256 "bb89ceffa6c791807d1305ceb77dbfacc5aa499891d2c55661c6459651fc39e3"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/29/38/b3395cc9ad1b56d2ddac9970bc8f4141312dbaec28bc7c218b0dfafd0f42/asgiref-3.8.1.tar.gz"
    sha256 "c343bd80a0bec947a9860adb4c432ffa7db769836c64238fc34bdc3fec84d590"
  end

  resource "async-timeout" do
    url "https://files.pythonhosted.org/packages/a5/ae/136395dfbfe00dfc94da3f3e136d0b13f394cba8f4841120e34226265780/async_timeout-5.0.1.tar.gz"
    sha256 "d9321a7a3d5a6a5e187e824d2fa0793ce379a202935782d555d6e9d2735677d3"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/5a/b0/1367933a8532ee6ff8d63537de4f1177af4bff9f3e829baf7331f595bb24/attrs-25.3.0.tar.gz"
    sha256 "75d7cefc7fb576747b2c81b4442d4d4a1ce0900973527c011d1030fd3bf4af1b"
  end

  resource "authlib" do
    url "https://files.pythonhosted.org/packages/58/73/0aa3d68b1c3caeac01ae0bad7a3d2a23029c4a3b42c7ccb89d752ed67eb2/authlib-1.4.1.tar.gz"
    sha256 "30ead9ea4993cdbab821dc6e01e818362f92da290c04c7f6a1940f86507a790d"
  end

  resource "av" do
    url "https://files.pythonhosted.org/packages/86/f6/0b473dab52dfdea05f28f3578b1c56b6c796ce85e76951bab7c4e38d5a74/av-14.4.0.tar.gz"
    sha256 "3ecbf803a7fdf67229c0edada0830d6bfaea4d10bfb24f0c3f4e607cd1064b42"
  end

  resource "azure-ai-documentintelligence" do
    url "https://files.pythonhosted.org/packages/ca/fd/cd0d493e9dc93a5ce097db7508f1b2467a73dcc7022c235b409ce48b9679/azure_ai_documentintelligence-1.0.0.tar.gz"
    sha256 "c8b6efc0fc7e65d7892c9585cfd256f7d8b3f2b46cecf92c75ab82e629eac253"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/c9/29/ff7a519a315e41c85bab92a7478c6acd1cf0b14353139a08caee4c691f77/azure_core-1.34.0.tar.gz"
    sha256 "bdb544989f246a0ad1c85d72eeb45f2f835afdcbc5b45e43f0dbde7461c81ece"
  end

  resource "azure-identity" do
    url "https://files.pythonhosted.org/packages/ee/89/7d170fab0b85d9650cdb7abda087e849644beb52bd28f6804620dd0cecd9/azure_identity-1.20.0.tar.gz"
    sha256 "40597210d56c83e15031b0fe2ea3b26420189e1e7f3e20bdbb292315da1ba014"
  end

  resource "azure-storage-blob" do
    url "https://files.pythonhosted.org/packages/aa/ff/f6e81d15687510d83a06cafba9ac38d17df71a2bb18f35a0fb169aee3af3/azure_storage_blob-12.24.1.tar.gz"
    sha256 "052b2a1ea41725ba12e2f4f17be85a54df1129e13ea0321f5a2fcc851cbf47d4"
  end

  resource "backoff" do
    url "https://files.pythonhosted.org/packages/47/d7/5bbeb12c44d7c4f2fb5b56abce497eb5ed9f34d85701de869acedd602619/backoff-2.2.1.tar.gz"
    sha256 "03f829f5bb1923180821643f8753b0502c3b682293992485b0eef2807afa5cba"
  end

  resource "bcrypt" do
    url "https://files.pythonhosted.org/packages/bb/5d/6d7433e0f3cd46ce0b43cd65e1db465ea024dbb8216fb2404e919c2ad77b/bcrypt-4.3.0.tar.gz"
    sha256 "3a3fd2204178b6d2adcf09cb4f6426ffef54762577a7c9b54c159008cb288c18"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/d8/e4/0c4c39e18fd76d6a628d4dd8da40543d136ce2d1752bd6eeeab0791f4d6b/beautifulsoup4-4.13.4.tar.gz"
    sha256 "dbb3c4e1ceae6aefebdaf2423247260cd062430a410e38c66f2baa50a8437195"
  end

  resource "bidict" do
    url "https://files.pythonhosted.org/packages/9a/6e/026678aa5a830e07cd9498a05d3e7e650a4f56a42f267a53d22bcda1bdc9/bidict-0.23.1.tar.gz"
    sha256 "03069d763bc387bbd20e7d49914e75fc4132a41937fa3405417e1a5a2d006d71"
  end

  resource "bitarray" do
    url "https://files.pythonhosted.org/packages/b8/0d/15826c7c2d49a4518a1b24b0d432f1ecad2e0b68168f942058b5de498498/bitarray-3.4.2.tar.gz"
    sha256 "78ed2b911aabede3a31e3329b1de8abdc8104bd5e0545184ddbd9c7f668f4059"
  end

  resource "black" do
    url "https://files.pythonhosted.org/packages/94/49/26a7b0f3f35da4b5a65f081943b7bcd22d7002f5f0fb8098ec1ff21cb6ef/black-25.1.0.tar.gz"
    sha256 "33496d5cd1222ad73391352b4ae8da15253c5de89b93a80b3e2c8d9a19ec2666"
  end

  resource "blinker" do
    url "https://files.pythonhosted.org/packages/21/28/9b3f50ce0e048515135495f198351908d99540d69bfdc8c1d15b73dc55ce/blinker-1.9.0.tar.gz"
    sha256 "b4ce2265a7abece45e7cc896e98dbebe6cead56bcf805a3d23136d145f5445bf"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/12/c1/1dc34b322d2f022d190c34dd4aa7f1a242d73633c25061bf56bd1319fe05/boto3-1.35.53.tar.gz"
    sha256 "f4124548bb831e13504e805f2fbbfcee06df42fffea0655862c6eb9b95d6d1be"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/7c/9c/1df6deceee17c88f7170bad8325aa91452529d683486273928eecfd946d8/botocore-1.35.99.tar.gz"
    sha256 "1eab44e969c39c5f3d9a3104a0836c24715579a455f12b3979a31d7cde51b3c3"
  end

  resource "brotli" do
    url "https://files.pythonhosted.org/packages/2f/c2/f9e977608bdf958650638c3f1e28f85a1b075f075ebbe77db8555463787b/Brotli-1.1.0.tar.gz"
    sha256 "81de08ac11bcb85841e440c13611c00b67d3bf82698314928d0b676362546724"
  end

  resource "build" do
    url "https://files.pythonhosted.org/packages/7d/46/aeab111f8e06793e4f0e421fcad593d547fb8313b50990f31681ee2fb1ad/build-1.2.2.post1.tar.gz"
    sha256 "b36993e92ca9375a219c99e606a122ff365a760a2d4bba0caa09bd5278b608b7"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/6c/81/3747dad6b14fa2cf53fcf10548cf5aea6913e96fab41a3c198676f8948a5/cachetools-5.5.2.tar.gz"
    sha256 "1a661caa9175d26759571b2e19580f9d6393969e5dfca11fdb1f947a23e640d4"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/e8/9e/c05b3920a3b7d20d3d3310465f50348e5b3694f4f88c6daf736eef3024c4/certifi-2025.4.26.tar.gz"
    sha256 "0a816057ea3cdefcef70270d2c515e4506bbc954f417fa5ade2021213bb8f0c6"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
    sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/f3/0d/f7b6ab21ec75897ed80c17d79b15951a719226b9fababf1e40ea74d69079/chardet-5.2.0.tar.gz"
    sha256 "1b3b6ff479a8c414bc3fa2c0852995695c4a026dcd6d0633b2dd092ca39c1cf7"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e4/33/89c2ced2b67d1c2a61c19c6751aa8902d46ce3dacb23600a283619f5a12d/charset_normalizer-3.4.2.tar.gz"
    sha256 "5baececa9ecba31eff645232d59845c07aa030f0c81ee70184a90d35099a0e63"
  end

  resource "chroma-hnswlib" do
    url "https://files.pythonhosted.org/packages/73/09/10d57569e399ce9cbc5eee2134996581c957f63a9addfa6ca657daf006b8/chroma_hnswlib-0.7.6.tar.gz"
    sha256 "4dce282543039681160259d29fcde6151cc9106c6461e0485f57cdccd83059b7"
  end

  resource "chromadb" do
    url "https://files.pythonhosted.org/packages/39/cd/f0f2de3f466ff514fb6b58271c14f6d22198402bb5b71b8d890231265946/chromadb-0.6.3.tar.gz"
    sha256 "c8f34c0b704b9108b04491480a36d42e894a960429f87c6516027b5481d59ed3"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/60/6c/8ca2efa64cf75a977a0d7fac081354553ebe483345c734fb6b6515d96bbc/click-8.2.1.tar.gz"
    sha256 "27c491cc05d968d271d5a1db13e3b5a184636d9d930f148c50b038f0d0646202"
  end

  resource "colbert-ai" do
    url "https://files.pythonhosted.org/packages/bc/dc/7edb06e3bb01326610ecfdfc8e396c6867ba7de6e58cda2356a604419899/colbert_ai-0.2.21.tar.gz"
    sha256 "a8d6fdb4e2272f2b08ed37f8e5096072160d8415d1e40585751898b77e625bab"
  end

  resource "colorclass" do
    url "https://files.pythonhosted.org/packages/d7/1a/31ff00a33569a3b59d65bbdc445c73e12f92ad28195b7ace299f68b9af70/colorclass-2.2.2.tar.gz"
    sha256 "6d4fe287766166a98ca7bc6f6312daf04a0481b1eda43e7173484051c0ab4366"
  end

  resource "compressed-rtf" do
    url "https://files.pythonhosted.org/packages/b7/0c/929a4e8ef9d7143f54d77dadb5f370cc7b98534b1bd6e1124d0abe8efb24/compressed_rtf-1.0.7.tar.gz"
    sha256 "7c30859334839f3cdc7d10796af5b434bb326b9df7cb5a65e95a8eacb2951b0e"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/13/1f/9fa001e74a1993a9cadd2333bb889e50c66327b8594ac538ab8a04f915b7/cryptography-45.0.3.tar.gz"
    sha256 "ec21313dd335c51d7877baf2972569f40a4291b76a0ce51391523ae358d05899"
  end

  resource "dataclasses-json" do
    url "https://files.pythonhosted.org/packages/64/a4/f71d9cf3a5ac257c993b5ca3f93df5f7fb395c725e7f1e6479d2514173c3/dataclasses_json-0.6.7.tar.gz"
    sha256 "b6b3e528266ea45b9535223bc53ca645f5208833c29229e847b3f26a1cc55fc0"
  end

  resource "datasets" do
    url "https://files.pythonhosted.org/packages/1a/89/d3d6fef58a488f8569c82fd293ab7cbd4250244d67f425dcae64c63800ea/datasets-3.6.0.tar.gz"
    sha256 "1b2bf43b19776e2787e181cfd329cb0ca1a358ea014780c3581e0f276375e041"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
    sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
  end

  resource "deprecated" do
    url "https://files.pythonhosted.org/packages/98/97/06afe62762c9a8a86af0cfb7bfdab22a43ad17138b07af5b1a58442690a2/deprecated-1.2.18.tar.gz"
    sha256 "422b6f6d859da6f2ef57857761bfb392480502a64c3028ca9bbe86085d72115d"
  end

  resource "dill" do
    url "https://files.pythonhosted.org/packages/17/4d/ac7ffa80c69ea1df30a8aa11b3578692a5118e7cd1aa157e3ef73b092d15/dill-0.3.8.tar.gz"
    sha256 "3ebe3c479ad625c4553aca177444d89b486b1d84982eeacded644afc0cf797ca"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/b5/4a/263763cb2ba3816dd94b08ad3a33d5fdae34ecb856678773cc40a3605829/dnspython-2.7.0.tar.gz"
    sha256 "ce9c432eda0dc91cf618a5cedf1a4e142651196bbcd2c80e89ed5a907e5cfaf1"
  end

  resource "docker" do
    url "https://files.pythonhosted.org/packages/91/9b/4a2ea29aeba62471211598dac5d96825bb49348fa07e906ea930394a83ce/docker-7.1.0.tar.gz"
    sha256 "ad8c70e6e3f8926cb8a92619b832b4ea5299e2831c14284663184e200546fa6c"
  end

  resource "docx2txt" do
    url "https://files.pythonhosted.org/packages/7d/7d/60ee3f2b16d9bfdfa72e8599470a2c1a5b759cb113c6fe1006be28359327/docx2txt-0.8.tar.gz"
    sha256 "2c06d98d7cfe2d3947e5760a57d924e3ff07745b379c8737723922e7009236e5"
  end

  resource "duckduckgo-search" do
    url "https://files.pythonhosted.org/packages/ad/c0/e18c2148d33a9d87f6a0cc00acba30b4e547be0f8cb85ccb313a6e8fbac7/duckduckgo_search-8.0.2.tar.gz"
    sha256 "3109a99967b29cab8862823bbe320d140d5c792415de851b9d6288de2311b3ec"
  end

  resource "durationpy" do
    url "https://files.pythonhosted.org/packages/9d/a4/e44218c2b394e31a6dd0d6b095c4e1f32d0be54c2a4b250032d717647bab/durationpy-0.10.tar.gz"
    sha256 "1fa6893409a6e739c9c72334fc65cca1f355dbdd93405d30f726deb5bde42fba"
  end

  resource "easygui" do
    url "https://files.pythonhosted.org/packages/cc/ad/e35f7a30272d322be09dc98592d2f55d27cc933a7fde8baccbbeb2bd9409/easygui-0.98.3.tar.gz"
    sha256 "d653ff79ee1f42f63b5a090f2f98ce02335d86ad8963b3ce2661805cafe99a04"
  end

  resource "ebcdic" do
    url "https://files.pythonhosted.org/packages/0d/2f/633031205333bee5f9f93761af8268746aa75f38754823aabb8570eb245b/ebcdic-1.1.1-py2.py3-none-any.whl"
    sha256 "33b4cb729bc2d0bf46cc1847b0e5946897cb8d3f53520c5b9aa5fa98d7e735f1"
  end

  resource "ecdsa" do
    url "https://files.pythonhosted.org/packages/c0/1f/924e3caae75f471eae4b26bd13b698f6af2c44279f67af317439c2f4c46a/ecdsa-0.19.1.tar.gz"
    sha256 "478cba7b62555866fcb3bb3fe985e06decbdb68ef55713c4e5ab98c57d508e61"
  end

  resource "einops" do
    url "https://files.pythonhosted.org/packages/e5/81/df4fbe24dff8ba3934af99044188e20a98ed441ad17a274539b74e82e126/einops-0.8.1.tar.gz"
    sha256 "de5d960a7a761225532e0f1959e5315ebeafc0cd43394732f103ca44b9837e84"
  end

  resource "elastic-transport" do
    url "https://files.pythonhosted.org/packages/6a/54/d498a766ac8fa475f931da85a154666cc81a70f8eb4a780bc8e4e934e9ac/elastic_transport-8.17.1.tar.gz"
    sha256 "5edef32ac864dca8e2f0a613ef63491ee8d6b8cfb52881fa7313ba9290cac6d2"
  end

  resource "elasticsearch" do
    url "https://files.pythonhosted.org/packages/39/58/0081e189ef83dd1f11cb600df842bffb8eaa05c097cb1672c5bd335b46c2/elasticsearch-9.0.1.tar.gz"
    sha256 "76f9b519cfd15a860f615a94ba90dcb9543b721306bc5144ecc15f0b4d5d2781"
  end

  resource "emoji" do
    url "https://files.pythonhosted.org/packages/cb/7d/01cddcbb6f5cc0ba72e00ddf9b1fa206c802d557fd0a20b18e130edf1336/emoji-2.14.1.tar.gz"
    sha256 "f8c50043d79a2c1410ebfae833ae1868d5941a67a6cd4d18377e2eb0bd79346b"
  end

  resource "et-xmlfile" do
    url "https://files.pythonhosted.org/packages/d3/38/af70d7ab1ae9d4da450eeec1fa3918940a5fafb9055e934af8d6eb0c2313/et_xmlfile-2.0.0.tar.gz"
    sha256 "dab3f4764309081ce75662649be815c4c9081e88f0837825f90fd28317d4da54"
  end

  resource "eval-type-backport" do
    url "https://files.pythonhosted.org/packages/30/ea/8b0ac4469d4c347c6a385ff09dc3c048c2d021696664e26c7ee6791631b5/eval_type_backport-0.2.2.tar.gz"
    sha256 "f0576b4cf01ebb5bd358d02314d31846af5e07678387486e2c798af0e7d849c1"
  end

  resource "events" do
    url "https://files.pythonhosted.org/packages/25/ed/e47dec0626edd468c84c04d97769e7ab4ea6457b7f54dcb3f72b17fcd876/Events-0.5-py3-none-any.whl"
    sha256 "a7286af378ba3e46640ac9825156c93bdba7502174dd696090fdfcd4d80a1abd"
  end

  resource "extract-msg" do
    url "https://files.pythonhosted.org/packages/29/ff/eece5827eb97f18219808ad606a922eb5842656fb460235100ca3e6420df/extract_msg-0.54.1.tar.gz"
    sha256 "fb39e9f0d3971c30ca6ffa5686bc971884f364b6e97c79ccc10013fb3cbd02de"
  end

  resource "fake-useragent" do
    url "https://files.pythonhosted.org/packages/99/32/5b400819e6c4a71491f6a48723db8412bb057bf800d63d653b1641bd2bde/fake_useragent-2.1.0.tar.gz"
    sha256 "cbb2cde0512ecefec1e6175e59d8bcc5cd94af25161432860769a4f3767ad62c"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/a2/f5/3f921e59f189e513adb9aef826e2841672d50a399fead4e69afdeb808ff4/fastapi-0.115.7.tar.gz"
    sha256 "0f106da6c01d88a6786b3248fb4d7a940d071f6f488488898ad5d354b25ed015"
  end

  resource "faster-whisper" do
    url "https://files.pythonhosted.org/packages/be/53/195e5b42ede5f09453828d3b00d52bd952ed0e07a8e5c6497affefcfa3be/faster-whisper-1.1.1.tar.gz"
    sha256 "50d27571970c1be0c2b2680a2593d5d12f9f5d2f10484f242a1afbe7cb946604"
  end

  resource "filetype" do
    url "https://files.pythonhosted.org/packages/bb/29/745f7d30d47fe0f251d3ad3dc2978a23141917661998763bebb6da007eb1/filetype-1.2.0.tar.gz"
    sha256 "66b56cd6474bf41d8c54660347d37afcc3f7d1970648de365c102ef77548aadb"
  end

  resource "firecrawl-py" do
    url "https://files.pythonhosted.org/packages/18/db/e4f8ef9f0475b91b7c16a15e02fe19069d443cc5516cdefa2f9a0924a9a3/firecrawl_py-1.12.0.tar.gz"
    sha256 "bbf883f6c774f05a5426121b85978a5f7b5ab11e614aff609f0673b097c3e553"
  end

  resource "flask" do
    url "https://files.pythonhosted.org/packages/c0/de/e47735752347f4128bcf354e0da07ef311a78244eba9e3dc1d4a5ab21a98/flask-3.1.1.tar.gz"
    sha256 "284c7b8f2f58cb737f0cf1c30fd7eaf0ccfcde196099d24ecede3fc2005aa59e"
  end

  resource "fonttools" do
    url "https://files.pythonhosted.org/packages/3e/7a/30c581aeaa86d94e7a29344bccefd2408870bf5b0e7640b6f4ffede61bd0/fonttools-4.58.1.tar.gz"
    sha256 "cbc8868e0a29c3e22628dfa1432adf7a104d86d1bc661cecc3e9173070b6ab2d"
  end

  resource "fpdf2" do
    url "https://files.pythonhosted.org/packages/b0/54/0e86f986e81abad9e6b348f5176048a2aa046920d46292c42a581064d93e/fpdf2-2.8.2.tar.gz"
    sha256 "3a2c6699c39b23b786fc6ad9fc3de5432e59f6b6383bb9ab4ce1f994a5f3e762"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/ee/f4/d744cba2da59b5c1d88823cf9e8a6c74e4659e2b27604ed973be2a0bf5ab/frozenlist-1.6.0.tar.gz"
    sha256 "b99655c32c1c8e06d111e7f41c06c29a5318cb1835df23a45518e02a47c63b68"
  end

  resource "fs" do
    url "https://files.pythonhosted.org/packages/5d/a9/af5bfd5a92592c16cdae5c04f68187a309be8a146b528eac3c6e30edbad2/fs-2.4.16.tar.gz"
    sha256 "ae97c7d51213f4b70b6a958292530289090de3a7e15841e108fbe144f069d313"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/da/a9/59f4354257e8350a25be1774021991fb3a99a2fb87d0c1f367592548aed3/ftfy-6.2.3.tar.gz"
    sha256 "79b505988f29d577a58a9069afe75553a02a46e42de6091c0660cdc67812badc"
  end

  resource "gcp-storage-emulator" do
    url "https://files.pythonhosted.org/packages/17/c2/a0b0e1e54fdd9453603d90939faf652e2488b617c8752edc4ebcd89f1686/gcp_storage_emulator-2024.8.3.tar.gz"
    sha256 "e5d45e5c23a0344c1c4c44b8f8c36f7e8975ca1fcc5134cab608b96ddccd9225"
  end

  resource "git-python" do
    url "https://files.pythonhosted.org/packages/5b/3c/f0726fd577517ff8f09e6fe49f153ec9c595f1964c02c209c757d473780a/git-python-1.0.3.zip"
    sha256 "a7f51d07c7a0b0a15cb4dfa78601196dd20624211153d07c092b811edb6e86fb"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/72/94/63b0fc47eb32792c7ba1fe1b694daec9a63620db1e313033d18140c2320a/gitdb-4.0.12.tar.gz"
    sha256 "5ef71f855d191a3326fcfbc0d5da835f26b13fbcba60c32c21091c349ffdb571"
  end

  resource "gitpython" do
    url "https://files.pythonhosted.org/packages/c0/89/37df0b71473153574a5cdef8f242de422a0f5d26d7a9e231e6f169b4ad14/gitpython-3.1.44.tar.gz"
    sha256 "c87e30b26253bf5418b01b0660f818967f3c503193838337fe5e573331249269"
  end

  resource "google-ai-generativelanguage" do
    url "https://files.pythonhosted.org/packages/11/d1/48fe5d7a43d278e9f6b5ada810b0a3530bbeac7ed7fcbcd366f932f05316/google_ai_generativelanguage-0.6.15.tar.gz"
    sha256 "8f6d9dc4c12b065fe2d0289026171acea5183ebf2d0b11cefe12f3821e159ec3"
  end

  resource "google-api-core" do
    url "https://files.pythonhosted.org/packages/98/a2/8176b416ca08106b2ae30cd4a006c8176945f682c3a5b42f141c9173f505/google_api_core-2.25.0.tar.gz"
    sha256 "9b548e688702f82a34ed8409fb8a6961166f0b7795032f0be8f48308dff4333a"
  end

  resource "google-api-python-client" do
    url "https://files.pythonhosted.org/packages/db/86/1bd09aea2664a46bc65713cb7876381ec8949a4b1e71be97dfc359c79781/google_api_python_client-2.170.0.tar.gz"
    sha256 "75f3a1856f11418ea3723214e0abc59d9b217fd7ed43dcf743aab7f06ab9e2b1"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/66/84/f67f53c505a6b2c5da05c988e2a5483f5ba9eee4b1841d2e3ff22f547cd5/google_auth-2.40.2.tar.gz"
    sha256 "a33cde547a2134273226fa4b853883559947ebe9207521f7afc707efbf690f58"
  end

  resource "google-auth-httplib2" do
    url "https://files.pythonhosted.org/packages/56/be/217a598a818567b28e859ff087f347475c807a5649296fb5a817c58dacef/google-auth-httplib2-0.2.0.tar.gz"
    sha256 "38aa7badf48f974f1eb9861794e9c0cb2a0511a4ec0679b1f886d108f5640e05"
  end

  resource "google-auth-oauthlib" do
    url "https://files.pythonhosted.org/packages/fb/87/e10bf24f7bcffc1421b84d6f9c3377c30ec305d082cd737ddaa6d8f77f7c/google_auth_oauthlib-1.2.2.tar.gz"
    sha256 "11046fb8d3348b296302dd939ace8af0a724042e8029c1b872d87fabc9f41684"
  end

  resource "google-cloud-core" do
    url "https://files.pythonhosted.org/packages/d6/b8/2b53838d2acd6ec6168fd284a990c76695e84c65deee79c9f3a4276f6b4f/google_cloud_core-2.4.3.tar.gz"
    sha256 "1fab62d7102844b278fe6dead3af32408b1df3eb06f5c7e8634cbd40edc4da53"
  end

  resource "google-cloud-storage" do
    url "https://files.pythonhosted.org/packages/36/76/4d965702e96bb67976e755bed9828fa50306dca003dbee08b67f41dd265e/google_cloud_storage-2.19.0.tar.gz"
    sha256 "cd05e9e7191ba6cb68934d8eb76054d9be4562aa89dbc4236feee4d7d51342b2"
  end

  resource "google-crc32c" do
    url "https://files.pythonhosted.org/packages/19/ae/87802e6d9f9d69adfaedfcfd599266bf386a54d0be058b532d04c794f76d/google_crc32c-1.7.1.tar.gz"
    sha256 "2bff2305f98846f3e825dbeec9ee406f89da7962accdb29356e4eadc251bd472"
  end

  resource "google-genai" do
    url "https://files.pythonhosted.org/packages/f4/19/da5a085ce419c33b9e6ae308005efad9bfa1b10f59f449d075bba1f16a64/google_genai-1.15.0.tar.gz"
    sha256 "118bb26960d6343cd64f1aeb5c2b02144a36ad06716d0d1eb1fa3e0904db51f1"
  end

  resource "google-generativeai" do
    url "https://files.pythonhosted.org/packages/6e/40/c42ff9ded9f09ec9392879a8e6538a00b2dc185e834a3392917626255419/google_generativeai-0.8.5-py3-none-any.whl"
    sha256 "22b420817fb263f8ed520b33285f45976d5b21e904da32b80d4fd20c055123a2"
  end

  resource "google-resumable-media" do
    url "https://files.pythonhosted.org/packages/58/5a/0efdc02665dca14e0837b62c8a1a93132c264bd02054a15abb2218afe0ae/google_resumable_media-2.7.2.tar.gz"
    sha256 "5280aed4629f2b60b847b0d42f9857fd4935c11af266744df33d8074cae92fe0"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/0b/1a/41723ae380fa9c561cbe7b61c4eef9091d5fe95486465ccfc84845877331/googleapis-common-protos-1.63.2.tar.gz"
    sha256 "27c5abdffc4911f28101e635de1533fb4cfd2c37fbaa9174587c799fac90aa87"
  end

  resource "grpcio" do
    url "https://files.pythonhosted.org/packages/20/53/d9282a66a5db45981499190b77790570617a604a38f3d103d0400974aeb5/grpcio-1.67.1.tar.gz"
    sha256 "3dc2ed4cabea4dc14d5e708c2b426205956077cc5de419b4d4079315017e9732"
  end

  resource "grpcio-status" do
    url "https://files.pythonhosted.org/packages/be/c7/fe0e79a80ac6346e0c6c0a24e9e3cbc3ae1c2a009acffb59eab484a6f69b/grpcio_status-1.67.1.tar.gz"
    sha256 "2bf38395e028ceeecfd8866b081f61628114b384da7d51ae064ddc8d766a5d11"
  end

  resource "grpcio-tools" do
    url "https://files.pythonhosted.org/packages/ae/f9/6facde12a5a8da4398a3a8947f8ba6ef33b408dfc9767c8cefc0074ddd68/grpcio_tools-1.67.1.tar.gz"
    sha256 "d9657f5ddc62b52f58904e6054b7d8a8909ed08a1e28b734be3a707087bcf004"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "h2" do
    url "https://files.pythonhosted.org/packages/1b/38/d7f80fd13e6582fb8e0df8c9a653dcc02b03ca34f4d72f34869298c5baf8/h2-4.2.0.tar.gz"
    sha256 "c8a52129695e88b1a0578d8d2cc6842bbd79128ac685463b887ee278126ad01f"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/95/be/58f20728a5b445f8b064e74f0618897b3439f5ef90934da1916b9dfac76f/hf_xet-1.1.2.tar.gz"
    sha256 "3712d6d4819d3976a1c18e36db9f503e296283f9363af818f50703506ed63da3"
  end

  resource "hpack" do
    url "https://files.pythonhosted.org/packages/2c/48/71de9ed269fdae9c8057e5a4c0aa7402e8bb16f2c6e90b3aa53327b113f8/hpack-4.1.0.tar.gz"
    sha256 "ec5eca154f7056aa06f196a557655c5b009b382873ac8d1e66e79e87535f1dca"
  end

  resource "html5lib" do
    url "https://files.pythonhosted.org/packages/ac/b6/b55c3f49042f1df3dcd422b7f224f939892ee94f22abcf503a9b7339eaf2/html5lib-1.1.tar.gz"
    sha256 "b2e5b40261e20f354d198eae92afc10d750afb487ed5e50f9c4eaf07c184146f"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httplib2" do
    url "https://files.pythonhosted.org/packages/3d/ad/2371116b22d616c194aa25ec410c9c6c37f23599dcd590502b74db197584/httplib2-0.22.0.tar.gz"
    sha256 "d7a10bc5ef5ab08322488bde8c726eeee5c8618723fdb399597ec58f3d82df81"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/a7/9a/ce5e1f7e131522e6d3426e8e7a490b3a01f39a6696602e1c4f33f9e94277/httptools-0.6.4.tar.gz"
    sha256 "4e93eee4add6493b59a5c514da98c939b244fce4a0d8879cd3f466562f4b7d5c"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/4c/60/8f4281fa9bbf3c8034fd54c0e7412e66edbab6bc74c4996bd616f8d0406e/httpx-sse-0.4.0.tar.gz"
    sha256 "1e81a3a3070ce322add1d3529ed42eb5f70817f45ed6ec915ab753f961139721"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/59/74/c4961b31e0f142a032ea24f477c3a7524dfabfd8126398a968b3cc6bf804/huggingface_hub-0.32.3.tar.gz"
    sha256 "752c889ebf3a63cbd39803f6d87ccc135a463bbcb36abfa2faff0ccbf1cec087"
  end

  resource "hyperframe" do
    url "https://files.pythonhosted.org/packages/02/e7/94f8232d4a74cc99514c13a9f995811485a6903d48e5d952771ef6322e30/hyperframe-6.1.0.tar.gz"
    sha256 "f630908a00854a7adeabd6382b43923a4c4cd4b821fcb527e6ab9e15382a3b08"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/33/08/c1395a292bb23fd03bdf572a1357c5a733d3eecbab877641ceacab23db6e/importlib_metadata-8.6.1.tar.gz"
    sha256 "310b41d755445d74569f993ccfc22838295d9fe005425094fad953d7f15c8580"
  end

  resource "importlib-resources" do
    url "https://files.pythonhosted.org/packages/cf/8c/f834fbf984f691b4f7ff60f50b514cc3de5cc08abfc3295564dd89c5e2e7/importlib_resources-6.5.2.tar.gz"
    sha256 "185f87adef5bcc288449d98fb4fba07cea78bc036455dd44c5fc4a2fe78fed2c"
  end

  resource "iniconfig" do
    url "https://files.pythonhosted.org/packages/f2/97/ebf4da567aa6827c909642694d71c9fcf53e5b504f2d96afea02718862f3/iniconfig-2.1.0.tar.gz"
    sha256 "3abbd2e30b36733fee78f9c7f7308f2d0050e88f0087fd25c2645f63c773e1c7"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/54/4d/e940025e2ce31a8ce1202635910747e5a87cc3a6a6bb2d00973375014749/isodate-0.7.2.tar.gz"
    sha256 "4cd1aa0f43ca76f4a6c6c0292a85f40b35ec2e43e315b59f06e6d32171a953e6"
  end

  resource "itsdangerous" do
    url "https://files.pythonhosted.org/packages/9c/cb/8ac0172223afbccb63986cc25049b154ecfb5e85932587206f42317be31d/itsdangerous-2.2.0.tar.gz"
    sha256 "e0050c0b7da1eea53ffaf149c0cfbb5c6e2e2b69c4bef22c81fa6eb73e5f6173"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/ee/9d/ae7ddb4b8ab3fb1b51faf4deb36cb48a4fbbd7cb36bad6a5fca4741306f7/jiter-0.10.0.tar.gz"
    sha256 "07a7142c38aacc85194391108dc91b5b57093c978a9932bd86a36862759d9500"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/dc/fe/0f5a938c54105553436dbff7a61dc4fed4b1b2c98852f8833beaf4d5968f/joblib-1.5.1.tar.gz"
    sha256 "f4f86e351f39fe3d0d32a9f2c3d8af1ee4cec285aafcb27003dda5205576b444"
  end

  resource "jsonpatch" do
    url "https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz"
    sha256 "9fcd4009c41e6d12348b4a0ff2563ba56a2923a7dfee731d004e212e1ee5030c"
  end

  resource "jsonpointer" do
    url "https://files.pythonhosted.org/packages/6a/0a/eebeb1fa92507ea94016a2a790b93c2ae41a7e18778f85471dc54475ed25/jsonpointer-3.0.0.tar.gz"
    sha256 "2b2d729f2091522d61c3b31f82e11870f60b68f43fbc705cb76bf4b832af59ef"
  end

  resource "kubernetes" do
    url "https://files.pythonhosted.org/packages/b7/e8/0598f0e8b4af37cd9b10d8b87386cf3173cb8045d834ab5f6ec347a758b3/kubernetes-32.0.1.tar.gz"
    sha256 "42f43d49abd437ada79a79a16bd48a604d3471a117a8347e87db693f2ba0ba28"
  end

  resource "langchain" do
    url "https://files.pythonhosted.org/packages/a3/8f/db961066a65e678036886c73234827c56547fed2e06fd1b425767e4dc059/langchain-0.3.24.tar.gz"
    sha256 "caf1bacdabbea429bc79b58b118c06c3386107d92812e15922072b91745f070f"
  end

  resource "langchain-community" do
    url "https://files.pythonhosted.org/packages/c2/01/fdd97e392ab888ee195cbb3ed9d1140b66dd0090375151c768288eb63e61/langchain_community-0.3.23.tar.gz"
    sha256 "afb4b34d8b75fc00f78b2270e988bb48fff96b333d23fae05ab32d012940973f"
  end

  resource "langchain-core" do
    url "https://files.pythonhosted.org/packages/b9/0a/b71a9a5d42e743d6876cce23d803e284b191ed4d6544e2f7fe1b37f7854c/langchain_core-0.3.63.tar.gz"
    sha256 "e2e30cfbb7684a5a0319f6cbf065fc3c438bfd1060302f085a122527890fb01e"
  end

  resource "langchain-text-splitters" do
    url "https://files.pythonhosted.org/packages/e7/ac/b4a25c5716bb0103b1515f1f52cc69ffb1035a5a225ee5afe3aed28bf57b/langchain_text_splitters-0.3.8.tar.gz"
    sha256 "116d4b9f2a22dda357d0b79e30acf005c5518177971c66a9f1ab0edfdb0f912e"
  end

  resource "langdetect" do
    url "https://files.pythonhosted.org/packages/0e/72/a3add0e4eec4eb9e2569554f7c70f4a3c27712f40e3284d483e88094cc0e/langdetect-1.0.9.tar.gz"
    sha256 "cbc1fef89f8d062739774bd51eda3da3274006b3661d199c2655f6b3f6d605a0"
  end

  resource "langfuse" do
    url "https://files.pythonhosted.org/packages/a4/85/5a21a1d3be81e71f11f6d50affbb929eea3d5bbfab649bf8811bba83776f/langfuse-2.44.0.tar.gz"
    sha256 "dfa5378ff7022ae9fe5b8b842c0365347c98f9ef2b772dcee6a93a45442de28c"
  end

  resource "langsmith" do
    url "https://files.pythonhosted.org/packages/aa/86/164bb61d8c8b4d79f6f148ca845d4f5d1aa0fc3529754b39e7858e2d9623/langsmith-0.3.44.tar.gz"
    sha256 "0a72dfe87aa2f464ebbfb94937f57101bed9e0b1d6d26401d5e422b0e8867b40"
  end

  resource "lark" do
    url "https://files.pythonhosted.org/packages/2c/e1/804b6196b3fbdd0f8ba785fc62837b034782a891d6f663eea2f30ca23cfa/lark-1.1.9.tar.gz"
    sha256 "15fa5236490824c2c4aba0e22d2d6d823575dcaf4cdd1848e34b6ad836240fba"
  end

  resource "ldap3" do
    url "https://files.pythonhosted.org/packages/43/ac/96bd5464e3edbc61595d0d69989f5d9969ae411866427b2500a8e5b812c0/ldap3-2.9.1.tar.gz"
    sha256 "f3e7fc4718e3f09dda568b57100095e0ce58633bcabbed8667ce3f8fbaa4229f"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/3a/05/a1dae3dffd1116099471c643b8924f5aa6524411dc6c63fdae648c4f1aca/loguru-0.7.3.tar.gz"
    sha256 "19480589e77d47b8d85b2c827ad95d49bf31b0dcde16593892eb51dd18706eb6"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/76/3d/14e82fc7c8fb1b7761f7e748fd47e2ec8276d137b6acfe5a4bb73853e08f/lxml-5.4.0.tar.gz"
    sha256 "d12832e1dbea4be280b22fd0ea7c9b87f0d8fc51ba06e92dc62d52f804f78ebd"
  end

  resource "mako" do
    url "https://files.pythonhosted.org/packages/9e/38/bd5b78a920a64d708fe6bc8e0a2c075e1389d53bef8413725c63ba041535/mako-1.3.10.tar.gz"
    sha256 "99579a6f39583fa7e5630a28c3c1f440e4e97a414b80372649c0ce338da2ea28"
  end

  resource "markdown" do
    url "https://files.pythonhosted.org/packages/54/28/3af612670f82f4c056911fbbbb42760255801b3068c48de792d354ff4472/markdown-3.7.tar.gz"
    sha256 "2ae2471477cfd02dbbf038d5d9bc226d40def84b4fe2986e49b59b6b472bbed2"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "marshmallow" do
    url "https://files.pythonhosted.org/packages/ab/5e/5e53d26b42ab75491cda89b871dab9e97c840bf12c63ec58a1919710cd06/marshmallow-3.26.1.tar.gz"
    sha256 "e6d8affb6cb61d39d26402096dc0aee12d5a26d490a121f118d2e81dc0719dc6"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "mmh3" do
    url "https://files.pythonhosted.org/packages/47/1b/1fc6888c74cbd8abad1292dde2ddfcf8fc059e114c97dd6bf16d12f36293/mmh3-5.1.0.tar.gz"
    sha256 "136e1e670500f177f49ec106a4ebf0adf20d18d96990cc36ea492c651d2b406c"
  end

  resource "moto" do
    url "https://files.pythonhosted.org/packages/24/9f/5cacf53cbd26b4a77c817fd4fbec2ed38139ba2cfcd842c279aa19ee161f/moto-5.1.5.tar.gz"
    sha256 "42b362ea9a16181e8e7b615ac212c294b882f020e9ae02f01230f167926df84e"
  end

  resource "msal" do
    url "https://files.pythonhosted.org/packages/3f/90/81dcc50f0be11a8c4dcbae1a9f761a26e5f905231330a7cacc9f04ec4c61/msal-1.32.3.tar.gz"
    sha256 "5eea038689c78a5a70ca8ecbe1245458b55a857bd096efb6989c69ba15985d35"
  end

  resource "msal-extensions" do
    url "https://files.pythonhosted.org/packages/01/99/5d239b6156eddf761a636bded1118414d161bd6b7b37a9335549ed159396/msal_extensions-1.3.1.tar.gz"
    sha256 "c5b0fd10f65ef62b5f1d62f4251d51cbcaf003fcedae8c91b040a488614be1a4"
  end

  resource "msoffcrypto-tool" do
    url "https://files.pythonhosted.org/packages/d2/b7/0fd6573157e0ec60c0c470e732ab3322fba4d2834fd24e1088d670522a01/msoffcrypto_tool-5.4.2.tar.gz"
    sha256 "44b545adba0407564a0cc3d6dde6ca36b7c0fdf352b85bca51618fa1d4817370"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/91/2f/a3470242707058fe856fe59241eee5635d79087100b7042a867368863a27/multidict-6.4.4.tar.gz"
    sha256 "69ee9e6ba214b5245031b76233dd95408a0fd57fdb019ddcc1ead4790932a8e8"
  end

  resource "multiprocess" do
    url "https://files.pythonhosted.org/packages/b5/ae/04f39c5d0d0def03247c2893d6f2b83c136bf3320a2154d7b8858f2ba72d/multiprocess-0.70.16.tar.gz"
    sha256 "161af703d4652a0e1410be6abccecde4a7ddffd19341be0a7011b94aeb171ac1"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/a2/6e/371856a3fb9d31ca8dac321cda606860fa4548858c0cc45d9d1d4ca2628b/mypy_extensions-1.1.0.tar.gz"
    sha256 "52e68efc3284861e772bbcd66823fde5ae21fd2fdb51c62a211403730b916558"
  end

  resource "nest-asyncio" do
    url "https://files.pythonhosted.org/packages/83/f8/51569ac65d696c8ecbee95938f89d4abf00f47d58d48f6fbabfe8f0baefe/nest_asyncio-1.6.0.tar.gz"
    sha256 "6f172d5449aca15afd6c646851f4e31e02c598d553a667e38cafa997cfec55fe"
  end

  resource "ninja" do
    url "https://files.pythonhosted.org/packages/95/d4/6b0324541018561c5e73e617bd16f20a4fc17d1179bb3b3520b6ca8beb7b/ninja-1.11.1.4.tar.gz"
    sha256 "6aa39f6e894e0452e5b297327db00019383ae55d5d9c57c73b04f13bf79d438a"
  end

  resource "nltk" do
    url "https://files.pythonhosted.org/packages/3c/87/db8be88ad32c2d042420b6fd9ffd4a149f9a0d7f0e86b3f543be2eeeedd2/nltk-3.9.1.tar.gz"
    sha256 "87d127bd3de4bd89a4f81265e5fa59cb1b199b27440175370f7417d2bc7ae868"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/6d/fa/fbf4001037904031639e6bfbfc02badfc7e12f137a8afa254df6c4c8a670/oauthlib-3.2.2.tar.gz"
    sha256 "9859c40929662bec5d64f34d01c99e093149682a3f38915dc0655d5a633dd918"
  end

  resource "olefile" do
    url "https://files.pythonhosted.org/packages/69/1b/077b508e3e500e1629d366249c3ccb32f95e50258b231705c09e3c7a4366/olefile-0.47.zip"
    sha256 "599383381a0bf3dfbd932ca0ca6515acd174ed48870cbf7fee123d698c192c1c"
  end

  resource "oletools" do
    url "https://files.pythonhosted.org/packages/5c/2f/037f40e44706d542b94a2312ccc33ee2701ebfc9a83b46b55263d49ce55a/oletools-0.60.2.zip"
    sha256 "ad452099f4695ffd8855113f453348200d195ee9fa341a09e197d66ee7e0b2c3"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/1f/5b/b9390060fa75c41281f30a139a9362be591337febde996400021aa8751fd/openai-1.83.0.tar.gz"
    sha256 "dfb421837962d9e8078929d8fc7e36e51c2a110b23a777a14e27f579d1afd6b6"
  end

  resource "openpyxl" do
    url "https://files.pythonhosted.org/packages/3d/f9/88d94a75de065ea32619465d2f77b29a0469500e99012523b91cc4141cd1/openpyxl-3.1.5.tar.gz"
    sha256 "cf0e3cf56142039133628b5acffe8ef0c12bc902d2aadd3e0fe5878dc08d1050"
  end

  resource "opensearch-py" do
    url "https://files.pythonhosted.org/packages/7c/e4/192c97ca676c81f69e138a22e10fb03f64e14a55633cb2acffb41bf6d061/opensearch_py-2.8.0.tar.gz"
    sha256 "6598df0bc7a003294edd0ba88a331e0793acbb8c910c43edf398791e3b2eccda"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/9a/8d/1f5a45fbcb9a7d87809d460f09dc3399e3fbd31d7f3e14888345e9d29951/opentelemetry_api-1.33.1.tar.gz"
    sha256 "1c6055fc0a2d3f23a50c7e17e16ef75ad489345fd3df1f8b8af7c0bbf8a109e8"
  end

  resource "opentelemetry-exporter-otlp-proto-common" do
    url "https://files.pythonhosted.org/packages/7a/18/a1ec9dcb6713a48b4bdd10f1c1e4d5d2489d3912b80d2bcc059a9a842836/opentelemetry_exporter_otlp_proto_common-1.33.1.tar.gz"
    sha256 "c57b3fa2d0595a21c4ed586f74f948d259d9949b58258f11edb398f246bec131"
  end

  resource "opentelemetry-exporter-otlp-proto-grpc" do
    url "https://files.pythonhosted.org/packages/d8/5f/75ef5a2a917bd0e6e7b83d3fb04c99236ee958f6352ba3019ea9109ae1a6/opentelemetry_exporter_otlp_proto_grpc-1.33.1.tar.gz"
    sha256 "345696af8dc19785fac268c8063f3dc3d5e274c774b308c634f39d9c21955728"
  end

  resource "opentelemetry-instrumentation" do
    url "https://files.pythonhosted.org/packages/c3/fd/5756aea3fdc5651b572d8aef7d94d22a0a36e49c8b12fcb78cb905ba8896/opentelemetry_instrumentation-0.54b1.tar.gz"
    sha256 "7658bf2ff914b02f246ec14779b66671508125c0e4227361e56b5ebf6cef0aec"
  end

  resource "opentelemetry-instrumentation-asgi" do
    url "https://files.pythonhosted.org/packages/20/f7/a3377f9771947f4d3d59c96841d3909274f446c030dbe8e4af871695ddee/opentelemetry_instrumentation_asgi-0.54b1.tar.gz"
    sha256 "ab4df9776b5f6d56a78413c2e8bbe44c90694c67c844a1297865dc1bd926ed3c"
  end

  resource "opentelemetry-instrumentation-fastapi" do
    url "https://files.pythonhosted.org/packages/98/3b/9a262cdc1a4defef0e52afebdde3e8add658cc6f922e39e9dcee0da98349/opentelemetry_instrumentation_fastapi-0.54b1.tar.gz"
    sha256 "1fcad19cef0db7092339b571a59e6f3045c9b58b7fd4670183f7addc459d78df"
  end

  resource "opentelemetry-proto" do
    url "https://files.pythonhosted.org/packages/f6/dc/791f3d60a1ad8235930de23eea735ae1084be1c6f96fdadf38710662a7e5/opentelemetry_proto-1.33.1.tar.gz"
    sha256 "9627b0a5c90753bf3920c398908307063e4458b287bb890e5c1d6fa11ad50b68"
  end

  resource "opentelemetry-sdk" do
    url "https://files.pythonhosted.org/packages/67/12/909b98a7d9b110cce4b28d49b2e311797cffdce180371f35eba13a72dd00/opentelemetry_sdk-1.33.1.tar.gz"
    sha256 "85b9fcf7c3d23506fbc9692fd210b8b025a1920535feec50bd54ce203d57a531"
  end

  resource "opentelemetry-semantic-conventions" do
    url "https://files.pythonhosted.org/packages/5b/2c/d7990fc1ffc82889d466e7cd680788ace44a26789809924813b164344393/opentelemetry_semantic_conventions-0.54b1.tar.gz"
    sha256 "d1cecedae15d19bdaafca1e56b29a66aa286f50b5d08f036a145c7f3e9ef9cee"
  end

  resource "opentelemetry-util-http" do
    url "https://files.pythonhosted.org/packages/a8/9f/1d8a1d1f34b9f62f2b940b388bf07b8167a8067e70870055bd05db354e5c/opentelemetry_util_http-0.54b1.tar.gz"
    sha256 "f0b66868c19fbaf9c9d4e11f4a7599fa15d5ea50b884967a26ccd9d72c7c9d15"
  end

  resource "orjson" do
    url "https://files.pythonhosted.org/packages/81/0b/fea456a3ffe74e70ba30e01ec183a9b26bec4d497f61dcfce1b601059c60/orjson-3.10.18.tar.gz"
    sha256 "e8da3947d92123eda795b68228cafe2724815621fe35e8e320a9e9593a4bcd53"
  end

  resource "overrides" do
    url "https://files.pythonhosted.org/packages/36/86/b585f53236dec60aba864e050778b25045f857e17f6e5ea0ae95fe80edd2/overrides-7.7.0.tar.gz"
    sha256 "55158fa3d93b98cc75299b1e67078ad9003ca27945c76162c1c0766d6f91820a"
  end

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/9c/d6/9f8431bacc2e19dca897724cd097b1bb224a6ad5433784a44b587c7c13af/pandas-2.2.3.tar.gz"
    sha256 "4f18ba62b61d7e192368b84517265a99b4d7ee8912f8708660fb4a366cc82667"
  end

  resource "passlib" do
    url "https://files.pythonhosted.org/packages/b6/06/9da9ee59a67fae7761aab3ccc84fa4f3f33f125b370f1ccdb915bf967c11/passlib-1.7.4.tar.gz"
    sha256 "defd50f72b65c5402ab2c573830a6978e5f202ad0d984793c8dde2c4152ebe04"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/ca/bc/f35b8446f4531a7cb215605d100cd88b7ac6f44ab3fc94870c120ab3adbf/pathspec-0.12.1.tar.gz"
    sha256 "a482d51503a1ab33b1c67a6c3813a26953dbdc71c31dacaef9a838c4e29f5712"
  end

  resource "pcodedmp" do
    url "https://files.pythonhosted.org/packages/3d/20/6d461e29135f474408d0d7f95b2456a9ba245560768ee51b788af10f7429/pcodedmp-1.2.6.tar.gz"
    sha256 "025f8c809a126f45a082ffa820893e6a8d990d9d7ddb68694b5a9f0a6dbcd955"
  end

  resource "peewee" do
    url "https://files.pythonhosted.org/packages/1e/ce/c2bb58d00cb12d19dea28d5a98d05a14350197a3d03eba60be9bae708bac/peewee-3.18.1.tar.gz"
    sha256 "a76a694b3b3012ce22f00d51fd83e55bf80b595275a90ed62cd36eb45496cf1d"
  end

  resource "peewee-migrate" do
    url "https://files.pythonhosted.org/packages/23/52/a2faf82c9872d2948935f9e9070ca1cb9e6bcf36d87fde01067ef2c88500/peewee_migrate-1.12.2.tar.gz"
    sha256 "c8187c97b756909ea57e77cce06ae66395219e86764ef0b286a7bc72ff7405ad"
  end

  resource "pgvector" do
    url "https://files.pythonhosted.org/packages/e2/40/296ffb7f97fc7ec7b7c34f46861a519c576d561fd31455fc75c5ce2fa8db/pgvector-0.4.0.tar.gz"
    sha256 "f909f8e8081b57fb8a2442c36c3a1e521228d0d4ad66100c28c674806ff62688"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/f3/af/c097e544e7bd278333db77933e535098c259609c4eb3b85381109602fb5b/pillow-11.1.0.tar.gz"
    sha256 "368da70808b36d73b4b390a8ffac11069f8a5c85f29eff1f1b01bcf3ef5b2a20"
  end

  resource "pinecone" do
    url "https://files.pythonhosted.org/packages/40/e0/3584dcde7f2cb299b4deb5cc0491f2c9c130c7a72c1d4691fe2c9c3a3613/pinecone-6.0.2.tar.gz"
    sha256 "9c2e74be8b3abe76909da9b4dae61bced49aade51f6fc39b87edb97a1f8df0e4"
  end

  resource "pinecone-plugin-interface" do
    url "https://files.pythonhosted.org/packages/f4/fb/e8a4063264953ead9e2b24d9b390152c60f042c951c47f4592e9996e57ff/pinecone_plugin_interface-0.0.7.tar.gz"
    sha256 "b8e6675e41847333aa13923cc44daa3f85676d7157324682dc1640588a982846"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/fe/8b/3c73abc9c759ecd3f1f7ceff6685840859e8070c4d947c93fae71f6a0bf2/platformdirs-4.3.8.tar.gz"
    sha256 "3d512d96e16bcb959a814c9f348431070822a6496326a4be0911c40b5a74c2bc"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/f9/e2/3e91f31a7d2b083fe6ef3fa267035b518369d9511ffab804f839851d2779/pluggy-1.6.0.tar.gz"
    sha256 "7dcc130b76258d33b90f61b658791dede3486c3e6bfb003ee5c9bfb396dd22f3"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/ed/d3/c6c64067759e87af98cc668c1cc75171347d0f1577fab7ca3749134e3cd4/portalocker-2.10.1.tar.gz"
    sha256 "ef1bf844e878ab08aee7e40184156e1151f228f103aa5c6bd0724cc330960f8f"
  end

  resource "posthog" do
    url "https://files.pythonhosted.org/packages/ce/5b/2e9890700b7b55a370edbfbe5948eae780d48af9b46ad06ea2e7970576f4/posthog-4.2.0.tar.gz"
    sha256 "c4abc95de03294be005b3b7e8735e9d7abab88583da26262112bacce64b0c3b5"
  end

  resource "primp" do
    url "https://files.pythonhosted.org/packages/56/0b/a87556189da4de1fc6360ca1aa05e8335509633f836cdd06dd17f0743300/primp-0.15.0.tar.gz"
    sha256 "1af8ea4b15f57571ff7fc5e282a82c5eb69bc695e19b8ddeeda324397965b30a"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/07/c8/fdc6686a986feae3541ea23dcaa661bd93972d3940460646c6bb96e21c40/propcache-0.3.1.tar.gz"
    sha256 "40d980c33765359098837527e18eddefc9a24cea5b45e078a7f3bb5b032c6ecf"
  end

  resource "proto-plus" do
    url "https://files.pythonhosted.org/packages/f4/ac/87285f15f7cce6d4a008f33f1757fb5a13611ea8914eb58c3d0d26243468/proto_plus-1.26.1.tar.gz"
    sha256 "21a515a4c4c0088a773899e23c7bbade3d18f9c66c73edd4c7ee3816bc96a012"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/2a/80/336820c1ad9286a4ded7e845b2eccfcb27851ab8ac6abece774a6ff4d3de/psutil-7.0.0.tar.gz"
    sha256 "7be9c3eba38beccb6495ea33afd982a44074b78f28c434a1f51cc07fd315c456"
  end

  resource "psycopg2-binary" do
    url "https://files.pythonhosted.org/packages/fc/07/e720e53bfab016ebcc34241695ccc06a9e3d91ba19b40ca81317afbdc440/psycopg2-binary-2.9.9.tar.gz"
    sha256 "7f01846810177d829c7692f1f5ada8096762d9172af1b1a28d4ab5b77c923c1c"
  end

  resource "py-partiql-parser" do
    url "https://files.pythonhosted.org/packages/58/a1/0a2867e48b232b4f82c4929ef7135f2a5d72c3886b957dccf63c70aa2fcb/py_partiql_parser-0.6.1.tar.gz"
    sha256 "8583ff2a0e15560ef3bc3df109a7714d17f87d81d33e8c38b7fed4e58a63215d"
  end

  resource "pyarrow" do
    url "https://files.pythonhosted.org/packages/a2/ee/a7810cb9f3d6e9238e61d312076a9859bf3668fd21c69744de9532383912/pyarrow-20.0.0.tar.gz"
    sha256 "febc4a913592573c8d5805091a6c2b5064c8bd6e002131f01061797d91c783c1"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/a4/db/fffec68299e6d7bad3d504147f9094830b704527a7fc098b721d38cc7fa7/pyasn1-0.4.8.tar.gz"
    sha256 "aef77c9fb94a3ac588e87841208bdec464471d9871bd5050a287cc9a475cd0ba"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/1d/67/6afbf0d507f73c32d21084a79946bfcfca5fbc62a72057e9c23797a737c9/pyasn1_modules-0.4.1.tar.gz"
    sha256 "c28e2dbf9c06ad61c71a075c7e0f9fd0f1b0bb2d2ad4377f240d33ac2ab60a7c"
  end

  resource "pyclipper" do
    url "https://files.pythonhosted.org/packages/4a/b2/550fe500e49c464d73fabcb8cb04d47e4885d6ca4cfc1f5b0a125a95b19a/pyclipper-1.3.0.post6.tar.gz"
    sha256 "42bff0102fa7a7f2abdd795a2594654d62b786d0c6cd67b72d469114fdeb608c"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
    sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/b7/ae/d5220c5c52b158b1de7ca89fc5edb72f304a70a4c540c84c8844bf4008de/pydantic-2.10.6.tar.gz"
    sha256 "ca5daa827cce33de7a42be142548b0096bf05a7e7b365aebfa5f8eeec7128236"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/fc/01/f3e5ac5e7c25833db5eb555f7b7ab24cd6f8c322d3a3ad2d67a952dc0abc/pydantic_core-2.27.2.tar.gz"
    sha256 "eb026e5a4c1fee05726072337ff51d1efb6f59090b7da90d30ea58625b1ffb39"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/67/1d/42628a2c33e93f8e9acbde0d5d735fa0850f3e6a2f8cb1eb6c40b9a732ac/pydantic_settings-2.9.1.tar.gz"
    sha256 "c509bf79d27563add44e8446233359004ed85066cd096d8b510f715e6ef5d268"
  end

  resource "pydub" do
    url "https://files.pythonhosted.org/packages/fe/9a/e6bca0eed82db26562c73b5076539a4a08d3cffd19c3cc5913a3e61145fd/pydub-0.25.1.tar.gz"
    sha256 "980a33ce9949cab2a569606b65674d748ecbca4f0796887fd6f46173a7b0d30f"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/e7/46/bd74733ff231675599650d3e47f361794b22ef3e3770998dda30d3b63726/pyjwt-2.10.1.tar.gz"
    sha256 "3cc5772eb20009233caf06e9d8a0577824723b44e6648ee0a2aedb6cf9381953"
  end

  resource "pymdown-extensions" do
    url "https://files.pythonhosted.org/packages/aa/7b/de388047c577e43dc45ce35c23b9b349ec3df8c7023c3e3c4d413a850982/pymdown_extensions-10.14.2.tar.gz"
    sha256 "7a77b8116dc04193f2c01143760a43387bd9dc4aa05efacb7d838885a7791253"
  end

  resource "pymilvus" do
    url "https://files.pythonhosted.org/packages/f7/3d/e6b593cf456e4300e3aa58b76e55f392166c5df2ea3605666ad6200503fb/pymilvus-2.5.0.tar.gz"
    sha256 "4da14a3bd957a4921166f9355fd1f1ac5c5e4e80b46f12f64d9c9a6dcb8cb395"
  end

  resource "pymongo" do
    url "https://files.pythonhosted.org/packages/74/0c/1fb60383ab4b20566407b87f1a95b7f5cda83e8d5594da6fc84e2a543405/pymongo-4.13.0.tar.gz"
    sha256 "92a06e3709e3c7e50820d352d3d4e60015406bcba69808937dac2a6d22226fde"
  end

  resource "pymysql" do
    url "https://files.pythonhosted.org/packages/b3/8f/ce59b5e5ed4ce8512f879ff1fa5ab699d211ae2495f1adaa5fbba2a1eada/pymysql-1.1.1.tar.gz"
    sha256 "e127611aaf2b417403c60bf4dc570124aeb4a57f5f37b8e95ae399a42f904cd0"
  end

  resource "pypandoc" do
    url "https://files.pythonhosted.org/packages/e1/88/26e650d053df5f3874aa3c05901a14166ce3271f58bfe114fd776987efbd/pypandoc-1.15.tar.gz"
    sha256 "ea25beebe712ae41d63f7410c08741a3cab0e420f6703f95bc9b3a749192ce13"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/bb/22/f1129e69d94ffff626bdb5c835506b3a5b4f3d070f17ea295e12c2c6f60f/pyparsing-3.2.3.tar.gz"
    sha256 "b9c13f1ab8b3b542f72e28f634bad4de758ab3ce4546e4301970ad6fa77c38be"
  end

  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/f0/65/2ed7c9e1d31d860f096061b3dd2d665f501e09faaa0409a3f0d719d2a16d/pypdf-4.3.1.tar.gz"
    sha256 "b2f37fe9a3030aa97ca86067a56ba3f9d3565f9a791b305c7355d8392c30d91b"
  end

  resource "pypika" do
    url "https://files.pythonhosted.org/packages/c7/2c/94ed7b91db81d61d7096ac8f2d325ec562fc75e35f3baea8749c85b28784/PyPika-0.48.9.tar.gz"
    sha256 "838836a61747e7c8380cd1b7ff638694b7a7335345d0f559b04b2cd832ad5378"
  end

  resource "pyproject-hooks" do
    url "https://files.pythonhosted.org/packages/e7/82/28175b2414effca1cdac8dc99f76d660e7a4fb0ceefa4b4ab8f5f6742925/pyproject_hooks-1.2.0.tar.gz"
    sha256 "1e859bd5c40fae9448642dd871adf459e5e2084186e8d2c2a79a824c970da1f8"
  end

  resource "pytest" do
    url "https://files.pythonhosted.org/packages/ae/3c/c9d525a414d506893f0cd8a8d0de7706446213181570cdbd766691164e40/pytest-8.3.5.tar.gz"
    sha256 "f4efe70cc14e511565ac476b57c279e12a855b11f48f212af1080ef2263d3845"
  end

  resource "pytest-docker" do
    url "https://files.pythonhosted.org/packages/2e/60/a081b0243a6f743f008d7b5ae6d9026bf2d7df6179c3e331d1ef22df6c81/pytest_docker-3.1.2.tar.gz"
    sha256 "46e2d14796846ce8bc52857999f4b8e71ad294f5475d5470b03e08f790b040e2"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/88/2c/7bb1416c5620485aa793f2de31d3df393d3686aa8a8506d11e10e13c5baf/python_dotenv-1.1.0.tar.gz"
    sha256 "41f90bc6f5f177fb41f53e87666db362025010eb28f60a01c9143bfa33a2b2d5"
  end

  resource "python-engineio" do
    url "https://files.pythonhosted.org/packages/3c/9d/8492fbde3d4cb0e052de8a91a09754f222b5093f0342ef2dac92d60c751f/python_engineio-4.12.1.tar.gz"
    sha256 "9f2b5a645c416208a9c727254316d487252493de52bee0ff70dc29ca9210397e"
  end

  resource "python-iso639" do
    url "https://files.pythonhosted.org/packages/d5/19/45aa1917c7b1f4eb71104795b9b0cbf97169b99ec46cd303445883536549/python_iso639-2025.2.18.tar.gz"
    sha256 "34e31e8e76eb3fc839629e257b12bcfd957c6edcbd486bbf66ba5185d1f566e8"
  end

  resource "python-jose" do
    url "https://files.pythonhosted.org/packages/8e/a0/c49687cf40cb6128ea4e0559855aff92cd5ebd1a60a31c08526818c0e51e/python-jose-3.4.0.tar.gz"
    sha256 "9a9a40f418ced8ecaf7e3b28d69887ceaa76adad3bcaa6dae0d9e596fec1d680"
  end

  resource "python-magic" do
    url "https://files.pythonhosted.org/packages/da/db/0b3e28ac047452d079d375ec6798bf76a036a08182dbb39ed38116a49130/python-magic-0.4.27.tar.gz"
    sha256 "c1ba14b08e4a5f5c31a302b7721239695b2f0f058d125bd5ce1ee36b9d9d3c3b"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/f3/87/f44d7c9f274c7ee665a29b885ec97089ec5dc034c7f3fafa03da9e39a09e/python_multipart-0.0.20.tar.gz"
    sha256 "8dd0cab45b8e23064ae09147625994d090fa46f5b0d1e13af944c331a7fa9d13"
  end

  resource "python-oxmsg" do
    url "https://files.pythonhosted.org/packages/a2/4e/869f34faedbc968796d2c7e9837dede079c9cb9750917356b1f1eda926e9/python_oxmsg-0.0.2.tar.gz"
    sha256 "a6aff4deb1b5975d44d49dab1d9384089ffeec819e19c6940bc7ffbc84775fad"
  end

  resource "python-pptx" do
    url "https://files.pythonhosted.org/packages/5d/b5/b5f64158c9230429bbe9b87a372ccda6ce9b0a64fa48c43a377be284e144/python_pptx-1.0.0.tar.gz"
    sha256 "5c0f9fbf564fccf825c03c8bb75af9245fbdfad75e2857d115f47fd94b65eae8"
  end

  resource "python-socketio" do
    url "https://files.pythonhosted.org/packages/21/1a/396d50ccf06ee539fa758ce5623b59a9cb27637fc4b2dc07ed08bf495e77/python_socketio-5.13.0.tar.gz"
    sha256 "ac4e19a0302ae812e23b712ec8b6427ca0521f7c582d6abb096e36e24a263029"
  end

  resource "pytube" do
    url "https://files.pythonhosted.org/packages/d8/e7/16fec46c8d255c4bbc4b185d89c91dc92cdb802836570d8004d0db169c91/pytube-15.0.0.tar.gz"
    sha256 "076052efe76f390dfa24b1194ff821d4e86c17d41cb5562f3a276a8bcbfc9d1d"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/f8/bf/abbd3cdfb8fbc7fb3d4d38d320f2441b1e7cbe29be4f23797b4a2b5d8aac/pytz-2025.2.tar.gz"
    sha256 "360b9e3dbb49a209c21ad61809c7fb453643e048b38924c765813546746e81c3"
  end

  resource "pyxlsb" do
    url "https://files.pythonhosted.org/packages/3f/13/eebaeb7a40b062d1c6f7f91d09e73d30a69e33e4baa7cbe4b7658548b1cd/pyxlsb-1.0.10.tar.gz"
    sha256 "8062d1ea8626d3f1980e8b1cfe91a4483747449242ecb61013bc2df85435f685"
  end

  resource "qdrant-client" do
    url "https://files.pythonhosted.org/packages/b9/0b/7b6ddc9ade365b644a023ca225300662766732e1e9db7f5962a6cf9530bd/qdrant_client-1.12.2.tar.gz"
    sha256 "2777e09b3e89bb22bb490384d8b1fa8140f3915287884f18984f7031a346aba5"
  end

  resource "rank-bm25" do
    url "https://files.pythonhosted.org/packages/2a/21/f691fb2613100a62b3fa91e9988c991e9ca5b89ea31c0d3152a3210344f9/rank_bm25-0.2.2-py3-none-any.whl"
    sha256 "7bd4a95571adadfc271746fa146a4bcfd89c0cf731e49c3d1ad863290adbe8ae"
  end

  resource "rapidfuzz" do
    url "https://files.pythonhosted.org/packages/ed/f6/6895abc3a3d056b9698da3199b04c0e56226d530ae44a470edabf8b664f0/rapidfuzz-3.13.0.tar.gz"
    sha256 "d2eaf3839e52cbcc0accbe9817a67b4b0fcf70aaeb229cfddc1c28061f9ce5d8"
  end

  resource "rapidocr-onnxruntime" do
    url "https://files.pythonhosted.org/packages/ba/12/1e5497183bdbe782dbb91bad1d0d2297dba4d2831b2652657f7517bfc6df/rapidocr_onnxruntime-1.4.4-py3-none-any.whl"
    sha256 "971d7d5f223a7a808662229df1ef69893809d8457d834e6373d3854bc1782cbf"
  end

  resource "red-black-tree-mod" do
    url "https://files.pythonhosted.org/packages/48/75/bfa342a2ebfc9623b701f1c6995b9906fd6dd2cedf6bce777d09e23303ac/red-black-tree-mod-1.22.tar.gz"
    sha256 "38e3652903a2bf96379c27c2082ca0b7b905158662dd7ef0c97f4fd93a9aa908"
  end

  resource "redis" do
    url "https://files.pythonhosted.org/packages/ea/9a/0551e01ba52b944f97480721656578c8a7c46b51b99d66814f85fe3a4f3e/redis-6.2.0.tar.gz"
    sha256 "e821f129b75dde6cb99dd35e5c76e8c49512a5a0d8dfdc560b2fbd44b85ca977"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/8e/5f/bd69653fbfb76cf8604468d3b4ec4c403197144c7bfe0e6a5fc9e02a07cb/regex-2024.11.6.tar.gz"
    sha256 "7ab159b063c52a0333c884e4679f8d7a85112ee3078fe3d9004b2dd875585519"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/42/f2/05f29bc3913aea15eb670be136045bf5c5bbf4b99ecb839da9b422bb2c85/requests-oauthlib-2.0.0.tar.gz"
    sha256 "b3dffaebd884d8cd778494369603a9e7b58d29111bf6b41bdc2dcd87203af4e9"
  end

  resource "requests-toolbelt" do
    url "https://files.pythonhosted.org/packages/f3/61/d7545dafb7ac2230c70d38d31cbfe4cc64f7144dc41f6e4e4b78ecd9f5bb/requests-toolbelt-1.0.0.tar.gz"
    sha256 "7681a0a3d047012b5bdc0ee37d7f8f07ebe76ab08caeccfc3921ce23c88d5bc6"
  end

  resource "responses" do
    url "https://files.pythonhosted.org/packages/81/7e/2345ac3299bd62bd7163216702bbc88976c099cfceba5b889f2a457727a1/responses-0.25.7.tar.gz"
    sha256 "8ebae11405d7a5df79ab6fd54277f6f2bc29b2d002d0dd2d5c632594d1ddcedb"
  end

  resource "restrictedpython" do
    url "https://files.pythonhosted.org/packages/76/f3/3cfd684abf456f536a842e4fabe1ca360a8e94d1fc329f261c34c1d98825/restrictedpython-8.0.tar.gz"
    sha256 "3af2312bc67e5fced887fb85b006c89861da72488128b155beea81eb6a0a9b24"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a1/53/830aa4c3066a8ab0ae9a9955976fb770fe9c6102117c8ec4ab3ea62d89e8/rich-14.0.0.tar.gz"
    sha256 "82f1bc23a6a21ebca4ae0c45af9bdbc492ed20231dcb63f297d6d1021a9d5725"
  end

  resource "rsa" do
    url "https://files.pythonhosted.org/packages/da/8a/22b7beea3ee0d44b1916c0c1cb0ee3af23b700b6da9f04991899d0c555d4/rsa-4.9.1.tar.gz"
    sha256 "e7bdbfdb5497da4c07dfd35530e1a902659db6ff241e39d9953cad06ebd0ae75"
  end

  resource "rtfde" do
    url "https://files.pythonhosted.org/packages/66/f1/3fafc33cd80cc605509ced36dbbb74c3c365d5859b0b57b6500e4a8ca8a5/rtfde-0.1.2.1.tar.gz"
    sha256 "ea2653fb163ef1e9fdd1b0849bef88b0ba82537f860d4aca5b2c49f556efaaaa"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/c0/0a/1cdbabf9edd0ea7747efdf6c9ab4e7061b085aa7f9bfc36bb1601563b069/s3transfer-0.10.4.tar.gz"
    sha256 "29edc09801743c21eb5ecbc617a152df41d3c287f67b615f73e5f750583666a7"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/71/7e/2d5d6ee7b40c0682315367ec7475693d110f512922d582fef1bd4a63adc3/safetensors-0.5.3.tar.gz"
    sha256 "b6b0d6ecacec39a4fdd99cc19f4576f5219ce858e6fd8dbe7609df0b8dc56965"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/9e/a5/4ae3b3a0755f7b35a280ac90b28817d1f380318973cff14075ab41ef50d9/scikit_learn-1.6.1.tar.gz"
    sha256 "b4fc2525eca2c69a59260f583c56a7557c6ccdf8deafdba6e060f94c1c59738e"
  end

  resource "scipy" do
    url "https://files.pythonhosted.org/packages/0f/37/6964b830433e654ec7485e45a00fc9a27cf868d622838f6b6d9c5ec0d532/scipy-1.15.3.tar.gz"
    sha256 "eae3cf522bc7df64b42cad3925c876e1b0b6c35c1337c93e12c0f366f55b0eaf"
  end

  resource "sentence-transformers" do
    url "https://files.pythonhosted.org/packages/73/84/b30d1b29ff58cfdff423e36a50efd622c8e31d7039b1a0d5e72066620da1/sentence_transformers-4.1.0.tar.gz"
    sha256 "f125ffd1c727533e0eca5d4567de72f84728de8f7482834de442fd90c2c3d50b"
  end

  resource "sentencepiece" do
    url "https://files.pythonhosted.org/packages/c9/d2/b9c7ca067c26d8ff085d252c89b5f69609ca93fb85a00ede95f4857865d4/sentencepiece-0.2.0.tar.gz"
    sha256 "a52c19171daaf2e697dc6cbe67684e0fa341b1248966f6aebb541de654d15843"
  end

  resource "shapely" do
    url "https://files.pythonhosted.org/packages/ca/3c/2da625233f4e605155926566c0e7ea8dda361877f48e8b1655e53456f252/shapely-2.1.1.tar.gz"
    sha256 "500621967f2ffe9642454808009044c21e5b35db89ce69f8a2042c2ffd0e2772"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "simple-websocket" do
    url "https://files.pythonhosted.org/packages/b0/d4/bfa032f961103eba93de583b161f0e6a5b63cebb8f2c7d0c6e6efe1e3d2e/simple_websocket-1.1.0.tar.gz"
    sha256 "7939234e7aa067c534abdab3a9ed933ec9ce4691b0713c78acb195560aa52ae4"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/44/cd/a040c4b3119bbe532e5b0732286f805445375489fceaec1f48306068ee3b/smmap-5.0.2.tar.gz"
    sha256 "26ea65a03958fa0c8a1c7e8c7a58fdc77221b8910f6be2131affade476898ad5"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "soundfile" do
    url "https://files.pythonhosted.org/packages/e1/41/9b873a8c055582859b239be17902a85339bec6a30ad162f98c9b0288a2cc/soundfile-0.13.1.tar.gz"
    sha256 "b2c68dab1e30297317080a5b43df57e302584c49e2942defdde0acccc53f0e5b"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/3f/f4/4a80cd6ef364b2e8b65b15816a843c0980f7a5a2b4dc701fc574952aa19f/soupsieve-2.7.tar.gz"
    sha256 "ad282f9b6926286d2ead4750552c8a6142bc4c783fd66b0293547c8fe6ae126a"
  end

  resource "sqlalchemy" do
    url "https://files.pythonhosted.org/packages/e4/08/9a90962ea72acd532bda71249a626344d855c4032603924b1b547694b837/sqlalchemy-2.0.38.tar.gz"
    sha256 "e5a4d82bdb4bf1ac1285a68eab02d253ab73355d9f0fe725a97e1e0fa689decb"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/ff/fb/2984a686808b89a6781526129a4b51266f678b2d2b97ab2d325e56116df8/starlette-0.45.3.tar.gz"
    sha256 "2cbcba2a75806f8a41c722141486f37c28e30a0921c5f6fe4346cb0dcee1302f"
  end

  resource "starlette-compress" do
    url "https://files.pythonhosted.org/packages/13/ad/6cb23910ad4e821fa8de96cdfd5b825c1434a0419402d23c3d9e6ea331a3/starlette_compress-1.6.0.tar.gz"
    sha256 "af1c15d1892fae3ac1c46762250850d6eea2f03c2382e9640ca94aebfeb32455"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/0a/d4/2b0cd0fe285e14b36db076e78c93766ff1d529d70408bd1d2a5a84f1d929/tenacity-9.1.2.tar.gz"
    sha256 "1169d376c297e7de388d18b4481760d478b0e99a777cad3a9c86e556f4b697cb"
  end

  resource "tencentcloud-sdk-python" do
    url "https://files.pythonhosted.org/packages/0b/d6/4d57d25c0614cccb9d017962f3bfe20313b2c42bdfa3c4c33fa02c35906d/tencentcloud-sdk-python-3.0.1336.tar.gz"
    sha256 "1c6a1413267030c142ba2a2e4f64ce12026157efd0f4c446efca1856dbae6f35"
  end

  resource "threadpoolctl" do
    url "https://files.pythonhosted.org/packages/b7/4d/08c89e34946fce2aec4fbb45c9016efd5f4d7f24af8e5d93296e935631d8/threadpoolctl-3.6.0.tar.gz"
    sha256 "8ab8b4aa3491d812b623328249fab5302a68d2d71745c8a4c719a2fcaba9f44e"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/ea/cf/756fedf6981e82897f2d570dd25fa597eb3f4459068ae0572d7e888cfd6f/tiktoken-0.9.0.tar.gz"
    sha256 "d02a5ca6a938e0490e1ff957bc48c8b078c88cb83977be1625b1fd8aac792c5d"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/92/76/5ac0c97f1117b91b7eb7323dcd61af80d72f790b4df71249a7850c195f30/tokenizers-0.21.1.tar.gz"
    sha256 "a1bb04dc5b448985f86ecd4b05407f5a8d97cb2c0532199b2a302a604a0165ab"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/da/a9/275037087f9d846580b02f2d7cae0e0a6955d46f84583d0151d6227bd416/transformers-4.52.4.tar.gz"
    sha256 "aff3764441c1adc192a08dba49740d3cbbcb72d850586075aed6bd89b98203e6"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/c5/8c/7d682431efca5fd290017663ea4588bf6f2c6aad085c7f108c5dbc316e70/typer-0.16.0.tar.gz"
    sha256 "af377ffaee1dbe37ae9440cb4e8f11686ea5ce4e9bae01b84ae7c63b87f1dd3b"
  end

  resource "typing-inspect" do
    url "https://files.pythonhosted.org/packages/dc/74/1789779d91f1961fa9438e9a8710cdae6bd138c80d7303996933d117264a/typing_inspect-0.9.0.tar.gz"
    sha256 "b23fc42ff6f6ef6954e4852c1fb512cdd18dbea03134f91f856a95ccc9461f78"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/f8/b1/0c11f5058406b3af7609f121aaa6b609744687f1d158b3c3a5bf4cc94238/typing_inspection-0.4.1.tar.gz"
    sha256 "6ae134cc0203c33377d43188d4064e9b357dba58cff3185f22924610e70a9d28"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/95/32/1a225d6164441be760d75c2c42e2780dc0873fe382da3e98a2e1e48361e5/tzdata-2025.2.tar.gz"
    sha256 "b60a638fcc0daffadf82fe0f57e53d06bdec2f36c4df66280ae79bce6bd6f2b9"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/8b/2e/c14812d3d4d9cd1773c6be938f89e5735a1f11a9f184ac3639b93cef35d5/tzlocal-5.3.1.tar.gz"
    sha256 "cceffc7edecefea1f595541dbd6e990cb1ea3d19bf01b2809f362a03dd7921fd"
  end

  resource "ujson" do
    url "https://files.pythonhosted.org/packages/f0/00/3110fd566786bfa542adb7932d62035e0c0ef662a8ff6544b6643b3d6fd7/ujson-5.10.0.tar.gz"
    sha256 "b3cd8f3c5d8c7738257f1018880444f7b7d9b66232c64649f562d7ba86ad4bc1"
  end

  resource "unstructured" do
    url "https://files.pythonhosted.org/packages/85/90/cf5cbf152d0d1ab507c14e2535d4a9442ad59308ced8c26b71d8b93ace52/unstructured-0.16.17.tar.gz"
    sha256 "590700ed344ed27a6dce8b3ffdeec2c427bd4f057d9bcb470f8ce828cc20b314"
  end

  resource "unstructured-client" do
    url "https://files.pythonhosted.org/packages/51/36/a40ab6f30c2e567b3bf17e61056943076622e2d09fcf625947e6ba1be9e3/unstructured_client-0.32.3.tar.gz"
    sha256 "1426d03325f7b93daad524ad2b954f1e7cceb0c15e67a4f4e88b49220dd2472c"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/98/60/f174043244c5306c9988380d2cb10009f91563fc4b31293d27e17201af56/uritemplate-4.2.0.tar.gz"
    sha256 "480c2ed180878955863323eea31b0ede668795de182617fef9c6ca09e6ec9d0e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/8a/78/16493d9c386d8e60e442a35feac5e00f0913c0f4b7c217c11e8ec2ff53e0/urllib3-2.4.0.tar.gz"
    sha256 "414bc6535b787febd7567804cc015fee39daab8ad86268f1310a9250697de466"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/4b/4d/938bd85e5bf2edeec766267a5015ad969730bb91e31b44021dfe8b22df6c/uvicorn-0.34.0.tar.gz"
    sha256 "404051050cd7e905de2c9a7e61790943440b3416f49cb409f965d9dcd0fa73e9"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/af/c0/854216d09d33c543f12a44b393c402e89a920b1a0a7dc634c42de91b9cf6/uvloop-0.21.0.tar.gz"
    sha256 "3bf12b0fda68447806a7ad847bfa591613177275d35b6724b1ee573faa3704e3"
  end

  resource "validators" do
    url "https://files.pythonhosted.org/packages/64/07/91582d69320f6f6daaf2d8072608a4ad8884683d4840e7e4f3a9dbdcc639/validators-0.34.0.tar.gz"
    sha256 "647fe407b45af9a74d245b943b18e6a816acf4926974278f6dd617778e1e781f"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/03/e2/8ed598c42057de7aa5d97c472254af4906ff0a59a66699d426fc9ef795d7/watchfiles-1.0.5.tar.gz"
    sha256 "b7529b5dcc114679d43827d8c35a07c493ad6f083633d573d81c660abc5979e9"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/e6/30/fba0d96b4b5fbf5948ed3f4681f7da2f9f64512e1d303f94b4cc174c24a5/websocket_client-1.8.0.tar.gz"
    sha256 "3239df9f44da632f96012472805d40a23281a991027ce11d2f45a6f24ac4c3da"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/21/e6/26d09fab466b7ca9c7737474c52be4f76a40301b08362eb2dbc19dcc16c1/websockets-15.0.1.tar.gz"
    sha256 "82544de02076bafba038ce055ee6412d68da13ab47f0c60cab827346de828dee"
  end

  resource "werkzeug" do
    url "https://files.pythonhosted.org/packages/9f/69/83029f1f6300c5fb2471d621ab06f6ec6b3324685a2ce0f9777fd4a8b71e/werkzeug-3.1.3.tar.gz"
    sha256 "60723ce945c19328679790e3282cc758aa4a6040e4bb330f53d30fa546d44746"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/c3/fc/e91cc220803d7bc4db93fb02facd8461c37364151b8494762cc88b0fbcef/wrapt-1.17.2.tar.gz"
    sha256 "41388e9d4d1522446fe79d3213196bd9e3b301a336965b9e27ca2788ebd122f3"
  end

  resource "wsproto" do
    url "https://files.pythonhosted.org/packages/c9/4a/44d3c295350d776427904d73c189e10aeae66d7f555bb2feee16d1e4ba5a/wsproto-1.2.0.tar.gz"
    sha256 "ad565f26ecb92588a3e43bc3d96164de84cd9902482b130d0ddbaa9664a85065"
  end

  resource "xlrd" do
    url "https://files.pythonhosted.org/packages/a6/b3/19a2540d21dea5f908304375bd43f5ed7a4c28a370dc9122c565423e6b44/xlrd-2.0.1.tar.gz"
    sha256 "f72f148f54442c6b056bf931dbc34f986fd0c3b0b6b5a58d013c9aef274d0c88"
  end

  resource "xlsxwriter" do
    url "https://files.pythonhosted.org/packages/a7/d1/e026d33dd5d552e5bf3a873dee54dad66b550230df8290d79394f09b2315/xlsxwriter-3.2.3.tar.gz"
    sha256 "ad6fd41bdcf1b885876b1f6b7087560aecc9ae5a9cc2ba97dcac7ab2e210d3d5"
  end

  resource "xmltodict" do
    url "https://files.pythonhosted.org/packages/50/05/51dcca9a9bf5e1bce52582683ce50980bcadbc4fa5143b9f2b19ab99958f/xmltodict-0.14.2.tar.gz"
    sha256 "201e7c28bb210e374999d1dde6382923ab0ed1a8a5faeece48ab525b7810a553"
  end

  resource "xxhash" do
    url "https://files.pythonhosted.org/packages/00/5e/d6e5258d69df8b4ed8c83b6664f2b47d30d2dec551a29ad72a6c69eafd31/xxhash-3.5.0.tar.gz"
    sha256 "84f2caddf951c9cbf8dc2e22a89d4ccf5d86391ac6418fe81e3c67d0cf60b45f"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/62/51/c0edba5219027f6eab262e139f73e2417b0f4efffa23bf562f6e18f76ca5/yarl-1.20.0.tar.gz"
    sha256 "686d51e51ee5dfe62dec86e4866ee0e9ed66df700d55c828a615640adc885307"
  end

  resource "youtube-transcript-api" do
    url "https://files.pythonhosted.org/packages/b0/32/f60d87a99c05a53604c58f20f670c7ea6262b55e0bbeb836ffe4550b248b/youtube_transcript_api-1.0.3.tar.gz"
    sha256 "902baf90e7840a42e1e148335e09fe5575dbff64c81414957aea7038e8a4db46"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/12/b6/7b3d16792fdf94f146bed92be90b4eb4563569eca91513c8609aebf0c167/zipp-3.22.0.tar.gz"
    sha256 "dd2f28c3ce4bc67507bfd3781d21b7bb2be31103b51a4553ad7d90b84e57ace5"
  end

  resource "zstandard" do
    url "https://files.pythonhosted.org/packages/ed/f6/2ac0287b442160a89d726b17a9184a4c615bb5237db763791a7fd16d9df1/zstandard-0.23.0.tar.gz"
    sha256 "b2d8c62d08e7255f68f7a740bae85b3c9b8e5466baa9cbf7f57f1cde0ac6bc09"
  end

  def install
    ENV["SETUPTOOLS_SCM_PRETEND_VERSION_FOR_PLAYWRIGHT"] = resource("playwright").version
    ENV["GRPC_PYTHON_BUILD_SYSTEM_ZLIB"] = "1" # grpcio 1.67.1 bundled third party zlib overwrites mac_os fdopen
    
    venv = virtualenv_install_with_resources without: ["milvus-lite", "ctranslate2"]
    
    # resource("milvus-lite").stage do 
    #   venv.pip_install "./python"
    # end

    resource("ctranslate2").stage do
      system "mkdir", "-p", "build"
      system "cmake", "-S", ".", "-B", "build"
      system "make", "-C", "build", "-j4"
      system "make", "-C", "build", "install"

      ENV["CTRANSLATE2_ROOT"] = libexec
      venv.pip_install "./python"
    end
  end

  test do
    # prevent attempts to download models from the internet upon boot
    ENV["export HF_HUB_OFFLINE"]  = "1"
    
    port = free_port
    _stdin, _stdout, wait_thr = Open3.popen2("#{bin}/open-webui serve --port #{port}")
    
    # Hit a health endpoint
    url = "http://localhost:#{port}/ollama/"
    response = JSON.parse(shell_output("curl -s #{url}"))

    assert_equal {"status" => true}, response

    assert_match ""
  ensure
    Process.kill("TERM", wait_thr.pid)
  end
end
