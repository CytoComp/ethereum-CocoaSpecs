Pod::Spec.new do |s|
  s.name     = 'cryptopp'
  s.version  = '5.6.2'
  s.license  = 'Boost'
  s.authors  = 'some ppl'
  s.homepage = 'http://google.com'
  s.summary  = 'summary'


  s.source   = { :svn => 'https://cryptopp.svn.sourceforge.net/svnroot/cryptopp/trunk/c5', :revision => '541'}
  
  files =
  %w[
  3way.*
  adler32.*
  aes.*
  algebra.*
  algparam.*
  arc4.*
  argnames.*
  asn.*
  authenc.*
  base32.*
  base64.*
  basecode.*
  bench.*
  blowfish.*
  blumshub.*
  camellia.*
  cast.*
  cbcmac.*
  ccm.*
  channels.*
  cmac.*
  config.*
  cpu.*
  crc.*
  cryptlib.*
  default.*
  des.*
  dh.*
  dh2.*
  dll.*
  dmac.*
  dsa.*
  eax.*
  ec2n.*
  eccrypto.*
  ecp.*
  elgamal.*
  emsa2.*
  eprecomp.*
  esign.*
  factory.*
  files.*
  filters.*
  fips140.*
  fltrimpl.*
  gcm.*
  gf256.*
  gf2_32.*
  gf2n.*
  gfpcrypt.*
  gost.*
  gzip.*
  hex.*
  hmac.*
  hrtimer.*
  ida.*
  idea.*
  integer.*
  iterhash.*
  lubyrack.*
  luc.*
  mars.*
  md2.*
  md4.*
  md5.*
  mdc.*
  misc.*
  modarith.*
  modes.*
  modexppc.*
  mqueue.*
  mqv.*
  nbtheory.*
  network.*
  nr.*
  oaep.*
  oids.*
  osrng.*
  panama.*
  pch.*
  pkcspad.*
  polynomi.*
  pssr.*
  pubkey.*
  pwdbased.*
  queue.*
  rabin.*
  randpool.*
  rc2.*
  rc5.*
  rc6.*
  resource.*
  rijndael.*
  ripemd.*
  rng.*
  rsa.*
  rw.*
  safer.*
  salsa.*
  seal.*
  secblock.*
  seckey.*
  seed.*
  serpent.*
  serpentp.*
  sha.*
  sha3.*
  shacal2.*
  shark.*
  simple.*
  skipjack.*
  smartptr.*
  socketft.*
  sosemanuk.*
  square.*
  stdcpp.*
  strciphr.*
  tea.*
  tiger.*
  trdlocal.*
  trunhash.*
  ttmac.*
  twofish.*
  validate.*
  vmac.*
  wait.*
#  wake.*
  whrlpool.*
  winpipes.*
  words.*
  xtr.*
  xtrcrypt.*
  zdeflate.*
  zinflate.*
  zlib.*].map do |name| 
    '**/' + name
  end

  
  #s.source_files = '**/*.{h,cpp}'
  s.source_files = files
  s.library = 'c++'

  s.platform = :osx
  s.osx.deployment_target = '10.8'
  
  s.compiler_flags = '-Wc++11-narrowing'
  s.xcconfig = {'OTHER_CFLAGS' => '-DCRYPTOPP_DISABLE_ASM' '-DCRYPTOPP_DISABLE_SSE2'}

end
