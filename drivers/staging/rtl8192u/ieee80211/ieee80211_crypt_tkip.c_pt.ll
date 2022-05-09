; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_crypto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_tkip_data = type { [32 x i8], i32, i32, i16, [5 x i16], i32, i32, i16, [5 x i16], i32, i32, i16, i32, i32, i32, i32, %struct.arc4_ctx, %struct.arc4_ctx, ptr, ptr, [16 x i8], [16 x i8] }
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
%struct.rtl_80211_hdr_4addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], [0 x i8] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_michaelmicfailure = type { i32, %struct.sockaddr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }

@__UNIQUE_ID_author339 = internal constant [21 x i8] c"author=Jouni Malinen\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [32 x i8] c"description=Host AP crypt: TKIP\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ieee80211_crypt_tkip = internal global { %struct.ieee80211_crypto_ops, [44 x i8] } { %struct.ieee80211_crypto_ops { ptr @.str, ptr @ieee80211_tkip_init, ptr @ieee80211_tkip_deinit, ptr @ieee80211_tkip_encrypt, ptr @ieee80211_tkip_decrypt, ptr @ieee80211_michael_mic_add, ptr @ieee80211_michael_mic_verify, ptr @ieee80211_tkip_set_key, ptr @ieee80211_tkip_get_key, ptr @ieee80211_tkip_print_stats, i32 8, i32 12, ptr @__this_module }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"michael_mic\00", [20 x i8] zeroinitializer }, align 32
@ieee80211_tkip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017ieee80211_crypt_tkip: could not allocate crypto API michael_mic\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ieee80211_tkip_init\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c\00", [38 x i8] zeroinitializer }, align 32
@ieee80211_tkip_init._entry_ptr = internal global ptr @ieee80211_tkip_init._entry, section ".printk_index", align 4
@ieee80211_tkip_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_tkip_init._entry_ptr.6 = internal global ptr @ieee80211_tkip_init._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@Sbox = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 -14683, i16 -1916, i16 -4455, i16 -2419, i16 -243, i16 -10563, i16 -8527, i16 -28332, i16 24656, i16 515, i16 -12631, i16 22141, i16 -6375, i16 -19102, i16 19942, i16 -4966, i16 -28859, i16 8093, i16 -30400, i16 -1401, i16 -4331, i16 -19733, i16 -28983, i16 -1269, i16 16876, i16 -19609, i16 24573, i16 17898, i16 9151, i16 21495, i16 -7018, i16 -25765, i16 30146, i16 -7908, i16 15790, i16 19562, i16 27738, i16 32321, i16 -2814, i16 -31921, i16 26716, i16 20980, i16 -11980, i16 -1784, i16 -7533, i16 -21645, i16 25171, i16 10815, i16 2060, i16 -27310, i16 18021, i16 -25250, i16 12328, i16 14241, i16 2575, i16 12213, i16 3593, i16 9270, i16 7067, i16 -8387, i16 -13018, i16 20073, i16 32717, i16 -5473, i16 4635, i16 7582, i16 22644, i16 13358, i16 13869, i16 -9038, i16 -19218, i16 23547, i16 -23306, i16 30285, i16 -18591, i16 32206, i16 21115, i16 -8898, i16 24177, i16 5015, i16 -22795, i16 -18072, i16 0, i16 -16084, i16 16480, i16 -7393, i16 31176, i16 -18707, i16 -11074, i16 -29370, i16 26585, i16 29259, i16 -27426, i16 -26412, i16 -20248, i16 -31414, i16 -17557, i16 -15062, i16 20453, i16 -4842, i16 -31035, i16 -25897, i16 26197, i16 4500, i16 -30001, i16 -5872, i16 1030, i16 -383, i16 -24336, i16 30788, i16 9658, i16 19427, i16 -23821, i16 24062, i16 -32576, i16 1418, i16 16301, i16 8636, i16 28744, i16 -3836, i16 25567, i16 30657, i16 -20619, i16 16995, i16 8240, i16 -6886, i16 -754, i16 -16531, i16 -32436, i16 6164, i16 9781, i16 -15569, i16 -16671, i16 13730, i16 -30516, i16 11833, i16 -27817, i16 22002, i16 -894, i16 31303, i16 -14164, i16 -17689, i16 12843, i16 -6507, i16 -16224, i16 6552, i16 -24879, i16 -23681, i16 17510, i16 21630, i16 15275, i16 2947, i16 -29494, i16 -14551, i16 27603, i16 10300, i16 -22663, i16 -17182, i16 5661, i16 -21130, i16 -9413, i16 25686, i16 29774, i16 5150, i16 -27941, i16 3082, i16 18540, i16 -18204, i16 -24739, i16 -17042, i16 17391, i16 -15194, i16 14760, i16 12708, i16 -11465, i16 -3445, i16 -10958, i16 -29885, i16 28249, i16 -9545, i16 396, i16 -20124, i16 -25390, i16 18912, i16 -10060, i16 -21254, i16 -3321, i16 -12507, i16 -13649, i16 -2930, i16 18409, i16 4120, i16 28629, i16 -3960, i16 19055, i16 23666, i16 14372, i16 22513, i16 29639, i16 -26799, i16 -13533, i16 -24196, i16 -5988, i16 15905, i16 -26915, i16 25052, i16 3462, i16 3973, i16 -8048, i16 31810, i16 29124, i16 -13142, i16 -28456, i16 1541, i16 -2303, i16 7186, i16 -15709, i16 27231, i16 -20743, i16 27088, i16 6033, i16 -26280, i16 14887, i16 10169, i16 -9928, i16 -5357, i16 11187, i16 8755, i16 -11589, i16 -22160, i16 1929, i16 13223, i16 11702, i16 15394, i16 5522, i16 -14048, i16 -30903, i16 -21761, i16 20600, i16 -23174, i16 911, i16 23032, i16 2432, i16 6679, i16 26074, i16 -10447, i16 -31546, i16 -12104, i16 -32061, i16 10672, i16 23159, i16 7697, i16 31691, i16 -22276, i16 28118, i16 11322], [128 x i8] zeroinitializer }, align 32
@ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ieee80211_tkip_decrypt\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"TKIP: received packet without ExtIV flag from %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.10, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"TKIP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\0A\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.11, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"TKIP: received packet from %pM with keyid=%d that does not have a configured key\0A\00", [46 x i8] zeroinitializer }, align 32
@ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.12, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"TKIP: replay detected: STA=%pM previous TSC %08x%04x received TSC %08x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.13, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TKIP: ICV error detected: STA=%pM\0A\00", [61 x i8] zeroinitializer }, align 32
@ieee80211_michael_mic_add.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ieee80211_michael_mic_add\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Invalid packet for Michael MIC add (tailroom=%d hdr_len=%d skb->len=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_michael_mic_verify.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ieee80211_michael_mic_verify\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Michael MIC verification failed for MSDU from %pM keyidx=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"key[%d] alg=TKIP key_set=%d tx_pn=%02x%02x%02x%02x%02x%02x rx_pn=%02x%02x%02x%02x%02x%02x replays=%d icv_errors=%d local_mic_failures=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"ieee80211_crypt_tkip\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 694, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 695, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 73, i32 44 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 75, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 83, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [5 x i8] c"Sbox\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 149, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 359, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 366, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 372, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 386, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 422, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 513, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 582, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [61 x i8] c"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 670, i32 18 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_license341, ptr @ieee80211_tkip_init._entry, ptr @ieee80211_tkip_init._entry.5, ptr @ieee80211_tkip_init._entry_ptr, ptr @ieee80211_tkip_init._entry_ptr.6, ptr @ieee80211_crypt_tkip, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @Sbox, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_crypt_tkip to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_tkip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_tkip_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Sbox to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_tkip_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_register_crypto_ops_rsl(ptr noundef nonnull @ieee80211_crypt_tkip) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_crypto_ops_rsl(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_crypto_tkip_exit() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @ieee80211_unregister_crypto_ops_rsl(ptr noundef nonnull @ieee80211_crypt_tkip) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_unregister_crypto_ops_rsl(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_tkip_null_rsl() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ieee80211_tkip_init(i32 noundef %key_idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2204) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_idx1 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %call7.i.i, i32 0, i32 15
  %1 = ptrtoint ptr %key_idx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %key_idx, ptr %key_idx1, align 8
  %call2 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #14
  %tx_tfm_michael = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %call7.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %tx_tfm_michael, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #18
  %3 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tx_tfm_michael, align 8
  br label %if.then21

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #14
  %rx_tfm_michael = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %call7.i.i, i32 0, i32 18
  %4 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %rx_tfm_michael, align 4
  %cmp.i38 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %do.end15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #18
  %5 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_tfm_michael, align 4
  br label %if.then21

if.then21:                                        ; preds = %do.end15, %do.end
  %6 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_tfm_michael, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %7, ptr noundef %base.i.i) #14
  %rx_tfm_michael23 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %call7.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %rx_tfm_michael23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_tfm_michael23, align 4
  %base.i.i39 = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %base.i.i39) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end8.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then21 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_tkip_deinit(ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tx_tfm_michael = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_tfm_michael, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #14
  %rx_tfm_michael = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_tfm_michael, align 4
  %base.i.i4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i4) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree_sensitive(ptr noundef %priv) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_tkip_encrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #3 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #14
  %0 = getelementptr inbounds [16 x i8], ptr %rc4key, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %rc4key, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

skb_tailroom.exit:                                ; preds = %lor.lhs.false
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i161 = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i162 = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i163 = sub i32 %sub.ptr.lhs.cast.i161, %sub.ptr.rhs.cast.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i163)
  %cmp2 = icmp slt i32 %sub.ptr.sub.i163, 4
  br i1 %cmp2, label %skb_tailroom.exit.cleanup_crit_edge, label %lor.lhs.false3

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false3:                                   ; preds = %skb_tailroom.exit
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %hdr_len)
  %cmp5 = icmp ult i32 %14, %hdr_len
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  %tx_phase1_done = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 5
  br i1 %tobool.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %16 = ptrtoint ptr %tx_phase1_done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_phase1_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.then8, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %tx_ttak = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 4
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %4, i32 0, i32 3
  %tx_iv32 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 2
  %18 = ptrtoint ptr %tx_iv32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_iv32, align 4
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %tx_ttak, ptr noundef %priv, ptr noundef %addr2, i32 noundef %19)
  %20 = ptrtoint ptr %tx_phase1_done to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %tx_phase1_done, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then6.if.end13_crit_edge
  %tx_ttak17 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 4
  %tx_iv16 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 3
  %21 = ptrtoint ptr %tx_iv16 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tx_iv16, align 4
  call fastcc void @tkip_mixing_phase2(ptr noundef nonnull %rc4key, ptr noundef %priv, ptr noundef %tx_ttak17, i16 noundef zeroext %22)
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %tx_phase1_done to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %tx_phase1_done, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end13
  %24 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len4, align 4
  %sub = sub i32 %25, %hdr_len
  %call22 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #14
  %add.ptr23 = getelementptr i8, ptr %call22, i32 8
  %26 = call ptr @memmove(ptr %call22, ptr %add.ptr23, i32 %hdr_len)
  %add.ptr24 = getelementptr i8, ptr %call22, i32 %hdr_len
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load25 = load i8, ptr %add.ptr, align 2
  %bf.clear26 = and i8 %bf.load25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear26)
  %tobool27.not = icmp eq i8 %bf.clear26, 0
  br i1 %tobool27.not, label %if.else38, label %if.then28

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %tx_iv1629 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 3
  %28 = ptrtoint ptr %tx_iv1629 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tx_iv1629, align 4
  %30 = lshr i16 %29, 8
  %conv1.i = trunc i16 %30 to i8
  %incdec.ptr = getelementptr i8, ptr %add.ptr24, i32 1
  %31 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i, ptr %add.ptr24, align 1
  %32 = load i16, ptr %tx_iv1629, align 4
  %33 = lshr i16 %32, 8
  %conv1.i164 = trunc i16 %33 to i8
  %34 = and i8 %conv1.i164, 95
  %35 = or i8 %34, 32
  %incdec.ptr34 = getelementptr i8, ptr %incdec.ptr, i32 1
  %36 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %incdec.ptr, align 1
  %37 = load i16, ptr %tx_iv1629, align 4
  %conv1.i165 = trunc i16 %37 to i8
  %38 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv1.i165, ptr %incdec.ptr34, align 1
  br label %if.end44

if.else38:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %rc4key to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rc4key, align 1
  %incdec.ptr39 = getelementptr i8, ptr %add.ptr24, i32 1
  %41 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %add.ptr24, align 1
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %0, align 1
  %incdec.ptr41 = getelementptr i8, ptr %incdec.ptr39, i32 1
  %44 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %incdec.ptr39, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %1, align 1
  %47 = ptrtoint ptr %incdec.ptr41 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %incdec.ptr41, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.else38, %if.then28
  %48 = getelementptr i8, ptr %add.ptr24, i32 1
  %pos.0 = getelementptr i8, ptr %48, i32 2
  %key_idx = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 15
  %49 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %key_idx, align 4
  %.tr = trunc i32 %50 to i8
  %51 = shl i8 %.tr, 6
  %conv46 = or i8 %51, 32
  %incdec.ptr47 = getelementptr i8, ptr %pos.0, i32 1
  %52 = ptrtoint ptr %pos.0 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv46, ptr %pos.0, align 1
  %tx_iv3248 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 2
  %53 = ptrtoint ptr %tx_iv3248 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_iv3248, align 4
  %conv50 = trunc i32 %54 to i8
  %incdec.ptr51 = getelementptr i8, ptr %incdec.ptr47, i32 1
  %55 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv50, ptr %incdec.ptr47, align 1
  %56 = load i32, ptr %tx_iv3248, align 4
  %shr = lshr i32 %56, 8
  %conv54 = trunc i32 %shr to i8
  %incdec.ptr55 = getelementptr i8, ptr %incdec.ptr51, i32 1
  %57 = ptrtoint ptr %incdec.ptr51 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv54, ptr %incdec.ptr51, align 1
  %58 = load i32, ptr %tx_iv3248, align 4
  %shr57 = lshr i32 %58, 16
  %conv59 = trunc i32 %shr57 to i8
  %incdec.ptr60 = getelementptr i8, ptr %incdec.ptr55, i32 1
  %59 = ptrtoint ptr %incdec.ptr55 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv59, ptr %incdec.ptr55, align 1
  %60 = load i32, ptr %tx_iv3248, align 4
  %shr62 = lshr i32 %60, 24
  %conv64 = trunc i32 %shr62 to i8
  %61 = ptrtoint ptr %incdec.ptr60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv64, ptr %incdec.ptr60, align 1
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load66 = load i8, ptr %add.ptr, align 2
  %bf.clear67 = and i8 %bf.load66, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear67)
  %tobool68.not = icmp eq i8 %bf.clear67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end44.if.end86_crit_edge

if.end44.if.end86_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then69:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr65 = getelementptr i8, ptr %incdec.ptr60, i32 1
  %call70 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #14
  %call71 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %incdec.ptr65, i32 noundef %sub) #19
  %neg = xor i32 %call71, -1
  %conv72 = trunc i32 %neg to i8
  %63 = ptrtoint ptr %call70 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv72, ptr %call70, align 1
  %shr74 = lshr i32 %neg, 8
  %conv75 = trunc i32 %shr74 to i8
  %arrayidx76 = getelementptr i8, ptr %call70, i32 1
  %64 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv75, ptr %arrayidx76, align 1
  %shr77 = lshr i32 %neg, 16
  %conv78 = trunc i32 %shr77 to i8
  %arrayidx79 = getelementptr i8, ptr %call70, i32 2
  %65 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv78, ptr %arrayidx79, align 1
  %shr80 = lshr i32 %neg, 24
  %conv81 = trunc i32 %shr80 to i8
  %arrayidx82 = getelementptr i8, ptr %call70, i32 3
  %66 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv81, ptr %arrayidx82, align 1
  %tx_ctx_arc4 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 17
  %call84 = call i32 @arc4_setkey(ptr noundef %tx_ctx_arc4, ptr noundef nonnull %rc4key, i32 noundef 16) #14
  %add = add i32 %sub, 4
  call void @arc4_crypt(ptr noundef %tx_ctx_arc4, ptr noundef %incdec.ptr65, ptr noundef %incdec.ptr65, i32 noundef %add) #14
  br label %if.end86

if.end86:                                         ; preds = %if.then69, %if.end44.if.end86_crit_edge
  %tx_iv1687 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 3
  %67 = ptrtoint ptr %tx_iv1687 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %tx_iv1687, align 4
  %inc = add i16 %68, 1
  store i16 %inc, ptr %tx_iv1687, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %cmp90 = icmp eq i16 %inc, 0
  br i1 %cmp90, label %if.then92, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then92:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  %tx_phase1_done93 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 5
  %69 = ptrtoint ptr %tx_phase1_done93 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tx_phase1_done93, align 4
  %70 = ptrtoint ptr %tx_iv3248 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_iv3248, align 4
  %inc95 = add i32 %71, 1
  store i32 %inc95, ptr %tx_iv3248, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %if.end86.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %skb_tailroom.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false3.cleanup_crit_edge ], [ -1, %skb_tailroom.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then92 ], [ 0, %if.end86.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_tkip_decrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #3 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  %icv = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #14
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icv) #14
  %1 = getelementptr inbounds [4 x i8], ptr %icv, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %icv, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %icv, i32 0, i32 3
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add1 = add i32 %hdr_len, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add1)
  %cmp = icmp ult i32 %5, %add1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 %hdr_len
  %arrayidx = getelementptr i8, ptr %add.ptr3, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then4, label %if.end18

if.then4:                                         ; preds = %if.end
  %call = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %do.body7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_tkip_decrypt, %if.then12)) #14
          to label %cleanup [label %if.then12], !srcloc !59

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  %11 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug342, ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef %addr2) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %14 = lshr i8 %9, 6
  %key_idx = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 15
  %15 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key_idx, align 4
  %conv21 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv21)
  %cmp22.not = icmp eq i32 %16, %conv21
  br i1 %cmp22.not, label %if.end46, label %do.body26

do.body26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_tkip_decrypt, %if.then38)) #14
          to label %cleanup [label %if.then38], !srcloc !59

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  %17 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug343, ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef %21, i32 noundef %conv21, ptr noundef %priv) #14
  br label %cleanup

if.end46:                                         ; preds = %if.end18
  %key_set = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %key_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool47.not = icmp eq i32 %23, 0
  br i1 %tobool47.not, label %if.then48, label %if.end75

if.then48:                                        ; preds = %if.end46
  %call49 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %do.body53

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_tkip_decrypt, %if.then65)) #14
          to label %cleanup [label %if.then65], !srcloc !59

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  %24 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %addr266 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug344, ptr noundef %26, ptr noundef nonnull @.str.11, ptr noundef %addr266, i32 noundef %16) #14
  br label %cleanup

if.end75:                                         ; preds = %if.end46
  %27 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr3, align 1
  %conv77 = zext i8 %28 to i16
  %shl = shl nuw i16 %conv77, 8
  %arrayidx78 = getelementptr i8, ptr %add.ptr3, i32 2
  %29 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %30 to i16
  %or = or i16 %shl, %conv79
  %arrayidx81 = getelementptr i8, ptr %add.ptr3, i32 4
  %31 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %32 to i32
  %arrayidx83 = getelementptr i8, ptr %add.ptr3, i32 5
  %33 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %34 to i32
  %shl85 = shl nuw nsw i32 %conv84, 8
  %or86 = or i32 %shl85, %conv82
  %arrayidx87 = getelementptr i8, ptr %add.ptr3, i32 6
  %35 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %36 to i32
  %shl89 = shl nuw nsw i32 %conv88, 16
  %or90 = or i32 %or86, %shl89
  %arrayidx91 = getelementptr i8, ptr %add.ptr3, i32 7
  %37 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %38 to i32
  %shl93 = shl nuw i32 %conv92, 24
  %or94 = or i32 %or90, %shl93
  %add.ptr95 = getelementptr i8, ptr %add.ptr3, i32 8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool96.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool96.not, label %if.then97, label %if.end75.if.end212_crit_edge

if.end75.if.end212_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

if.then97:                                        ; preds = %if.end75
  %rx_iv32 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 6
  %40 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_iv32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or94, i32 %41)
  %cmp98 = icmp ult i32 %or94, %41
  br i1 %cmp98, label %if.then97.if.then107_crit_edge, label %lor.lhs.false

if.then97.if.then107_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then107

lor.lhs.false:                                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_cmp4(i32 %or94, i32 %41)
  %cmp101 = icmp eq i32 %or94, %41
  br i1 %cmp101, label %land.lhs.true, label %lor.lhs.false.if.then143_crit_edge

lor.lhs.false.if.then143_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then143

land.lhs.true:                                    ; preds = %lor.lhs.false
  %rx_iv16 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 7
  %42 = ptrtoint ptr %rx_iv16 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rx_iv16, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %or, i16 %43)
  %cmp105.not = icmp ugt i16 %or, %43
  br i1 %cmp105.not, label %lor.lhs.false141, label %land.lhs.true.if.then107_crit_edge

land.lhs.true.if.then107_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then107

if.then107:                                       ; preds = %land.lhs.true.if.then107_crit_edge, %if.then97.if.then107_crit_edge
  %call108 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then107.if.end136_crit_edge, label %do.body112

if.then107.if.end136_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end136

do.body112:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_tkip_decrypt, %if.then124)) #14
          to label %if.end136 [label %if.then124], !srcloc !59

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #16
  %44 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %addr2125 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  %47 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_iv32, align 4
  %rx_iv16128 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 7
  %49 = ptrtoint ptr %rx_iv16128 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rx_iv16128, align 4
  %conv129 = zext i16 %50 to i32
  %conv130 = zext i16 %or to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug345, ptr noundef %46, ptr noundef nonnull @.str.12, ptr noundef %addr2125, i32 noundef %48, i32 noundef %conv129, i32 noundef %or94, i32 noundef %conv130) #14
  br label %if.end136

if.end136:                                        ; preds = %if.then124, %do.body112, %if.then107.if.end136_crit_edge
  %dot11RSNAStatsTKIPReplays = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 12
  %51 = ptrtoint ptr %dot11RSNAStatsTKIPReplays to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dot11RSNAStatsTKIPReplays, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %dot11RSNAStatsTKIPReplays, align 4
  br label %cleanup

lor.lhs.false141:                                 ; preds = %land.lhs.true
  %rx_phase1_done = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 9
  %53 = ptrtoint ptr %rx_phase1_done to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_phase1_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool142.not = icmp eq i32 %54, 0
  br i1 %tobool142.not, label %lor.lhs.false141.if.then143_crit_edge, label %lor.lhs.false141.if.end149_crit_edge

lor.lhs.false141.if.end149_crit_edge:             ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

lor.lhs.false141.if.then143_crit_edge:            ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then143

if.then143:                                       ; preds = %lor.lhs.false141.if.then143_crit_edge, %lor.lhs.false.if.then143_crit_edge
  %rx_ttak = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 8
  %addr2146 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %rx_ttak, ptr noundef %priv, ptr noundef %addr2146, i32 noundef %or94)
  %rx_phase1_done148 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 9
  %55 = ptrtoint ptr %rx_phase1_done148 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %rx_phase1_done148, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then143, %lor.lhs.false141.if.end149_crit_edge
  %rx_ttak153 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 8
  call fastcc void @tkip_mixing_phase2(ptr noundef nonnull %rc4key, ptr noundef %priv, ptr noundef %rx_ttak153, i16 noundef zeroext %or)
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %sub = sub i32 %57, %hdr_len
  %sub156 = add i32 %sub, -12
  %rx_ctx_arc4 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 16
  %call158 = call i32 @arc4_setkey(ptr noundef %rx_ctx_arc4, ptr noundef nonnull %rc4key, i32 noundef 16) #14
  %add160 = add i32 %sub, -8
  call void @arc4_crypt(ptr noundef %rx_ctx_arc4, ptr noundef %add.ptr95, ptr noundef %add.ptr95, i32 noundef %add160) #14
  %call161 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr95, i32 noundef %sub156) #19
  %neg = xor i32 %call161, -1
  %conv162 = trunc i32 %neg to i8
  %58 = ptrtoint ptr %icv to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv162, ptr %icv, align 1
  %shr164 = lshr i32 %neg, 8
  %conv165 = trunc i32 %shr164 to i8
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv165, ptr %1, align 1
  %shr167 = lshr i32 %neg, 16
  %conv168 = trunc i32 %shr167 to i8
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv168, ptr %2, align 1
  %shr170 = lshr i32 %neg, 24
  %conv171 = trunc i32 %shr170 to i8
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv171, ptr %3, align 1
  %add.ptr174 = getelementptr i8, ptr %add.ptr95, i32 %sub156
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %icv, ptr noundef dereferenceable(4) %add.ptr174, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp176.not = icmp eq i32 %bcmp, 0
  br i1 %cmp176.not, label %if.end149.if.end212_crit_edge, label %if.then178

if.end149.if.end212_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

if.then178:                                       ; preds = %if.end149
  %62 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_iv32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or94, i32 %63)
  %cmp180.not = icmp eq i32 %or94, %63
  br i1 %cmp180.not, label %if.then178.if.end184_crit_edge, label %if.then182

if.then178.if.end184_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184

if.then182:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #16
  %rx_phase1_done183 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 9
  %64 = ptrtoint ptr %rx_phase1_done183 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %rx_phase1_done183, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %if.then178.if.end184_crit_edge
  %call185 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end184.if.end209_crit_edge, label %do.body189

if.end184.if.end209_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end209

do.body189:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_tkip_decrypt, %if.then201)) #14
          to label %if.end209 [label %if.then201], !srcloc !59

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #16
  %65 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %addr2202 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug346, ptr noundef %67, ptr noundef nonnull @.str.13, ptr noundef %addr2202) #14
  br label %if.end209

if.end209:                                        ; preds = %if.then201, %do.body189, %if.end184.if.end209_crit_edge
  %dot11RSNAStatsTKIPICVErrors = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 13
  %68 = ptrtoint ptr %dot11RSNAStatsTKIPICVErrors to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dot11RSNAStatsTKIPICVErrors, align 4
  %inc210 = add i32 %69, 1
  store i32 %inc210, ptr %dot11RSNAStatsTKIPICVErrors, align 4
  br label %cleanup

if.end212:                                        ; preds = %if.end149.if.end212_crit_edge, %if.end75.if.end212_crit_edge
  %rx_iv32_new = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 10
  %70 = ptrtoint ptr %rx_iv32_new to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or94, ptr %rx_iv32_new, align 4
  %rx_iv16_new = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 11
  %71 = ptrtoint ptr %rx_iv16_new to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %or, ptr %rx_iv16_new, align 4
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data, align 4
  %add.ptr214 = getelementptr i8, ptr %73, i32 8
  %74 = call ptr @memmove(ptr %add.ptr214, ptr %73, i32 %hdr_len)
  %call216 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #14
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  %sub218 = add i32 %76, -4
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub218) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end212, %if.end209, %if.end136, %if.then65, %do.body53, %if.then48.cleanup_crit_edge, %if.then38, %do.body26, %if.then12, %do.body7, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.end212 ], [ -4, %if.end136 ], [ -5, %if.end209 ], [ -1, %entry.cleanup_crit_edge ], [ -2, %if.then12 ], [ -2, %if.then4.cleanup_crit_edge ], [ -6, %if.then38 ], [ -3, %if.then65 ], [ -3, %if.then48.cleanup_crit_edge ], [ -2, %do.body7 ], [ -6, %do.body26 ], [ -3, %do.body53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icv) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_michael_mic_add(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

skb_tailroom.exit:                                ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 8
  br i1 %cmp, label %skb_tailroom.exit.do.body2_crit_edge, label %lor.lhs.false

skb_tailroom.exit.do.body2_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

lor.lhs.false:                                    ; preds = %skb_tailroom.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %hdr_len)
  %cmp1 = icmp ult i32 %9, %hdr_len
  br i1 %cmp1, label %lor.lhs.false.do.body2_crit_edge, label %if.end11

lor.lhs.false.do.body2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2:                                         ; preds = %lor.lhs.false.do.body2_crit_edge, %skb_tailroom.exit.do.body2_crit_edge, %entry.do.body2_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_michael_mic_add.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_michael_mic_add, %if.then6)) #14
          to label %cleanup [label %if.then6], !srcloc !59

if.then6:                                         ; preds = %do.body2
  %10 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i55 = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i55, label %cond.false.i61, label %if.then6.skb_tailroom.exit63_crit_edge

if.then6.skb_tailroom.exit63_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_tailroom.exit63

cond.false.i61:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %end.i56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i56, align 4
  %tail.i57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i57, align 8
  %sub.ptr.lhs.cast.i58 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i59 = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i60 = sub i32 %sub.ptr.lhs.cast.i58, %sub.ptr.rhs.cast.i59
  br label %skb_tailroom.exit63

skb_tailroom.exit63:                              ; preds = %cond.false.i61, %if.then6.skb_tailroom.exit63_crit_edge
  %cond.i62 = phi i32 [ %sub.ptr.sub.i60, %cond.false.i61 ], [ 0, %if.then6.skb_tailroom.exit63_crit_edge ]
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_michael_mic_add.__UNIQUE_ID_ddebug347, ptr noundef %12, ptr noundef nonnull @.str.15, i32 noundef %cond.i62, i32 noundef %hdr_len, i32 noundef %20) #14
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %tx_hdr = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 21
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %1, align 1
  %23 = shl i16 %22, 8
  %24 = and i16 %23, 768
  %and.i = zext i16 %24 to i32
  %25 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.default.i [
    i32 256, label %sw.bb.i
    i32 512, label %sw.bb2.i
    i32 768, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %addr3.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %1, i32 0, i32 4
  %26 = call ptr @memcpy(ptr %tx_hdr, ptr %addr3.i, i32 6)
  %add.ptr.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 21, i32 6
  %addr2.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %1, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %add.ptr.i, ptr %addr2.i, i32 6)
  br label %michael_mic_hdr.exit

sw.bb2.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %addr1.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %1, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %tx_hdr, ptr %addr1.i, i32 6)
  %add.ptr4.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 21, i32 6
  %addr35.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %1, i32 0, i32 4
  %29 = call ptr @memcpy(ptr %add.ptr4.i, ptr %addr35.i, i32 6)
  br label %michael_mic_hdr.exit

sw.bb7.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %addr38.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %1, i32 0, i32 4
  %30 = call ptr @memcpy(ptr %tx_hdr, ptr %addr38.i, i32 6)
  %add.ptr10.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 21, i32 6
  %addr4.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %1, i32 0, i32 6
  %31 = call ptr @memcpy(ptr %add.ptr10.i, ptr %addr4.i, i32 6)
  br label %michael_mic_hdr.exit

sw.default.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %addr112.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %1, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %tx_hdr, ptr %addr112.i, i32 6)
  %add.ptr14.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 21, i32 6
  %addr215.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %1, i32 0, i32 3
  %33 = call ptr @memcpy(ptr %add.ptr14.i, ptr %addr215.i, i32 6)
  br label %michael_mic_hdr.exit

michael_mic_hdr.exit:                             ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %arrayidx.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 21, i32 12
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 0, ptr %arrayidx.i, align 1
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %1, align 1
  %37 = and i16 %36, -17408
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %37)
  %cmp12 = icmp eq i16 %37, -30720
  br i1 %cmp12, label %if.then14, label %michael_mic_hdr.exit.if.end21_crit_edge

michael_mic_hdr.exit.if.end21_crit_edge:          ; preds = %michael_mic_hdr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then14:                                        ; preds = %michael_mic_hdr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %hdr_len
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 -2
  %40 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr16, align 1
  %42 = and i8 %41, 7
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %michael_mic_hdr.exit.if.end21_crit_edge
  %call22 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 8) #14
  %tx_tfm_michael = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 19
  %44 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_tfm_michael, align 4
  %arrayidx23 = getelementptr [32 x i8], ptr %priv, i32 0, i32 16
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %add.ptr27 = getelementptr i8, ptr %47, i32 %hdr_len
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %sub = sub i32 -8, %hdr_len
  %sub29 = add i32 %sub, %49
  %call30 = tail call fastcc i32 @michael_mic(ptr noundef %45, ptr noundef %arrayidx23, ptr noundef %tx_hdr, ptr noundef %add.ptr27, i32 noundef %sub29, ptr noundef %call22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp ne i32 %call30, 0
  %. = sext i1 %tobool31.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %skb_tailroom.exit63, %do.body2
  %retval.0 = phi i32 [ -1, %skb_tailroom.exit63 ], [ %., %if.end21 ], [ -1, %do.body2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_michael_mic_verify(ptr noundef %skb, i32 noundef %keyidx, i32 noundef %hdr_len, ptr noundef %priv) #3 align 64 {
entry:
  %wrqu.i = alloca %union.iwreq_data, align 4
  %ev.i = alloca %struct.iw_michaelmicfailure, align 4
  %mic = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #14
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %key_set = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %rx_hdr = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 20
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = shl i16 %6, 8
  %8 = and i16 %7, 768
  %and.i = zext i16 %8 to i32
  %9 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and.i, label %sw.default.i [
    i32 256, label %sw.bb.i
    i32 512, label %sw.bb2.i
    i32 768, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %addr3.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %4, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %rx_hdr, ptr %addr3.i, i32 6)
  %add.ptr.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 20, i32 6
  %addr2.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %4, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %add.ptr.i, ptr %addr2.i, i32 6)
  br label %michael_mic_hdr.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %addr1.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %4, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %rx_hdr, ptr %addr1.i, i32 6)
  %add.ptr4.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 20, i32 6
  %addr35.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %4, i32 0, i32 4
  %13 = call ptr @memcpy(ptr %add.ptr4.i, ptr %addr35.i, i32 6)
  br label %michael_mic_hdr.exit

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %addr38.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %4, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %rx_hdr, ptr %addr38.i, i32 6)
  %add.ptr10.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 20, i32 6
  %addr4.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %4, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %add.ptr10.i, ptr %addr4.i, i32 6)
  br label %michael_mic_hdr.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %addr112.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %4, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %rx_hdr, ptr %addr112.i, i32 6)
  %add.ptr14.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 20, i32 6
  %addr215.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %4, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %add.ptr14.i, ptr %addr215.i, i32 6)
  br label %michael_mic_hdr.exit

michael_mic_hdr.exit:                             ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %arrayidx.i = getelementptr %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 20, i32 12
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %arrayidx.i, align 1
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %4, align 1
  %21 = and i16 %20, -17408
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %21)
  %cmp = icmp eq i16 %21, -30720
  br i1 %cmp, label %if.then2, label %michael_mic_hdr.exit.if.end9_crit_edge

michael_mic_hdr.exit.if.end9_crit_edge:           ; preds = %michael_mic_hdr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then2:                                         ; preds = %michael_mic_hdr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %hdr_len
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 -2
  %24 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr4, align 1
  %26 = and i8 %25, 7
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %michael_mic_hdr.exit.if.end9_crit_edge
  %rx_tfm_michael = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 18
  %28 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_tfm_michael, align 4
  %arrayidx10 = getelementptr [32 x i8], ptr %priv, i32 0, i32 24
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %add.ptr14 = getelementptr i8, ptr %31, i32 %hdr_len
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %sub = sub i32 -8, %hdr_len
  %sub15 = add i32 %sub, %33
  %call = call fastcc i32 @michael_mic(ptr noundef %29, ptr noundef %arrayidx10, ptr noundef %rx_hdr, ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull %mic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end19, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %add.ptr23 = getelementptr i8, ptr %35, i32 %37
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 -8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %mic, ptr noundef dereferenceable(8) %add.ptr24, i32 8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp26.not = icmp eq i32 %bcmp, 0
  br i1 %cmp26.not, label %if.end44, label %if.then28

if.then28:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_michael_mic_verify.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_michael_mic_verify, %if.then36)) #14
          to label %do.end40 [label %if.then36], !srcloc !59

if.then36:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %38 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %35, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_michael_mic_verify.__UNIQUE_ID_ddebug348, ptr noundef %40, ptr noundef nonnull @.str.17, ptr noundef %addr2, i32 noundef %keyidx) #14
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %if.then28
  %41 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %tobool41.not = icmp eq ptr %43, null
  br i1 %tobool41.not, label %do.end40.if.end43_crit_edge, label %if.then42

do.end40.if.end43_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then42:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #14
  %44 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i) #14
  %45 = getelementptr inbounds %struct.iw_michaelmicfailure, ptr %ev.i, i32 0, i32 1
  %46 = getelementptr inbounds %struct.iw_michaelmicfailure, ptr %ev.i, i32 0, i32 1, i32 1
  %47 = getelementptr inbounds i8, ptr %ev.i, i32 12
  %48 = call ptr @memset(ptr %47, i32 0, i32 16)
  %and.i75 = and i32 %keyidx, 3
  %addr1.i76 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %35, i32 0, i32 2
  %49 = ptrtoint ptr %addr1.i76 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %addr1.i76, align 1
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  %storemerge.v.i = select i1 %tobool.not.i, i32 8, i32 4
  %storemerge.i = or i32 %storemerge.v.i, %and.i75
  %52 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge.i, ptr %ev.i, align 4
  %53 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %45, align 4
  %addr2.i77 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %35, i32 0, i32 3
  %54 = call ptr @memcpy(ptr %46, ptr %addr2.i77, i32 6)
  %55 = call ptr @memset(ptr %wrqu.i, i32 0, i32 16)
  %56 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 28, ptr %44, align 4
  call void @wireless_send_event(ptr noundef nonnull %43, i32 noundef 35846, ptr noundef nonnull %wrqu.i, ptr noundef nonnull %ev.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #14
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %do.end40.if.end43_crit_edge
  %dot11RSNAStatsTKIPLocalMICFailures = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 14
  %57 = ptrtoint ptr %dot11RSNAStatsTKIPLocalMICFailures to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dot11RSNAStatsTKIPLocalMICFailures, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %dot11RSNAStatsTKIPLocalMICFailures, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %rx_iv32_new = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 10
  %59 = ptrtoint ptr %rx_iv32_new to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_iv32_new, align 4
  %rx_iv32 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 6
  %61 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %rx_iv32, align 4
  %rx_iv16_new = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 11
  %62 = ptrtoint ptr %rx_iv16_new to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %rx_iv16_new, align 4
  %rx_iv16 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 7
  %64 = ptrtoint ptr %rx_iv16 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %rx_iv16, align 4
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  %sub46 = add i32 %66, -8
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub46) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end43, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end43 ], [ 0, %if.end44 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ieee80211_tkip_set_key(ptr nocapture noundef readonly %key, i32 noundef %len, ptr noundef readonly %seq, ptr nocapture noundef %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_tfm_michael = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %tx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_tfm_michael, align 4
  %rx_tfm_michael = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %rx_tfm_michael to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_tfm_michael, align 4
  %key_idx = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 15
  %4 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_idx, align 4
  %6 = call ptr @memset(ptr %priv, i32 0, i32 2204)
  store i32 %5, ptr %key_idx, align 4
  store ptr %1, ptr %tx_tfm_michael, align 4
  store ptr %3, ptr %rx_tfm_michael, align 4
  %7 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %len, label %entry.cleanup_crit_edge [
    i32 32, label %if.then
    i32 0, label %if.then25
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  %8 = call ptr @memcpy(ptr %priv, ptr %key, i32 32)
  %key_set = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %key_set to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %key_set, align 4
  %tx_iv16 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %tx_iv16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %tx_iv16, align 4
  %tobool.not = icmp eq ptr %seq, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %seq, i32 5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx6 = getelementptr i8, ptr %seq, i32 4
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %14 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or = or i32 %shl8, %shl
  %arrayidx9 = getelementptr i8, ptr %seq, i32 3
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %16 to i32
  %shl11 = shl nuw nsw i32 %conv10, 8
  %or12 = or i32 %or, %shl11
  %arrayidx13 = getelementptr i8, ptr %seq, i32 2
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %18 to i32
  %or15 = or i32 %or12, %conv14
  %rx_iv32 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 6
  %19 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or15, ptr %rx_iv32, align 4
  %arrayidx16 = getelementptr i8, ptr %seq, i32 1
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %21 to i16
  %shl18 = shl nuw i16 %conv17, 8
  %22 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %seq, align 1
  %conv20 = zext i8 %23 to i16
  %or21 = or i16 %shl18, %conv20
  %rx_iv16 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 7
  %24 = ptrtoint ptr %rx_iv16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or21, ptr %rx_iv16, align 4
  br label %cleanup

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then5, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.then25 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ieee80211_tkip_get_key(ptr nocapture noundef writeonly %key, i32 noundef %len, ptr noundef writeonly %seq, ptr nocapture noundef readonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp = icmp slt i32 %len, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_set = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = call ptr @memcpy(ptr %key, ptr %priv, i32 32)
  %tobool4.not = icmp eq ptr %seq, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %tx_iv16 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %tx_iv16 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx_iv16, align 4
  %tx_iv32 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 2
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

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ieee80211_tkip_print_stats(ptr noundef writeonly %p, ptr nocapture noundef readonly %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %key_idx = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_idx, align 4
  %key_set = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_set, align 4
  %tx_iv32 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %tx_iv32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_iv32, align 4
  %shr = lshr i32 %5, 24
  %shr2 = lshr i32 %5, 16
  %and3 = and i32 %shr2, 255
  %shr5 = lshr i32 %5, 8
  %and6 = and i32 %shr5, 255
  %and8 = and i32 %5, 255
  %tx_iv16 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %tx_iv16 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_iv16, align 4
  %conv = zext i16 %7 to i32
  %8 = lshr i32 %conv, 8
  %and13 = and i32 %conv, 255
  %rx_iv32 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 6
  %9 = ptrtoint ptr %rx_iv32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_iv32, align 4
  %shr14 = lshr i32 %10, 24
  %shr17 = lshr i32 %10, 16
  %and18 = and i32 %shr17, 255
  %shr20 = lshr i32 %10, 8
  %and21 = and i32 %shr20, 255
  %and23 = and i32 %10, 255
  %rx_iv16 = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 7
  %11 = ptrtoint ptr %rx_iv16 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rx_iv16, align 4
  %conv24 = zext i16 %12 to i32
  %13 = lshr i32 %conv24, 8
  %and29 = and i32 %conv24, 255
  %dot11RSNAStatsTKIPReplays = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 12
  %14 = ptrtoint ptr %dot11RSNAStatsTKIPReplays to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dot11RSNAStatsTKIPReplays, align 4
  %dot11RSNAStatsTKIPICVErrors = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 13
  %16 = ptrtoint ptr %dot11RSNAStatsTKIPICVErrors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dot11RSNAStatsTKIPICVErrors, align 4
  %dot11RSNAStatsTKIPLocalMICFailures = getelementptr inbounds %struct.ieee80211_tkip_data, ptr %priv, i32 0, i32 14
  %18 = ptrtoint ptr %dot11RSNAStatsTKIPLocalMICFailures to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dot11RSNAStatsTKIPLocalMICFailures, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p, ptr noundef nonnull @.str.18, i32 noundef %1, i32 noundef %3, i32 noundef %shr, i32 noundef %and3, i32 noundef %and6, i32 noundef %and8, i32 noundef %8, i32 noundef %and13, i32 noundef %shr14, i32 noundef %and18, i32 noundef %and21, i32 noundef %and23, i32 noundef %13, i32 noundef %and29, i32 noundef %15, i32 noundef %17, i32 noundef %19)
  %add.ptr = getelementptr i8, ptr %p, i32 %call
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tkip_mixing_phase1(ptr nocapture noundef %TTAK, ptr nocapture noundef readonly %TK, ptr nocapture noundef readonly %TA, i32 noundef %IV32) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %or.i153 = tail call i16 @llvm.bswap.i16(i16 %25) #14
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
  %or.i162 = tail call i16 @llvm.bswap.i16(i16 %37) #14
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
  %or.i172 = tail call i16 @llvm.bswap.i16(i16 %49) #14
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
  %or.i182 = tail call i16 @llvm.bswap.i16(i16 %61) #14
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
  %or.i192 = tail call i16 @llvm.bswap.i16(i16 %73) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tkip_mixing_phase2(ptr nocapture noundef %WEPSeed, ptr nocapture noundef readonly %TK, ptr nocapture noundef readonly %TTAK, i16 noundef zeroext %IV16) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %xor219 = xor i16 %19, %add
  %20 = lshr i16 %xor219, 8
  %conv1.i.i = zext i16 %20 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 2
  %23 = and i16 %xor219, 255
  %idxprom2.i = zext i16 %23 to i32
  %arrayidx3.i = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx3.i, align 2
  %or.i = tail call i16 @llvm.bswap.i16(i16 %22) #14
  %xor.i = xor i16 %or.i, %25
  %add23 = add i16 %xor.i, %1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %add23, ptr %arrayidx, align 2
  %arrayidx27 = getelementptr i8, ptr %TK, i32 2
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx27, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %xor29220 = xor i16 %29, %add23
  %30 = lshr i16 %xor29220, 8
  %conv1.i.i228 = zext i16 %30 to i32
  %arrayidx.i229 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i228
  %31 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i229, align 2
  %33 = and i16 %xor29220, 255
  %idxprom2.i230 = zext i16 %33 to i32
  %arrayidx3.i231 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i230
  %34 = ptrtoint ptr %arrayidx3.i231 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx3.i231, align 2
  %or.i232 = tail call i16 @llvm.bswap.i16(i16 %32) #14
  %xor.i233 = xor i16 %or.i232, %35
  %add35 = add i16 %xor.i233, %4
  %36 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %add35, ptr %arrayidx4, align 2
  %arrayidx39 = getelementptr i8, ptr %TK, i32 4
  %37 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx39, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %xor41221 = xor i16 %39, %add35
  %40 = lshr i16 %xor41221, 8
  %conv1.i.i234 = zext i16 %40 to i32
  %arrayidx.i235 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i234
  %41 = ptrtoint ptr %arrayidx.i235 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i235, align 2
  %43 = and i16 %xor41221, 255
  %idxprom2.i236 = zext i16 %43 to i32
  %arrayidx3.i237 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i236
  %44 = ptrtoint ptr %arrayidx3.i237 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx3.i237, align 2
  %or.i238 = tail call i16 @llvm.bswap.i16(i16 %42) #14
  %xor.i239 = xor i16 %or.i238, %45
  %add47 = add i16 %xor.i239, %7
  %46 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %add47, ptr %arrayidx6, align 2
  %arrayidx51 = getelementptr i8, ptr %TK, i32 6
  %47 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx51, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %xor53222 = xor i16 %49, %add47
  %50 = lshr i16 %xor53222, 8
  %conv1.i.i240 = zext i16 %50 to i32
  %arrayidx.i241 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i240
  %51 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i241, align 2
  %53 = and i16 %xor53222, 255
  %idxprom2.i242 = zext i16 %53 to i32
  %arrayidx3.i243 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i242
  %54 = ptrtoint ptr %arrayidx3.i243 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx3.i243, align 2
  %or.i244 = tail call i16 @llvm.bswap.i16(i16 %52) #14
  %xor.i245 = xor i16 %or.i244, %55
  %add59 = add i16 %xor.i245, %10
  %56 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %add59, ptr %arrayidx8, align 2
  %arrayidx63 = getelementptr i8, ptr %TK, i32 8
  %57 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx63, align 2
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %xor65223 = xor i16 %59, %add59
  %60 = lshr i16 %xor65223, 8
  %conv1.i.i246 = zext i16 %60 to i32
  %arrayidx.i247 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i246
  %61 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.i247, align 2
  %63 = and i16 %xor65223, 255
  %idxprom2.i248 = zext i16 %63 to i32
  %arrayidx3.i249 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i248
  %64 = ptrtoint ptr %arrayidx3.i249 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx3.i249, align 2
  %or.i250 = tail call i16 @llvm.bswap.i16(i16 %62) #14
  %xor.i251 = xor i16 %or.i250, %65
  %add71 = add i16 %xor.i251, %13
  %66 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %add71, ptr %arrayidx10, align 2
  %arrayidx75 = getelementptr i8, ptr %TK, i32 10
  %67 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx75, align 2
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %xor77224 = xor i16 %69, %add71
  %70 = lshr i16 %xor77224, 8
  %conv1.i.i252 = zext i16 %70 to i32
  %arrayidx.i253 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %conv1.i.i252
  %71 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx.i253, align 2
  %73 = and i16 %xor77224, 255
  %idxprom2.i254 = zext i16 %73 to i32
  %arrayidx3.i255 = getelementptr [256 x i16], ptr @Sbox, i32 0, i32 %idxprom2.i254
  %74 = ptrtoint ptr %arrayidx3.i255 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx3.i255, align 2
  %or.i256 = tail call i16 @llvm.bswap.i16(i16 %72) #14
  %xor.i257 = xor i16 %or.i256, %75
  %add83 = add i16 %xor.i257, %add
  %76 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %add83, ptr %arrayidx14, align 2
  %arrayidx87 = getelementptr i8, ptr %TK, i32 12
  %77 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx87, align 2
  %79 = tail call i16 @llvm.bswap.i16(i16 %78)
  %xor89225 = xor i16 %79, %add83
  %or.i258 = tail call i16 @llvm.fshl.i16(i16 %xor89225, i16 %xor89225, i16 15) #14
  %add95 = add i16 %or.i258, %add23
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %add95, ptr %arrayidx, align 2
  %arrayidx99 = getelementptr i8, ptr %TK, i32 14
  %81 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx99, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82)
  %xor101226 = xor i16 %add95, %83
  %or.i259 = tail call i16 @llvm.fshl.i16(i16 %xor101226, i16 %xor101226, i16 15) #14
  %add107 = add i16 %or.i259, %add35
  %84 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %add107, ptr %arrayidx4, align 2
  %or.i260 = tail call i16 @llvm.fshl.i16(i16 %add107, i16 %add107, i16 15) #14
  %add114 = add i16 %or.i260, %add47
  %85 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %add114, ptr %arrayidx6, align 2
  %or.i261 = tail call i16 @llvm.fshl.i16(i16 %add114, i16 %add114, i16 15) #14
  %add121 = add i16 %or.i261, %add59
  %86 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %add121, ptr %arrayidx8, align 2
  %or.i262 = tail call i16 @llvm.fshl.i16(i16 %add121, i16 %add121, i16 15) #14
  %add128 = add i16 %or.i262, %add71
  %87 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %add128, ptr %arrayidx10, align 2
  %or.i263 = tail call i16 @llvm.fshl.i16(i16 %add128, i16 %add128, i16 15) #14
  %add135 = add i16 %or.i263, %add83
  %88 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %add135, ptr %arrayidx14, align 2
  %89 = lshr i16 %IV16, 8
  %conv1.i = trunc i16 %89 to i8
  %90 = ptrtoint ptr %WEPSeed to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv1.i, ptr %WEPSeed, align 1
  %91 = and i8 %conv1.i, 95
  %92 = or i8 %91, 32
  %arrayidx142 = getelementptr i8, ptr %WEPSeed, i32 1
  %93 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx142, align 1
  %conv1.i265 = trunc i16 %IV16 to i8
  %arrayidx144 = getelementptr i8, ptr %WEPSeed, i32 2
  %94 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv1.i265, ptr %arrayidx144, align 1
  %95 = ptrtoint ptr %TK to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %TK, align 2
  %97 = tail call i16 @llvm.bswap.i16(i16 %96)
  %xor149227 = xor i16 %add135, %97
  %98 = lshr i16 %xor149227, 1
  %conv1.i266 = trunc i16 %98 to i8
  %arrayidx152 = getelementptr i8, ptr %WEPSeed, i32 3
  %99 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv1.i266, ptr %arrayidx152, align 1
  %or159 = tail call i16 @llvm.bswap.i16(i16 %add95)
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %or159, ptr %arrayidx, align 2
  %arrayidx154.1 = getelementptr i8, ptr %WEPSeed, i32 6
  %or159.1 = tail call i16 @llvm.bswap.i16(i16 %add107)
  %101 = ptrtoint ptr %arrayidx154.1 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %or159.1, ptr %arrayidx154.1, align 2
  %arrayidx154.2 = getelementptr i8, ptr %WEPSeed, i32 8
  %or159.2 = tail call i16 @llvm.bswap.i16(i16 %add114)
  %102 = ptrtoint ptr %arrayidx154.2 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %or159.2, ptr %arrayidx154.2, align 2
  %arrayidx154.3 = getelementptr i8, ptr %WEPSeed, i32 10
  %or159.3 = tail call i16 @llvm.bswap.i16(i16 %add121)
  %103 = ptrtoint ptr %arrayidx154.3 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %or159.3, ptr %arrayidx154.3, align 2
  %arrayidx154.4 = getelementptr i8, ptr %WEPSeed, i32 12
  %or159.4 = tail call i16 @llvm.bswap.i16(i16 %add128)
  %104 = ptrtoint ptr %arrayidx154.4 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %or159.4, ptr %arrayidx154.4, align 2
  %arrayidx154.5 = getelementptr i8, ptr %WEPSeed, i32 14
  %or159.5 = tail call i16 @llvm.bswap.i16(i16 %add135)
  %105 = ptrtoint ptr %arrayidx154.5 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %or159.5, ptr %arrayidx154.5, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @michael_mic(ptr noundef %tfm_michael, ptr noundef %key, ptr noundef %hdr, ptr noundef %data, i32 noundef %data_len, ptr noundef %mic) unnamed_addr #3 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #14
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  %1 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tfm_michael, ptr %__desc_desc, align 8
  %call = tail call i32 @crypto_shash_setkey(ptr noundef %tfm_michael, ptr noundef %key, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
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
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

crypto_shash_init.exit:                           ; preds = %if.end
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -256
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %9(ptr noundef nonnull %__desc_desc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool2.not = icmp eq i32 %call3.i, 0
  br i1 %tobool2.not, label %if.end4, label %crypto_shash_init.exit.out_crit_edge

crypto_shash_init.exit.out_crit_edge:             ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end4:                                          ; preds = %crypto_shash_init.exit
  %call5 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %hdr, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %data, i32 noundef %data_len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %mic) #14
  br label %out

out:                                              ; preds = %if.end12, %if.end8.out_crit_edge, %if.end4.out_crit_edge, %crypto_shash_init.exit.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call3.i, %crypto_shash_init.exit.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ], [ %call9, %if.end8.out_crit_edge ], [ %call13, %if.end12 ], [ -126, %if.end.out_crit_edge ]
  %10 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__desc_desc, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 128
  %add.i = add i32 %13, 8
  %14 = call ptr @memset(ptr %__desc_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__desc_desc) #14, !srcloc !60
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_license341, !5, !"__UNIQUE_ID_license341", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 27, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 695, i32 12}
!8 = !{ptr @ieee80211_crypt_tkip, !9, !"ieee80211_crypt_tkip", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 694, i32 36}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 73, i32 44}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 75, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ieee80211_tkip_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @ieee80211_tkip_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @ieee80211_tkip_init._entry.5, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 83, i32 3}
!20 = !{ptr @ieee80211_tkip_init._entry_ptr.6, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @Sbox, !22, !"Sbox", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 149, i32 18}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 359, i32 4}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug342, !24, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 366, i32 3}
!30 = !{ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug343, !29, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 372, i32 4}
!33 = !{ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug344, !32, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 386, i32 5}
!36 = !{ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug345, !35, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 422, i32 5}
!39 = !{ptr @ieee80211_tkip_decrypt.__UNIQUE_ID_ddebug346, !38, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 513, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ieee80211_michael_mic_add.__UNIQUE_ID_ddebug347, !41, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 582, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ieee80211_michael_mic_verify.__UNIQUE_ID_ddebug348, !45, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c", i32 670, i32 18}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148970441, i64 2148970446, i64 2148970459, i64 2148970503, i64 2148970537, i64 2148970558}
!60 = !{i64 2149027577}
