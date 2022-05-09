; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/main.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath_rxbuf_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_rxbuf_alloc\09\09\09\09"
module asm "\09.long\09__crc_ath_rxbuf_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_rxbuf_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_rxbuf_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_ath_rxbuf_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_is_mybeacon\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_is_mybeacon\09\09\09\09"
module asm "\09.long\09__crc_ath_is_mybeacon\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_is_mybeacon:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_is_mybeacon\22\09\09\09\09\09"
module asm "__kstrtabns_ath_is_mybeacon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_printk\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_printk\09\09\09\09"
module asm "\09.long\09__crc_ath_printk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_printk\22\09\09\09\09\09"
module asm "__kstrtabns_ath_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_bus_type_strings\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_bus_type_strings\09\09\09\09"
module asm "\09.long\09__crc_ath_bus_type_strings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_bus_type_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_bus_type_strings\22\09\09\09\09\09"
module asm "__kstrtabns_ath_bus_type_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.103 = type { i64, i64, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author351 = internal constant [34 x i8] c"ath.author=Atheros Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [63 x i8] c"ath.description=Shared library for Atheros wireless LAN cards.\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [38 x i8] c"ath.file=drivers/net/wireless/ath/ath\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [25 x i8] c"ath.license=Dual BSD/GPL\00", section ".modinfo", align 1
@ath_rxbuf_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ath: skbuff alloc of size %u failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ath_rxbuf_alloc\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/wireless/ath/main.c\00", [32 x i8] zeroinitializer }, align 32
@ath_rxbuf_alloc._entry_ptr = internal global ptr @ath_rxbuf_alloc._entry, section ".printk_index", align 4
@__kstrtab_ath_rxbuf_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_rxbuf_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_rxbuf_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_rxbuf_alloc to i32), ptr @__kstrtab_ath_rxbuf_alloc, ptr @__kstrtabns_ath_rxbuf_alloc }, section "___ksymtab+ath_rxbuf_alloc", align 4
@__kstrtab_ath_is_mybeacon = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_is_mybeacon = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_is_mybeacon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_is_mybeacon to i32), ptr @__kstrtab_ath_is_mybeacon, ptr @__kstrtabns_ath_is_mybeacon }, section "___ksymtab+ath_is_mybeacon", align 4
@ath_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%sath: %s: %pV\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath_printk\00", [21 x i8] zeroinitializer }, align 32
@ath_printk._entry_ptr = internal global ptr @ath_printk._entry, section ".printk_index", align 4
@ath_printk._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%sath: %pV\00", [21 x i8] zeroinitializer }, align 32
@ath_printk._entry_ptr.7 = internal global ptr @ath_printk._entry.5, section ".printk_index", align 4
@__kstrtab_ath_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_printk = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_printk to i32), ptr @__kstrtab_ath_printk, ptr @__kstrtabns_ath_printk }, section "___ksymtab+ath_printk", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@ath_bus_type_strings = dso_local global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@__kstrtab_ath_bus_type_strings = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_bus_type_strings = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_bus_type_strings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_bus_type_strings to i32), ptr @__kstrtab_ath_bus_type_strings, ptr @__kstrtabns_ath_bus_type_strings }, section "___ksymtab+ath_bus_type_strings", align 4
@__tracepoint_ath_log = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/wireless/ath/trace.h\00", [63 x i8] zeroinitializer }, align 32
@trace_ath_log.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 55, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 83, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 87, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 95, i32 14 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 96, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 97, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"ath_bus_type_strings\00", align 1
@___asan_gen_.51 = private constant [35 x i8] c"../drivers/net/wireless/ath/main.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 94, i32 13 }
@___asan_gen_.57 = private unnamed_addr constant [36 x i8] c"../drivers/net/wireless/ath/trace.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 33, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 108, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__ksymtab_ath_bus_type_strings, ptr @__ksymtab_ath_is_mybeacon, ptr @__ksymtab_ath_printk, ptr @__ksymtab_ath_rxbuf_alloc, ptr @ath_printk._entry, ptr @ath_printk._entry.5, ptr @ath_printk._entry_ptr, ptr @ath_printk._entry_ptr.7, ptr @ath_rxbuf_alloc._entry, ptr @ath_rxbuf_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ath_bus_type_strings, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_rxbuf_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_printk._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_bus_type_strings to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath_rxbuf_alloc(ptr nocapture noundef readonly %common, i32 noundef %len, i32 noundef %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cachelsz = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 7
  %0 = ptrtoint ptr %cachelsz to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cachelsz, align 4
  %conv = zext i16 %1 to i32
  %add = add i32 %len, -1
  %sub = add i32 %add, %conv
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %sub, i32 noundef %gfp_mask) #8
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = ptrtoint ptr %cachelsz to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cachelsz, align 4
  %conv3 = zext i16 %6 to i32
  %rem = urem i32 %4, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4.not = icmp eq i32 %rem, 0
  br i1 %cmp4.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub9 = sub nsw i32 %conv3, %rem
  %add.ptr.i = getelementptr i8, ptr %3, i32 %sub9
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %sub9
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %len) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then6, %if.then.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ath_is_mybeacon(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %hdr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdr, align 2
  %2 = and i16 %1, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp.i = icmp eq i16 %2, -32768
  br i1 %cmp.i, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %curbssid = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 10
  %3 = ptrtoint ptr %curbssid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %curbssid, align 4
  %add.ptr.i = getelementptr %struct.ath_common, ptr %common, i32 0, i32 10, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %6 to i32
  %or.i = or i32 %4, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i8 = icmp eq i32 %or.i, 0
  br i1 %cmp.i8, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %7 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr3, align 4
  %xor.i.i = xor i32 %8, %4
  %add.ptr.i.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %10, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp.i.i, %land.rhs ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_printk(ptr noundef %level, ptr noundef readonly %common, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #8
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #8
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !56
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %tobool.not = icmp eq ptr %common, null
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %land.lhs.true

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

land.lhs.true:                                    ; preds = %entry
  %hw = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true3

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

land.lhs.true3:                                   ; preds = %land.lhs.true
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true3.do.end13_crit_edge, label %do.end

land.lhs.true3.do.end13_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end:                                           ; preds = %land.lhs.true3
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.wiphy_name.exit_crit_edge

do.end.wiphy_name.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %do.end.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %do.end.wiphy_name.exit_crit_edge ]
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %level, ptr noundef %retval.0.i.i, ptr noundef nonnull %vaf) #11
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %wiphy10 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy10, align 8
  call fastcc void @trace_ath_log(ptr noundef %15, ptr noundef nonnull %vaf)
  br label %if.end

do.end13:                                         ; preds = %land.lhs.true3.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %entry.do.end13_crit_edge
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %level, ptr noundef nonnull %vaf) #11
  br label %if.end

if.end:                                           ; preds = %do.end13, %wiphy_name.exit
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath_log(ptr noundef %wiphy, ptr noundef %vaf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath_log, i32 0, i32 1), ptr blockaddress(@trace_ath_log, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !58

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %call42 = tail call i32 @__traceiter_ath_log(ptr noundef null, ptr noundef %wiphy, ptr noundef %vaf) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  %13 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !58

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath_log, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath_log, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath_log.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_ath_log.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 61, ptr noundef nonnull @.str.12) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath_log(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__UNIQUE_ID_author351, !1, !"__UNIQUE_ID_author351", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/main.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description352, !3, !"__UNIQUE_ID_description352", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/main.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file353, !5, !"__UNIQUE_ID_file353", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/main.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license354, !5, !"__UNIQUE_ID_license354", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/main.c", i32 55, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ath_rxbuf_alloc._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @ath_rxbuf_alloc._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_ath_rxbuf_alloc, !14, !"__ksymtab_ath_rxbuf_alloc", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/main.c", i32 61, i32 1}
!15 = !{ptr @__ksymtab_ath_is_mybeacon, !16, !"__ksymtab_ath_is_mybeacon", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/main.c", i32 69, i32 1}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/main.c", i32 83, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ath_printk._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ath_printk._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/main.c", i32 87, i32 3}
!24 = !{ptr @ath_printk._entry.5, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ath_printk._entry_ptr.7, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_ath_printk, !27, !"__ksymtab_ath_printk", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/main.c", i32 92, i32 1}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/main.c", i32 95, i32 14}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/main.c", i32 96, i32 14}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/main.c", i32 97, i32 14}
!34 = !{ptr @ath_bus_type_strings, !35, !"ath_bus_type_strings", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/main.c", i32 94, i32 13}
!36 = !{ptr @__ksymtab_ath_bus_type_strings, !37, !"__ksymtab_ath_bus_type_strings", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/main.c", i32 99, i32 1}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/trace.h", i32 33, i32 1}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!42 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i64 2148692477, i64 2148692482, i64 2148692495, i64 2148692539, i64 2148692573, i64 2148692594}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2157414473}
!60 = !{i64 2157414670}
!61 = !{i64 2149365690}
!62 = !{i64 2149366726}
