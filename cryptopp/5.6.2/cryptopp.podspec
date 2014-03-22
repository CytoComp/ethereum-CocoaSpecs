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
  3way.{h,cpp}
  adler32.{h,cpp}
  aes.{h,cpp}
  algebra.{h,cpp}
  algparam.{h,cpp}
  arc4.{h,cpp}
  argnames.{h,cpp}
  asn.{h,cpp}
  authenc.{h,cpp}
  base32.{h,cpp}
  base64.{h,cpp}
  basecode.{h,cpp}
  bench.{h,cpp}
  blowfish.{h,cpp}
  blumshub.{h,cpp}
  camellia.{h,cpp}
  cast.{h,cpp}
  cbcmac.{h,cpp}
  ccm.{h,cpp}
  channels.{h,cpp}
  cmac.{h,cpp}
  config.{h,cpp}
  cpu.{h,cpp}
  crc.{h,cpp}
  cryptlib.{h,cpp}
  default.{h,cpp}
  des.{h,cpp}
  dh.{h,cpp}
  dh2.{h,cpp}
  dll.{h,cpp}
  dmac.{h,cpp}
  dsa.{h,cpp}
  eax.{h,cpp}
  ec2n.{h,cpp}
  eccrypto.{h,cpp}
  ecp.{h,cpp}
  elgamal.{h,cpp}
  emsa2.{h,cpp}
  eprecomp.{h,cpp}
  esign.{h,cpp}
  factory.{h,cpp}
  files.{h,cpp}
  filters.{h,cpp}
  fips140.{h,cpp}
  fltrimpl.{h,cpp}
  gcm.{h,cpp}
  gf256.{h,cpp}
  gf2_32.{h,cpp}
  gf2n.{h,cpp}
  gfpcrypt.{h,cpp}
  gost.{h,cpp}
  gzip.{h,cpp}
  hex.{h,cpp}
  hmac.{h,cpp}
  hrtimer.{h,cpp}
  ida.{h,cpp}
  idea.{h,cpp}
  integer.{h,cpp}
  iterhash.{h,cpp}
  lubyrack.{h,cpp}
  luc.{h,cpp}
  mars.{h,cpp}
  md2.{h,cpp}
  md4.{h,cpp}
  md5.{h,cpp}
  mdc.{h,cpp}
  misc.{h,cpp}
  modarith.{h,cpp}
  modes.{h,cpp}
  modexppc.{h,cpp}
  mqueue.{h,cpp}
  mqv.{h,cpp}
  nbtheory.{h,cpp}
  network.{h,cpp}
  nr.{h,cpp}
  oaep.{h,cpp}
  oids.{h,cpp}
  osrng.{h,cpp}
  panama.{h,cpp}
  pch.{h,cpp}
  pkcspad.{h,cpp}
  polynomi.{h,cpp}
  pssr.{h,cpp}
  pubkey.{h,cpp}
  pwdbased.{h,cpp}
  queue.{h,cpp}
  rabin.{h,cpp}
  randpool.{h,cpp}
  rc2.{h,cpp}
  rc5.{h,cpp}
  rc6.{h,cpp}
  resource.{h,cpp}
  rijndael.{h,cpp}
  ripemd.{h,cpp}
  rng.{h,cpp}
  rsa.{h,cpp}
  rw.{h,cpp}
  safer.{h,cpp}
  salsa.{h,cpp}
  seal.{h,cpp}
  secblock.{h,cpp}
  seckey.{h,cpp}
  seed.{h,cpp}
  serpent.{h,cpp}
  serpentp.{h,cpp}
  sha.{h,cpp}
  sha3.{h,cpp}
  shacal2.{h,cpp}
  shark.{h,cpp}
  simple.{h,cpp}
  skipjack.{h,cpp}
  smartptr.{h,cpp}
  socketft.{h,cpp}
  sosemanuk.{h,cpp}
  square.{h,cpp}
  stdcpp.{h,cpp}
  strciphr.{h,cpp}
  tea.{h,cpp}
  tiger.{h,cpp}
  trdlocal.{h,cpp}
  trunhash.{h,cpp}
  ttmac.{h,cpp}
  twofish.{h,cpp}
  validate.{h,cpp}
  vmac.{h,cpp}
  wait.{h,cpp}
  whrlpool.{h,cpp}
  winpipes.{h,cpp}
  words.{h,cpp}
  xtr.{h,cpp}
  xtrcrypt.{h,cpp}
  zdeflate.{h,cpp}
  zinflate.{h,cpp}
  zlib.{h,cpp}].map do |name|
    '**/' + name
  end


  s.source_files = files
  s.library = 'c++'

  s.platform = :osx
  s.osx.deployment_target = '10.8'

  s.compiler_flags = '-Wc++11-narrowing'
  s.xcconfig = {'OTHER_CFLAGS' => '-DCRYPTOPP_DISABLE_ASM' '-DCRYPTOPP_DISABLE_SSE2'}

end
