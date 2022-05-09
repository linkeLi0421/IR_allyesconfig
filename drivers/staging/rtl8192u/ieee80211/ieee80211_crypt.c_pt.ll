; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_device = type { ptr, %struct.ieee80211_security, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, ptr, %struct.spinlock, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, i8, %struct.net_device_stats, %struct.ieee80211_stats, %struct.ieee80211_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [6 x i8], i16, i16, %struct.list_head, [4 x ptr], i32, %struct.timer_list, i32, i32, [17 x [4 x %struct.ieee80211_frag_entry]], [17 x i32], i16, i16, [6 x i8], [6 x i8], %struct.ieee80211_network, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, ptr, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i16, i16, i32, i32, %struct.tasklet_struct, i32, i32, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i8, i32, i8, i8, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, [5 x ptr], i32, i32, i8, i32, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [4 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, %struct.rt_power_save_control, %struct.tx_pending, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, [128 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.ieee80211_security = type { i16, i8, [4 x i8], [4 x [32 x i8]], i8, i16 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %struct.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%struct.tspec_body = type { %struct.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.qos_tsinfo = type { i24 }
%union.qos_tclas = type { %struct.type1_ipv6 }
%struct.type1_ipv6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.ieee80211_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.ieee80211_network = type <{ [6 x i8], i8, i8, [6 x i8], i8, [33 x i8], i8, [3 x i8], %struct.ieee80211_qos_data, i8, i8, i8, i8, [2 x i16], i8, i8, [6 x i8], %struct.ieee80211_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, [3 x i8], i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i8, i32, [64 x i8], i32, %struct.ieee80211_tim_parameters, i8, i8, [2 x i32], i8, [4 x %struct.ieee80211_wmm_ac_param], i8, i8, i8, i16, [255 x i8], %struct._BSS_HT, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head, [4 x i8] }>
%struct.ieee80211_qos_data = type { %struct.ieee80211_qos_parameters, i32, i32, i8, i8 }
%struct.ieee80211_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.ieee80211_rx_stats = type { [2 x i32], i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, ptr, i16, i16, i16, i16, i8, i8, i8, [4 x i8], i16 }
%struct.ieee80211_tim_parameters = type { i8, i8 }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct._BSS_HT = type <{ i8, [32 x i8], i16, [32 x i8], i16, i32, i8, i8 }>
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.116, i32 }
%union.anon.116 = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i8 }
%struct.rt_power_save_control = type { i8, i8, i8, i32, %struct.work_struct, %struct.timer_list, i32, i8, i32, %struct.ieee80211_network, i8, i8, i8, i8, [33 x i8], %struct.octet_string, i8, i8, i8, i16, i8, i16, %struct.octet_string, [264 x i8], i8, %struct.ibss_parms, i8, i8, [6 x i8] }
%struct.octet_string = type { ptr, i16 }
%struct.ibss_parms = type { i16 }
%struct.tx_pending = type { i32, ptr }
%struct.ieee80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.ieee80211_crypto_alg = type { %struct.list_head, ptr }
%struct.ieee80211_crypto = type { %struct.list_head, %struct.spinlock }

@__UNIQUE_ID_author339 = internal constant [21 x i8] c"author=Jouni Malinen\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [26 x i8] c"description=HostAP crypto\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ieee80211_crypt_deinit_handler_rsl.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ieee80211_crypt_deinit_handler_rsl\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: entries remaining in delayed crypt deletion list\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hcrypt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ieee80211_register_crypto_ops_rsl.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ieee80211_register_crypto_ops_rsl\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ieee80211_crypt: registered algorithm '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_unregister_crypto_ops_rsl.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ieee80211_unregister_crypto_ops_rsl\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ieee80211_crypt: unregistered algorithm '%s'\0A\00", [50 x i8] zeroinitializer }, align 32
@ieee80211_crypto_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hcrypt->lock\00", [18 x i8] zeroinitializer }, align 32
@ieee80211_crypt_null = internal global { %struct.ieee80211_crypto_ops, [44 x i8] } { %struct.ieee80211_crypto_ops { ptr @.str.11, ptr @ieee80211_crypt_null_init, ptr @ieee80211_crypt_null_deinit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @__this_module }, [44 x i8] zeroinitializer }, align 32
@ieee80211_crypto_deinit.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ieee80211_crypto_deinit\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ieee80211_crypt: unregistered algorithm '%s' (deinit)\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 63, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"hcrypt\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 32, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 116, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 144, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 206, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"ieee80211_crypt_null\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 182, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 229, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [56 x i8] c"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 183, i32 12 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_license341, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hcrypt, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ieee80211_crypto_init.__key, ptr @.str.8, ptr @ieee80211_crypt_null, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcrypt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_crypto_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_crypt_null to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_crypt_deinit_entries_rsl(ptr noundef readonly %ieee, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %crypt_deinit_list = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 70
  %0 = ptrtoint ptr %crypt_deinit_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypt_deinit_list, align 8
  %cmp.not21 = icmp eq ptr %1, %crypt_deinit_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool.not = icmp eq i32 %force, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ptr.022 = phi ptr [ %1, %for.body.lr.ph ], [ %n.025, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %ptr.022 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.025 = load ptr, ptr %ptr.022, align 4
  %refcnt = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %ptr.022, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #6
  %3 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4.not = icmp ne i32 %4, 0
  %or.cond = and i1 %tobool.not, %cmp4.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.022) #6
  br i1 %call.i.i19, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.022, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %ptr.022 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr.022, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %ptr.022 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.022, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ptr.022, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %ptr.022, i32 0, i32 1
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %list_del.exit.if.end8_crit_edge, label %if.then6

list_del.exit.if.end8_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %deinit = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %deinit, align 4
  %priv = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %ptr.022, i32 0, i32 2
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  tail call void %16(ptr noundef %18) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %list_del.exit.if.end8_crit_edge
  tail call void @kfree(ptr noundef %ptr.022) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %n.025, %crypt_deinit_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_crypt_deinit_handler_rsl(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -18828
  %lock = getelementptr i8, ptr %t, i32 -208
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %crypt_deinit_list.i = getelementptr i8, ptr %t, i32 -28
  %0 = ptrtoint ptr %crypt_deinit_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypt_deinit_list.i, align 8
  %cmp.not21.i = icmp eq ptr %1, %crypt_deinit_list.i
  br i1 %cmp.not21.i, label %entry.ieee80211_crypt_deinit_entries_rsl.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ieee80211_crypt_deinit_entries_rsl.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_crypt_deinit_entries_rsl.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ptr.022.i = phi ptr [ %n.025.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %ptr.022.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.025.i = load ptr, ptr %ptr.022.i, align 4
  %refcnt.i = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %ptr.022.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #6
  %3 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4.not.i.not = icmp eq i32 %4, 0
  br i1 %cmp4.not.i.not, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i19.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.022.i) #6
  br i1 %call.i.i19.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.022.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %ptr.022.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %ptr.022.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.022.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.022.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %ops.i = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %ptr.022.i, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %list_del.exit.i.if.end8.i_crit_edge, label %if.then6.i

list_del.exit.i.if.end8.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %deinit.i = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %deinit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %deinit.i, align 4
  %priv.i = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %ptr.022.i, i32 0, i32 2
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  tail call void %16(ptr noundef %18) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %list_del.exit.i.if.end8.i_crit_edge
  tail call void @kfree(ptr noundef %ptr.022.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %n.025.i, %crypt_deinit_list.i
  br i1 %cmp.not.i, label %for.inc.i.ieee80211_crypt_deinit_entries_rsl.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.ieee80211_crypt_deinit_entries_rsl.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_crypt_deinit_entries_rsl.exit

ieee80211_crypt_deinit_entries_rsl.exit:          ; preds = %for.inc.i.ieee80211_crypt_deinit_entries_rsl.exit_crit_edge, %entry.ieee80211_crypt_deinit_entries_rsl.exit_crit_edge
  %19 = ptrtoint ptr %crypt_deinit_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %crypt_deinit_list.i, align 4
  %cmp.i.not = icmp eq ptr %20, %crypt_deinit_list.i
  br i1 %cmp.i.not, label %ieee80211_crypt_deinit_entries_rsl.exit.if.end21_crit_edge, label %do.body8

ieee80211_crypt_deinit_entries_rsl.exit.if.end21_crit_edge: ; preds = %ieee80211_crypt_deinit_entries_rsl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body8:                                         ; preds = %ieee80211_crypt_deinit_entries_rsl.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_crypt_deinit_handler_rsl.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_crypt_deinit_handler_rsl, %if.then14)) #6
          to label %do.end19 [label %if.then14], !srcloc !42

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_crypt_deinit_handler_rsl.__UNIQUE_ID_ddebug342, ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef %22) #6
  br label %do.end19

do.end19:                                         ; preds = %if.then14, %do.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %23, 100
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %24 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #6
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %ieee80211_crypt_deinit_entries_rsl.exit.if.end21_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_crypt_delayed_deinit_rsl(ptr noundef %ieee, ptr nocapture noundef %crypt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %crypt, align 4
  %lock = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 45
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %crypt_deinit_list = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 70
  %3 = ptrtoint ptr %crypt_deinit_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crypt_deinit_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %crypt_deinit_list, ptr noundef %4) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %crypt_deinit_list, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %crypt_deinit_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %crypt_deinit_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 73, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.not, label %if.then8, label %list_add.exit.if.end11_crit_edge

list_add.exit.if.end11_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  %crypt_deinit_timer = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 100
  %expires = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 73, i32 1
  %12 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %crypt_deinit_timer) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %list_add.exit.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_register_crypto_ops_rsl(ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hcrypt, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ops4 = getelementptr inbounds %struct.ieee80211_crypto_alg, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %ops4, align 8
  %3 = load ptr, ptr @hcrypt, align 4
  %lock = getelementptr inbounds %struct.ieee80211_crypto, ptr %3, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %4 = load ptr, ptr @hcrypt, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %4, ptr noundef %6) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_add.exit_crit_edge

if.end3.list_add.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %4, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %4, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end3.list_add.exit_crit_edge
  %11 = load ptr, ptr @hcrypt, align 4
  %lock10 = getelementptr inbounds %struct.ieee80211_crypto, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock10, i32 noundef %call7) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_register_crypto_ops_rsl.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_register_crypto_ops_rsl, %if.then17)) #6
          to label %cleanup [label %if.then17], !srcloc !42

if.then17:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee80211_register_crypto_ops_rsl.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.5, ptr noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %list_add.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_unregister_crypto_ops_rsl(ptr noundef readonly %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hcrypt, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup29_crit_edge, label %do.body1

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ieee80211_crypto, ptr %0, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %1 = load ptr, ptr @hcrypt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body1
  %ptr.0.in = phi ptr [ %1, %do.body1 ], [ %ptr.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %cmp6.not = icmp eq ptr %ptr.0, %1
  br i1 %cmp6.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %ops8 = getelementptr inbounds %struct.ieee80211_crypto_alg, ptr %ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops8, align 4
  %cmp9 = icmp eq ptr %4, %ops
  br i1 %cmp9, label %if.then11, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then11:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.0) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.cleanup.thread_crit_edge

if.then11.cleanup.thread_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i.i, %if.then11.cleanup.thread_crit_edge
  %11 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ptr.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %cleanup.thread, %for.cond.for.end_crit_edge
  %del_alg.2 = phi ptr [ %ptr.0, %cleanup.thread ], [ null, %for.cond.for.end_crit_edge ]
  %13 = load ptr, ptr @hcrypt, align 4
  %lock14 = getelementptr inbounds %struct.ieee80211_crypto, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock14, i32 noundef %call2) #6
  %tobool15.not = icmp eq ptr %del_alg.2, null
  br i1 %tobool15.not, label %for.end.if.end27_crit_edge, label %do.body17

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body17:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_unregister_crypto_ops_rsl.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_unregister_crypto_ops_rsl, %if.then23)) #6
          to label %do.end26 [label %if.then23], !srcloc !42

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee80211_unregister_crypto_ops_rsl.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.7, ptr noundef %15) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body17
  tail call void @kfree(ptr noundef nonnull %del_alg.2) #6
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %for.end.if.end27_crit_edge
  %cond = sext i1 %tobool15.not to i32
  br label %cleanup29

cleanup29:                                        ; preds = %if.end27, %entry.cleanup29_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end27 ], [ -1, %entry.cleanup29_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ieee80211_get_crypto_ops_rsl(ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hcrypt, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup20_crit_edge, label %do.body1

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ieee80211_crypto, ptr %0, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %1 = load ptr, ptr @hcrypt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body1
  %ptr.0.in = phi ptr [ %1, %do.body1 ], [ %ptr.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %cmp6.not = icmp eq ptr %ptr.0, %1
  br i1 %cmp6.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %lock1528 = getelementptr inbounds %struct.ieee80211_crypto, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock1528, i32 noundef %call2) #6
  br label %cleanup20

for.body:                                         ; preds = %for.cond
  %ops = getelementptr inbounds %struct.ieee80211_crypto_alg, ptr %ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call9 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %name) #10
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.body
  %lock15 = getelementptr inbounds %struct.ieee80211_crypto, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock15, i32 noundef %call2) #6
  %tobool16.not = icmp eq ptr %ptr.0, null
  br i1 %tobool16.not, label %for.end.cleanup20_crit_edge, label %if.then17

for.end.cleanup20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %ops18 = getelementptr inbounds %struct.ieee80211_crypto_alg, ptr %ptr.0, i32 0, i32 1
  %7 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops18, align 4
  br label %cleanup20

cleanup20:                                        ; preds = %if.then17, %for.end.cleanup20_crit_edge, %for.end.thread, %entry.cleanup20_crit_edge
  %retval.0 = phi ptr [ %8, %if.then17 ], [ null, %entry.cleanup20_crit_edge ], [ null, %for.end.cleanup20_crit_edge ], [ null, %for.end.thread ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #9
  store ptr %call7.i.i, ptr @hcrypt, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.ieee80211_crypto, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ieee80211_crypto_init.__key, i16 noundef signext 3) #6
  %call2 = tail call i32 @ieee80211_register_crypto_ops_rsl(ptr noundef nonnull @ieee80211_crypt_null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = load ptr, ptr @hcrypt, align 4
  tail call void @kfree(ptr noundef %3) #6
  store ptr null, ptr @hcrypt, align 4
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then3 ], [ 0, %if.end.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_crypto_deinit() local_unnamed_addr #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @hcrypt, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr @hcrypt, align 4
  %cmp.not18 = icmp eq ptr %2, %3
  br i1 %cmp.not18, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %do.end.for.body_crit_edge, %if.end.for.body_crit_edge
  %ptr.019 = phi ptr [ %n.022, %do.end.for.body_crit_edge ], [ %2, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %ptr.019 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.022 = load ptr, ptr %ptr.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.019) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.019, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %ptr.019 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %ptr.019 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ptr.019, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_crypto_deinit.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_crypto_deinit, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !42

if.then6:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.ieee80211_crypto_alg, ptr %ptr.019, i32 0, i32 1
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee80211_crypto_deinit.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.10, ptr noundef %16) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %list_del.exit
  tail call void @kfree(ptr noundef %ptr.019) #6
  %17 = load ptr, ptr @hcrypt, align 4
  %cmp.not = icmp eq ptr %n.022, %17
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi ptr [ %2, %if.end.for.end_crit_edge ], [ %n.022, %do.end.for.end_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @ieee80211_crypt_null_init(i32 noundef %keyidx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 1 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ieee80211_crypt_null_deinit(ptr nocapture noundef %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_license341, !5, !"__UNIQUE_ID_license341", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 19, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 63, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ieee80211_crypt_deinit_handler_rsl.__UNIQUE_ID_ddebug342, !7, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 116, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ieee80211_register_crypto_ops_rsl.__UNIQUE_ID_ddebug343, !13, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 144, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ieee80211_unregister_crypto_ops_rsl.__UNIQUE_ID_ddebug344, !17, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!20 = !{ptr @ieee80211_crypto_init.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 206, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 229, i32 3}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ieee80211_crypto_deinit.__UNIQUE_ID_ddebug345, !24, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!27 = !{ptr @hcrypt, !28, !"hcrypt", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 32, i32 33}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 183, i32 12}
!31 = !{ptr @ieee80211_crypt_null, !32, !"ieee80211_crypt_null", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c", i32 182, i32 36}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2148956560, i64 2148956565, i64 2148956578, i64 2148956622, i64 2148956656, i64 2148956677}
