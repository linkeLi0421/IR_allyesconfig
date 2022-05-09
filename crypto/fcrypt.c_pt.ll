; ModuleID = '/llk/IR_all_yes/crypto/fcrypt.c_pt.bc'
source_filename = "../crypto/fcrypt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@fcrypt_alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 8, i32 64, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"fcrypt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"fcrypt-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 8, i32 8, ptr @fcrypt_setkey, ptr @fcrypt_encrypt, ptr @fcrypt_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_fcrypt__173_414_fcrypt_mod_init4 = internal global ptr @fcrypt_mod_init, section ".initcall4.init", align 4
@__exitcall_fcrypt_mod_fini = internal global ptr @fcrypt_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [26 x i8] c"fcrypt.file=crypto/fcrypt\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [28 x i8] c"fcrypt.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [43 x i8] c"fcrypt.description=FCrypt Cipher Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [50 x i8] c"fcrypt.author=David Howells <dhowells@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [20 x i8] c"fcrypt.alias=fcrypt\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [27 x i8] c"fcrypt.alias=crypto-fcrypt\00", section ".modinfo", align 1
@sbox0 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 1872, i32 1016, i32 1424, i32 800, i32 1256, i32 1408, i32 1736, i32 136, i32 1640, i32 1072, i32 1072, i32 1160, i32 80, i32 1424, i32 1176, i32 48, i32 112, i32 48, i32 1680, i32 808, i32 920, i32 1576, i32 320, i32 768, i32 1936, i32 256, i32 1448, i32 448, i32 1008, i32 1744, i32 1272, i32 1816, i32 1680, i32 1656, i32 1568, i32 480, i32 776, i32 2040, i32 592, i32 592, i32 424, i32 1376, i32 1360, i32 760, i32 344, i32 1496, i32 1504, i32 664, i32 624, i32 1256, i32 960, i32 1304, i32 1760, i32 72, i32 400, i32 128, i32 1584, i32 888, i32 816, i32 1712, i32 1368, i32 1352, i32 1400, i32 2024, i32 472, i32 1192, i32 1856, i32 416, i32 1232, i32 1032, i32 912, i32 1024, i32 1248, i32 1944, i32 1888, i32 1744, i32 1272, i32 304, i32 944, i32 168, i32 496, i32 680, i32 616, i32 1776, i32 1056, i32 1904, i32 1384, i32 1592, i32 1928, i32 856, i32 488, i32 1688, i32 32, i32 584, i32 1360, i32 288, i32 88, i32 1104, i32 1048, i32 1488, i32 2000, i32 1064, i32 1280, i32 1344, i32 1416, i32 1696, i32 8, i32 1728, i32 896, i32 800, i32 1920, i32 648, i32 1680, i32 1560, i32 1336, i32 936, i32 1120, i32 1320, i32 800, i32 1912, i32 128, i32 624, i32 1464, i32 1584, i32 776, i32 24, i32 1880, i32 544, i32 488, i32 1832, i32 1432, i32 728, i32 1392, i32 1704, i32 1384, i32 232, i32 2000, i32 720, i32 240, i32 408, i32 1368, i32 1176, i32 1296, i32 1464, i32 1848, i32 1344, i32 552, i32 1312, i32 1640, i32 328, i32 792, i32 544, i32 1456, i32 840, i32 1008, i32 368, i32 784, i32 24, i32 1600, i32 1792, i32 184, i32 1496, i32 1592, i32 1944, i32 504, i32 432, i32 1488, i32 904, i32 1136, i32 1208, i32 808, i32 768, i32 840, i32 1456, i32 1968, i32 1840, i32 880, i32 1792, i32 1032, i32 712, i32 1856, i32 1400, i32 1768, i32 1192, i32 272, i32 1224, i32 2024, i32 792, i32 200, i32 928, i32 776, i32 1416, i32 1456, i32 728, i32 1392, i32 672, i32 1432, i32 896, i32 2040, i32 1584, i32 472, i32 496, i32 1544, i32 1720, i32 1800, i32 112, i32 944, i32 1832, i32 432, i32 632, i32 712, i32 1592, i32 64, i32 880, i32 1040, i32 1328, i32 1176, i32 1568, i32 1360, i32 304, i32 584, i32 1792, i32 264, i32 800, i32 56, i32 1272, i32 800, i32 1032, i32 1248, i32 1528, i32 1992, i32 1672, i32 536, i32 1984, i32 1456, i32 1480, i32 1928, i32 288, i32 936, i32 24, i32 1824, i32 1408, i32 1224, i32 560, i32 488, i32 1960, i32 1672, i32 456, i32 912, i32 144, i32 1968, i32 1488, i32 96, i32 104, i32 528, i32 368], [256 x i8] zeroinitializer }, align 32
@sbox1 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 -1207959549, i32 -1610612736, i32 805306373, i32 -268435449, i32 -1879048187, i32 -268435454, i32 1610612740, i32 -268435455, i32 939524099, i32 1610612739, i32 134217733, i32 1744830464, i32 268435462, i32 268435461, i32 134217734, i32 671088644, i32 1610612739, i32 -671088637, i32 939524099, i32 805306374, i32 402653185, i32 402653191, i32 -1879048185, i32 1207959556, i32 -2147483646, i32 -536870908, i32 402653184, i32 -1207959547, i32 -1744830461, i32 805306375, i32 134217735, i32 -939524095, i32 -2013265919, i32 1610612737, i32 939524097, i32 -134217724, i32 671088645, i32 1207959555, i32 536870914, i32 -1342177274, i32 402653185, i32 402653188, i32 -1073741820, i32 -402653181, i32 -536870911, i32 -1610612731, i32 1744830465, i32 -939524092, i32 -536870912, i32 -134217728, i32 1610612740, i32 1, i32 402653184, i32 -536870909, i32 -134217726, i32 1744830469, i32 -1610612729, i32 -805306361, i32 -1476395004, i32 1342177286, i32 -1342177277, i32 536870914, i32 1744830470, i32 -1342177275, i32 -1073741819, i32 134217733, i32 134217733, i32 -268435451, i32 -268435452, i32 -1610612734, i32 2013265924, i32 1476395008, i32 -1342177280, i32 -1610612733, i32 -2013265919, i32 1342177284, i32 402653185, i32 -1207959552, i32 536870912, i32 -805306361, i32 -939524093, i32 536870916, i32 -2013265915, i32 -1476395001, i32 -1744830464, i32 1476395013, i32 -1476395003, i32 1879048193, i32 1342177285, i32 1610612736, i32 3, i32 1476395011, i32 -671088638, i32 536870918, i32 1476395010, i32 -536870907, i32 268435463, i32 2013265925, i32 671088642, i32 -1744830461, i32 -805306361, i32 1207959558, i32 1207959554, i32 1744830470, i32 0, i32 -1879048188, i32 -402653181, i32 -1207959548, i32 -805306365, i32 -1073741824, i32 3, i32 -402653183, i32 2013265926, i32 -671088638, i32 -268435450, i32 805306374, i32 268435463, i32 805306375, i32 -671088635, i32 1476395012, i32 805306368, i32 -805306362, i32 1073741824, i32 -1476395008, i32 -671088640, i32 1073741828, i32 1342177283, i32 -1207959552, i32 1207959556, i32 -2147483642, i32 1207959557, i32 134217734, i32 1207959558, i32 -2147483645, i32 1476395011, i32 671088647, i32 402653186, i32 -1610612729, i32 1073741827, i32 1073741830, i32 -1744830458, i32 536870916, i32 1073741825, i32 1342177280, i32 -1879048190, i32 805306371, i32 402653189, i32 1342177286, i32 -1879048185, i32 402653191, i32 -134217725, i32 -805306365, i32 -2013265919, i32 -1207959545, i32 1073741828, i32 -1610612732, i32 -268435454, i32 -536870908, i32 402653187, i32 -1476395002, i32 536870913, i32 805306371, i32 -536870905, i32 -1744830459, i32 -1207959550, i32 671088641, i32 -268435451, i32 1207959556, i32 536870914, i32 536870918, i32 7, i32 2013265924, i32 402653185, i32 -536870911, i32 -1879048192, i32 -1879048190, i32 -1476395001, i32 -268435456, i32 -1610612729, i32 1476395014, i32 -1073741824, i32 -1744830463, i32 -134217728, i32 -1073741817, i32 1207959555, i32 -2147483648, i32 -402653180, i32 -1744830458, i32 -1207959545, i32 1073741825, i32 -1073741817, i32 -2147483647, i32 671088640, i32 -268435454, i32 -1879048191, i32 6, i32 -1476395002, i32 -939524096, i32 -402653179, i32 671088642, i32 1476395012, i32 -671088638, i32 -402653177, i32 -536870907, i32 268435463, i32 -536870910, i32 1207959557, i32 -1342177276, i32 2013265927, i32 -2147483645, i32 2013265926, i32 268435462, i32 1342177281, i32 -1744830459, i32 134217731, i32 1744830469, i32 4, i32 1073741826, i32 134217732, i32 -1207959547, i32 -402653184, i32 402653186, i32 -939524090, i32 -1207959546, i32 671088642, i32 -2147483641, i32 -1073741818, i32 1342177284, i32 -939524094, i32 -536870909, i32 -1207959550, i32 134217734, i32 -939524093, i32 939524102, i32 -1610612735, i32 -1342177274, i32 402653186, i32 -134217722, i32 536870919, i32 -1073741821, i32 -1342177280, i32 805306368, i32 -805306362, i32 -1879048188, i32 -1342177277, i32 -2013265918, i32 134217735, i32 -1610612730, i32 -2147483645, i32 402653184, i32 7, i32 2013265921, i32 -1342177276, i32 -2013265916, i32 268435460, i32 4], [256 x i8] zeroinitializer }, align 32
@sbox2 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 491520, i32 112640, i32 73728, i32 169984, i32 86016, i32 6144, i32 268288, i32 274432, i32 428032, i32 483328, i32 163840, i32 491520, i32 135168, i32 245760, i32 96256, i32 223232, i32 391168, i32 262144, i32 276480, i32 79872, i32 305152, i32 462848, i32 403456, i32 190464, i32 509952, i32 227328, i32 448512, i32 368640, i32 206848, i32 225280, i32 473088, i32 73728, i32 409600, i32 53248, i32 382976, i32 149504, i32 370688, i32 20480, i32 256000, i32 378880, i32 475136, i32 450560, i32 374784, i32 444416, i32 141312, i32 65536, i32 55296, i32 421888, i32 182272, i32 321536, i32 219136, i32 387072, i32 28672, i32 292864, i32 333824, i32 346112, i32 385024, i32 237568, i32 339968, i32 503808, i32 260096, i32 194560, i32 362496, i32 212992, i32 270336, i32 385024, i32 346112, i32 518144, i32 174080, i32 163840, i32 477184, i32 372736, i32 38912, i32 192512, i32 14336, i32 376832, i32 305152, i32 4096, i32 393216, i32 425984, i32 217088, i32 53248, i32 272384, i32 387072, i32 372736, i32 518144, i32 520192, i32 47104, i32 129024, i32 18432, i32 333824, i32 288768, i32 514048, i32 485376, i32 446464, i32 59392, i32 223232, i32 57344, i32 221184, i32 2048, i32 184320, i32 468992, i32 231424, i32 126976, i32 284672, i32 219136, i32 389120, i32 83968, i32 481280, i32 36864, i32 51200, i32 106496, i32 419840, i32 366592, i32 387072, i32 108544, i32 479232, i32 153600, i32 436224, i32 356352, i32 86016, i32 247808, i32 184320, i32 337920, i32 102400, i32 36864, i32 251904, i32 450560, i32 90112, i32 425984, i32 69632, i32 153600, i32 362496, i32 272384, i32 182272, i32 262144, i32 393216, i32 98304, i32 325632, i32 235520, i32 432128, i32 40960, i32 147456, i32 131072, i32 14336, i32 92160, i32 292864, i32 262144, i32 30720, i32 421888, i32 22528, i32 192512, i32 374784, i32 192512, i32 352256, i32 73728, i32 303104, i32 151552, i32 49152, i32 43008, i32 10240, i32 475136, i32 4096, i32 243712, i32 346112, i32 407552, i32 131072, i32 141312, i32 280576, i32 428032, i32 479232, i32 454656, i32 24576, i32 247808, i32 86016, i32 313344, i32 221184, i32 126976, i32 305152, i32 452608, i32 286720, i32 256000, i32 354304, i32 227328, i32 450560, i32 522240, i32 518144, i32 200704, i32 145408, i32 366592, i32 67584, i32 282624, i32 483328, i32 290816, i32 51200, i32 49152, i32 368640, i32 225280, i32 124928, i32 518144, i32 237568, i32 172032, i32 61440, i32 8192, i32 272384, i32 442368, i32 385024, i32 63488, i32 176128, i32 473088, i32 118784, i32 176128, i32 210944, i32 438272, i32 409600, i32 337920, i32 497664, i32 290816, i32 454656, i32 356352, i32 112640, i32 149504, i32 374784, i32 512000, i32 409600, i32 499712, i32 63488, i32 458752, i32 86016, i32 317440, i32 43008, i32 428032, i32 106496, i32 28672, i32 370688, i32 458752, i32 139264, i32 245760, i32 270336, i32 182272, i32 176128, i32 212992, i32 243712, i32 337920, i32 40960, i32 12288, i32 501760, i32 96256, i32 286720, i32 282624, i32 235520, i32 262144, i32 241664, i32 368640, i32 32768, i32 274432], [256 x i8] zeroinitializer }, align 32
@sbox3 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 88604672, i32 22020096, i32 37748736, i32 42467328, i32 69206016, i32 66060288, i32 38273024, i32 118489088, i32 94896128, i32 95944704, i32 34603008, i32 26738688, i32 65536000, i32 48758784, i32 87031808, i32 9437184, i32 35651584, i32 37748736, i32 57147392, i32 20971520, i32 89128960, i32 16777216, i32 57147392, i32 45613056, i32 112197632, i32 56098816, i32 48758784, i32 59768832, i32 125829120, i32 76546048, i32 47185920, i32 14155776, i32 43515904, i32 67108864, i32 18874368, i32 58720256, i32 80740352, i32 106954752, i32 87556096, i32 53477376, i32 84410368, i32 524288, i32 86507520, i32 34078720, i32 79167488, i32 34078720, i32 25690112, i32 68157440, i32 126353408, i32 10485760, i32 108527616, i32 43515904, i32 6815744, i32 83886080, i32 8388608, i32 106954752, i32 22020096, i32 65536000, i32 110100480, i32 100139008, i32 39321600, i32 13631488, i32 114819072, i32 11534336, i32 37224448, i32 128974848, i32 42467328, i32 28311552, i32 124256256, i32 127401984, i32 96993280, i32 13631488, i32 87556096, i32 116916224, i32 21495808, i32 35127296, i32 524288, i32 44040192, i32 58720256, i32 85983232, i32 100139008, i32 111149056, i32 5767168, i32 43515904, i32 35651584, i32 50331648, i32 82837504, i32 18350080, i32 84410368, i32 12582912, i32 54525952, i32 41418752, i32 125829120, i32 24641536, i32 68157440, i32 101711872, i32 22020096, i32 34078720, i32 93323264, i32 34603008, i32 6291456, i32 124256256, i32 6291456, i32 15204352, i32 9961472, i32 30408704, i32 31457280, i32 57671680, i32 27787264, i32 115343360, i32 50331648, i32 52953088, i32 69730304, i32 122159104, i32 52428800, i32 1048576, i32 80740352, i32 33030144, i32 83361792, i32 70778880, i32 78643200, i32 116916224, i32 99614720, i32 126877696, i32 106430464, i32 120061952, i32 56623104, i32 111149056, i32 47185920, i32 68681728, i32 100139008, i32 76546048, i32 14155776, i32 77594624, i32 0, i32 34603008, i32 108527616, i32 39321600, i32 0, i32 61341696, i32 97517568, i32 74973184, i32 61865984, i32 49807360, i32 48758784, i32 30408704, i32 40370176, i32 4718592, i32 9437184, i32 4194304, i32 29360128, i32 78118912, i32 12058624, i32 119537664, i32 524288, i32 15204352, i32 39845888, i32 88604672, i32 106954752, i32 69730304, i32 68157440, i32 39845888, i32 82313216, i32 24641536, i32 30932992, i32 53477376, i32 84410368, i32 27262976, i32 8388608, i32 107479040, i32 46661632, i32 71827456, i32 86507520, i32 25690112, i32 108527616, i32 2621440, i32 104857600, i32 69206016, i32 131072000, i32 104333312, i32 97517568, i32 40894464, i32 72876032, i32 13631488, i32 13107200, i32 126353408, i32 84410368, i32 30932992, i32 12582912, i32 9437184, i32 12058624, i32 92274688, i32 79691776, i32 73924608, i32 5767168, i32 18350080, i32 102236160, i32 30408704, i32 23592960, i32 16777216, i32 116916224, i32 9961472, i32 83886080, i32 88080384, i32 39845888, i32 6815744, i32 56623104, i32 24641536, i32 37224448, i32 9961472, i32 9961472, i32 42991616, i32 16252928, i32 23592960, i32 128450560, i32 63438848, i32 31981568, i32 84934656, i32 44040192, i32 99090432, i32 55050240, i32 104857600, i32 56098816, i32 127401984, i32 2621440, i32 20971520, i32 126353408, i32 11534336, i32 36700160, i32 33554432, i32 92274688, i32 8912896, i32 110624768, i32 95944704, i32 78118912, i32 38273024, i32 108527616, i32 102236160, i32 15204352, i32 74973184, i32 113246208, i32 117964800, i32 60293120, i32 114819072, i32 90701824, i32 104857600, i32 105381888, i32 88604672, i32 84410368, i32 101711872, i32 103284736, i32 119013376, i32 97517568, i32 132120576, i32 7340032, i32 19398656], [256 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"sbox0\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 74, i32 21 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"sbox1\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 111, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"sbox2\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 148, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"sbox3\00", align 1
@___asan_gen_.11 = private constant [19 x i8] c"../crypto/fcrypt.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 185, i32 21 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_fcrypt_mod_fini, ptr @__initcall__kmod_fcrypt__173_414_fcrypt_mod_init4, ptr @fcrypt_mod_fini, ptr @sbox0, ptr @sbox1, ptr @sbox2, ptr @sbox3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbox0 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbox1 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbox2 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbox3 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fcrypt_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_alg(ptr noundef nonnull @fcrypt_alg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fcrypt_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @fcrypt_alg) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fcrypt_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %incdec.ptr = getelementptr i8, ptr %key, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key, align 1
  %2 = lshr i8 %1, 1
  %3 = zext i8 %2 to i32
  %incdec.ptr1 = getelementptr i8, ptr %key, i32 2
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %6 = lshr i8 %5, 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %3, 14
  %9 = shl nuw nsw i32 %7, 7
  %shl4 = or i32 %9, %8
  %incdec.ptr5 = getelementptr i8, ptr %key, i32 3
  %10 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr1, align 1
  %12 = lshr i8 %11, 1
  %13 = zext i8 %12 to i32
  %or8 = or i32 %9, %13
  %incdec.ptr10 = getelementptr i8, ptr %key, i32 4
  %14 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr5, align 1
  %16 = lshr i8 %15, 1
  %17 = zext i8 %16 to i32
  %and = shl nuw nsw i32 %17, 7
  %shl15 = and i32 %and, 1920
  %incdec.ptr16 = getelementptr i8, ptr %key, i32 5
  %18 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr10, align 1
  %20 = lshr i8 %19, 1
  %21 = zext i8 %20 to i32
  %or19 = or i32 %shl15, %21
  %incdec.ptr21 = getelementptr i8, ptr %key, i32 6
  %22 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr16, align 1
  %24 = lshr i8 %23, 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %or19, 14
  %27 = shl nuw nsw i32 %25, 7
  %shl25 = or i32 %26, %27
  %incdec.ptr26 = getelementptr i8, ptr %key, i32 7
  %28 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr21, align 1
  %30 = lshr i8 %29, 1
  %31 = zext i8 %30 to i32
  %or29 = or i32 %shl25, %31
  %shl30 = shl nuw i32 %or29, 7
  %32 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr26, align 1
  %34 = lshr i8 %33, 1
  %35 = zext i8 %34 to i32
  %or33 = or i32 %shl30, %35
  %36 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or33, ptr %__crt_ctx.i, align 4
  %shr35 = lshr i32 %or29, 4
  %37 = shl i32 %or8, 24
  %38 = shl nuw nsw i32 %17, 17
  %.masked352 = and i32 %38, 14680064
  %shl37 = or i32 %.masked352, %37
  %or38 = or i32 %shr35, %shl37
  %shr39 = lshr i32 %shl4, 8
  %and34 = shl i32 %or33, 13
  %shl40 = and i32 %and34, 16769024
  %or41 = or i32 %shl40, %shr39
  %arrayidx43 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or38, ptr %arrayidx43, align 4
  %or50 = tail call i32 @llvm.fshl.i32(i32 %shr39, i32 %or38, i32 21)
  %shr51 = lshr i32 %or41, 11
  %and46 = shl i32 %shr35, 13
  %shl52 = and i32 %and46, 16769024
  %or53 = or i32 %shr51, %shl52
  %arrayidx57 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %40 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or50, ptr %arrayidx57, align 4
  %or64 = tail call i32 @llvm.fshl.i32(i32 %shr51, i32 %or50, i32 21)
  %shr65 = lshr i32 %or53, 11
  %and60 = shl i32 %or50, 13
  %shl66 = and i32 %and60, 16769024
  %or67 = or i32 %shr65, %shl66
  %arrayidx71 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %41 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or64, ptr %arrayidx71, align 4
  %or78 = tail call i32 @llvm.fshl.i32(i32 %shr65, i32 %or64, i32 21)
  %shr79 = lshr i32 %or67, 11
  %and74 = shl i32 %or64, 13
  %shl80 = and i32 %and74, 16769024
  %or81 = or i32 %shr79, %shl80
  %arrayidx85 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %42 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or78, ptr %arrayidx85, align 4
  %or92 = tail call i32 @llvm.fshl.i32(i32 %shr79, i32 %or78, i32 21)
  %shr93 = lshr i32 %or81, 11
  %and88 = shl i32 %or78, 13
  %shl94 = and i32 %and88, 16769024
  %or95 = or i32 %shr93, %shl94
  %arrayidx99 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %43 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or92, ptr %arrayidx99, align 4
  %or106 = tail call i32 @llvm.fshl.i32(i32 %shr93, i32 %or92, i32 21)
  %shr107 = lshr i32 %or95, 11
  %and102 = shl i32 %or92, 13
  %shl108 = and i32 %and102, 16769024
  %or109 = or i32 %shr107, %shl108
  %arrayidx113 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %44 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or106, ptr %arrayidx113, align 4
  %or120 = tail call i32 @llvm.fshl.i32(i32 %shr107, i32 %or106, i32 21)
  %shr121 = lshr i32 %or109, 11
  %and116 = shl i32 %or106, 13
  %shl122 = and i32 %and116, 16769024
  %or123 = or i32 %shr121, %shl122
  %arrayidx127 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %45 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or120, ptr %arrayidx127, align 4
  %or134 = tail call i32 @llvm.fshl.i32(i32 %shr121, i32 %or120, i32 21)
  %shr135 = lshr i32 %or123, 11
  %and130 = shl i32 %or120, 13
  %shl136 = and i32 %and130, 16769024
  %or137 = or i32 %shr135, %shl136
  %arrayidx141 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %46 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or134, ptr %arrayidx141, align 4
  %or148 = tail call i32 @llvm.fshl.i32(i32 %shr135, i32 %or134, i32 21)
  %shr149 = lshr i32 %or137, 11
  %and144 = shl i32 %or134, 13
  %shl150 = and i32 %and144, 16769024
  %or151 = or i32 %shr149, %shl150
  %arrayidx155 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %47 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or148, ptr %arrayidx155, align 4
  %or162 = tail call i32 @llvm.fshl.i32(i32 %shr149, i32 %or148, i32 21)
  %shr163 = lshr i32 %or151, 11
  %and158 = shl i32 %or148, 13
  %shl164 = and i32 %and158, 16769024
  %or165 = or i32 %shr163, %shl164
  %arrayidx169 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %48 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or162, ptr %arrayidx169, align 4
  %or176 = tail call i32 @llvm.fshl.i32(i32 %shr163, i32 %or162, i32 21)
  %shr177 = lshr i32 %or165, 11
  %and172 = shl i32 %or162, 13
  %shl178 = and i32 %and172, 16769024
  %or179 = or i32 %shr177, %shl178
  %arrayidx183 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %49 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or176, ptr %arrayidx183, align 4
  %or190 = tail call i32 @llvm.fshl.i32(i32 %shr177, i32 %or176, i32 21)
  %shr191 = lshr i32 %or179, 11
  %and186 = shl i32 %or176, 13
  %shl192 = and i32 %and186, 16769024
  %or193 = or i32 %shr191, %shl192
  %arrayidx197 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %50 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or190, ptr %arrayidx197, align 4
  %or204 = tail call i32 @llvm.fshl.i32(i32 %shr191, i32 %or190, i32 21)
  %shr205 = lshr i32 %or193, 11
  %arrayidx211 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %51 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or204, ptr %arrayidx211, align 4
  %or218 = tail call i32 @llvm.fshl.i32(i32 %shr205, i32 %or204, i32 21)
  %arrayidx225 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %52 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or218, ptr %arrayidx225, align 4
  %shr229 = lshr i32 %or218, 11
  %53 = shl i32 %or190, 23
  %54 = shl nuw nsw i32 %shr205, 10
  %.masked = and i32 %54, 6291456
  %shl231 = or i32 %.masked, %53
  %or232 = or i32 %shl231, %shr229
  %arrayidx239 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %55 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or232, ptr %arrayidx239, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fcrypt_encrypt(ptr nocapture noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %X.sroa.0.0.copyload = load i32, ptr %src, align 1
  %X.sroa.29.0..sroa_idx = getelementptr inbounds i8, ptr %src, i32 4
  %1 = ptrtoint ptr %X.sroa.29.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %X.sroa.29.0.copyload = load i32, ptr %X.sroa.29.0..sroa_idx, align 1
  %2 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__crt_ctx.i, align 4
  %xor = xor i32 %3, %X.sroa.29.0.copyload
  %u.sroa.0.0.extract.shift = lshr i32 %xor, 24
  %u.sroa.5.0.extract.shift = lshr i32 %xor, 16
  %u.sroa.6.0.extract.shift = lshr i32 %xor, 8
  %arrayidx2 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u.sroa.0.0.extract.shift
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %idxprom4 = and i32 %u.sroa.5.0.extract.shift, 255
  %arrayidx5 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %idxprom8 = and i32 %u.sroa.6.0.extract.shift, 255
  %arrayidx9 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom8
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %idxprom12 = and i32 %xor, 255
  %arrayidx13 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom12
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %xor6 = xor i32 %5, %X.sroa.0.0.copyload
  %xor10 = xor i32 %xor6, %7
  %xor14 = xor i32 %xor10, %9
  %xor15 = xor i32 %xor14, %11
  %arrayidx19 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19, align 4
  %xor21 = xor i32 %xor15, %13
  %u17.sroa.0.0.extract.shift = lshr i32 %xor21, 24
  %u17.sroa.5.0.extract.shift = lshr i32 %xor21, 16
  %u17.sroa.6.0.extract.shift = lshr i32 %xor21, 8
  %arrayidx24 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u17.sroa.0.0.extract.shift
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %idxprom26 = and i32 %u17.sroa.5.0.extract.shift, 255
  %arrayidx27 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom26
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx27, align 4
  %idxprom30 = and i32 %u17.sroa.6.0.extract.shift, 255
  %arrayidx31 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom30
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx31, align 4
  %idxprom34 = and i32 %xor21, 255
  %arrayidx35 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom34
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx35, align 4
  %xor28 = xor i32 %15, %X.sroa.29.0.copyload
  %xor32 = xor i32 %xor28, %17
  %xor36 = xor i32 %xor32, %19
  %xor38 = xor i32 %xor36, %21
  %arrayidx44 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx44, align 4
  %xor46 = xor i32 %xor38, %23
  %u42.sroa.0.0.extract.shift = lshr i32 %xor46, 24
  %u42.sroa.5.0.extract.shift = lshr i32 %xor46, 16
  %u42.sroa.6.0.extract.shift = lshr i32 %xor46, 8
  %arrayidx49 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u42.sroa.0.0.extract.shift
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx49, align 4
  %idxprom51 = and i32 %u42.sroa.5.0.extract.shift, 255
  %arrayidx52 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom51
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx52, align 4
  %idxprom55 = and i32 %u42.sroa.6.0.extract.shift, 255
  %arrayidx56 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom55
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx56, align 4
  %idxprom59 = and i32 %xor46, 255
  %arrayidx60 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom59
  %30 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx60, align 4
  %xor53 = xor i32 %25, %xor15
  %xor57 = xor i32 %xor53, %27
  %xor61 = xor i32 %xor57, %29
  %xor63 = xor i32 %xor61, %31
  %arrayidx69 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx69, align 4
  %xor71 = xor i32 %xor63, %33
  %u67.sroa.0.0.extract.shift = lshr i32 %xor71, 24
  %u67.sroa.5.0.extract.shift = lshr i32 %xor71, 16
  %u67.sroa.6.0.extract.shift = lshr i32 %xor71, 8
  %arrayidx74 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u67.sroa.0.0.extract.shift
  %34 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx74, align 4
  %idxprom76 = and i32 %u67.sroa.5.0.extract.shift, 255
  %arrayidx77 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom76
  %36 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx77, align 4
  %idxprom80 = and i32 %u67.sroa.6.0.extract.shift, 255
  %arrayidx81 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom80
  %38 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx81, align 4
  %idxprom84 = and i32 %xor71, 255
  %arrayidx85 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom84
  %40 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx85, align 4
  %xor78 = xor i32 %35, %xor38
  %xor82 = xor i32 %xor78, %37
  %xor86 = xor i32 %xor82, %39
  %xor88 = xor i32 %xor86, %41
  %arrayidx94 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %42 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx94, align 4
  %xor96 = xor i32 %xor88, %43
  %u92.sroa.0.0.extract.shift = lshr i32 %xor96, 24
  %u92.sroa.5.0.extract.shift = lshr i32 %xor96, 16
  %u92.sroa.6.0.extract.shift = lshr i32 %xor96, 8
  %arrayidx99 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u92.sroa.0.0.extract.shift
  %44 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx99, align 4
  %idxprom101 = and i32 %u92.sroa.5.0.extract.shift, 255
  %arrayidx102 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom101
  %46 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx102, align 4
  %idxprom105 = and i32 %u92.sroa.6.0.extract.shift, 255
  %arrayidx106 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom105
  %48 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx106, align 4
  %idxprom109 = and i32 %xor96, 255
  %arrayidx110 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom109
  %50 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx110, align 4
  %xor103 = xor i32 %45, %xor63
  %xor107 = xor i32 %xor103, %47
  %xor111 = xor i32 %xor107, %49
  %xor113 = xor i32 %xor111, %51
  %arrayidx119 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %52 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx119, align 4
  %xor121 = xor i32 %xor113, %53
  %u117.sroa.0.0.extract.shift = lshr i32 %xor121, 24
  %u117.sroa.5.0.extract.shift = lshr i32 %xor121, 16
  %u117.sroa.6.0.extract.shift = lshr i32 %xor121, 8
  %arrayidx124 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u117.sroa.0.0.extract.shift
  %54 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx124, align 4
  %idxprom126 = and i32 %u117.sroa.5.0.extract.shift, 255
  %arrayidx127 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom126
  %56 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx127, align 4
  %idxprom130 = and i32 %u117.sroa.6.0.extract.shift, 255
  %arrayidx131 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom130
  %58 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx131, align 4
  %idxprom134 = and i32 %xor121, 255
  %arrayidx135 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom134
  %60 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx135, align 4
  %xor128 = xor i32 %55, %xor88
  %xor132 = xor i32 %xor128, %57
  %xor136 = xor i32 %xor132, %59
  %xor138 = xor i32 %xor136, %61
  %arrayidx144 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %62 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx144, align 4
  %xor146 = xor i32 %xor138, %63
  %u142.sroa.0.0.extract.shift = lshr i32 %xor146, 24
  %u142.sroa.5.0.extract.shift = lshr i32 %xor146, 16
  %u142.sroa.6.0.extract.shift = lshr i32 %xor146, 8
  %arrayidx149 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u142.sroa.0.0.extract.shift
  %64 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx149, align 4
  %idxprom151 = and i32 %u142.sroa.5.0.extract.shift, 255
  %arrayidx152 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom151
  %66 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx152, align 4
  %idxprom155 = and i32 %u142.sroa.6.0.extract.shift, 255
  %arrayidx156 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom155
  %68 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx156, align 4
  %idxprom159 = and i32 %xor146, 255
  %arrayidx160 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom159
  %70 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx160, align 4
  %xor153 = xor i32 %65, %xor113
  %xor157 = xor i32 %xor153, %67
  %xor161 = xor i32 %xor157, %69
  %xor163 = xor i32 %xor161, %71
  %arrayidx169 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %72 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx169, align 4
  %xor171 = xor i32 %xor163, %73
  %u167.sroa.0.0.extract.shift = lshr i32 %xor171, 24
  %u167.sroa.5.0.extract.shift = lshr i32 %xor171, 16
  %u167.sroa.6.0.extract.shift = lshr i32 %xor171, 8
  %arrayidx174 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u167.sroa.0.0.extract.shift
  %74 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx174, align 4
  %idxprom176 = and i32 %u167.sroa.5.0.extract.shift, 255
  %arrayidx177 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom176
  %76 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx177, align 4
  %idxprom180 = and i32 %u167.sroa.6.0.extract.shift, 255
  %arrayidx181 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom180
  %78 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx181, align 4
  %idxprom184 = and i32 %xor171, 255
  %arrayidx185 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom184
  %80 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx185, align 4
  %xor178 = xor i32 %75, %xor138
  %xor182 = xor i32 %xor178, %77
  %xor186 = xor i32 %xor182, %79
  %xor188 = xor i32 %xor186, %81
  %arrayidx194 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %82 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx194, align 4
  %xor196 = xor i32 %xor188, %83
  %u192.sroa.0.0.extract.shift = lshr i32 %xor196, 24
  %u192.sroa.5.0.extract.shift = lshr i32 %xor196, 16
  %u192.sroa.6.0.extract.shift = lshr i32 %xor196, 8
  %arrayidx199 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u192.sroa.0.0.extract.shift
  %84 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx199, align 4
  %idxprom201 = and i32 %u192.sroa.5.0.extract.shift, 255
  %arrayidx202 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom201
  %86 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx202, align 4
  %idxprom205 = and i32 %u192.sroa.6.0.extract.shift, 255
  %arrayidx206 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom205
  %88 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx206, align 4
  %idxprom209 = and i32 %xor196, 255
  %arrayidx210 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom209
  %90 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx210, align 4
  %xor203 = xor i32 %85, %xor163
  %xor207 = xor i32 %xor203, %87
  %xor211 = xor i32 %xor207, %89
  %xor213 = xor i32 %xor211, %91
  %arrayidx219 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %92 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx219, align 4
  %xor221 = xor i32 %xor213, %93
  %u217.sroa.0.0.extract.shift = lshr i32 %xor221, 24
  %u217.sroa.5.0.extract.shift = lshr i32 %xor221, 16
  %u217.sroa.6.0.extract.shift = lshr i32 %xor221, 8
  %arrayidx224 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u217.sroa.0.0.extract.shift
  %94 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx224, align 4
  %idxprom226 = and i32 %u217.sroa.5.0.extract.shift, 255
  %arrayidx227 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom226
  %96 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx227, align 4
  %idxprom230 = and i32 %u217.sroa.6.0.extract.shift, 255
  %arrayidx231 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom230
  %98 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx231, align 4
  %idxprom234 = and i32 %xor221, 255
  %arrayidx235 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom234
  %100 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx235, align 4
  %xor228 = xor i32 %95, %xor188
  %xor232 = xor i32 %xor228, %97
  %xor236 = xor i32 %xor232, %99
  %xor238 = xor i32 %xor236, %101
  %arrayidx244 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %102 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx244, align 4
  %xor246 = xor i32 %xor238, %103
  %u242.sroa.0.0.extract.shift = lshr i32 %xor246, 24
  %u242.sroa.5.0.extract.shift = lshr i32 %xor246, 16
  %u242.sroa.6.0.extract.shift = lshr i32 %xor246, 8
  %arrayidx249 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u242.sroa.0.0.extract.shift
  %104 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx249, align 4
  %idxprom251 = and i32 %u242.sroa.5.0.extract.shift, 255
  %arrayidx252 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom251
  %106 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx252, align 4
  %idxprom255 = and i32 %u242.sroa.6.0.extract.shift, 255
  %arrayidx256 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom255
  %108 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx256, align 4
  %idxprom259 = and i32 %xor246, 255
  %arrayidx260 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom259
  %110 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx260, align 4
  %xor253 = xor i32 %105, %xor213
  %xor257 = xor i32 %xor253, %107
  %xor261 = xor i32 %xor257, %109
  %xor263 = xor i32 %xor261, %111
  %arrayidx269 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %112 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx269, align 4
  %xor271 = xor i32 %xor263, %113
  %u267.sroa.0.0.extract.shift = lshr i32 %xor271, 24
  %u267.sroa.5.0.extract.shift = lshr i32 %xor271, 16
  %u267.sroa.6.0.extract.shift = lshr i32 %xor271, 8
  %arrayidx274 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u267.sroa.0.0.extract.shift
  %114 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx274, align 4
  %idxprom276 = and i32 %u267.sroa.5.0.extract.shift, 255
  %arrayidx277 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom276
  %116 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx277, align 4
  %idxprom280 = and i32 %u267.sroa.6.0.extract.shift, 255
  %arrayidx281 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom280
  %118 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx281, align 4
  %idxprom284 = and i32 %xor271, 255
  %arrayidx285 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom284
  %120 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx285, align 4
  %xor278 = xor i32 %115, %xor238
  %xor282 = xor i32 %xor278, %117
  %xor286 = xor i32 %xor282, %119
  %xor288 = xor i32 %xor286, %121
  %arrayidx294 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %122 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx294, align 4
  %xor296 = xor i32 %xor288, %123
  %u292.sroa.0.0.extract.shift = lshr i32 %xor296, 24
  %u292.sroa.5.0.extract.shift = lshr i32 %xor296, 16
  %u292.sroa.6.0.extract.shift = lshr i32 %xor296, 8
  %arrayidx299 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u292.sroa.0.0.extract.shift
  %124 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx299, align 4
  %idxprom301 = and i32 %u292.sroa.5.0.extract.shift, 255
  %arrayidx302 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom301
  %126 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx302, align 4
  %idxprom305 = and i32 %u292.sroa.6.0.extract.shift, 255
  %arrayidx306 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom305
  %128 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx306, align 4
  %idxprom309 = and i32 %xor296, 255
  %arrayidx310 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom309
  %130 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx310, align 4
  %xor303 = xor i32 %125, %xor263
  %xor307 = xor i32 %xor303, %127
  %xor311 = xor i32 %xor307, %129
  %xor313 = xor i32 %xor311, %131
  %arrayidx319 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %132 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx319, align 4
  %xor321 = xor i32 %xor313, %133
  %u317.sroa.0.0.extract.shift = lshr i32 %xor321, 24
  %u317.sroa.5.0.extract.shift = lshr i32 %xor321, 16
  %u317.sroa.6.0.extract.shift = lshr i32 %xor321, 8
  %arrayidx324 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u317.sroa.0.0.extract.shift
  %134 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx324, align 4
  %idxprom326 = and i32 %u317.sroa.5.0.extract.shift, 255
  %arrayidx327 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom326
  %136 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx327, align 4
  %idxprom330 = and i32 %u317.sroa.6.0.extract.shift, 255
  %arrayidx331 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom330
  %138 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx331, align 4
  %idxprom334 = and i32 %xor321, 255
  %arrayidx335 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom334
  %140 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx335, align 4
  %xor328 = xor i32 %135, %xor288
  %xor332 = xor i32 %xor328, %137
  %xor336 = xor i32 %xor332, %139
  %xor338 = xor i32 %xor336, %141
  %arrayidx344 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %142 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx344, align 4
  %xor346 = xor i32 %xor338, %143
  %u342.sroa.0.0.extract.shift = lshr i32 %xor346, 24
  %u342.sroa.5.0.extract.shift = lshr i32 %xor346, 16
  %u342.sroa.6.0.extract.shift = lshr i32 %xor346, 8
  %arrayidx349 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u342.sroa.0.0.extract.shift
  %144 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx349, align 4
  %idxprom351 = and i32 %u342.sroa.5.0.extract.shift, 255
  %arrayidx352 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom351
  %146 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx352, align 4
  %idxprom355 = and i32 %u342.sroa.6.0.extract.shift, 255
  %arrayidx356 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom355
  %148 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx356, align 4
  %idxprom359 = and i32 %xor346, 255
  %arrayidx360 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom359
  %150 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx360, align 4
  %xor353 = xor i32 %145, %xor313
  %xor357 = xor i32 %xor353, %147
  %xor361 = xor i32 %xor357, %149
  %xor363 = xor i32 %xor361, %151
  %arrayidx369 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %152 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx369, align 4
  %xor371 = xor i32 %xor363, %153
  %u367.sroa.0.0.extract.shift = lshr i32 %xor371, 24
  %u367.sroa.5.0.extract.shift = lshr i32 %xor371, 16
  %u367.sroa.6.0.extract.shift = lshr i32 %xor371, 8
  %arrayidx374 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u367.sroa.0.0.extract.shift
  %154 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx374, align 4
  %idxprom376 = and i32 %u367.sroa.5.0.extract.shift, 255
  %arrayidx377 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom376
  %156 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx377, align 4
  %idxprom380 = and i32 %u367.sroa.6.0.extract.shift, 255
  %arrayidx381 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom380
  %158 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx381, align 4
  %idxprom384 = and i32 %xor371, 255
  %arrayidx385 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom384
  %160 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx385, align 4
  %xor378 = xor i32 %155, %xor338
  %xor382 = xor i32 %xor378, %157
  %xor386 = xor i32 %xor382, %159
  %xor388 = xor i32 %xor386, %161
  %162 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %xor363, ptr %dst, align 1
  %X.sroa.29.0..sroa_idx407 = getelementptr inbounds i8, ptr %dst, i32 4
  %163 = ptrtoint ptr %X.sroa.29.0..sroa_idx407 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 %xor388, ptr %X.sroa.29.0..sroa_idx407, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fcrypt_decrypt(ptr nocapture noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %X.sroa.0.0.copyload = load i32, ptr %src, align 1
  %X.sroa.29.0..sroa_idx = getelementptr inbounds i8, ptr %src, i32 4
  %1 = ptrtoint ptr %X.sroa.29.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %X.sroa.29.0.copyload = load i32, ptr %X.sroa.29.0..sroa_idx, align 1
  %arrayidx = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %xor = xor i32 %3, %X.sroa.0.0.copyload
  %u.sroa.0.0.extract.shift = lshr i32 %xor, 24
  %u.sroa.5.0.extract.shift = lshr i32 %xor, 16
  %u.sroa.6.0.extract.shift = lshr i32 %xor, 8
  %arrayidx2 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u.sroa.0.0.extract.shift
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %idxprom4 = and i32 %u.sroa.5.0.extract.shift, 255
  %arrayidx5 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %idxprom8 = and i32 %u.sroa.6.0.extract.shift, 255
  %arrayidx9 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom8
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %idxprom12 = and i32 %xor, 255
  %arrayidx13 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom12
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %xor6 = xor i32 %5, %X.sroa.29.0.copyload
  %xor10 = xor i32 %xor6, %7
  %xor14 = xor i32 %xor10, %9
  %xor15 = xor i32 %xor14, %11
  %arrayidx19 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19, align 4
  %xor21 = xor i32 %xor15, %13
  %u17.sroa.0.0.extract.shift = lshr i32 %xor21, 24
  %u17.sroa.5.0.extract.shift = lshr i32 %xor21, 16
  %u17.sroa.6.0.extract.shift = lshr i32 %xor21, 8
  %arrayidx24 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u17.sroa.0.0.extract.shift
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %idxprom26 = and i32 %u17.sroa.5.0.extract.shift, 255
  %arrayidx27 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom26
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx27, align 4
  %idxprom30 = and i32 %u17.sroa.6.0.extract.shift, 255
  %arrayidx31 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom30
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx31, align 4
  %idxprom34 = and i32 %xor21, 255
  %arrayidx35 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom34
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx35, align 4
  %xor28 = xor i32 %15, %X.sroa.0.0.copyload
  %xor32 = xor i32 %xor28, %17
  %xor36 = xor i32 %xor32, %19
  %xor38 = xor i32 %xor36, %21
  %arrayidx44 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx44, align 4
  %xor46 = xor i32 %xor38, %23
  %u42.sroa.0.0.extract.shift = lshr i32 %xor46, 24
  %u42.sroa.5.0.extract.shift = lshr i32 %xor46, 16
  %u42.sroa.6.0.extract.shift = lshr i32 %xor46, 8
  %arrayidx49 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u42.sroa.0.0.extract.shift
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx49, align 4
  %idxprom51 = and i32 %u42.sroa.5.0.extract.shift, 255
  %arrayidx52 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom51
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx52, align 4
  %idxprom55 = and i32 %u42.sroa.6.0.extract.shift, 255
  %arrayidx56 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom55
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx56, align 4
  %idxprom59 = and i32 %xor46, 255
  %arrayidx60 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom59
  %30 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx60, align 4
  %xor53 = xor i32 %25, %xor15
  %xor57 = xor i32 %xor53, %27
  %xor61 = xor i32 %xor57, %29
  %xor63 = xor i32 %xor61, %31
  %arrayidx69 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %32 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx69, align 4
  %xor71 = xor i32 %xor63, %33
  %u67.sroa.0.0.extract.shift = lshr i32 %xor71, 24
  %u67.sroa.5.0.extract.shift = lshr i32 %xor71, 16
  %u67.sroa.6.0.extract.shift = lshr i32 %xor71, 8
  %arrayidx74 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u67.sroa.0.0.extract.shift
  %34 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx74, align 4
  %idxprom76 = and i32 %u67.sroa.5.0.extract.shift, 255
  %arrayidx77 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom76
  %36 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx77, align 4
  %idxprom80 = and i32 %u67.sroa.6.0.extract.shift, 255
  %arrayidx81 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom80
  %38 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx81, align 4
  %idxprom84 = and i32 %xor71, 255
  %arrayidx85 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom84
  %40 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx85, align 4
  %xor78 = xor i32 %35, %xor38
  %xor82 = xor i32 %xor78, %37
  %xor86 = xor i32 %xor82, %39
  %xor88 = xor i32 %xor86, %41
  %arrayidx94 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %42 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx94, align 4
  %xor96 = xor i32 %xor88, %43
  %u92.sroa.0.0.extract.shift = lshr i32 %xor96, 24
  %u92.sroa.5.0.extract.shift = lshr i32 %xor96, 16
  %u92.sroa.6.0.extract.shift = lshr i32 %xor96, 8
  %arrayidx99 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u92.sroa.0.0.extract.shift
  %44 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx99, align 4
  %idxprom101 = and i32 %u92.sroa.5.0.extract.shift, 255
  %arrayidx102 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom101
  %46 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx102, align 4
  %idxprom105 = and i32 %u92.sroa.6.0.extract.shift, 255
  %arrayidx106 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom105
  %48 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx106, align 4
  %idxprom109 = and i32 %xor96, 255
  %arrayidx110 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom109
  %50 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx110, align 4
  %xor103 = xor i32 %45, %xor63
  %xor107 = xor i32 %xor103, %47
  %xor111 = xor i32 %xor107, %49
  %xor113 = xor i32 %xor111, %51
  %arrayidx119 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %52 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx119, align 4
  %xor121 = xor i32 %xor113, %53
  %u117.sroa.0.0.extract.shift = lshr i32 %xor121, 24
  %u117.sroa.5.0.extract.shift = lshr i32 %xor121, 16
  %u117.sroa.6.0.extract.shift = lshr i32 %xor121, 8
  %arrayidx124 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u117.sroa.0.0.extract.shift
  %54 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx124, align 4
  %idxprom126 = and i32 %u117.sroa.5.0.extract.shift, 255
  %arrayidx127 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom126
  %56 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx127, align 4
  %idxprom130 = and i32 %u117.sroa.6.0.extract.shift, 255
  %arrayidx131 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom130
  %58 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx131, align 4
  %idxprom134 = and i32 %xor121, 255
  %arrayidx135 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom134
  %60 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx135, align 4
  %xor128 = xor i32 %55, %xor88
  %xor132 = xor i32 %xor128, %57
  %xor136 = xor i32 %xor132, %59
  %xor138 = xor i32 %xor136, %61
  %arrayidx144 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %62 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx144, align 4
  %xor146 = xor i32 %xor138, %63
  %u142.sroa.0.0.extract.shift = lshr i32 %xor146, 24
  %u142.sroa.5.0.extract.shift = lshr i32 %xor146, 16
  %u142.sroa.6.0.extract.shift = lshr i32 %xor146, 8
  %arrayidx149 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u142.sroa.0.0.extract.shift
  %64 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx149, align 4
  %idxprom151 = and i32 %u142.sroa.5.0.extract.shift, 255
  %arrayidx152 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom151
  %66 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx152, align 4
  %idxprom155 = and i32 %u142.sroa.6.0.extract.shift, 255
  %arrayidx156 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom155
  %68 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx156, align 4
  %idxprom159 = and i32 %xor146, 255
  %arrayidx160 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom159
  %70 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx160, align 4
  %xor153 = xor i32 %65, %xor113
  %xor157 = xor i32 %xor153, %67
  %xor161 = xor i32 %xor157, %69
  %xor163 = xor i32 %xor161, %71
  %arrayidx169 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %72 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx169, align 4
  %xor171 = xor i32 %xor163, %73
  %u167.sroa.0.0.extract.shift = lshr i32 %xor171, 24
  %u167.sroa.5.0.extract.shift = lshr i32 %xor171, 16
  %u167.sroa.6.0.extract.shift = lshr i32 %xor171, 8
  %arrayidx174 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u167.sroa.0.0.extract.shift
  %74 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx174, align 4
  %idxprom176 = and i32 %u167.sroa.5.0.extract.shift, 255
  %arrayidx177 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom176
  %76 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx177, align 4
  %idxprom180 = and i32 %u167.sroa.6.0.extract.shift, 255
  %arrayidx181 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom180
  %78 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx181, align 4
  %idxprom184 = and i32 %xor171, 255
  %arrayidx185 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom184
  %80 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx185, align 4
  %xor178 = xor i32 %75, %xor138
  %xor182 = xor i32 %xor178, %77
  %xor186 = xor i32 %xor182, %79
  %xor188 = xor i32 %xor186, %81
  %arrayidx194 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %82 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx194, align 4
  %xor196 = xor i32 %xor188, %83
  %u192.sroa.0.0.extract.shift = lshr i32 %xor196, 24
  %u192.sroa.5.0.extract.shift = lshr i32 %xor196, 16
  %u192.sroa.6.0.extract.shift = lshr i32 %xor196, 8
  %arrayidx199 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u192.sroa.0.0.extract.shift
  %84 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx199, align 4
  %idxprom201 = and i32 %u192.sroa.5.0.extract.shift, 255
  %arrayidx202 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom201
  %86 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx202, align 4
  %idxprom205 = and i32 %u192.sroa.6.0.extract.shift, 255
  %arrayidx206 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom205
  %88 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx206, align 4
  %idxprom209 = and i32 %xor196, 255
  %arrayidx210 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom209
  %90 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx210, align 4
  %xor203 = xor i32 %85, %xor163
  %xor207 = xor i32 %xor203, %87
  %xor211 = xor i32 %xor207, %89
  %xor213 = xor i32 %xor211, %91
  %arrayidx219 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %92 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx219, align 4
  %xor221 = xor i32 %xor213, %93
  %u217.sroa.0.0.extract.shift = lshr i32 %xor221, 24
  %u217.sroa.5.0.extract.shift = lshr i32 %xor221, 16
  %u217.sroa.6.0.extract.shift = lshr i32 %xor221, 8
  %arrayidx224 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u217.sroa.0.0.extract.shift
  %94 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx224, align 4
  %idxprom226 = and i32 %u217.sroa.5.0.extract.shift, 255
  %arrayidx227 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom226
  %96 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx227, align 4
  %idxprom230 = and i32 %u217.sroa.6.0.extract.shift, 255
  %arrayidx231 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom230
  %98 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx231, align 4
  %idxprom234 = and i32 %xor221, 255
  %arrayidx235 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom234
  %100 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx235, align 4
  %xor228 = xor i32 %95, %xor188
  %xor232 = xor i32 %xor228, %97
  %xor236 = xor i32 %xor232, %99
  %xor238 = xor i32 %xor236, %101
  %arrayidx244 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %102 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx244, align 4
  %xor246 = xor i32 %xor238, %103
  %u242.sroa.0.0.extract.shift = lshr i32 %xor246, 24
  %u242.sroa.5.0.extract.shift = lshr i32 %xor246, 16
  %u242.sroa.6.0.extract.shift = lshr i32 %xor246, 8
  %arrayidx249 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u242.sroa.0.0.extract.shift
  %104 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx249, align 4
  %idxprom251 = and i32 %u242.sroa.5.0.extract.shift, 255
  %arrayidx252 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom251
  %106 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx252, align 4
  %idxprom255 = and i32 %u242.sroa.6.0.extract.shift, 255
  %arrayidx256 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom255
  %108 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx256, align 4
  %idxprom259 = and i32 %xor246, 255
  %arrayidx260 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom259
  %110 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx260, align 4
  %xor253 = xor i32 %105, %xor213
  %xor257 = xor i32 %xor253, %107
  %xor261 = xor i32 %xor257, %109
  %xor263 = xor i32 %xor261, %111
  %arrayidx269 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %112 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx269, align 4
  %xor271 = xor i32 %xor263, %113
  %u267.sroa.0.0.extract.shift = lshr i32 %xor271, 24
  %u267.sroa.5.0.extract.shift = lshr i32 %xor271, 16
  %u267.sroa.6.0.extract.shift = lshr i32 %xor271, 8
  %arrayidx274 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u267.sroa.0.0.extract.shift
  %114 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx274, align 4
  %idxprom276 = and i32 %u267.sroa.5.0.extract.shift, 255
  %arrayidx277 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom276
  %116 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx277, align 4
  %idxprom280 = and i32 %u267.sroa.6.0.extract.shift, 255
  %arrayidx281 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom280
  %118 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx281, align 4
  %idxprom284 = and i32 %xor271, 255
  %arrayidx285 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom284
  %120 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx285, align 4
  %xor278 = xor i32 %115, %xor238
  %xor282 = xor i32 %xor278, %117
  %xor286 = xor i32 %xor282, %119
  %xor288 = xor i32 %xor286, %121
  %arrayidx294 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %122 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx294, align 4
  %xor296 = xor i32 %xor288, %123
  %u292.sroa.0.0.extract.shift = lshr i32 %xor296, 24
  %u292.sroa.5.0.extract.shift = lshr i32 %xor296, 16
  %u292.sroa.6.0.extract.shift = lshr i32 %xor296, 8
  %arrayidx299 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u292.sroa.0.0.extract.shift
  %124 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx299, align 4
  %idxprom301 = and i32 %u292.sroa.5.0.extract.shift, 255
  %arrayidx302 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom301
  %126 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx302, align 4
  %idxprom305 = and i32 %u292.sroa.6.0.extract.shift, 255
  %arrayidx306 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom305
  %128 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx306, align 4
  %idxprom309 = and i32 %xor296, 255
  %arrayidx310 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom309
  %130 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx310, align 4
  %xor303 = xor i32 %125, %xor263
  %xor307 = xor i32 %xor303, %127
  %xor311 = xor i32 %xor307, %129
  %xor313 = xor i32 %xor311, %131
  %arrayidx319 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %132 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx319, align 4
  %xor321 = xor i32 %xor313, %133
  %u317.sroa.0.0.extract.shift = lshr i32 %xor321, 24
  %u317.sroa.5.0.extract.shift = lshr i32 %xor321, 16
  %u317.sroa.6.0.extract.shift = lshr i32 %xor321, 8
  %arrayidx324 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u317.sroa.0.0.extract.shift
  %134 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx324, align 4
  %idxprom326 = and i32 %u317.sroa.5.0.extract.shift, 255
  %arrayidx327 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom326
  %136 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx327, align 4
  %idxprom330 = and i32 %u317.sroa.6.0.extract.shift, 255
  %arrayidx331 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom330
  %138 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx331, align 4
  %idxprom334 = and i32 %xor321, 255
  %arrayidx335 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom334
  %140 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx335, align 4
  %xor328 = xor i32 %135, %xor288
  %xor332 = xor i32 %xor328, %137
  %xor336 = xor i32 %xor332, %139
  %xor338 = xor i32 %xor336, %141
  %arrayidx344 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %142 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx344, align 4
  %xor346 = xor i32 %xor338, %143
  %u342.sroa.0.0.extract.shift = lshr i32 %xor346, 24
  %u342.sroa.5.0.extract.shift = lshr i32 %xor346, 16
  %u342.sroa.6.0.extract.shift = lshr i32 %xor346, 8
  %arrayidx349 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u342.sroa.0.0.extract.shift
  %144 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx349, align 4
  %idxprom351 = and i32 %u342.sroa.5.0.extract.shift, 255
  %arrayidx352 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom351
  %146 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx352, align 4
  %idxprom355 = and i32 %u342.sroa.6.0.extract.shift, 255
  %arrayidx356 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom355
  %148 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx356, align 4
  %idxprom359 = and i32 %xor346, 255
  %arrayidx360 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom359
  %150 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx360, align 4
  %xor353 = xor i32 %145, %xor313
  %xor357 = xor i32 %xor353, %147
  %xor361 = xor i32 %xor357, %149
  %xor363 = xor i32 %xor361, %151
  %152 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %__crt_ctx.i, align 4
  %xor371 = xor i32 %xor363, %153
  %u367.sroa.0.0.extract.shift = lshr i32 %xor371, 24
  %u367.sroa.5.0.extract.shift = lshr i32 %xor371, 16
  %u367.sroa.6.0.extract.shift = lshr i32 %xor371, 8
  %arrayidx374 = getelementptr [256 x i32], ptr @sbox0, i32 0, i32 %u367.sroa.0.0.extract.shift
  %154 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx374, align 4
  %idxprom376 = and i32 %u367.sroa.5.0.extract.shift, 255
  %arrayidx377 = getelementptr [256 x i32], ptr @sbox1, i32 0, i32 %idxprom376
  %156 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx377, align 4
  %idxprom380 = and i32 %u367.sroa.6.0.extract.shift, 255
  %arrayidx381 = getelementptr [256 x i32], ptr @sbox2, i32 0, i32 %idxprom380
  %158 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx381, align 4
  %idxprom384 = and i32 %xor371, 255
  %arrayidx385 = getelementptr [256 x i32], ptr @sbox3, i32 0, i32 %idxprom384
  %160 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx385, align 4
  %xor378 = xor i32 %155, %xor338
  %xor382 = xor i32 %xor378, %157
  %xor386 = xor i32 %xor382, %159
  %xor388 = xor i32 %xor386, %161
  %162 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %xor388, ptr %dst, align 1
  %X.sroa.29.0..sroa_idx407 = getelementptr inbounds i8, ptr %dst, i32 4
  %163 = ptrtoint ptr %X.sroa.29.0..sroa_idx407 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 %xor363, ptr %X.sroa.29.0..sroa_idx407, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_fcrypt__173_414_fcrypt_mod_init4, !1, !"__initcall__kmod_fcrypt__173_414_fcrypt_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/fcrypt.c", i32 414, i32 1}
!2 = !{ptr @__exitcall_fcrypt_mod_fini, !3, !"__exitcall_fcrypt_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/fcrypt.c", i32 415, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/fcrypt.c", i32 417, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/fcrypt.c", i32 418, i32 1}
!9 = !{ptr @__UNIQUE_ID_author177, !10, !"__UNIQUE_ID_author177", i1 false, i1 false}
!10 = !{!"../crypto/fcrypt.c", i32 419, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace178, !12, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!12 = !{!"../crypto/fcrypt.c", i32 420, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto179, !12, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!14 = !{ptr @fcrypt_alg, !15, !"fcrypt_alg", i1 false, i1 false}
!15 = !{!"../crypto/fcrypt.c", i32 389, i32 26}
!16 = !{ptr @sbox0, !17, !"sbox0", i1 false, i1 false}
!17 = !{!"../crypto/fcrypt.c", i32 74, i32 21}
!18 = !{ptr @sbox1, !19, !"sbox1", i1 false, i1 false}
!19 = !{!"../crypto/fcrypt.c", i32 111, i32 21}
!20 = !{ptr @sbox2, !21, !"sbox2", i1 false, i1 false}
!21 = !{!"../crypto/fcrypt.c", i32 148, i32 21}
!22 = !{ptr @sbox3, !23, !"sbox3", i1 false, i1 false}
!23 = !{!"../crypto/fcrypt.c", i32 185, i32 21}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
