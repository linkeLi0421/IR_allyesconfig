; ModuleID = '/llk/IR_all_yes/net/wireless/lib80211_crypt_tkip.c_pt.bc'
source_filename = "../net/wireless/lib80211_crypt_tkip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lib80211_tkip_data = type { [32 x i8], i32, i32, i16, [5 x i16], i32, i32, i16, [5 x i16], i32, i32, i16, i32, i32, i32, i32, %struct.arc4_ctx, %struct.arc4_ctx, ptr, ptr, [16 x i8], [16 x i8], i32 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_michaelmicfailure = type { i32, %struct.sockaddr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }

@__UNIQUE_ID_author339 = internal constant [41 x i8] c"lib80211_crypt_tkip.author=Jouni Malinen\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [53 x i8] c"lib80211_crypt_tkip.description=lib80211 crypt: TKIP\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [58 x i8] c"lib80211_crypt_tkip.file=net/wireless/lib80211_crypt_tkip\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [32 x i8] c"lib80211_crypt_tkip.license=GPL\00", section ".modinfo", align 1
@lib80211_crypt_tkip = internal global { %struct.lib80211_crypto_ops, [52 x i8] } { %struct.lib80211_crypto_ops { ptr @.str, %struct.list_head zeroinitializer, ptr @lib80211_tkip_init, ptr @lib80211_tkip_deinit, ptr @lib80211_tkip_encrypt, ptr @lib80211_tkip_decrypt, ptr @lib80211_michael_mic_add, ptr @lib80211_michael_mic_verify, ptr @lib80211_tkip_set_key, ptr @lib80211_tkip_get_key, ptr @lib80211_tkip_print_stats, ptr @lib80211_tkip_get_flags, ptr @lib80211_tkip_set_flags, i32 8, i32 4, i32 0, i32 8, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_lib80211_crypt_tkip__343_737_lib80211_crypto_tkip_init6 = internal global ptr @lib80211_crypto_tkip_init, section ".initcall6.init", align 4
@__exitcall_lib80211_crypto_tkip_exit = internal global ptr @lib80211_crypto_tkip_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"michael_mic\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lib80211_tkip_encrypt.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib80211_crypt_tkip\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lib80211_tkip_encrypt\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/wireless/lib80211_crypt_tkip.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TKIP countermeasures: dropped TX packet to %pM\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"lib80211_crypt_tkip: TKIP countermeasures: dropped TX packet to %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@Sbox = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 -14683, i16 -1916, i16 -4455, i16 -2419, i16 -243, i16 -10563, i16 -8527, i16 -28332, i16 24656, i16 515, i16 -12631, i16 22141, i16 -6375, i16 -19102, i16 19942, i16 -4966, i16 -28859, i16 8093, i16 -30400, i16 -1401, i16 -4331, i16 -19733, i16 -28983, i16 -1269, i16 16876, i16 -19609, i16 24573, i16 17898, i16 9151, i16 21495, i16 -7018, i16 -25765, i16 30146, i16 -7908, i16 15790, i16 19562, i16 27738, i16 32321, i16 -2814, i16 -31921, i16 26716, i16 20980, i16 -11980, i16 -1784, i16 -7533, i16 -21645, i16 25171, i16 10815, i16 2060, i16 -27310, i16 18021, i16 -25250, i16 12328, i16 14241, i16 2575, i16 12213, i16 3593, i16 9270, i16 7067, i16 -8387, i16 -13018, i16 20073, i16 32717, i16 -5473, i16 4635, i16 7582, i16 22644, i16 13358, i16 13869, i16 -9038, i16 -19218, i16 23547, i16 -23306, i16 30285, i16 -18591, i16 32206, i16 21115, i16 -8898, i16 24177, i16 5015, i16 -22795, i16 -18072, i16 0, i16 -16084, i16 16480, i16 -7393, i16 31176, i16 -18707, i16 -11074, i16 -29370, i16 26585, i16 29259, i16 -27426, i16 -26412, i16 -20248, i16 -31414, i16 -17557, i16 -15062, i16 20453, i16 -4842, i16 -31035, i16 -25897, i16 26197, i16 4500, i16 -30001, i16 -5872, i16 1030, i16 -383, i16 -24336, i16 30788, i16 9658, i16 19427, i16 -23821, i16 24062, i16 -32576, i16 1418, i16 16301, i16 8636, i16 28744, i16 -3836, i16 25567, i16 30657, i16 -20619, i16 16995, i16 8240, i16 -6886, i16 -754, i16 -16531, i16 -32436, i16 6164, i16 9781, i16 -15569, i16 -16671, i16 13730, i16 -30516, i16 11833, i16 -27817, i16 22002, i16 -894, i16 31303, i16 -14164, i16 -17689, i16 12843, i16 -6507, i16 -16224, i16 6552, i16 -24879, i16 -23681, i16 17510, i16 21630, i16 15275, i16 2947, i16 -29494, i16 -14551, i16 27603, i16 10300, i16 -22663, i16 -17182, i16 5661, i16 -21130, i16 -9413, i16 25686, i16 29774, i16 5150, i16 -27941, i16 3082, i16 18540, i16 -18204, i16 -24739, i16 -17042, i16 17391, i16 -15194, i16 14760, i16 12708, i16 -11465, i16 -3445, i16 -10958, i16 -29885, i16 28249, i16 -9545, i16 396, i16 -20124, i16 -25390, i16 18912, i16 -10060, i16 -21254, i16 -3321, i16 -12507, i16 -13649, i16 -2930, i16 18409, i16 4120, i16 28629, i16 -3960, i16 19055, i16 23666, i16 14372, i16 22513, i16 29639, i16 -26799, i16 -13533, i16 -24196, i16 -5988, i16 15905, i16 -26915, i16 25052, i16 3462, i16 3973, i16 -8048, i16 31810, i16 29124, i16 -13142, i16 -28456, i16 1541, i16 -2303, i16 7186, i16 -15709, i16 27231, i16 -20743, i16 27088, i16 6033, i16 -26280, i16 14887, i16 10169, i16 -9928, i16 -5357, i16 11187, i16 8755, i16 -11589, i16 -22160, i16 1929, i16 13223, i16 11702, i16 15394, i16 5522, i16 -14048, i16 -30903, i16 -21761, i16 20600, i16 -23174, i16 911, i16 23032, i16 2432, i16 6679, i16 26074, i16 -10447, i16 -31546, i16 -12104, i16 -32061, i16 10672, i16 23159, i16 7697, i16 31691, i16 -22276, i16 28118, i16 11322], [128 x i8] zeroinitializer }, align 32
@lib80211_tkip_decrypt.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lib80211_tkip_decrypt\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"TKIP countermeasures: dropped received packet from %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"lib80211_crypt_tkip: TKIP countermeasures: dropped received packet from %pM\0A\00", [51 x i8] zeroinitializer }, align 32
@lib80211_tkip_decrypt.descriptor.10 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.11, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"TKIP: received packet without ExtIV flag from %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"lib80211_crypt_tkip: TKIP: received packet without ExtIV flag from %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@lib80211_tkip_decrypt.descriptor.13 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.14, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TKIP: RX tkey->key_idx=%d frame keyidx=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"lib80211_crypt_tkip: TKIP: RX tkey->key_idx=%d frame keyidx=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@lib80211_tkip_decrypt.descriptor.16 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.17, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"TKIP: received packet from %pM with keyid=%d that does not have a configured key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"lib80211_crypt_tkip: TKIP: received packet from %pM with keyid=%d that does not have a configured key\0A\00", [57 x i8] zeroinitializer }, align 32
@lib80211_tkip_decrypt.descriptor.19 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.20, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"TKIP: replay detected: STA=%pM previous TSC %08x%04x received TSC %08x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"lib80211_crypt_tkip: TKIP: replay detected: STA=%pM previous TSC %08x%04x received TSC %08x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@lib80211_tkip_decrypt.descriptor.22 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.23, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TKIP: ICV error detected: STA=%pM\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"lib80211_crypt_tkip: TKIP: ICV error detected: STA=%pM\0A\00", [40 x i8] zeroinitializer }, align 32
@lib80211_michael_mic_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017Invalid packet for Michael MIC add (tailroom=%d hdr_len=%d skb->len=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lib80211_michael_mic_add\00", [39 x i8] zeroinitializer }, align 32
@lib80211_michael_mic_add._entry_ptr = internal global ptr @lib80211_michael_mic_add._entry, section ".printk_index", align 4
@michael_mic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.4, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014lib80211_crypt_tkip: %s(): tfm_michael == NULL\0A\00", [46 x i8] zeroinitializer }, align 32
@michael_mic._entry_ptr = internal global ptr @michael_mic._entry, section ".printk_index", align 4
@lib80211_michael_mic_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s: Michael MIC verification failed for MSDU from %pM keyidx=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lib80211_michael_mic_verify\00", [36 x i8] zeroinitializer }, align 32
@lib80211_michael_mic_verify._entry_ptr = internal global ptr @lib80211_michael_mic_verify._entry, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"key[%d] alg=TKIP key_set=%d tx_pn=%02x%02x%02x%02x%02x%02x rx_pn=%02x%02x%02x%02x%02x%02x replays=%d icv_errors=%d local_mic_failures=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"lib80211_crypt_tkip\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 708, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 709, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 103, i32 44 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 336, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [5 x i8] c"Sbox\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 172, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 391, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 402, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 408, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 413, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 423, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 454, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 548, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 481, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 600, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [38 x i8] c"../net/wireless/lib80211_crypt_tkip.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 686, i32 6 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_lib80211_crypto_tkip_exit, ptr @__initcall__kmod_lib80211_crypt_tkip__343_737_lib80211_crypto_tkip_init6, ptr @lib80211_crypto_tkip_exit, ptr @lib80211_michael_mic_add._entry, ptr @lib80211_michael_mic_add._entry_ptr, ptr @lib80211_michael_mic_verify._entry, ptr @lib80211_michael_mic_verify._entry_ptr, ptr @michael_mic._entry, ptr @michael_mic._entry_ptr, ptr @lib80211_crypt_tkip, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @Sbox, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_crypt_tkip to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Sbox to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_michael_mic_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @michael_mic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_michael_mic_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_crypto_tkip_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @lib80211_unregister_crypto_ops(ptr noundef nonnull @lib80211_crypt_tkip) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lib80211_unregister_crypto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_crypto_tkip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lib80211_register_crypto_ops(ptr noundef nonnull @lib80211_crypt_tkip) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lib80211_tkip_init(i32 noundef %key_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 2208) #16
  %cond = icmp eq ptr %call7.i.i, null
  br i1 %cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_idx1 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %call7.i.i, i32 0, i32 15
  %1 = ptrtoint ptr %key_idx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %key_idx, ptr %key_idx1, align 8
  %call2 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #13
  %tx_tfm_michael = getelementptr inbounds %struct.lib80211_tkip_data, ptr %call7.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %tx_tfm_michael, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tx_tfm_michael, align 8
  br label %if.then14

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #13
  %rx_tfm_michael = getelementptr inbounds %struct.lib80211_tkip_data, ptr %call7.i.i, i32 0, i32 18
  %4 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %rx_tfm_michael, align 4
  %cmp.i30 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.then11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_tfm_michael, align 4
  br label %if.then14

if.then14:                                        ; preds = %if.then11, %if.then5
  %6 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_tfm_michael, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %7, ptr noundef %base.i.i) #13
  %rx_tfm_michael16 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %call7.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %rx_tfm_michael16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_tfm_michael16, align 4
  %base.i.i31 = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %base.i.i31) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end7.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then14 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_tkip_deinit(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tx_tfm_michael = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_tfm_michael, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #13
  %rx_tfm_michael = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_tfm_michael, align 4
  %base.i.i4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree_sensitive(ptr noundef %priv) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_tkip_encrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #13
  %0 = getelementptr inbounds [16 x i8], ptr %rc4key, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %rc4key, i32 0, i32 2
  %flags = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 22
  %2 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_tkip_encrypt.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_tkip_encrypt, %land.lhs.true)) #13
          to label %cleanup [label %land.lhs.true], !srcloc !77

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_tkip_encrypt.descriptor, ptr noundef nonnull @.str.6, ptr noundef %addr1) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_tailroom.exit:                                ; preds = %if.end7
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 4
  br i1 %cmp, label %skb_tailroom.exit.cleanup_crit_edge, label %lor.lhs.false

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %skb_tailroom.exit
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %hdr_len)
  %cmp10 = icmp ult i32 %14, %hdr_len
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %data14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data14, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 8
  br i1 %cmp.i, label %if.end12.cleanup_crit_edge, label %if.end6.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.i:                                        ; preds = %if.end12
  %tx_phase1_done.i = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 5
  %19 = ptrtoint ptr %tx_phase1_done.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_phase1_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end6.i.if.end11.i_crit_edge

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_ttak.i = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 4
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %16, i32 0, i32 3
  %tx_iv32.i = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 2
  %21 = ptrtoint ptr %tx_iv32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_iv32.i, align 4
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %tx_ttak.i, ptr noundef %priv, ptr noundef %addr2.i, i32 noundef %22) #13
  %23 = ptrtoint ptr %tx_phase1_done.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %tx_phase1_done.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end6.i.if.end11.i_crit_edge
  %tx_ttak14.i = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 4
  %tx_iv16.i = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 3
  %24 = ptrtoint ptr %tx_iv16.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_iv16.i, align 4
  call fastcc void @tkip_mixing_phase2(ptr noundef nonnull %rc4key, ptr noundef %priv, ptr noundef %tx_ttak14.i, i16 noundef zeroext %25) #13
  %call16.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #13
  %add.ptr.i = getelementptr i8, ptr %call16.i, i32 8
  %26 = call ptr @memmove(ptr %call16.i, ptr %add.ptr.i, i32 %hdr_len)
  %add.ptr17.i = getelementptr i8, ptr %call16.i, i32 %hdr_len
  %27 = ptrtoint ptr %rc4key to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rc4key, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr17.i, i32 1
  %29 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %add.ptr17.i, align 1
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %0, align 1
  %incdec.ptr19.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %32 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %incdec.ptr.i, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %1, align 1
  %incdec.ptr21.i = getelementptr i8, ptr %incdec.ptr19.i, i32 1
  %35 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %incdec.ptr19.i, align 1
  %key_idx.i = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 15
  %36 = ptrtoint ptr %key_idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_idx.i, align 4
  %.tr.i = trunc i32 %37 to i8
  %38 = shl i8 %.tr.i, 6
  %conv.i = or i8 %38, 32
  %incdec.ptr22.i = getelementptr i8, ptr %incdec.ptr21.i, i32 1
  %39 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %incdec.ptr21.i, align 1
  %tx_iv3223.i = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 2
  %40 = ptrtoint ptr %tx_iv3223.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_iv3223.i, align 4
  %conv24.i = trunc i32 %41 to i8
  %incdec.ptr25.i = getelementptr i8, ptr %incdec.ptr22.i, i32 1
  %42 = ptrtoint ptr %incdec.ptr22.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv24.i, ptr %incdec.ptr22.i, align 1
  %43 = load i32, ptr %tx_iv3223.i, align 4
  %shr.i = lshr i32 %43, 8
  %conv28.i = trunc i32 %shr.i to i8
  %incdec.ptr29.i = getelementptr i8, ptr %incdec.ptr25.i, i32 1
  %44 = ptrtoint ptr %incdec.ptr25.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv28.i, ptr %incdec.ptr25.i, align 1
  %45 = load i32, ptr %tx_iv3223.i, align 4
  %shr31.i = lshr i32 %45, 16
  %conv33.i = trunc i32 %shr31.i to i8
  %incdec.ptr34.i = getelementptr i8, ptr %incdec.ptr29.i, i32 1
  %46 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv33.i, ptr %incdec.ptr29.i, align 1
  %47 = load i32, ptr %tx_iv3223.i, align 4
  %shr36.i = lshr i32 %47, 24
  %conv38.i = trunc i32 %shr36.i to i8
  %48 = ptrtoint ptr %incdec.ptr34.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv38.i, ptr %incdec.ptr34.i, align 1
  %49 = ptrtoint ptr %tx_iv16.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tx_iv16.i, align 4
  %inc.i = add i16 %50, 1
  store i16 %inc.i, ptr %tx_iv16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc.i)
  %cmp43.i = icmp eq i16 %inc.i, 0
  br i1 %cmp43.i, label %if.then45.i, label %if.end11.i.if.end19_crit_edge

if.end11.i.if.end19_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then45.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %tx_phase1_done.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %tx_phase1_done.i, align 4
  %52 = ptrtoint ptr %tx_iv3223.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_iv3223.i, align 4
  %inc48.i = add i32 %53, 1
  store i32 %inc48.i, ptr %tx_iv3223.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then45.i, %if.end11.i.if.end19_crit_edge
  %add.ptr = getelementptr i8, ptr %16, i32 %hdr_len
  %sub = sub i32 %14, %hdr_len
  %call20 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr, i32 noundef %sub) #17
  %neg = xor i32 %call20, -1
  %call21 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #13
  %conv = trunc i32 %neg to i8
  %54 = ptrtoint ptr %call21 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv, ptr %call21, align 1
  %shr = lshr i32 %neg, 8
  %conv22 = trunc i32 %shr to i8
  %arrayidx23 = getelementptr i8, ptr %call21, i32 1
  %55 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv22, ptr %arrayidx23, align 1
  %shr24 = lshr i32 %neg, 16
  %conv25 = trunc i32 %shr24 to i8
  %arrayidx26 = getelementptr i8, ptr %call21, i32 2
  %56 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv25, ptr %arrayidx26, align 1
  %shr27 = lshr i32 %neg, 24
  %conv28 = trunc i32 %shr27 to i8
  %arrayidx29 = getelementptr i8, ptr %call21, i32 3
  %57 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv28, ptr %arrayidx29, align 1
  %tx_ctx_arc4 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 17
  %call31 = call i32 @arc4_setkey(ptr noundef %tx_ctx_arc4, ptr noundef nonnull %rc4key, i32 noundef 16) #13
  %add = add i32 %sub, 4
  call void @arc4_crypt(ptr noundef %tx_ctx_arc4, ptr noundef %add.ptr, ptr noundef %add.ptr, i32 noundef %add) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %skb_tailroom.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -1, %if.then6 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %skb_tailroom.exit.cleanup_crit_edge ], [ -1, %if.then ], [ -1, %if.end12.cleanup_crit_edge ], [ -1, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_tkip_decrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  %icv = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #13
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icv) #13
  %1 = getelementptr inbounds [4 x i8], ptr %icv, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %icv, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %icv, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 22
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_tkip_decrypt.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_tkip_decrypt, %land.lhs.true)) #13
          to label %cleanup [label %land.lhs.true], !srcloc !77

land.lhs.true:                                    ; preds = %do.body
  %call4 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_tkip_decrypt.descriptor, ptr noundef nonnull @.str.9, ptr noundef %addr2) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %add8 = add i32 %hdr_len, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add8)
  %cmp = icmp ult i32 %9, %add8
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %5, i32 %hdr_len
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %do.body15, label %if.end36

do.body15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_tkip_decrypt.descriptor.10, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_tkip_decrypt, %land.lhs.true27)) #13
          to label %cleanup [label %land.lhs.true27], !srcloc !77

land.lhs.true27:                                  ; preds = %do.body15
  %call28 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.cleanup_crit_edge, label %if.then30

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  %addr231 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_tkip_decrypt.descriptor.10, ptr noundef nonnull @.str.12, ptr noundef %addr231) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end10
  %13 = lshr i8 %11, 6
  %key_idx = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 15
  %14 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_idx, align 4
  %conv39 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv39)
  %cmp40.not = icmp eq i32 %15, %conv39
  br i1 %cmp40.not, label %if.end64, label %do.body43

do.body43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_tkip_decrypt.descriptor.13, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_tkip_decrypt, %land.lhs.true55)) #13
          to label %cleanup [label %land.lhs.true55], !srcloc !77

land.lhs.true55:                                  ; preds = %do.body43
  %call56 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.cleanup_crit_edge, label %if.then58

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then58:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_tkip_decrypt.descriptor.13, ptr noundef nonnull @.str.15, i32 noundef %17, i32 noundef %conv39) #13
  br label %cleanup

if.end64:                                         ; preds = %if.end36
  %key_set = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool65.not = icmp eq i32 %19, 0
  br i1 %tobool65.not, label %do.body67, label %if.end89

do.body67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_tkip_decrypt.descriptor.16, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_tkip_decrypt, %land.lhs.true79)) #13
          to label %cleanup [label %land.lhs.true79], !srcloc !77

land.lhs.true79:                                  ; preds = %do.body67
  %call80 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true79.cleanup_crit_edge, label %if.then82

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #15
  %addr283 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_tkip_decrypt.descriptor.16, ptr noundef nonnull @.str.18, ptr noundef %addr283, i32 noundef %15) #13
  br label %cleanup

if.end89:                                         ; preds = %if.end64
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr, align 1
  %conv91 = zext i8 %21 to i16
  %shl = shl nuw i16 %conv91, 8
  %arrayidx92 = getelementptr i8, ptr %add.ptr, i32 2
  %22 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %23 to i16
  %or = or i16 %shl, %conv93
  %arrayidx95 = getelementptr i8, ptr %add.ptr, i32 4
  %24 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %25 to i32
  %arrayidx97 = getelementptr i8, ptr %add.ptr, i32 5
  %26 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %27 to i32
  %shl99 = shl nuw nsw i32 %conv98, 8
  %or100 = or i32 %shl99, %conv96
  %arrayidx101 = getelementptr i8, ptr %add.ptr, i32 6
  %28 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %29 to i32
  %shl103 = shl nuw nsw i32 %conv102, 16
  %or104 = or i32 %or100, %shl103
  %arrayidx105 = getelementptr i8, ptr %add.ptr, i32 7
  %30 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %31 to i32
  %shl107 = shl nuw i32 %conv106, 24
  %or108 = or i32 %or104, %shl107
  %add.ptr109 = getelementptr i8, ptr %add.ptr, i32 8
  %rx_iv32 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 6
  %32 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_iv32, align 4
  %rx_iv16 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 7
  %34 = ptrtoint ptr %rx_iv16 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_iv16, align 4
  %sub.i = sub i32 %or108, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %or108, i32 %33)
  %cmp1.i = icmp eq i32 %or108, %33
  call void @__sanitizer_cov_trace_cmp2(i16 %or, i16 %35)
  %cmp3.not.i = icmp ule i16 %or, %35
  %not.or.cond.i = and i1 %cmp3.not.i, %cmp1.i
  %narrow.i = or i1 %cmp.i, %not.or.cond.i
  br i1 %narrow.i, label %do.body113, label %if.end138

do.body113:                                       ; preds = %if.end89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_tkip_decrypt.descriptor.19, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_tkip_decrypt, %land.lhs.true125)) #13
          to label %do.end137 [label %land.lhs.true125], !srcloc !77

land.lhs.true125:                                 ; preds = %do.body113
  %call126 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %land.lhs.true125.do.end137_crit_edge, label %if.then128

land.lhs.true125.do.end137_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end137

if.then128:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #15
  %addr2129 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  %36 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_iv32, align 4
  %38 = ptrtoint ptr %rx_iv16 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rx_iv16, align 4
  %conv133 = zext i16 %39 to i32
  %conv134 = zext i16 %or to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_tkip_decrypt.descriptor.19, ptr noundef nonnull @.str.21, ptr noundef %addr2129, i32 noundef %37, i32 noundef %conv133, i32 noundef %or108, i32 noundef %conv134) #13
  br label %do.end137

do.end137:                                        ; preds = %if.then128, %land.lhs.true125.do.end137_crit_edge, %do.body113
  %dot11RSNAStatsTKIPReplays = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 12
  %40 = ptrtoint ptr %dot11RSNAStatsTKIPReplays to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dot11RSNAStatsTKIPReplays, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %dot11RSNAStatsTKIPReplays, align 4
  br label %cleanup

if.end138:                                        ; preds = %if.end89
  br i1 %cmp1.i, label %lor.lhs.false, label %if.end138.if.then143_crit_edge

if.end138.if.then143_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then143

lor.lhs.false:                                    ; preds = %if.end138
  %rx_phase1_done = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 9
  %42 = ptrtoint ptr %rx_phase1_done to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_phase1_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool142.not = icmp eq i32 %43, 0
  br i1 %tobool142.not, label %lor.lhs.false.if.then143_crit_edge, label %lor.lhs.false.if.end149_crit_edge

lor.lhs.false.if.end149_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end149

lor.lhs.false.if.then143_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then143

if.then143:                                       ; preds = %lor.lhs.false.if.then143_crit_edge, %if.end138.if.then143_crit_edge
  %rx_ttak = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 8
  %addr2146 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %rx_ttak, ptr noundef %priv, ptr noundef %addr2146, i32 noundef %or108)
  %rx_phase1_done148 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 9
  %44 = ptrtoint ptr %rx_phase1_done148 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %rx_phase1_done148, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then143, %lor.lhs.false.if.end149_crit_edge
  %rx_ttak153 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 8
  call fastcc void @tkip_mixing_phase2(ptr noundef nonnull %rc4key, ptr noundef %priv, ptr noundef %rx_ttak153, i16 noundef zeroext %or)
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %sub = sub i32 %46, %hdr_len
  %sub156 = add i32 %sub, -12
  %rx_ctx_arc4 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 16
  %call158 = call i32 @arc4_setkey(ptr noundef %rx_ctx_arc4, ptr noundef nonnull %rc4key, i32 noundef 16) #13
  %add160 = add i32 %sub, -8
  call void @arc4_crypt(ptr noundef %rx_ctx_arc4, ptr noundef %add.ptr109, ptr noundef %add.ptr109, i32 noundef %add160) #13
  %call161 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr109, i32 noundef %sub156) #17
  %neg = xor i32 %call161, -1
  %conv162 = trunc i32 %neg to i8
  %47 = ptrtoint ptr %icv to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv162, ptr %icv, align 1
  %shr164 = lshr i32 %neg, 8
  %conv165 = trunc i32 %shr164 to i8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv165, ptr %1, align 1
  %shr167 = lshr i32 %neg, 16
  %conv168 = trunc i32 %shr167 to i8
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv168, ptr %2, align 1
  %shr170 = lshr i32 %neg, 24
  %conv171 = trunc i32 %shr170 to i8
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv171, ptr %3, align 1
  %add.ptr174 = getelementptr i8, ptr %add.ptr109, i32 %sub156
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %icv, ptr noundef dereferenceable(4) %add.ptr174, i32 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp176.not = icmp eq i32 %bcmp, 0
  br i1 %cmp176.not, label %if.end207, label %if.then178

if.then178:                                       ; preds = %if.end149
  %51 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_iv32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or108, i32 %52)
  %cmp180.not = icmp eq i32 %or108, %52
  br i1 %cmp180.not, label %if.then178.do.body185_crit_edge, label %if.then182

if.then178.do.body185_crit_edge:                  ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body185

if.then182:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #15
  %rx_phase1_done183 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 9
  %53 = ptrtoint ptr %rx_phase1_done183 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %rx_phase1_done183, align 4
  br label %do.body185

do.body185:                                       ; preds = %if.then182, %if.then178.do.body185_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lib80211_tkip_decrypt.descriptor.22, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lib80211_tkip_decrypt, %land.lhs.true197)) #13
          to label %do.end205 [label %land.lhs.true197], !srcloc !77

land.lhs.true197:                                 ; preds = %do.body185
  %call198 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %land.lhs.true197.do.end205_crit_edge, label %if.then200

land.lhs.true197.do.end205_crit_edge:             ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end205

if.then200:                                       ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #15
  %addr2201 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lib80211_tkip_decrypt.descriptor.22, ptr noundef nonnull @.str.24, ptr noundef %addr2201) #13
  br label %do.end205

do.end205:                                        ; preds = %if.then200, %land.lhs.true197.do.end205_crit_edge, %do.body185
  %dot11RSNAStatsTKIPICVErrors = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 13
  %54 = ptrtoint ptr %dot11RSNAStatsTKIPICVErrors to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dot11RSNAStatsTKIPICVErrors, align 4
  %inc206 = add i32 %55, 1
  store i32 %inc206, ptr %dot11RSNAStatsTKIPICVErrors, align 4
  br label %cleanup

if.end207:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #15
  %rx_iv32_new = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 10
  %56 = ptrtoint ptr %rx_iv32_new to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or108, ptr %rx_iv32_new, align 4
  %rx_iv16_new = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 11
  %57 = ptrtoint ptr %rx_iv16_new to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %or, ptr %rx_iv16_new, align 4
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %add.ptr209 = getelementptr i8, ptr %59, i32 8
  %60 = call ptr @memmove(ptr %add.ptr209, ptr %59, i32 %hdr_len)
  %call211 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #13
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %sub213 = add i32 %62, -4
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub213) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end207, %do.end205, %do.end137, %if.then82, %land.lhs.true79.cleanup_crit_edge, %do.body67, %if.then58, %land.lhs.true55.cleanup_crit_edge, %do.body43, %if.then30, %land.lhs.true27.cleanup_crit_edge, %do.body15, %if.end7.cleanup_crit_edge, %if.then6, %land.lhs.true.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -4, %do.end137 ], [ -5, %do.end205 ], [ %15, %if.end207 ], [ -1, %if.then6 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end7.cleanup_crit_edge ], [ -2, %if.then30 ], [ -2, %land.lhs.true27.cleanup_crit_edge ], [ -6, %if.then58 ], [ -6, %land.lhs.true55.cleanup_crit_edge ], [ -3, %if.then82 ], [ -3, %land.lhs.true79.cleanup_crit_edge ], [ -1, %do.body ], [ -2, %do.body15 ], [ -6, %do.body43 ], [ -3, %do.body67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icv) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_michael_mic_add(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %entry.skb_tailroom.exit36_crit_edge

entry.skb_tailroom.exit36_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tailroom.exit36

skb_tailroom.exit:                                ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 8
  br i1 %cmp, label %skb_tailroom.exit.cond.false.i34_crit_edge, label %lor.lhs.false

skb_tailroom.exit.cond.false.i34_crit_edge:       ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i34

lor.lhs.false:                                    ; preds = %skb_tailroom.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %hdr_len)
  %cmp1 = icmp ult i32 %7, %hdr_len
  br i1 %cmp1, label %lor.lhs.false.cond.false.i34_crit_edge, label %if.end

lor.lhs.false.cond.false.i34_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i34

cond.false.i34:                                   ; preds = %lor.lhs.false.cond.false.i34_crit_edge, %skb_tailroom.exit.cond.false.i34_crit_edge
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i31 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i32 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i33 = sub i32 %sub.ptr.lhs.cast.i31, %sub.ptr.rhs.cast.i32
  br label %skb_tailroom.exit36

skb_tailroom.exit36:                              ; preds = %cond.false.i34, %entry.skb_tailroom.exit36_crit_edge
  %cond.i35 = phi i32 [ %sub.ptr.sub.i33, %cond.false.i34 ], [ 0, %entry.skb_tailroom.exit36_crit_edge ]
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len3, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %cond.i35, i32 noundef %hdr_len, i32 noundef %13) #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tx_hdr = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 21
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %18 = shl i16 %17, 8
  %19 = and i16 %18, 768
  %and.i = zext i16 %19 to i32
  %20 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.default.i [
    i32 256, label %sw.bb.i
    i32 512, label %sw.bb2.i
    i32 768, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 4
  %21 = call ptr @memcpy(ptr %tx_hdr, ptr %addr3.i, i32 6)
  %add.ptr.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 21, i32 6
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %add.ptr.i, ptr %addr2.i, i32 6)
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 2
  %23 = call ptr @memcpy(ptr %tx_hdr, ptr %addr1.i, i32 6)
  %add.ptr4.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 21, i32 6
  %addr35.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 4
  %24 = call ptr @memcpy(ptr %add.ptr4.i, ptr %addr35.i, i32 6)
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %addr38.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %tx_hdr, ptr %addr38.i, i32 6)
  %add.ptr10.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 21, i32 6
  %addr4.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 6
  %26 = call ptr @memcpy(ptr %add.ptr10.i, ptr %addr4.i, i32 6)
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %addr112.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %tx_hdr, ptr %addr112.i, i32 6)
  %add.ptr14.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 21, i32 6
  %addr215.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 3
  %28 = call ptr @memcpy(ptr %add.ptr14.i, ptr %addr215.i, i32 6)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %15, align 2
  %31 = and i16 %30, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %31)
  %cmp.i.i = icmp eq i16 %31, -30720
  br i1 %cmp.i.i, label %if.then.i, label %sw.epilog.i.michael_mic_hdr.exit_crit_edge

sw.epilog.i.michael_mic_hdr.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %michael_mic_hdr.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = and i16 %30, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %32)
  %cmp.i.i.i = icmp eq i16 %32, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %15, i32 %retval.0.v.i.i
  %33 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %retval.0.i.i, align 2
  %35 = lshr i16 %34, 8
  %36 = trunc i16 %35 to i8
  %conv21.i = and i8 %36, 15
  br label %michael_mic_hdr.exit

michael_mic_hdr.exit:                             ; preds = %if.then.i, %sw.epilog.i.michael_mic_hdr.exit_crit_edge
  %.sink.i = phi i8 [ %conv21.i, %if.then.i ], [ 0, %sw.epilog.i.michael_mic_hdr.exit_crit_edge ]
  %37 = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 21, i32 12
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink.i, ptr %37, align 1
  %arrayidx23.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 21, i32 15
  %39 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 21, i32 14
  %40 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx24.i, align 1
  %arrayidx25.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 21, i32 13
  %41 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx25.i, align 1
  %call5 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 8) #13
  %tx_tfm_michael = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 19
  %42 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_tfm_michael, align 4
  %arrayidx = getelementptr [32 x i8], ptr %priv, i32 0, i32 16
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 %hdr_len
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %sub = sub i32 -8, %hdr_len
  %sub9 = add i32 %sub, %47
  %call10 = tail call fastcc i32 @michael_mic(ptr noundef %43, ptr noundef %arrayidx, ptr noundef %tx_hdr, ptr noundef %add.ptr, i32 noundef %sub9, ptr noundef %call5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp ne i32 %call10, 0
  %. = sext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %michael_mic_hdr.exit, %skb_tailroom.exit36
  %retval.0 = phi i32 [ -1, %skb_tailroom.exit36 ], [ %., %michael_mic_hdr.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_michael_mic_verify(ptr noundef %skb, i32 noundef %keyidx, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %mic = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #13
  %key_set = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %mic to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %mic, align 8
  %1 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_hdr = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %7 = shl i16 %6, 8
  %8 = and i16 %7, 768
  %and.i = zext i16 %8 to i32
  %9 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %and.i, label %sw.default.i [
    i32 256, label %sw.bb.i
    i32 512, label %sw.bb2.i
    i32 768, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %rx_hdr, ptr %addr3.i, i32 6)
  %add.ptr.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 20, i32 6
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %add.ptr.i, ptr %addr2.i, i32 6)
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %rx_hdr, ptr %addr1.i, i32 6)
  %add.ptr4.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 20, i32 6
  %addr35.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 4
  %13 = call ptr @memcpy(ptr %add.ptr4.i, ptr %addr35.i, i32 6)
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %addr38.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %rx_hdr, ptr %addr38.i, i32 6)
  %add.ptr10.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 20, i32 6
  %addr4.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %add.ptr10.i, ptr %addr4.i, i32 6)
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %addr112.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %rx_hdr, ptr %addr112.i, i32 6)
  %add.ptr14.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 20, i32 6
  %addr215.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %add.ptr14.i, ptr %addr215.i, i32 6)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %4, align 2
  %20 = and i16 %19, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %20)
  %cmp.i.i = icmp eq i16 %20, -30720
  br i1 %cmp.i.i, label %if.then.i, label %sw.epilog.i.michael_mic_hdr.exit_crit_edge

sw.epilog.i.michael_mic_hdr.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %michael_mic_hdr.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = and i16 %19, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp.i.i.i = icmp eq i16 %21, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %4, i32 %retval.0.v.i.i
  %22 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %retval.0.i.i, align 2
  %24 = lshr i16 %23, 8
  %25 = trunc i16 %24 to i8
  %conv21.i = and i8 %25, 15
  br label %michael_mic_hdr.exit

michael_mic_hdr.exit:                             ; preds = %if.then.i, %sw.epilog.i.michael_mic_hdr.exit_crit_edge
  %.sink.i = phi i8 [ %conv21.i, %if.then.i ], [ 0, %sw.epilog.i.michael_mic_hdr.exit_crit_edge ]
  %26 = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 20, i32 12
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink.i, ptr %26, align 1
  %arrayidx23.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 20, i32 15
  %28 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 20, i32 14
  %29 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx24.i, align 1
  %arrayidx25.i = getelementptr %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 20, i32 13
  %30 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx25.i, align 1
  %rx_tfm_michael = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 18
  %31 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_tfm_michael, align 4
  %arrayidx = getelementptr [32 x i8], ptr %priv, i32 0, i32 24
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 %hdr_len
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %sub = sub i32 -8, %hdr_len
  %sub3 = add i32 %sub, %36
  %call = call fastcc i32 @michael_mic(ptr noundef %32, ptr noundef %arrayidx, ptr noundef %rx_hdr, ptr noundef %add.ptr, i32 noundef %sub3, ptr noundef nonnull %mic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %michael_mic_hdr.exit.cleanup_crit_edge

michael_mic_hdr.exit.cleanup_crit_edge:           ; preds = %michael_mic_hdr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %michael_mic_hdr.exit
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %add.ptr11 = getelementptr i8, ptr %38, i32 %40
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 -8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %mic, ptr noundef dereferenceable(8) %add.ptr12, i32 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end23, label %if.then14

if.then14:                                        ; preds = %if.end7
  %41 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %tobool16.not = icmp eq ptr %43, null
  %spec.select = select i1 %tobool16.not, ptr @.str.30, ptr %43
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %38, i32 0, i32 3
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull %spec.select, ptr noundef %addr2, i32 noundef %keyidx) #19
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 8
  %tobool20.not = icmp eq ptr %45, null
  br i1 %tobool20.not, label %if.then14.if.end22_crit_edge, label %if.then21

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then21:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @lib80211_michael_mic_failure(ptr noundef nonnull %45, ptr noundef %38, i32 noundef %keyidx)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then14.if.end22_crit_edge
  %dot11RSNAStatsTKIPLocalMICFailures = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 14
  %46 = ptrtoint ptr %dot11RSNAStatsTKIPLocalMICFailures to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dot11RSNAStatsTKIPLocalMICFailures, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %dot11RSNAStatsTKIPLocalMICFailures, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %rx_iv32_new = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 10
  %48 = ptrtoint ptr %rx_iv32_new to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_iv32_new, align 4
  %rx_iv32 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 6
  %50 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %rx_iv32, align 4
  %rx_iv16_new = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 11
  %51 = ptrtoint ptr %rx_iv16_new to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %rx_iv16_new, align 4
  %rx_iv16 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 7
  %53 = ptrtoint ptr %rx_iv16 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %rx_iv16, align 4
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  %sub25 = add i32 %55, -8
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub25) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end22, %michael_mic_hdr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end22 ], [ 0, %if.end23 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %michael_mic_hdr.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lib80211_tkip_set_key(ptr nocapture noundef readonly %key, i32 noundef %len, ptr noundef readonly %seq, ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_tfm_michael = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_tfm_michael, align 4
  %rx_tfm_michael = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_tfm_michael, align 4
  %key_idx = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 15
  %4 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_idx, align 4
  %6 = call ptr @memset(ptr %priv, i32 0, i32 2208)
  store i32 %5, ptr %key_idx, align 4
  store ptr %1, ptr %tx_tfm_michael, align 4
  store ptr %3, ptr %rx_tfm_michael, align 4
  %7 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %len, label %entry.cleanup_crit_edge [
    i32 32, label %if.then
    i32 0, label %if.then27
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %8 = call ptr @memcpy(ptr %priv, ptr %key, i32 32)
  %key_set = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %key_set to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %key_set, align 4
  %tx_iv16 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %tx_iv16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %tx_iv16, align 4
  %tobool.not = icmp eq ptr %seq, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr i8, ptr %seq, i32 5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx8 = getelementptr i8, ptr %seq, i32 4
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %14 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or = or i32 %shl10, %shl
  %arrayidx11 = getelementptr i8, ptr %seq, i32 3
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %16 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or, %shl13
  %arrayidx15 = getelementptr i8, ptr %seq, i32 2
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %18 to i32
  %or17 = or i32 %or14, %conv16
  %rx_iv32 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 6
  %19 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or17, ptr %rx_iv32, align 4
  %arrayidx18 = getelementptr i8, ptr %seq, i32 1
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %21 to i16
  %shl20 = shl nuw i16 %conv19, 8
  %22 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %seq, align 1
  %conv22 = zext i8 %23 to i16
  %or23 = or i16 %shl20, %conv22
  %rx_iv16 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 7
  %24 = ptrtoint ptr %rx_iv16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or23, ptr %rx_iv16, align 4
  br label %cleanup

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.then7, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.then27 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lib80211_tkip_get_key(ptr nocapture noundef writeonly %key, i32 noundef %len, ptr noundef writeonly %seq, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp = icmp slt i32 %len, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_set = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = call ptr @memcpy(ptr %key, ptr %priv, i32 32)
  %tobool4.not = icmp eq ptr %seq, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %tx_iv16 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %tx_iv16 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx_iv16, align 4
  %tx_iv32 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 2
  %conv12 = trunc i16 %4 to i8
  %5 = ptrtoint ptr %seq to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %seq, align 1
  %6 = load i16, ptr %tx_iv16, align 4
  %7 = lshr i16 %6, 8
  %conv15 = trunc i16 %7 to i8
  %arrayidx16 = getelementptr i8, ptr %seq, i32 1
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15, ptr %arrayidx16, align 1
  %9 = ptrtoint ptr %tx_iv32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_iv32, align 4
  %conv18 = trunc i32 %10 to i8
  %arrayidx19 = getelementptr i8, ptr %seq, i32 2
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18, ptr %arrayidx19, align 1
  %12 = load i32, ptr %tx_iv32, align 4
  %shr21 = lshr i32 %12, 8
  %conv22 = trunc i32 %shr21 to i8
  %arrayidx23 = getelementptr i8, ptr %seq, i32 3
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv22, ptr %arrayidx23, align 1
  %14 = load i32, ptr %tx_iv32, align 4
  %shr25 = lshr i32 %14, 16
  %conv26 = trunc i32 %shr25 to i8
  %arrayidx27 = getelementptr i8, ptr %seq, i32 4
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv26, ptr %arrayidx27, align 1
  %16 = load i32, ptr %tx_iv32, align 4
  %shr29 = lshr i32 %16, 24
  %conv30 = trunc i32 %shr29 to i8
  %arrayidx31 = getelementptr i8, ptr %seq, i32 5
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv30, ptr %arrayidx31, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 32, %if.then5 ], [ 32, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_tkip_print_stats(ptr noundef %m, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key_idx = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_idx, align 4
  %key_set = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_set, align 4
  %tx_iv32 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %tx_iv32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_iv32, align 4
  %shr = lshr i32 %5, 24
  %shr2 = lshr i32 %5, 16
  %and3 = and i32 %shr2, 255
  %shr5 = lshr i32 %5, 8
  %and6 = and i32 %shr5, 255
  %and8 = and i32 %5, 255
  %tx_iv16 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %tx_iv16 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_iv16, align 4
  %conv = zext i16 %7 to i32
  %8 = lshr i32 %conv, 8
  %and13 = and i32 %conv, 255
  %rx_iv32 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 6
  %9 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_iv32, align 4
  %shr14 = lshr i32 %10, 24
  %shr17 = lshr i32 %10, 16
  %and18 = and i32 %shr17, 255
  %shr20 = lshr i32 %10, 8
  %and21 = and i32 %shr20, 255
  %and23 = and i32 %10, 255
  %rx_iv16 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 7
  %11 = ptrtoint ptr %rx_iv16 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rx_iv16, align 4
  %conv24 = zext i16 %12 to i32
  %13 = lshr i32 %conv24, 8
  %and29 = and i32 %conv24, 255
  %dot11RSNAStatsTKIPReplays = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 12
  %14 = ptrtoint ptr %dot11RSNAStatsTKIPReplays to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dot11RSNAStatsTKIPReplays, align 4
  %dot11RSNAStatsTKIPICVErrors = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 13
  %16 = ptrtoint ptr %dot11RSNAStatsTKIPICVErrors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dot11RSNAStatsTKIPICVErrors, align 4
  %dot11RSNAStatsTKIPLocalMICFailures = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 14
  %18 = ptrtoint ptr %dot11RSNAStatsTKIPLocalMICFailures to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dot11RSNAStatsTKIPLocalMICFailures, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %1, i32 noundef %3, i32 noundef %shr, i32 noundef %and3, i32 noundef %and6, i32 noundef %and8, i32 noundef %8, i32 noundef %and13, i32 noundef %shr14, i32 noundef %and18, i32 noundef %and21, i32 noundef %and23, i32 noundef %13, i32 noundef %and29, i32 noundef %15, i32 noundef %17, i32 noundef %19) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lib80211_tkip_get_flags(ptr nocapture noundef readonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lib80211_tkip_set_flags(i32 noundef %flags, ptr nocapture noundef %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.lib80211_tkip_data, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  store i32 %flags, ptr %flags1, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tkip_mixing_phase1(ptr nocapture noundef %TTAK, ptr nocapture noundef readonly %TK, ptr nocapture noundef readonly %TA, i32 noundef %IV32) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = trunc i32 %IV32 to i16
  %0 = ptrtoint ptr %TTAK to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv.i, ptr %TTAK, align 2
  %shr.i = lshr i32 %IV32, 16
  %conv.i139 = trunc i32 %shr.i to i16
  %arrayidx2 = getelementptr i16, ptr %TTAK, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv.i139, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr i8, ptr %TA, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %4 = ptrtoint ptr %TA to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %TA, align 1
  %conv.i140 = zext i8 %5 to i16
  %conv2.i = zext i8 %3 to i16
  %shl.i = shl nuw i16 %conv2.i, 8
  %or.i = or i16 %shl.i, %conv.i140
  %arrayidx6 = getelementptr i16, ptr %TTAK, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %or.i, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr i8, ptr %TA, i32 3
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %TA, i32 2
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %conv.i141 = zext i8 %10 to i16
  %conv2.i142 = zext i8 %8 to i16
  %shl.i143 = shl nuw i16 %conv2.i142, 8
  %or.i144 = or i16 %shl.i143, %conv.i141
  %arrayidx10 = getelementptr i16, ptr %TTAK, i32 3
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %or.i144, ptr %arrayidx10, align 2
  %arrayidx11 = getelementptr i8, ptr %TA, i32 5
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr i8, ptr %TA, i32 4
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %conv.i145 = zext i8 %15 to i16
  %conv2.i146 = zext i8 %13 to i16
  %shl.i147 = shl nuw i16 %conv2.i146, 8
  %or.i148 = or i16 %shl.i147, %conv.i145
  %arrayidx14 = getelementptr i16, ptr %TTAK, i32 4
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %or.i148, ptr %arrayidx14, align 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0194 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %and = shl nuw i32 %i.0194, 1
  %mul = and i32 %and, 2
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx14, align 2
  %add = or i32 %mul, 1
  %arrayidx16 = getelementptr i8, ptr %TK, i32 %add
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr i8, ptr %TK, i32 %mul
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18, align 1
  %conv.i149 = zext i8 %22 to i16
  %conv2.i150 = zext i8 %20 to i16
  %shl.i151 = shl nuw i16 %conv2.i150, 8
  %or.i152 = or i16 %shl.i151, %conv.i149
  %xor134 = xor i16 %or.i152, %18
  %23 = lshr i16 %xor134, 8
  %conv1.i.i = zext i16 %23 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i, align 2
  %26 = and i16 %xor134, 255
  %idxprom2.i = zext i16 %26 to i32
  %arrayidx3.i = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx3.i, align 2
  %or.i153 = tail call i16 @llvm.bswap.i16(i16 %25) #13
  %xor.i = xor i16 %or.i153, %28
  %29 = ptrtoint ptr %TTAK to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %TTAK, align 2
  %add26 = add i16 %30, %xor.i
  store i16 %add26, ptr %TTAK, align 2
  %add30 = or i32 %mul, 5
  %arrayidx31 = getelementptr i8, ptr %TK, i32 %add30
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx31, align 1
  %add32 = or i32 %mul, 4
  %arrayidx33 = getelementptr i8, ptr %TK, i32 %add32
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx33, align 1
  %conv.i154 = zext i8 %34 to i16
  %conv2.i155 = zext i8 %32 to i16
  %shl.i156 = shl nuw i16 %conv2.i155, 8
  %or.i157 = or i16 %shl.i156, %conv.i154
  %xor36135 = xor i16 %or.i157, %add26
  %35 = lshr i16 %xor36135, 8
  %conv1.i.i158 = zext i16 %35 to i32
  %arrayidx.i159 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i158
  %36 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i159, align 2
  %38 = and i16 %xor36135, 255
  %idxprom2.i160 = zext i16 %38 to i32
  %arrayidx3.i161 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i160
  %39 = ptrtoint ptr %arrayidx3.i161 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx3.i161, align 2
  %or.i162 = tail call i16 @llvm.bswap.i16(i16 %37) #13
  %xor.i163 = xor i16 %or.i162, %40
  %41 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx2, align 2
  %add42 = add i16 %42, %xor.i163
  store i16 %add42, ptr %arrayidx2, align 2
  %add46 = or i32 %mul, 9
  %arrayidx47 = getelementptr i8, ptr %TK, i32 %add46
  %43 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx47, align 1
  %add48 = or i32 %mul, 8
  %arrayidx49 = getelementptr i8, ptr %TK, i32 %add48
  %45 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx49, align 1
  %conv.i164 = zext i8 %46 to i16
  %conv2.i165 = zext i8 %44 to i16
  %shl.i166 = shl nuw i16 %conv2.i165, 8
  %or.i167 = or i16 %shl.i166, %conv.i164
  %xor52136 = xor i16 %or.i167, %add42
  %47 = lshr i16 %xor52136, 8
  %conv1.i.i168 = zext i16 %47 to i32
  %arrayidx.i169 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i168
  %48 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i169, align 2
  %50 = and i16 %xor52136, 255
  %idxprom2.i170 = zext i16 %50 to i32
  %arrayidx3.i171 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i170
  %51 = ptrtoint ptr %arrayidx3.i171 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx3.i171, align 2
  %or.i172 = tail call i16 @llvm.bswap.i16(i16 %49) #13
  %xor.i173 = xor i16 %or.i172, %52
  %53 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx6, align 2
  %add58 = add i16 %54, %xor.i173
  store i16 %add58, ptr %arrayidx6, align 2
  %add62 = or i32 %mul, 13
  %arrayidx63 = getelementptr i8, ptr %TK, i32 %add62
  %55 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx63, align 1
  %add64 = or i32 %mul, 12
  %arrayidx65 = getelementptr i8, ptr %TK, i32 %add64
  %57 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx65, align 1
  %conv.i174 = zext i8 %58 to i16
  %conv2.i175 = zext i8 %56 to i16
  %shl.i176 = shl nuw i16 %conv2.i175, 8
  %or.i177 = or i16 %shl.i176, %conv.i174
  %xor68137 = xor i16 %or.i177, %add58
  %59 = lshr i16 %xor68137, 8
  %conv1.i.i178 = zext i16 %59 to i32
  %arrayidx.i179 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i178
  %60 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i179, align 2
  %62 = and i16 %xor68137, 255
  %idxprom2.i180 = zext i16 %62 to i32
  %arrayidx3.i181 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i180
  %63 = ptrtoint ptr %arrayidx3.i181 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx3.i181, align 2
  %or.i182 = tail call i16 @llvm.bswap.i16(i16 %61) #13
  %xor.i183 = xor i16 %or.i182, %64
  %65 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx10, align 2
  %add74 = add i16 %66, %xor.i183
  store i16 %add74, ptr %arrayidx10, align 2
  %67 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx16, align 1
  %69 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx18, align 1
  %conv.i184 = zext i8 %70 to i16
  %conv2.i185 = zext i8 %68 to i16
  %shl.i186 = shl nuw i16 %conv2.i185, 8
  %or.i187 = or i16 %shl.i186, %conv.i184
  %xor84138 = xor i16 %or.i187, %add74
  %71 = lshr i16 %xor84138, 8
  %conv1.i.i188 = zext i16 %71 to i32
  %arrayidx.i189 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i188
  %72 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i189, align 2
  %74 = and i16 %xor84138, 255
  %idxprom2.i190 = zext i16 %74 to i32
  %arrayidx3.i191 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i190
  %75 = ptrtoint ptr %arrayidx3.i191 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx3.i191, align 2
  %or.i192 = tail call i16 @llvm.bswap.i16(i16 %73) #13
  %xor.i193 = xor i16 %or.i192, %76
  %77 = trunc i32 %i.0194 to i16
  %78 = add i16 %18, %77
  %conv92 = add i16 %78, %xor.i193
  %79 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv92, ptr %arrayidx14, align 2
  %inc = add nuw nsw i32 %i.0194, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tkip_mixing_phase2(ptr nocapture noundef %WEPSeed, ptr nocapture noundef readonly %TK, ptr nocapture noundef readonly %TTAK, i16 noundef zeroext %IV16) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %WEPSeed, i32 4
  %0 = ptrtoint ptr %TTAK to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %TTAK, align 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %arrayidx, align 2
  %arrayidx3 = getelementptr i16, ptr %TTAK, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx3, align 2
  %arrayidx4 = getelementptr i8, ptr %WEPSeed, i32 6
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx4, align 2
  %arrayidx5 = getelementptr i16, ptr %TTAK, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr i8, ptr %WEPSeed, i32 8
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr i16, ptr %TTAK, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx7, align 2
  %arrayidx8 = getelementptr i8, ptr %WEPSeed, i32 10
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx8, align 2
  %arrayidx9 = getelementptr i16, ptr %TTAK, i32 4
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr i8, ptr %WEPSeed, i32 12
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx10, align 2
  %15 = load i16, ptr %arrayidx9, align 2
  %add = add i16 %15, %IV16
  %arrayidx14 = getelementptr i8, ptr %WEPSeed, i32 14
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %add, ptr %arrayidx14, align 2
  %17 = ptrtoint ptr %TK to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %TK, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #13
  %xor228 = xor i16 %19, %add
  %20 = lshr i16 %xor228, 8
  %conv1.i.i = zext i16 %20 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 2
  %23 = and i16 %xor228, 255
  %idxprom2.i = zext i16 %23 to i32
  %arrayidx3.i = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx3.i, align 2
  %or.i = tail call i16 @llvm.bswap.i16(i16 %22) #13
  %xor.i = xor i16 %or.i, %25
  %add24 = add i16 %xor.i, %1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %add24, ptr %arrayidx, align 2
  %arrayidx28 = getelementptr i8, ptr %TK, i32 2
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx28, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #13
  %xor31229 = xor i16 %29, %add24
  %30 = lshr i16 %xor31229, 8
  %conv1.i.i237 = zext i16 %30 to i32
  %arrayidx.i238 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i237
  %31 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i238, align 2
  %33 = and i16 %xor31229, 255
  %idxprom2.i239 = zext i16 %33 to i32
  %arrayidx3.i240 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i239
  %34 = ptrtoint ptr %arrayidx3.i240 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx3.i240, align 2
  %or.i241 = tail call i16 @llvm.bswap.i16(i16 %32) #13
  %xor.i242 = xor i16 %or.i241, %35
  %add37 = add i16 %xor.i242, %4
  %36 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %add37, ptr %arrayidx4, align 2
  %arrayidx41 = getelementptr i8, ptr %TK, i32 4
  %37 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx41, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #13
  %xor44230 = xor i16 %39, %add37
  %40 = lshr i16 %xor44230, 8
  %conv1.i.i243 = zext i16 %40 to i32
  %arrayidx.i244 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i243
  %41 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i244, align 2
  %43 = and i16 %xor44230, 255
  %idxprom2.i245 = zext i16 %43 to i32
  %arrayidx3.i246 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i245
  %44 = ptrtoint ptr %arrayidx3.i246 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx3.i246, align 2
  %or.i247 = tail call i16 @llvm.bswap.i16(i16 %42) #13
  %xor.i248 = xor i16 %or.i247, %45
  %add50 = add i16 %xor.i248, %7
  %46 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %add50, ptr %arrayidx6, align 2
  %arrayidx54 = getelementptr i8, ptr %TK, i32 6
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx54, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #13
  %xor57231 = xor i16 %49, %add50
  %50 = lshr i16 %xor57231, 8
  %conv1.i.i249 = zext i16 %50 to i32
  %arrayidx.i250 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i249
  %51 = ptrtoint ptr %arrayidx.i250 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i250, align 2
  %53 = and i16 %xor57231, 255
  %idxprom2.i251 = zext i16 %53 to i32
  %arrayidx3.i252 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i251
  %54 = ptrtoint ptr %arrayidx3.i252 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx3.i252, align 2
  %or.i253 = tail call i16 @llvm.bswap.i16(i16 %52) #13
  %xor.i254 = xor i16 %or.i253, %55
  %add63 = add i16 %xor.i254, %10
  %56 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %add63, ptr %arrayidx8, align 2
  %arrayidx67 = getelementptr i8, ptr %TK, i32 8
  %57 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx67, align 2
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #13
  %xor70232 = xor i16 %59, %add63
  %60 = lshr i16 %xor70232, 8
  %conv1.i.i255 = zext i16 %60 to i32
  %arrayidx.i256 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i255
  %61 = ptrtoint ptr %arrayidx.i256 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.i256, align 2
  %63 = and i16 %xor70232, 255
  %idxprom2.i257 = zext i16 %63 to i32
  %arrayidx3.i258 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i257
  %64 = ptrtoint ptr %arrayidx3.i258 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx3.i258, align 2
  %or.i259 = tail call i16 @llvm.bswap.i16(i16 %62) #13
  %xor.i260 = xor i16 %or.i259, %65
  %add76 = add i16 %xor.i260, %13
  %66 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %add76, ptr %arrayidx10, align 2
  %arrayidx80 = getelementptr i8, ptr %TK, i32 10
  %67 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx80, align 2
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #13
  %xor83233 = xor i16 %69, %add76
  %70 = lshr i16 %xor83233, 8
  %conv1.i.i261 = zext i16 %70 to i32
  %arrayidx.i262 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i261
  %71 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx.i262, align 2
  %73 = and i16 %xor83233, 255
  %idxprom2.i263 = zext i16 %73 to i32
  %arrayidx3.i264 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i263
  %74 = ptrtoint ptr %arrayidx3.i264 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx3.i264, align 2
  %or.i265 = tail call i16 @llvm.bswap.i16(i16 %72) #13
  %xor.i266 = xor i16 %or.i265, %75
  %add89 = add i16 %xor.i266, %add
  %76 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %add89, ptr %arrayidx14, align 2
  %arrayidx93 = getelementptr i8, ptr %TK, i32 12
  %77 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx93, align 2
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #13
  %xor96234 = xor i16 %79, %add89
  %or.i267 = tail call i16 @llvm.fshl.i16(i16 %xor96234, i16 %xor96234, i16 15) #13
  %add102 = add i16 %or.i267, %add24
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %add102, ptr %arrayidx, align 2
  %arrayidx106 = getelementptr i8, ptr %TK, i32 14
  %81 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx106, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #13
  %xor109235 = xor i16 %add102, %83
  %or.i268 = tail call i16 @llvm.fshl.i16(i16 %xor109235, i16 %xor109235, i16 15) #13
  %add115 = add i16 %or.i268, %add37
  %84 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %add115, ptr %arrayidx4, align 2
  %or.i269 = tail call i16 @llvm.fshl.i16(i16 %add115, i16 %add115, i16 15) #13
  %add122 = add i16 %or.i269, %add50
  %85 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %add122, ptr %arrayidx6, align 2
  %or.i270 = tail call i16 @llvm.fshl.i16(i16 %add122, i16 %add122, i16 15) #13
  %add129 = add i16 %or.i270, %add63
  %86 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %add129, ptr %arrayidx8, align 2
  %or.i271 = tail call i16 @llvm.fshl.i16(i16 %add129, i16 %add129, i16 15) #13
  %add136 = add i16 %or.i271, %add76
  %87 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %add136, ptr %arrayidx10, align 2
  %or.i272 = tail call i16 @llvm.fshl.i16(i16 %add136, i16 %add136, i16 15) #13
  %add143 = add i16 %or.i272, %add89
  %88 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %add143, ptr %arrayidx14, align 2
  %89 = lshr i16 %IV16, 8
  %conv1.i = trunc i16 %89 to i8
  %90 = ptrtoint ptr %WEPSeed to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv1.i, ptr %WEPSeed, align 1
  %91 = and i8 %conv1.i, 95
  %92 = or i8 %91, 32
  %arrayidx150 = getelementptr i8, ptr %WEPSeed, i32 1
  %93 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx150, align 1
  %conv1.i274 = trunc i16 %IV16 to i8
  %arrayidx152 = getelementptr i8, ptr %WEPSeed, i32 2
  %94 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv1.i274, ptr %arrayidx152, align 1
  %95 = ptrtoint ptr %TK to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %TK, align 2
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #13
  %xor158236 = xor i16 %add143, %97
  %98 = lshr i16 %xor158236, 1
  %conv1.i275 = trunc i16 %98 to i8
  %arrayidx161 = getelementptr i8, ptr %WEPSeed, i32 3
  %99 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv1.i275, ptr %arrayidx161, align 1
  %or168 = tail call i16 @llvm.bswap.i16(i16 %add102)
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %or168, ptr %arrayidx, align 2
  %arrayidx163.1 = getelementptr i8, ptr %WEPSeed, i32 6
  %or168.1 = tail call i16 @llvm.bswap.i16(i16 %add115)
  %101 = ptrtoint ptr %arrayidx163.1 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %or168.1, ptr %arrayidx163.1, align 2
  %arrayidx163.2 = getelementptr i8, ptr %WEPSeed, i32 8
  %or168.2 = tail call i16 @llvm.bswap.i16(i16 %add122)
  %102 = ptrtoint ptr %arrayidx163.2 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %or168.2, ptr %arrayidx163.2, align 2
  %arrayidx163.3 = getelementptr i8, ptr %WEPSeed, i32 10
  %or168.3 = tail call i16 @llvm.bswap.i16(i16 %add129)
  %103 = ptrtoint ptr %arrayidx163.3 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %or168.3, ptr %arrayidx163.3, align 2
  %arrayidx163.4 = getelementptr i8, ptr %WEPSeed, i32 12
  %or168.4 = tail call i16 @llvm.bswap.i16(i16 %add136)
  %104 = ptrtoint ptr %arrayidx163.4 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %or168.4, ptr %arrayidx163.4, align 2
  %arrayidx163.5 = getelementptr i8, ptr %WEPSeed, i32 14
  %or168.5 = tail call i16 @llvm.bswap.i16(i16 %add143)
  %105 = ptrtoint ptr %arrayidx163.5 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %or168.5, ptr %arrayidx163.5, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @michael_mic(ptr noundef %tfm_michael, ptr noundef %key, ptr noundef %hdr, ptr noundef %data, i32 noundef %data_len, ptr noundef %mic) unnamed_addr #2 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #13
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  %cmp = icmp eq ptr %tfm_michael, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tfm_michael, ptr %__desc_desc, align 8
  %call1 = tail call i32 @crypto_shash_setkey(ptr noundef nonnull %tfm_michael, ptr noundef %key, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

crypto_shash_init.exit:                           ; preds = %if.end3
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -256
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %9(ptr noundef nonnull %__desc_desc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool5.not = icmp eq i32 %call3.i, 0
  br i1 %tobool5.not, label %if.end7, label %crypto_shash_init.exit.out_crit_edge

crypto_shash_init.exit.out_crit_edge:             ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7:                                          ; preds = %crypto_shash_init.exit
  %call8 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %hdr, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %data, i32 noundef %data_len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %mic) #13
  br label %out

out:                                              ; preds = %if.end15, %if.end11.out_crit_edge, %if.end7.out_crit_edge, %crypto_shash_init.exit.out_crit_edge, %if.end3.out_crit_edge
  %err.0 = phi i32 [ %call3.i, %crypto_shash_init.exit.out_crit_edge ], [ %call8, %if.end7.out_crit_edge ], [ %call12, %if.end11.out_crit_edge ], [ %call16, %if.end15 ], [ -126, %if.end3.out_crit_edge ]
  %10 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__desc_desc, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 128
  %add.i = add i32 %13, 8
  %14 = call ptr @memset(ptr %__desc_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__desc_desc) #13, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %err.0, %out ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lib80211_michael_mic_failure(ptr noundef %dev, ptr nocapture noundef readonly %hdr, i32 noundef %keyidx) unnamed_addr #2 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  %ev = alloca %struct.iw_michaelmicfailure, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #13
  %0 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev) #13
  %1 = getelementptr inbounds %struct.iw_michaelmicfailure, ptr %ev, i32 0, i32 1
  %2 = getelementptr inbounds %struct.iw_michaelmicfailure, ptr %ev, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds i8, ptr %ev, i32 12
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %and = and i32 %keyidx, 3
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %5 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr1, align 2
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %storemerge.v = select i1 %tobool.not, i32 8, i32 4
  %storemerge = or i32 %storemerge.v, %and
  %8 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %ev, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %1, align 4
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %2, ptr %addr2, i32 6)
  %11 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 28, ptr %0, align 4
  call void @wireless_send_event(ptr noundef %dev, i32 noundef 35846, ptr noundef nonnull %wrqu, ptr noundef nonnull %ev) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lib80211_register_crypto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 37, i32 1}
!4 = !{ptr @__UNIQUE_ID_file341, !5, !"__UNIQUE_ID_file341", i1 false, i1 false}
!5 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 38, i32 1}
!6 = !{ptr @__UNIQUE_ID_license342, !5, !"__UNIQUE_ID_license342", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_lib80211_crypt_tkip__343_737_lib80211_crypto_tkip_init6, !8, !"__initcall__kmod_lib80211_crypt_tkip__343_737_lib80211_crypto_tkip_init6", i1 false, i1 false}
!8 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 737, i32 1}
!9 = !{ptr @__exitcall_lib80211_crypto_tkip_exit, !10, !"__exitcall_lib80211_crypto_tkip_exit", i1 false, i1 false}
!10 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 738, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 709, i32 10}
!13 = !{ptr @lib80211_crypt_tkip, !14, !"lib80211_crypt_tkip", i1 false, i1 false}
!14 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 708, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 103, i32 44}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 336, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lib80211_tkip_encrypt.descriptor, !18, !"descriptor", i1 false, i1 false}
!23 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @Sbox, !25, !"Sbox", i1 false, i1 false}
!25 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 172, i32 18}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 391, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lib80211_tkip_decrypt.descriptor, !27, !"descriptor", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 402, i32 3}
!33 = !{ptr @lib80211_tkip_decrypt.descriptor.10, !32, !"descriptor", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 408, i32 3}
!37 = !{ptr @lib80211_tkip_decrypt.descriptor.13, !36, !"descriptor", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 413, i32 3}
!41 = !{ptr @lib80211_tkip_decrypt.descriptor.16, !40, !"descriptor", i1 false, i1 false}
!42 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 423, i32 3}
!45 = !{ptr @lib80211_tkip_decrypt.descriptor.19, !44, !"descriptor", i1 false, i1 false}
!46 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 454, i32 3}
!49 = !{ptr @lib80211_tkip_decrypt.descriptor.22, !48, !"descriptor", i1 false, i1 false}
!50 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 548, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lib80211_michael_mic_add._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lib80211_michael_mic_add._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 481, i32 3}
!58 = !{ptr @michael_mic._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @michael_mic._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 600, i32 3}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lib80211_michael_mic_verify._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @lib80211_michael_mic_verify._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/wireless/lib80211_crypt_tkip.c", i32 686, i32 6}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2148971675, i64 2148971680, i64 2148971693, i64 2148971737, i64 2148971771, i64 2148971792}
!78 = !{i64 2149028811}
