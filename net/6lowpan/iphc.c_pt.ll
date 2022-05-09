; ModuleID = '/llk/IR_all_yes/net/6lowpan/iphc.c_pt.bc'
source_filename = "../net/6lowpan/iphc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lowpan_header_decompress\22, \22a\22\09"
module asm "\09.weak\09__crc_lowpan_header_decompress\09\09\09\09"
module asm "\09.long\09__crc_lowpan_header_decompress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lowpan_header_decompress:\09\09\09\09\09"
module asm "\09.asciz \09\22lowpan_header_decompress\22\09\09\09\09\09"
module asm "__kstrtabns_lowpan_header_decompress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lowpan_header_compress\22, \22a\22\09"
module asm "\09.weak\09__crc_lowpan_header_compress\09\09\09\09"
module asm "\09.long\09__crc_lowpan_header_compress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lowpan_header_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22lowpan_header_compress\22\09\09\09\09\09"
module asm "__kstrtabns_lowpan_header_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.lowpan_dev = type { i32, ptr, %struct.lowpan_iphc_ctx_table, [0 x i8] }
%struct.lowpan_iphc_ctx_table = type { %struct.spinlock, ptr, [16 x %struct.lowpan_iphc_ctx] }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lowpan_iphc_ctx = type { i8, %struct.in6_addr, i8, i32 }
%struct.ieee802154_addr = type { i8, i16, %union.anon.123 }
%union.anon.123 = type { i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__func__.lowpan_header_decompress = private unnamed_addr constant [25 x i8] c"lowpan_header_decompress\00", align 1
@lowpan_header_decompress.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.lowpan_header_decompress, ptr @.str.2, ptr @.str.3, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"6lowpan\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/6lowpan/iphc.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NH flag is set, next header carried inline: %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@lowpan_ttl_values = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01@\FF", [28 x i8] zeroinitializer }, align 32
@lowpan_header_decompress.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.lowpan_header_decompress, ptr @.str.2, ptr @.str.4, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"SAC bit is set. Handle context based source address.\0A\00", [42 x i8] zeroinitializer }, align 32
@lowpan_header_decompress.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.lowpan_header_decompress, ptr @.str.2, ptr @.str.5, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"source address stateless compression\0A\00", [58 x i8] zeroinitializer }, align 32
@lowpan_header_decompress.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.lowpan_header_decompress, ptr @.str.2, ptr @.str.6, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dest: context-based mcast compression\0A\00", [57 x i8] zeroinitializer }, align 32
@lowpan_header_decompress.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.lowpan_header_decompress, ptr @.str.2, ptr @.str.7, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DAC bit is set. Handle context based destination address.\0A\00", [37 x i8] zeroinitializer }, align 32
@lowpan_header_decompress.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.lowpan_header_decompress, ptr @.str.2, ptr @.str.8, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dest: stateless compression mode %d dest %pI6c\0A\00", [48 x i8] zeroinitializer }, align 32
@lowpan_header_decompress.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.lowpan_header_decompress, ptr @.str.2, ptr @.str.9, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"skb headroom size = %d, data length = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@lowpan_header_decompress.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.lowpan_header_decompress, ptr @.str.2, ptr @.str.10, i8 0, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"IPv6 header dump:\0A\09version = %d\0A\09length  = %d\0A\09nexthdr = 0x%02x\0A\09hop_lim = %d\0A\09dest    = %pI6c\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_lowpan_header_decompress = external dso_local constant [0 x i8], align 1
@__kstrtabns_lowpan_header_decompress = external dso_local constant [0 x i8], align 1
@__ksymtab_lowpan_header_decompress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lowpan_header_decompress to i32), ptr @__kstrtab_lowpan_header_decompress, ptr @__kstrtabns_lowpan_header_decompress }, section "___ksymtab_gpl+lowpan_header_decompress", align 4
@lowpan_header_compress.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.10, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lowpan_header_compress\00", [41 x i8] zeroinitializer }, align 32
@lowpan_header_compress.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"source address is unspecified, setting SAC\0A\00", [52 x i8] zeroinitializer }, align 32
@lowpan_header_compress.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 1, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"source address unicast link-local %pI6c iphc1 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@lowpan_header_compress.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 1, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"send the full source address\0A\00", [34 x i8] zeroinitializer }, align 32
@lowpan_header_compress.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.18, i8 1, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"destination address is multicast: \00", [61 x i8] zeroinitializer }, align 32
@lowpan_header_compress.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.19, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dest address unicast link-local %pI6c iphc1 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@lowpan_header_compress.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.20, i8 1, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dest address unicast %pI6c\0A\00", [36 x i8] zeroinitializer }, align 32
@lowpan_header_compress.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.21, i8 1, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"header len %d skb %u\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_lowpan_header_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_lowpan_header_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_lowpan_header_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lowpan_header_compress to i32), ptr @__kstrtab_lowpan_header_compress, ptr @__kstrtabns_lowpan_header_compress }, section "___ksymtab_gpl+lowpan_header_compress", align 4
@lowpan_iphc_uncompress_ctx_addr.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lowpan_iphc_uncompress_ctx_addr\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid sam value: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lowpan_iphc_uncompress_ctx_addr.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to fetch skb data\0A\00", [38 x i8] zeroinitializer }, align 32
@lowpan_iphc_uncompress_802154_lladdr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lowpan_iphc_uncompress_lladdr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lowpan_iphc_uncompress_addr.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lowpan_iphc_uncompress_addr\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid address mode value: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@lowpan_iphc_uncompress_addr.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.2, ptr @.str.25, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lowpan_uncompress_multicast_daddr.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lowpan_uncompress_multicast_daddr\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DAM value has a wrong value: 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@lowpan_uncompress_multicast_daddr.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.2, ptr @.str.25, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lowpan_iphc_tf_compress.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lowpan_iphc_tf_compress\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tc 0x%02x\0A\00", [21 x i8] zeroinitializer }, align 32
@lowpan_iphc_get_tc.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lowpan_iphc_get_tc\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ecn 0x%02x dscp 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@lowpan_compress_ctx_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"context found but no address mode matched\0A\00", [53 x i8] zeroinitializer }, align 32
@lowpan_iphc_dam_to_sam_value = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\10 0", [28 x i8] zeroinitializer }, align 32
@lowpan_iphc_compress_ctx_802154_lladdr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lowpan_compress_addr_64.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lowpan_compress_addr_64\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"address compression 0 bits\0A\00", [36 x i8] zeroinitializer }, align 32
@lowpan_compress_addr_64.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lowpan_iphc_compress_802154_lladdr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lowpan_iphc_mcast_addr_compress\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"compressed to 1 octet\0A\00", [41 x i8] zeroinitializer }, align 32
@lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"compressed to 4 octets\0A\00", [40 x i8] zeroinitializer }, align 32
@lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.2, ptr @.str.45, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"compressed to 6 octets\0A\00", [40 x i8] zeroinitializer }, align 32
@lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.2, ptr @.str.46, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"using full address\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.48 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 64, i64 255]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 646, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"lowpan_ttl_values\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 606, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 667, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 674, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 696, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 720, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 732, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 764, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 767, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1146, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1230, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1245, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1248, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1257, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1281, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1284, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1307, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 407, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 412, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 345, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 464, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1023, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1002, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 894, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [29 x i8] c"lowpan_iphc_dam_to_sam_value\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 783, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 954, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1106, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1111, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1117, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [22 x i8] c"../net/6lowpan/iphc.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1123, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__ksymtab_lowpan_header_compress, ptr @__ksymtab_lowpan_header_decompress, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lowpan_ttl_values, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @lowpan_iphc_dam_to_sam_value, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_ttl_values to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_iphc_dam_to_sam_value to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_header_decompress(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readonly %daddr, ptr nocapture noundef readonly %saddr) #0 align 64 {
entry:
  %tf.sroa.12.i = alloca [3 x i8], align 2
  %hdr = alloca %struct.ipv6hdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %hdr) #7
  %0 = call ptr @memset(ptr %hdr, i32 0, i32 40)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp.not.i.i = icmp eq i32 %4, %2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.lor.lhs.false_crit_edge, !prof !148

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3.i.i = icmp eq i32 %2, 0
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_may_pull.exit.i, !prof !148

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.lor.lhs.false_crit_edge, !prof !148

pskb_may_pull.exit.i.lor.lhs.false_crit_edge:     ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

pskb_may_pull.exit.i.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %pskb_may_pull.exit.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %iphc0.0.copyload = load i8, ptr %6, align 1
  %call3.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.not.i.i404 = icmp eq i32 %11, %9
  br i1 %cmp.not.i.i404, label %if.end.i.i406, label %lor.lhs.false.if.end_crit_edge, !prof !148

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i406:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.i.i405 = icmp eq i32 %9, 0
  br i1 %cmp3.i.i405, label %if.end.i.i406.cleanup_crit_edge, label %pskb_may_pull.exit.i410, !prof !148

if.end.i.i406.cleanup_crit_edge:                  ; preds = %if.end.i.i406
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit.i410:                          ; preds = %if.end.i.i406
  %call13.i.i408 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #7
  %cmp14.i.not.i409 = icmp eq ptr %call13.i.i408, null
  br i1 %cmp14.i.not.i409, label %pskb_may_pull.exit.i410.cleanup_crit_edge, label %pskb_may_pull.exit.i410.if.end_crit_edge, !prof !148

pskb_may_pull.exit.i410.if.end_crit_edge:         ; preds = %pskb_may_pull.exit.i410
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pskb_may_pull.exit.i410.cleanup_crit_edge:        ; preds = %pskb_may_pull.exit.i410
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.i410.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %iphc1.0.copyload = load i8, ptr %13, align 1
  %call3.i412 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  %15 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %hdr, align 4
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 96
  store i8 %bf.set, ptr %hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %iphc1.0.copyload)
  %tobool.not = icmp sgt i8 %iphc1.0.copyload, -1
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %18 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.not.i.i419 = icmp eq i32 %19, %17
  br i1 %cmp.not.i.i419, label %if.end.i.i421, label %if.then2.lowpan_fetch_skb.exit430_crit_edge, !prof !148

if.then2.lowpan_fetch_skb.exit430_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit430

if.end.i.i421:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i.i420 = icmp eq i32 %17, 0
  br i1 %cmp3.i.i420, label %if.end.i.i421.cleanup_crit_edge, label %pskb_may_pull.exit.i425, !prof !148

if.end.i.i421.cleanup_crit_edge:                  ; preds = %if.end.i.i421
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit.i425:                          ; preds = %if.end.i.i421
  %call13.i.i423 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #7
  %cmp14.i.not.i424 = icmp eq ptr %call13.i.i423, null
  br i1 %cmp14.i.not.i424, label %pskb_may_pull.exit.i425.cleanup_crit_edge, label %pskb_may_pull.exit.i425.lowpan_fetch_skb.exit430_crit_edge, !prof !148

pskb_may_pull.exit.i425.lowpan_fetch_skb.exit430_crit_edge: ; preds = %pskb_may_pull.exit.i425
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit430

pskb_may_pull.exit.i425.cleanup_crit_edge:        ; preds = %pskb_may_pull.exit.i425
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lowpan_fetch_skb.exit430:                         ; preds = %pskb_may_pull.exit.i425.lowpan_fetch_skb.exit430_crit_edge, %if.then2.lowpan_fetch_skb.exit430_crit_edge
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %cid.0.copyload = load i8, ptr %21, align 1
  %call3.i427 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  br label %if.end6

if.end6:                                          ; preds = %lowpan_fetch_skb.exit430, %if.end.if.end6_crit_edge
  %cid.1 = phi i8 [ 0, %if.end.if.end6_crit_edge ], [ %cid.0.copyload, %lowpan_fetch_skb.exit430 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tf.sroa.12.i)
  %23 = lshr i8 %iphc0.0.copyload, 3
  %24 = and i8 %23, 3
  %25 = zext i8 %24 to i32
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end6.unreachabledefault [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb10.i
    i32 3, label %if.end6.if.end13_crit_edge
  ]

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

sw.bb.i:                                          ; preds = %if.end6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %29 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %sub.i.i.i.i, 4
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %sw.bb.i.if.end.i432_crit_edge, !prof !148

sw.bb.i.if.end.i432_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i432

if.end.i.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp3.i.i.i = icmp ult i32 %28, 4
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, label %pskb_may_pull.exit.i.i, !prof !148

if.end.i.i.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_tf_decompress.exit.thread

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i.i431 = sub nuw nsw i32 4, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i431) #7
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, label %pskb_may_pull.exit.i.i.if.end.i432_crit_edge, !prof !148

pskb_may_pull.exit.i.i.if.end.i432_crit_edge:     ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i432

pskb_may_pull.exit.i.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge: ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_tf_decompress.exit.thread

if.end.i432:                                      ; preds = %pskb_may_pull.exit.i.i.if.end.i432_crit_edge, %sw.bb.i.if.end.i432_crit_edge
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %tf.sroa.0.0.copyload.i = load i8, ptr %32, align 1
  %tf.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %32, i32 1
  %34 = call ptr @memcpy(ptr %tf.sroa.12.i, ptr %tf.sroa.12.0..sroa_idx.i, i32 3)
  %call3.i.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #7
  %35 = lshr i8 %tf.sroa.0.0.copyload.i, 2
  %36 = and i8 %35, 48
  %flow_lbl.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 1
  %37 = ptrtoint ptr %flow_lbl.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flow_lbl.i.i, align 1
  %39 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i = load i8, ptr %hdr, align 4
  %40 = and i8 %35, 15
  %bf.set.i.i = or i8 %bf.load.i.i, %40
  store i8 %bf.set.i.i, ptr %hdr, align 4
  %41 = shl i8 %tf.sroa.0.0.copyload.i, 6
  %42 = ptrtoint ptr %tf.sroa.12.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %tf.sroa.12.i.0.tf.sroa.12.i.0.tf.sroa.12.0.tf.sroa.12.0.tf.sroa.12.1.115.i = load i8, ptr %tf.sroa.12.i, align 2
  %43 = and i8 %tf.sroa.12.i.0.tf.sroa.12.i.0.tf.sroa.12.0.tf.sroa.12.0.tf.sroa.12.1.115.i, 15
  %or6.i.i = or i8 %36, %41
  %or1216.i.i = or i8 %or6.i.i, %38
  %or9.i.i = or i8 %or1216.i.i, %43
  store i8 %or9.i.i, ptr %flow_lbl.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 1, i32 1
  %tf.sroa.12.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %tf.sroa.12.i, i32 1
  %44 = ptrtoint ptr %tf.sroa.12.i.1.i.1..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %tf.sroa.12.i.1.tf.sroa.12.i.1.tf.sroa.12.1.tf.sroa.12.1.tf.sroa.12.2..i = load i16, ptr %tf.sroa.12.i.1.i.1..sroa_idx, align 1
  %45 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %tf.sroa.12.i.1.tf.sroa.12.i.1.tf.sroa.12.1.tf.sroa.12.1.tf.sroa.12.2..i, ptr %arrayidx5.i.i, align 2
  br label %if.end13

sw.bb3.i:                                         ; preds = %if.end6
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %48 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i67.i = sub i32 %47, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i.i67.i)
  %cmp.not.i.i68.i = icmp ult i32 %sub.i.i.i67.i, 3
  br i1 %cmp.not.i.i68.i, label %if.end.i.i70.i, label %sw.bb3.i.if.end7.i_crit_edge, !prof !148

sw.bb3.i.if.end7.i_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end.i.i70.i:                                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp3.i.i69.i = icmp ult i32 %47, 3
  br i1 %cmp3.i.i69.i, label %if.end.i.i70.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, label %pskb_may_pull.exit.i74.i, !prof !148

if.end.i.i70.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge: ; preds = %if.end.i.i70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_tf_decompress.exit.thread

pskb_may_pull.exit.i74.i:                         ; preds = %if.end.i.i70.i
  %sub.i.i71.i = sub nuw nsw i32 3, %sub.i.i.i67.i
  %call13.i.i72.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i71.i) #7
  %cmp14.i.not.i73.i = icmp eq ptr %call13.i.i72.i, null
  br i1 %cmp14.i.not.i73.i, label %pskb_may_pull.exit.i74.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, label %pskb_may_pull.exit.i74.i.if.end7.i_crit_edge, !prof !148

pskb_may_pull.exit.i74.i.if.end7.i_crit_edge:     ; preds = %pskb_may_pull.exit.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

pskb_may_pull.exit.i74.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge: ; preds = %pskb_may_pull.exit.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_tf_decompress.exit.thread

if.end7.i:                                        ; preds = %pskb_may_pull.exit.i74.i.if.end7.i_crit_edge, %sw.bb3.i.if.end7.i_crit_edge
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %tf.sroa.0.0.copyload112.i = load i8, ptr %51, align 1
  %tf.sroa.12.0..sroa_idx114.i = getelementptr inbounds i8, ptr %51, i32 1
  %53 = ptrtoint ptr %tf.sroa.12.0..sroa_idx114.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %tf.sroa.12.0..sroa_idx114.i, align 1
  %call3.i76.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #7
  %55 = lshr i8 %tf.sroa.0.0.copyload112.i, 2
  %56 = and i8 %55, 48
  %flow_lbl.i80.i = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 1
  %57 = ptrtoint ptr %flow_lbl.i80.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flow_lbl.i80.i, align 1
  %59 = and i8 %tf.sroa.0.0.copyload112.i, 15
  %or6.i81.i = or i8 %56, %59
  %or9.i83.i = or i8 %or6.i81.i, %58
  store i8 %or9.i83.i, ptr %flow_lbl.i80.i, align 1
  %arrayidx5.i84.i = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx5.i84.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %54, ptr %arrayidx5.i84.i, align 2
  br label %if.end13

sw.bb10.i:                                        ; preds = %if.end6
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %63 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %62)
  %cmp.not.i.i89.i = icmp eq i32 %64, %62
  br i1 %cmp.not.i.i89.i, label %if.end.i.i91.i, label %sw.bb10.i.if.end14.i_crit_edge, !prof !148

sw.bb10.i.if.end14.i_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.end.i.i91.i:                                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp3.i.i90.i = icmp eq i32 %62, 0
  br i1 %cmp3.i.i90.i, label %if.end.i.i91.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, label %pskb_may_pull.exit.i95.i, !prof !148

if.end.i.i91.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge: ; preds = %if.end.i.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_tf_decompress.exit.thread

pskb_may_pull.exit.i95.i:                         ; preds = %if.end.i.i91.i
  %call13.i.i93.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #7
  %cmp14.i.not.i94.i = icmp eq ptr %call13.i.i93.i, null
  br i1 %cmp14.i.not.i94.i, label %pskb_may_pull.exit.i95.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, label %pskb_may_pull.exit.i95.i.if.end14.i_crit_edge, !prof !148

pskb_may_pull.exit.i95.i.if.end14.i_crit_edge:    ; preds = %pskb_may_pull.exit.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

pskb_may_pull.exit.i95.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge: ; preds = %pskb_may_pull.exit.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_tf_decompress.exit.thread

if.end14.i:                                       ; preds = %pskb_may_pull.exit.i95.i.if.end14.i_crit_edge, %sw.bb10.i.if.end14.i_crit_edge
  %65 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %tf.sroa.0.0.copyload113.i = load i8, ptr %66, align 1
  %call3.i97.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  %68 = lshr i8 %tf.sroa.0.0.copyload113.i, 2
  %69 = and i8 %68, 48
  %flow_lbl.i101.i = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 1
  %70 = ptrtoint ptr %flow_lbl.i101.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flow_lbl.i101.i, align 1
  %72 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i103.i = load i8, ptr %hdr, align 4
  %73 = and i8 %68, 15
  %bf.set.i104.i = or i8 %bf.load.i103.i, %73
  store i8 %bf.set.i104.i, ptr %hdr, align 4
  %74 = shl i8 %tf.sroa.0.0.copyload113.i, 6
  %or6.i102.i = or i8 %71, %74
  %or1216.i106.i = or i8 %or6.i102.i, %69
  store i8 %or1216.i106.i, ptr %flow_lbl.i101.i, align 1
  br label %if.end13

if.end6.unreachabledefault:                       ; preds = %if.end6
  unreachable

lowpan_iphc_tf_decompress.exit.thread:            ; preds = %pskb_may_pull.exit.i95.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, %if.end.i.i91.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, %pskb_may_pull.exit.i74.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, %if.end.i.i70.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, %pskb_may_pull.exit.i.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge, %if.end.i.i.i.lowpan_iphc_tf_decompress.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tf.sroa.12.i)
  br label %cleanup

if.end13:                                         ; preds = %if.end14.i, %if.end7.i, %if.end.i432, %if.end6.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tf.sroa.12.i)
  %75 = and i8 %iphc0.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool16.not = icmp eq i8 %75, 0
  br i1 %tobool16.not, label %if.then17, label %if.end13.if.end29_crit_edge

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then17:                                        ; preds = %if.end13
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 3
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  %78 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %77)
  %cmp.not.i.i437 = icmp eq i32 %79, %77
  br i1 %cmp.not.i.i437, label %if.end.i.i439, label %if.then17.do.body_crit_edge, !prof !148

if.then17.do.body_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i.i439:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp3.i.i438 = icmp eq i32 %77, 0
  br i1 %cmp3.i.i438, label %if.end.i.i439.cleanup_crit_edge, label %pskb_may_pull.exit.i443, !prof !148

if.end.i.i439.cleanup_crit_edge:                  ; preds = %if.end.i.i439
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit.i443:                          ; preds = %if.end.i.i439
  %call13.i.i441 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #7
  %cmp14.i.not.i442 = icmp eq ptr %call13.i.i441, null
  br i1 %cmp14.i.not.i442, label %pskb_may_pull.exit.i443.cleanup_crit_edge, label %pskb_may_pull.exit.i443.do.body_crit_edge, !prof !148

pskb_may_pull.exit.i443.do.body_crit_edge:        ; preds = %pskb_may_pull.exit.i443
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

pskb_may_pull.exit.i443.cleanup_crit_edge:        ; preds = %pskb_may_pull.exit.i443
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %pskb_may_pull.exit.i443.do.body_crit_edge, %if.then17.do.body_crit_edge
  %80 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  %84 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %nexthdr, align 2
  %call3.i445 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_decompress, %if.then25)) #7
          to label %if.end29 [label %if.then25], !srcloc !149

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nexthdr, align 2
  %conv27 = zext i8 %86 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_decompress.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.3, i32 noundef %conv27) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %do.body, %if.end13.if.end29_crit_edge
  %87 = and i8 %iphc0.0.copyload, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp32.not = icmp eq i8 %87, 0
  br i1 %cmp32.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %and31 = zext i8 %87 to i32
  %arrayidx = getelementptr [4 x i8], ptr @lowpan_ttl_values, i32 0, i32 %and31
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx, align 1
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 4
  %90 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %hop_limit, align 1
  br label %if.end41

if.else:                                          ; preds = %if.end29
  %hop_limit37 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 4
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len, align 4
  %93 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %92)
  %cmp.not.i.i452 = icmp eq i32 %94, %92
  br i1 %cmp.not.i.i452, label %if.end.i.i454, label %if.else.lowpan_fetch_skb.exit463_crit_edge, !prof !148

if.else.lowpan_fetch_skb.exit463_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit463

if.end.i.i454:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp3.i.i453 = icmp eq i32 %92, 0
  br i1 %cmp3.i.i453, label %if.end.i.i454.cleanup_crit_edge, label %pskb_may_pull.exit.i458, !prof !148

if.end.i.i454.cleanup_crit_edge:                  ; preds = %if.end.i.i454
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit.i458:                          ; preds = %if.end.i.i454
  %call13.i.i456 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #7
  %cmp14.i.not.i457 = icmp eq ptr %call13.i.i456, null
  br i1 %cmp14.i.not.i457, label %pskb_may_pull.exit.i458.cleanup_crit_edge, label %pskb_may_pull.exit.i458.lowpan_fetch_skb.exit463_crit_edge, !prof !148

pskb_may_pull.exit.i458.lowpan_fetch_skb.exit463_crit_edge: ; preds = %pskb_may_pull.exit.i458
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit463

pskb_may_pull.exit.i458.cleanup_crit_edge:        ; preds = %pskb_may_pull.exit.i458
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lowpan_fetch_skb.exit463:                         ; preds = %pskb_may_pull.exit.i458.lowpan_fetch_skb.exit463_crit_edge, %if.else.lowpan_fetch_skb.exit463_crit_edge
  %95 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  %99 = ptrtoint ptr %hop_limit37 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %hop_limit37, align 1
  %call3.i460 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  br label %if.end41

if.end41:                                         ; preds = %lowpan_fetch_skb.exit463, %if.then34
  %100 = and i8 %iphc1.0.copyload, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool44.not = icmp eq i8 %100, 0
  br i1 %tobool44.not, label %do.body82, label %if.then45

if.then45:                                        ; preds = %if.end41
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %ctx = getelementptr i8, ptr %dev, i32 2312
  tail call void @_raw_spin_lock_bh(ptr noundef %ctx) #7
  %101 = lshr i8 %cid.1, 4
  %idxprom.i = zext i8 %101 to i32
  %arrayidx.i = getelementptr %struct.lowpan_dev, ptr %add.ptr.i.i, i32 0, i32 2, i32 2, i32 %idxprom.i
  %flags.i.i = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %arrayidx.i, i32 0, i32 3
  %102 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  %tobool51.not533 = icmp eq ptr %arrayidx.i, null
  %tobool51.not = select i1 %tobool.i.not.i, i1 true, i1 %tobool51.not533
  br i1 %tobool51.not, label %if.then52, label %do.body57

if.then52:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %ctx) #7
  br label %cleanup

do.body57:                                        ; preds = %if.then45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_decompress, %if.then69)) #7
          to label %do.end72 [label %if.then69], !srcloc !149

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_decompress.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.4) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body57
  %saddr73 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 5
  %104 = and i8 %iphc1.0.copyload, 48
  %call77 = call fastcc i32 @lowpan_iphc_uncompress_ctx_addr(ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %arrayidx.i, ptr noundef %saddr73, i8 noundef zeroext %104, ptr noundef %saddr)
  call void @_raw_spin_unlock_bh(ptr noundef %ctx) #7
  br label %if.end103

do.body82:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_decompress, %if.then94)) #7
          to label %do.end97 [label %if.then94], !srcloc !149

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_decompress.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.5) #7
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %do.body82
  %saddr98 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 5
  %105 = and i8 %iphc1.0.copyload, 48
  %call102 = call fastcc i32 @lowpan_iphc_uncompress_addr(ptr noundef %skb, ptr noundef %dev, ptr noundef %saddr98, i8 noundef zeroext %105, ptr noundef %saddr)
  br label %if.end103

if.end103:                                        ; preds = %do.end97, %do.end72
  %err.0 = phi i32 [ %call77, %do.end72 ], [ %call102, %do.end97 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool104.not = icmp eq i32 %err.0, 0
  br i1 %tobool104.not, label %if.end106, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end106:                                        ; preds = %if.end103
  %106 = and i8 %iphc1.0.copyload, 12
  %and108 = zext i8 %106 to i32
  %107 = zext i32 %and108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %and108, label %sw.default [
    i32 12, label %sw.bb
    i32 8, label %sw.bb149
    i32 4, label %sw.bb159
  ]

sw.bb:                                            ; preds = %if.end106
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %108 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load109 = load i16, ptr %pkt_type, align 8
  %bf.clear110 = and i16 %bf.load109, 8191
  %bf.set111 = or i16 %bf.clear110, 8192
  store i16 %bf.set111, ptr %pkt_type, align 8
  %add.ptr.i.i466 = getelementptr i8, ptr %dev, i32 2304
  %ctx113 = getelementptr i8, ptr %dev, i32 2312
  call void @_raw_spin_lock_bh(ptr noundef %ctx113) #7
  %109 = and i8 %cid.1, 15
  %idxprom.i468 = zext i8 %109 to i32
  %arrayidx.i469 = getelementptr %struct.lowpan_dev, ptr %add.ptr.i.i466, i32 0, i32 2, i32 2, i32 %idxprom.i468
  %flags.i.i470 = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %arrayidx.i469, i32 0, i32 3
  %110 = ptrtoint ptr %flags.i.i470 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %flags.i.i470, align 4
  %and1.i.i.i471 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i471)
  %tobool.i.not.i472 = icmp eq i32 %and1.i.i.i471, 0
  %tobool119.not535 = icmp eq ptr %arrayidx.i469, null
  %tobool119.not = select i1 %tobool.i.not.i472, i1 true, i1 %tobool119.not535
  br i1 %tobool119.not, label %if.then120, label %do.body125

if.then120:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %ctx113) #7
  br label %cleanup

do.body125:                                       ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_decompress, %if.then137)) #7
          to label %do.end140 [label %if.then137], !srcloc !149

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_decompress.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.6) #7
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %do.body125
  %daddr141 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 6
  %call145 = call fastcc i32 @lowpan_uncompress_multicast_ctx_daddr(ptr noundef %skb, ptr noundef nonnull %arrayidx.i469, ptr noundef %daddr141)
  call void @_raw_spin_unlock_bh(ptr noundef %ctx113) #7
  br label %sw.epilog

sw.bb149:                                         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_type150 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %112 = ptrtoint ptr %pkt_type150 to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load151 = load i16, ptr %pkt_type150, align 8
  %bf.clear152 = and i16 %bf.load151, 8191
  %bf.set153 = or i16 %bf.clear152, 8192
  store i16 %bf.set153, ptr %pkt_type150, align 8
  %daddr154 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 6
  %113 = and i8 %iphc1.0.copyload, 3
  %call158 = call fastcc i32 @lowpan_uncompress_multicast_daddr(ptr noundef %skb, ptr noundef %daddr154, i8 noundef zeroext %113)
  br label %sw.epilog

sw.bb159:                                         ; preds = %if.end106
  %pkt_type160 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %114 = ptrtoint ptr %pkt_type160 to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load161 = load i16, ptr %pkt_type160, align 8
  %bf.clear162 = and i16 %bf.load161, 8191
  store i16 %bf.clear162, ptr %pkt_type160, align 8
  %add.ptr.i.i476 = getelementptr i8, ptr %dev, i32 2304
  %ctx165 = getelementptr i8, ptr %dev, i32 2312
  call void @_raw_spin_lock_bh(ptr noundef %ctx165) #7
  %115 = and i8 %cid.1, 15
  %idxprom.i478 = zext i8 %115 to i32
  %arrayidx.i479 = getelementptr %struct.lowpan_dev, ptr %add.ptr.i.i476, i32 0, i32 2, i32 2, i32 %idxprom.i478
  %flags.i.i480 = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %arrayidx.i479, i32 0, i32 3
  %116 = ptrtoint ptr %flags.i.i480 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %flags.i.i480, align 4
  %and1.i.i.i481 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i481)
  %tobool.i.not.i482 = icmp eq i32 %and1.i.i.i481, 0
  %tobool171.not534 = icmp eq ptr %arrayidx.i479, null
  %tobool171.not = select i1 %tobool.i.not.i482, i1 true, i1 %tobool171.not534
  br i1 %tobool171.not, label %if.then172, label %do.body177

if.then172:                                       ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %ctx165) #7
  br label %cleanup

do.body177:                                       ; preds = %sw.bb159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_decompress, %if.then189)) #7
          to label %do.end192 [label %if.then189], !srcloc !149

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_decompress.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.7) #7
  br label %do.end192

do.end192:                                        ; preds = %if.then189, %do.body177
  %daddr193 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 6
  %118 = and i8 %iphc1.0.copyload, 3
  %call197 = call fastcc i32 @lowpan_iphc_uncompress_ctx_addr(ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %arrayidx.i479, ptr noundef %daddr193, i8 noundef zeroext %118, ptr noundef %daddr)
  call void @_raw_spin_unlock_bh(ptr noundef %ctx165) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_type201 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %119 = ptrtoint ptr %pkt_type201 to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load202 = load i16, ptr %pkt_type201, align 8
  %bf.clear203 = and i16 %bf.load202, 8191
  store i16 %bf.clear203, ptr %pkt_type201, align 8
  %daddr205 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 6
  %120 = and i8 %iphc1.0.copyload, 3
  %call209 = call fastcc i32 @lowpan_iphc_uncompress_addr(ptr noundef %skb, ptr noundef %dev, ptr noundef %daddr205, i8 noundef zeroext %120, ptr noundef %daddr)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_decompress, %if.then222)) #7
          to label %sw.epilog [label %if.then222], !srcloc !149

if.then222:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %and224 = zext i8 %120 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_decompress.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.8, i32 noundef %and224, ptr noundef %daddr205) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then222, %sw.default, %do.end192, %sw.bb149, %do.end140
  %err.1 = phi i32 [ %call209, %if.then222 ], [ %call197, %do.end192 ], [ %call158, %sw.bb149 ], [ %call145, %do.end140 ], [ %call209, %sw.default ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool229.not = icmp eq i32 %err.1, 0
  br i1 %tobool229.not, label %if.end231, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end231:                                        ; preds = %sw.epilog
  br i1 %tobool16.not, label %if.else241, label %if.then235

if.then235:                                       ; preds = %if.end231
  %call236 = call i32 @lowpan_nhc_do_uncompression(ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %hdr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %if.then235.cleanup_crit_edge, label %if.then235.if.end252_crit_edge

if.then235.if.end252_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252

if.then235.cleanup_crit_edge:                     ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else241:                                       ; preds = %if.end231
  %call242 = call fastcc i32 @skb_cow(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %if.else241.if.end252_crit_edge, label %if.else241.cleanup_crit_edge, !prof !150

if.else241.cleanup_crit_edge:                     ; preds = %if.else241
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else241.if.end252_crit_edge:                   ; preds = %if.else241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252

if.end252:                                        ; preds = %if.else241.if.end252_crit_edge, %if.then235.if.end252_crit_edge
  %add.ptr.i.i486 = getelementptr i8, ptr %dev, i32 2304
  %121 = ptrtoint ptr %add.ptr.i.i486 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr.i.i486, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cond = icmp eq i32 %122, 1
  br i1 %cond, label %sw.bb254, label %sw.default266

sw.bb254:                                         ; preds = %if.end252
  %d_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %123 = ptrtoint ptr %d_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %d_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool256.not = icmp eq i32 %124, 0
  br i1 %tobool256.not, label %if.else261, label %if.then257

if.then257:                                       ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #9
  %125 = trunc i32 %124 to i16
  %conv260 = add i16 %125, -40
  br label %do.body271

if.else261:                                       ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len, align 4
  %conv263 = trunc i32 %127 to i16
  br label %do.body271

sw.default266:                                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len, align 4
  %conv268 = trunc i32 %129 to i16
  br label %do.body271

do.body271:                                       ; preds = %sw.default266, %if.else261, %if.then257
  %conv268.sink = phi i16 [ %conv268, %sw.default266 ], [ %conv263, %if.else261 ], [ %conv260, %if.then257 ]
  %payload_len269 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 2
  %130 = ptrtoint ptr %payload_len269 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv268.sink, ptr %payload_len269, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_decompress, %if.then283)) #7
          to label %do.body289 [label %if.then283], !srcloc !149

if.then283:                                       ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %133 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %132 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %134 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %135 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_decompress.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.9, i32 noundef %sub.ptr.sub.i, i32 noundef %136) #7
  br label %do.body289

do.body289:                                       ; preds = %if.then283, %do.body271
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_decompress, %if.then301)) #7
          to label %do.end313 [label %if.then301], !srcloc !149

if.then301:                                       ; preds = %do.body289
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load302 = load i8, ptr %hdr, align 4
  %bf.lshr = lshr i8 %bf.load302, 4
  %conv303 = zext i8 %bf.lshr to i32
  %payload_len304 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 2
  %138 = ptrtoint ptr %payload_len304 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %payload_len304, align 4
  %conv305 = zext i16 %139 to i32
  %nexthdr306 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 3
  %140 = ptrtoint ptr %nexthdr306 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %nexthdr306, align 2
  %conv307 = zext i8 %141 to i32
  %hop_limit308 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 4
  %142 = ptrtoint ptr %hop_limit308 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %hop_limit308, align 1
  %conv309 = zext i8 %143 to i32
  %daddr310 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_decompress.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.10, i32 noundef %conv303, i32 noundef %conv305, i32 noundef %conv307, i32 noundef %conv309, ptr noundef %daddr310) #7
  br label %do.end313

do.end313:                                        ; preds = %if.then301, %do.body289
  %call314 = call ptr @skb_push(ptr noundef %skb, i32 noundef 40) #7
  %144 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data.i.i, align 4
  %head.i489 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %146 = ptrtoint ptr %head.i489 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %head.i489, align 8
  %sub.ptr.lhs.cast.i490 = ptrtoint ptr %145 to i32
  %sub.ptr.rhs.cast.i491 = ptrtoint ptr %147 to i32
  %sub.ptr.sub.i492 = sub i32 %sub.ptr.lhs.cast.i490, %sub.ptr.rhs.cast.i491
  %conv.i493 = trunc i32 %sub.ptr.sub.i492 to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %148 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv.i493, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %149 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv.i493, ptr %network_header.i, align 4
  %150 = call ptr @memcpy(ptr %145, ptr %hdr, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %do.end313, %if.else241.cleanup_crit_edge, %if.then235.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then172, %if.then120, %if.end103.cleanup_crit_edge, %if.then52, %pskb_may_pull.exit.i458.cleanup_crit_edge, %if.end.i.i454.cleanup_crit_edge, %pskb_may_pull.exit.i443.cleanup_crit_edge, %if.end.i.i439.cleanup_crit_edge, %lowpan_iphc_tf_decompress.exit.thread, %pskb_may_pull.exit.i425.cleanup_crit_edge, %if.end.i.i421.cleanup_crit_edge, %pskb_may_pull.exit.i410.cleanup_crit_edge, %if.end.i.i406.cleanup_crit_edge, %pskb_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end313 ], [ -22, %if.then172 ], [ -22, %if.then120 ], [ -22, %if.then52 ], [ -22, %if.end103.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call236, %if.then235.cleanup_crit_edge ], [ %call242, %if.else241.cleanup_crit_edge ], [ -22, %lowpan_iphc_tf_decompress.exit.thread ], [ -22, %pskb_may_pull.exit.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %pskb_may_pull.exit.i410.cleanup_crit_edge ], [ -22, %if.end.i.i406.cleanup_crit_edge ], [ -22, %pskb_may_pull.exit.i425.cleanup_crit_edge ], [ -22, %if.end.i.i421.cleanup_crit_edge ], [ -22, %pskb_may_pull.exit.i443.cleanup_crit_edge ], [ -22, %if.end.i.i439.cleanup_crit_edge ], [ -22, %pskb_may_pull.exit.i458.cleanup_crit_edge ], [ -22, %if.end.i.i454.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %hdr) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_iphc_uncompress_ctx_addr(ptr noundef %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ctx, ptr noundef %ipaddr, i8 noundef zeroext %address_mode, ptr nocapture noundef readonly %lladdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %address_mode to i32
  %0 = zext i8 %address_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %address_mode, label %do.body [
    i8 0, label %entry.cleanup_crit_edge
    i8 16, label %entry.sw.bb1_crit_edge
    i8 1, label %entry.sw.bb1_crit_edge123
    i8 32, label %entry.sw.bb3_crit_edge
    i8 2, label %entry.sw.bb3_crit_edge124
    i8 48, label %entry.sw.bb15_crit_edge
    i8 3, label %entry.sw.bb15_crit_edge125
  ]

entry.sw.bb15_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

entry.sw.bb3_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb1_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge123
  %arrayidx = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 8
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb1.if.end.i_crit_edge, !prof !148

sw.bb1.if.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp3.i.i = icmp ult i32 %2, 8
  br i1 %cmp3.i.i, label %if.end.i.i.lowpan_fetch_skb.exit_crit_edge, label %pskb_may_pull.exit.i, !prof !148

if.end.i.i.lowpan_fetch_skb.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 8, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !148

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %sw.bb1.if.end.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %6, align 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %arrayidx, align 1
  %call3.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #7
  br label %lowpan_fetch_skb.exit

lowpan_fetch_skb.exit:                            ; preds = %if.end.i, %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge, %if.end.i.i.lowpan_fetch_skb.exit_crit_edge
  %retval.0.i9.i = phi i1 [ true, %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge ], [ false, %if.end.i ], [ true, %if.end.i.i.lowpan_fetch_skb.exit_crit_edge ]
  %pfx = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 1
  %plen = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 2
  %10 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %plen, align 4
  %conv2 = zext i8 %11 to i32
  %shr.i120 = lshr i32 %conv2, 3
  %and.i = and i32 %conv2, 7
  %12 = call ptr @memcpy(ptr %ipaddr, ptr %pfx, i32 %shr.i120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %lowpan_fetch_skb.exit.sw.epilog27_crit_edge, label %if.then.i

lowpan_fetch_skb.exit.sw.epilog27_crit_edge:      ; preds = %lowpan_fetch_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

if.then.i:                                        ; preds = %lowpan_fetch_skb.exit
  %shr1.i = lshr i32 65280, %and.i
  %neg.i = ashr i32 -65281, %and.i
  %arrayidx.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 %shr.i120
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %15 = trunc i32 %neg.i to i8
  %conv4.i = and i8 %14, %15
  store i8 %conv4.i, ptr %arrayidx.i, align 1
  %arrayidx6.i = getelementptr [16 x i8], ptr %pfx, i32 0, i32 %shr.i120
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.i, align 1
  %18 = trunc i32 %shr1.i to i8
  %19 = and i8 %17, %18
  %conv13.i = or i8 %19, %conv4.i
  store i8 %conv13.i, ptr %arrayidx.i, align 1
  br i1 %retval.0.i9.i, label %if.then.i.do.body30_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.do.body30_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge124
  %arrayidx5 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -2, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 14
  %len.i.i.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i.i71, align 4
  %data_len.i.i.i72 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i.i72, align 8
  %sub.i.i.i73 = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i73)
  %cmp.not.i.i74 = icmp ult i32 %sub.i.i.i73, 2
  br i1 %cmp.not.i.i74, label %if.end.i.i76, label %sw.bb3.if.end.i83_crit_edge, !prof !148

sw.bb3.if.end.i83_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i83

if.end.i.i76:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp3.i.i75 = icmp ult i32 %23, 2
  br i1 %cmp3.i.i75, label %if.end.i.i76.lowpan_fetch_skb.exit85_crit_edge, label %pskb_may_pull.exit.i80, !prof !148

if.end.i.i76.lowpan_fetch_skb.exit85_crit_edge:   ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit85

pskb_may_pull.exit.i80:                           ; preds = %if.end.i.i76
  %sub.i.i77 = sub nuw nsw i32 2, %sub.i.i.i73
  %call13.i.i78 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i77) #7
  %cmp14.i.not.i79 = icmp eq ptr %call13.i.i78, null
  br i1 %cmp14.i.not.i79, label %pskb_may_pull.exit.i80.lowpan_fetch_skb.exit85_crit_edge, label %pskb_may_pull.exit.i80.if.end.i83_crit_edge, !prof !148

pskb_may_pull.exit.i80.if.end.i83_crit_edge:      ; preds = %pskb_may_pull.exit.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i83

pskb_may_pull.exit.i80.lowpan_fetch_skb.exit85_crit_edge: ; preds = %pskb_may_pull.exit.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit85

if.end.i83:                                       ; preds = %pskb_may_pull.exit.i80.if.end.i83_crit_edge, %sw.bb3.if.end.i83_crit_edge
  %data.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i81 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i81, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %27, align 1
  %30 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %arrayidx9, align 1
  %call3.i82 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #7
  br label %lowpan_fetch_skb.exit85

lowpan_fetch_skb.exit85:                          ; preds = %if.end.i83, %pskb_may_pull.exit.i80.lowpan_fetch_skb.exit85_crit_edge, %if.end.i.i76.lowpan_fetch_skb.exit85_crit_edge
  %retval.0.i9.i84 = phi i1 [ true, %pskb_may_pull.exit.i80.lowpan_fetch_skb.exit85_crit_edge ], [ false, %if.end.i83 ], [ true, %if.end.i.i76.lowpan_fetch_skb.exit85_crit_edge ]
  %pfx12 = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 1
  %plen13 = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 2
  %31 = ptrtoint ptr %plen13 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %plen13, align 4
  %conv14 = zext i8 %32 to i32
  %shr.i86121 = lshr i32 %conv14, 3
  %and.i87 = and i32 %conv14, 7
  %33 = call ptr @memcpy(ptr %ipaddr, ptr %pfx12, i32 %shr.i86121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %cmp.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %cmp.not.i88, label %lowpan_fetch_skb.exit85.sw.epilog27_crit_edge, label %if.then.i95

lowpan_fetch_skb.exit85.sw.epilog27_crit_edge:    ; preds = %lowpan_fetch_skb.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

if.then.i95:                                      ; preds = %lowpan_fetch_skb.exit85
  %shr1.i89 = lshr i32 65280, %and.i87
  %neg.i90 = ashr i32 -65281, %and.i87
  %arrayidx.i91 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 %shr.i86121
  %34 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i91, align 1
  %36 = trunc i32 %neg.i90 to i8
  %conv4.i92 = and i8 %35, %36
  store i8 %conv4.i92, ptr %arrayidx.i91, align 1
  %arrayidx6.i93 = getelementptr [16 x i8], ptr %pfx12, i32 0, i32 %shr.i86121
  %37 = ptrtoint ptr %arrayidx6.i93 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx6.i93, align 1
  %39 = trunc i32 %shr1.i89 to i8
  %40 = and i8 %38, %39
  %conv13.i94 = or i8 %40, %conv4.i92
  store i8 %conv13.i94, ptr %arrayidx.i91, align 1
  br i1 %retval.0.i9.i84, label %if.then.i95.do.body30_crit_edge, label %if.then.i95.cleanup_crit_edge

if.then.i95.cleanup_crit_edge:                    ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i95.do.body30_crit_edge:                  ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge125
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cond = icmp eq i32 %42, 1
  br i1 %cond, label %sw.bb17, label %sw.default

sw.bb17:                                          ; preds = %sw.bb15
  %43 = ptrtoint ptr %lladdr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lladdr, align 8
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %44, label %land.end.i [
    i8 3, label %sw.bb.i
    i8 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %46 = getelementptr inbounds %struct.ieee802154_addr, ptr %lladdr, i32 0, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %46, align 1
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #7
  %50 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx2.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -128, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 8
  %52 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %49, ptr %arrayidx4.i.i, align 4
  %53 = lshr i64 %49, 56
  %54 = trunc i64 %53 to i8
  %55 = xor i8 %54, 2
  store i8 %55, ptr %arrayidx4.i.i, align 4
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx4.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -128, ptr %arrayidx4.i, align 1
  %arrayidx6.i98 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %58 = ptrtoint ptr %arrayidx6.i98 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %arrayidx6.i98, align 1
  %arrayidx8.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %59 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -2, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 7
  %60 = getelementptr inbounds %struct.ieee802154_addr, ptr %lladdr, i32 0, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %60, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #7
  %64 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %63, ptr %arrayidx10.i, align 1
  br label %sw.epilog

land.end.i:                                       ; preds = %sw.bb17
  %.b53.i = load i1, ptr @lowpan_iphc_uncompress_802154_lladdr.__already_done, align 1
  br i1 %.b53.i, label %land.end.i.sw.epilog_crit_edge, label %if.then.i99, !prof !150

land.end.i.sw.epilog_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i99:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lowpan_iphc_uncompress_802154_lladdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 184, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb15
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %65 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %addr_len.i, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %66, label %land.end.i104 [
    i8 6, label %sw.bb.i103
    i8 8, label %sw.bb1.i
  ]

sw.bb.i103:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx2.i.i100 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx2.i.i100 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -128, ptr %arrayidx2.i.i100, align 1
  %arrayidx4.i.i101 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 8
  %70 = call ptr @memcpy(ptr %arrayidx4.i.i101, ptr %lladdr, i32 3)
  %arrayidx6.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %71 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %arrayidx6.i.i, align 1
  %arrayidx8.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %72 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -2, ptr %arrayidx8.i.i, align 4
  %arrayidx10.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 13
  %add.ptr.i.i102 = getelementptr i8, ptr %lladdr, i32 3
  %73 = call ptr @memcpy(ptr %arrayidx10.i.i, ptr %add.ptr.i.i102, i32 3)
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx2.i40.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx2.i40.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -128, ptr %arrayidx2.i40.i, align 1
  %arrayidx4.i41.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 8
  %76 = ptrtoint ptr %lladdr to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %lladdr, align 1
  %78 = ptrtoint ptr %arrayidx4.i41.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %77, ptr %arrayidx4.i41.i, align 4
  %79 = lshr i64 %77, 56
  %80 = trunc i64 %79 to i8
  %81 = xor i8 %80, 2
  store i8 %81, ptr %arrayidx4.i41.i, align 4
  br label %sw.epilog

land.end.i104:                                    ; preds = %sw.default
  %.b39.i = load i1, ptr @lowpan_iphc_uncompress_lladdr.__already_done, align 1
  br i1 %.b39.i, label %land.end.i104.sw.epilog_crit_edge, label %if.then.i105, !prof !150

land.end.i104.sw.epilog_crit_edge:                ; preds = %land.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i105:                                     ; preds = %land.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lowpan_iphc_uncompress_lladdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 293, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i105, %land.end.i104.sw.epilog_crit_edge, %sw.bb1.i, %sw.bb.i103, %if.then.i99, %land.end.i.sw.epilog_crit_edge, %sw.bb2.i, %sw.bb.i
  %pfx18 = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 1
  %plen19 = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 2
  %82 = ptrtoint ptr %plen19 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %plen19, align 4
  %conv20 = zext i8 %83 to i32
  %shr.i106122 = lshr i32 %conv20, 3
  %and.i107 = and i32 %conv20, 7
  %84 = call ptr @memcpy(ptr %ipaddr, ptr %pfx18, i32 %shr.i106122)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %cmp.not.i108 = icmp eq i32 %and.i107, 0
  br i1 %cmp.not.i108, label %sw.epilog.cleanup_crit_edge, label %if.then.i115

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i115:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %shr1.i109 = lshr i32 65280, %and.i107
  %neg.i110 = ashr i32 -65281, %and.i107
  %arrayidx.i111 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 %shr.i106122
  %85 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i111, align 1
  %87 = trunc i32 %neg.i110 to i8
  %conv4.i112 = and i8 %86, %87
  store i8 %conv4.i112, ptr %arrayidx.i111, align 1
  %arrayidx6.i113 = getelementptr [16 x i8], ptr %pfx18, i32 0, i32 %shr.i106122
  %88 = ptrtoint ptr %arrayidx6.i113 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx6.i113, align 1
  %90 = trunc i32 %shr1.i109 to i8
  %91 = and i8 %89, %90
  %conv13.i114 = or i8 %91, %conv4.i112
  store i8 %conv13.i114, ptr %arrayidx.i111, align 1
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_uncompress_ctx_addr.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_uncompress_ctx_addr, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !149

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_uncompress_ctx_addr.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.24, i32 noundef %conv) #7
  br label %cleanup

sw.epilog27:                                      ; preds = %lowpan_fetch_skb.exit85.sw.epilog27_crit_edge, %lowpan_fetch_skb.exit.sw.epilog27_crit_edge
  %fail.0.shrunk = phi i1 [ %retval.0.i9.i, %lowpan_fetch_skb.exit.sw.epilog27_crit_edge ], [ %retval.0.i9.i84, %lowpan_fetch_skb.exit85.sw.epilog27_crit_edge ]
  br i1 %fail.0.shrunk, label %sw.epilog27.do.body30_crit_edge, label %sw.epilog27.cleanup_crit_edge

sw.epilog27.cleanup_crit_edge:                    ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog27.do.body30_crit_edge:                  ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

do.body30:                                        ; preds = %sw.epilog27.do.body30_crit_edge, %if.then.i95.do.body30_crit_edge, %if.then.i.do.body30_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_uncompress_ctx_addr.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_uncompress_ctx_addr, %if.then42)) #7
          to label %cleanup [label %if.then42], !srcloc !149

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_uncompress_ctx_addr.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body30, %sw.epilog27.cleanup_crit_edge, %if.then, %do.body, %if.then.i115, %sw.epilog.cleanup_crit_edge, %if.then.i95.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -5, %if.then42 ], [ -22, %do.body ], [ -5, %do.body30 ], [ 0, %if.then.i95.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then.i115 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_iphc_uncompress_addr(ptr noundef %skb, ptr nocapture noundef readonly %dev, ptr noundef writeonly %ipaddr, i8 noundef zeroext %address_mode, ptr nocapture noundef readonly %lladdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %address_mode to i32
  %0 = zext i8 %address_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %address_mode, label %do.body [
    i8 0, label %sw.bb
    i8 16, label %entry.sw.bb1_crit_edge
    i8 1, label %entry.sw.bb1_crit_edge112
    i8 32, label %entry.sw.bb9_crit_edge
    i8 2, label %entry.sw.bb9_crit_edge113
    i8 48, label %entry.sw.bb22_crit_edge
    i8 3, label %entry.sw.bb22_crit_edge114
  ]

entry.sw.bb22_crit_edge114:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

entry.sw.bb22_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

entry.sw.bb9_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb1_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 16
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.if.end.i_crit_edge, !prof !148

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp3.i.i = icmp ult i32 %2, 16
  br i1 %cmp3.i.i, label %if.end.i.i.do.body34_crit_edge, label %pskb_may_pull.exit.i, !prof !148

if.end.i.i.do.body34_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 16, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.do.body34_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !148

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.do.body34_crit_edge:         ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %7 = call ptr @memcpy(ptr %ipaddr, ptr %6, i32 16)
  %call3.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge112
  %8 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx4 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 8
  %len.i.i.i73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i.i73, align 4
  %data_len.i.i.i74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i74, align 8
  %sub.i.i.i75 = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i.i75)
  %cmp.not.i.i76 = icmp ult i32 %sub.i.i.i75, 8
  br i1 %cmp.not.i.i76, label %if.end.i.i78, label %sw.bb1.if.end.i85_crit_edge, !prof !148

sw.bb1.if.end.i85_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i85

if.end.i.i78:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp3.i.i77 = icmp ult i32 %11, 8
  br i1 %cmp3.i.i77, label %if.end.i.i78.do.body34_crit_edge, label %pskb_may_pull.exit.i82, !prof !148

if.end.i.i78.do.body34_crit_edge:                 ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

pskb_may_pull.exit.i82:                           ; preds = %if.end.i.i78
  %sub.i.i79 = sub nuw nsw i32 8, %sub.i.i.i75
  %call13.i.i80 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i79) #7
  %cmp14.i.not.i81 = icmp eq ptr %call13.i.i80, null
  br i1 %cmp14.i.not.i81, label %pskb_may_pull.exit.i82.do.body34_crit_edge, label %pskb_may_pull.exit.i82.if.end.i85_crit_edge, !prof !148

pskb_may_pull.exit.i82.if.end.i85_crit_edge:      ; preds = %pskb_may_pull.exit.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i85

pskb_may_pull.exit.i82.do.body34_crit_edge:       ; preds = %pskb_may_pull.exit.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

if.end.i85:                                       ; preds = %pskb_may_pull.exit.i82.if.end.i85_crit_edge, %sw.bb1.if.end.i85_crit_edge
  %data.i.i83 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i83 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i83, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %15, align 1
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %arrayidx6, align 1
  %call3.i84 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #7
  br label %cleanup

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge113
  %19 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx13 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -128, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -2, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 14
  %len.i.i.i88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i.i88, align 4
  %data_len.i.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i89, align 8
  %sub.i.i.i90 = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i90)
  %cmp.not.i.i91 = icmp ult i32 %sub.i.i.i90, 2
  br i1 %cmp.not.i.i91, label %if.end.i.i93, label %sw.bb9.if.end.i100_crit_edge, !prof !148

sw.bb9.if.end.i100_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i100

if.end.i.i93:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp3.i.i92 = icmp ult i32 %24, 2
  br i1 %cmp3.i.i92, label %if.end.i.i93.do.body34_crit_edge, label %pskb_may_pull.exit.i97, !prof !148

if.end.i.i93.do.body34_crit_edge:                 ; preds = %if.end.i.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

pskb_may_pull.exit.i97:                           ; preds = %if.end.i.i93
  %sub.i.i94 = sub nuw nsw i32 2, %sub.i.i.i90
  %call13.i.i95 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i94) #7
  %cmp14.i.not.i96 = icmp eq ptr %call13.i.i95, null
  br i1 %cmp14.i.not.i96, label %pskb_may_pull.exit.i97.do.body34_crit_edge, label %pskb_may_pull.exit.i97.if.end.i100_crit_edge, !prof !148

pskb_may_pull.exit.i97.if.end.i100_crit_edge:     ; preds = %pskb_may_pull.exit.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i100

pskb_may_pull.exit.i97.do.body34_crit_edge:       ; preds = %pskb_may_pull.exit.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

if.end.i100:                                      ; preds = %pskb_may_pull.exit.i97.if.end.i100_crit_edge, %sw.bb9.if.end.i100_crit_edge
  %data.i.i98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i98 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i98, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %28, align 1
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %arrayidx19, align 1
  %call3.i99 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #7
  br label %cleanup

sw.bb22:                                          ; preds = %entry.sw.bb22_crit_edge, %entry.sw.bb22_crit_edge114
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cond = icmp eq i32 %33, 1
  br i1 %cond, label %sw.bb24, label %sw.default

sw.bb24:                                          ; preds = %sw.bb22
  %34 = ptrtoint ptr %lladdr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lladdr, align 8
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %35, label %land.end.i [
    i8 3, label %sw.bb.i
    i8 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %37 = getelementptr inbounds %struct.ieee802154_addr, ptr %lladdr, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %37, align 1
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #7
  %41 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx2.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -128, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 8
  %43 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %40, ptr %arrayidx4.i.i, align 4
  %44 = lshr i64 %40, 56
  %45 = trunc i64 %44 to i8
  %46 = xor i8 %45, 2
  store i8 %46, ptr %arrayidx4.i.i, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx4.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -128, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %49 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %50 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -2, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 7
  %51 = getelementptr inbounds %struct.ieee802154_addr, ptr %lladdr, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %51, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #7
  %55 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %arrayidx10.i, align 1
  br label %cleanup

land.end.i:                                       ; preds = %sw.bb24
  %.b53.i = load i1, ptr @lowpan_iphc_uncompress_802154_lladdr.__already_done, align 1
  br i1 %.b53.i, label %land.end.i.cleanup_crit_edge, label %if.then.i, !prof !150

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lowpan_iphc_uncompress_802154_lladdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 184, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

sw.default:                                       ; preds = %sw.bb22
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %56 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %addr_len.i, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %57, label %land.end.i107 [
    i8 6, label %sw.bb.i106
    i8 8, label %sw.bb1.i
  ]

sw.bb.i106:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx2.i.i103 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx2.i.i103 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -128, ptr %arrayidx2.i.i103, align 1
  %arrayidx4.i.i104 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 8
  %61 = call ptr @memcpy(ptr %arrayidx4.i.i104, ptr %lladdr, i32 3)
  %arrayidx6.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %62 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %arrayidx6.i.i, align 1
  %arrayidx8.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %63 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -2, ptr %arrayidx8.i.i, align 4
  %arrayidx10.i.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 13
  %add.ptr.i.i105 = getelementptr i8, ptr %lladdr, i32 3
  %64 = call ptr @memcpy(ptr %arrayidx10.i.i, ptr %add.ptr.i.i105, i32 3)
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -2, ptr %ipaddr, align 4
  %arrayidx2.i40.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx2.i40.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -128, ptr %arrayidx2.i40.i, align 1
  %arrayidx4.i41.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 8
  %67 = ptrtoint ptr %lladdr to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %lladdr, align 1
  %69 = ptrtoint ptr %arrayidx4.i41.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %68, ptr %arrayidx4.i41.i, align 4
  %70 = lshr i64 %68, 56
  %71 = trunc i64 %70 to i8
  %72 = xor i8 %71, 2
  store i8 %72, ptr %arrayidx4.i41.i, align 4
  br label %cleanup

land.end.i107:                                    ; preds = %sw.default
  %.b39.i = load i1, ptr @lowpan_iphc_uncompress_lladdr.__already_done, align 1
  br i1 %.b39.i, label %land.end.i107.cleanup_crit_edge, label %if.then.i108, !prof !150

land.end.i107.cleanup_crit_edge:                  ; preds = %land.end.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i108:                                     ; preds = %land.end.i107
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lowpan_iphc_uncompress_lladdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 293, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_uncompress_addr.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_uncompress_addr, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !149

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_uncompress_addr.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.28, i32 noundef %conv) #7
  br label %cleanup

do.body34:                                        ; preds = %pskb_may_pull.exit.i97.do.body34_crit_edge, %if.end.i.i93.do.body34_crit_edge, %pskb_may_pull.exit.i82.do.body34_crit_edge, %if.end.i.i78.do.body34_crit_edge, %pskb_may_pull.exit.i.do.body34_crit_edge, %if.end.i.i.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_uncompress_addr.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_uncompress_addr, %if.then46)) #7
          to label %cleanup [label %if.then46], !srcloc !149

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_uncompress_addr.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body34, %if.then, %do.body, %if.then.i108, %land.end.i107.cleanup_crit_edge, %sw.bb1.i, %sw.bb.i106, %if.then.i, %land.end.i.cleanup_crit_edge, %sw.bb2.i, %sw.bb.i, %if.end.i100, %if.end.i85, %if.end.i
  %retval.0 = phi i32 [ -22, %if.then ], [ -5, %if.then46 ], [ -22, %do.body ], [ -5, %do.body34 ], [ 0, %if.end.i ], [ 0, %if.end.i85 ], [ 0, %if.end.i100 ], [ 0, %if.then.i108 ], [ 0, %land.end.i107.cleanup_crit_edge ], [ 0, %sw.bb1.i ], [ 0, %sw.bb.i106 ], [ 0, %if.then.i ], [ 0, %land.end.i.cleanup_crit_edge ], [ 0, %sw.bb2.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_uncompress_multicast_ctx_daddr(ptr noundef %skb, ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %ipaddr) unnamed_addr #0 align 64 {
entry:
  %network_pfx = alloca %struct.in6_addr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %network_pfx) #7
  %0 = call ptr @memset(ptr %network_pfx, i32 0, i32 16)
  %1 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ipaddr, align 4
  %arrayidx2 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge, !prof !148

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp3.i.i = icmp ult i32 %3, 2
  br i1 %cmp3.i.i, label %if.end.i.i.lowpan_fetch_skb.exit_crit_edge, label %pskb_may_pull.exit.i, !prof !148

if.end.i.i.lowpan_fetch_skb.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 2, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !148

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %7, align 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %arrayidx2, align 1
  %call3.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #7
  br label %lowpan_fetch_skb.exit

lowpan_fetch_skb.exit:                            ; preds = %if.end.i, %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge, %if.end.i.i.lowpan_fetch_skb.exit_crit_edge
  %retval.0.i9.i = phi i1 [ true, %pskb_may_pull.exit.i.lowpan_fetch_skb.exit_crit_edge ], [ false, %if.end.i ], [ true, %if.end.i.i.lowpan_fetch_skb.exit_crit_edge ]
  %arrayidx4 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %11 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i.i, align 4
  %13 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i4 = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i.i4)
  %cmp.not.i.i5 = icmp ult i32 %sub.i.i.i4, 4
  br i1 %cmp.not.i.i5, label %if.end.i.i7, label %lowpan_fetch_skb.exit.lowpan_fetch_skb.exit16_crit_edge, !prof !148

lowpan_fetch_skb.exit.lowpan_fetch_skb.exit16_crit_edge: ; preds = %lowpan_fetch_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit16

if.end.i.i7:                                      ; preds = %lowpan_fetch_skb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp3.i.i6 = icmp ult i32 %12, 4
  br i1 %cmp3.i.i6, label %if.end.i.i7.cleanup_crit_edge, label %pskb_may_pull.exit.i11, !prof !148

if.end.i.i7.cleanup_crit_edge:                    ; preds = %if.end.i.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit.i11:                           ; preds = %if.end.i.i7
  %sub.i.i8 = sub nuw nsw i32 4, %sub.i.i.i4
  %call13.i.i9 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i8) #7
  %cmp14.i.not.i10 = icmp eq ptr %call13.i.i9, null
  br i1 %cmp14.i.not.i10, label %pskb_may_pull.exit.i11.cleanup_crit_edge, label %pskb_may_pull.exit.i11.lowpan_fetch_skb.exit16_crit_edge, !prof !148

pskb_may_pull.exit.i11.lowpan_fetch_skb.exit16_crit_edge: ; preds = %pskb_may_pull.exit.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit16

pskb_may_pull.exit.i11.cleanup_crit_edge:         ; preds = %pskb_may_pull.exit.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lowpan_fetch_skb.exit16:                          ; preds = %pskb_may_pull.exit.i11.lowpan_fetch_skb.exit16_crit_edge, %lowpan_fetch_skb.exit.lowpan_fetch_skb.exit16_crit_edge
  %data.i.i12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i12, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %16, align 1
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %arrayidx4, align 1
  %call3.i13 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #7
  br i1 %retval.0.i9.i, label %lowpan_fetch_skb.exit16.cleanup_crit_edge, label %if.end

lowpan_fetch_skb.exit16.cleanup_crit_edge:        ; preds = %lowpan_fetch_skb.exit16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lowpan_fetch_skb.exit16
  %plen = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 2
  %20 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %plen, align 4
  %arrayidx11 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx11, align 1
  %pfx = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 1
  %23 = load i8, ptr %plen, align 4
  %conv13 = zext i8 %23 to i32
  %shr.i20 = lshr i32 %conv13, 3
  %and.i = and i32 %conv13, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %24 = icmp slt i8 %23, 0
  %25 = sub nsw i32 16, %shr.i20
  %26 = select i1 %24, i32 0, i32 %25
  %27 = getelementptr i8, ptr %network_pfx, i32 %shr.i20
  %28 = call ptr @memset(ptr %27, i32 0, i32 %26)
  %29 = call ptr @memcpy(ptr %network_pfx, ptr %pfx, i32 %shr.i20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.ipv6_addr_prefix.exit_crit_edge, label %if.then.i

if.end.ipv6_addr_prefix.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_addr_prefix.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [16 x i8], ptr %pfx, i32 0, i32 %shr.i20
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %shr4.i = lshr i32 65280, %and.i
  %32 = trunc i32 %shr4.i to i8
  %conv6.i = and i8 %31, %32
  %arrayidx8.i = getelementptr [16 x i8], ptr %network_pfx, i32 0, i32 %shr.i20
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  br label %ipv6_addr_prefix.exit

ipv6_addr_prefix.exit:                            ; preds = %if.then.i, %if.end.ipv6_addr_prefix.exit_crit_edge
  %arrayidx15 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 4
  %34 = ptrtoint ptr %network_pfx to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %network_pfx, align 8
  %36 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %arrayidx15, align 4
  br label %cleanup

cleanup:                                          ; preds = %ipv6_addr_prefix.exit, %lowpan_fetch_skb.exit16.cleanup_crit_edge, %pskb_may_pull.exit.i11.cleanup_crit_edge, %if.end.i.i7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipv6_addr_prefix.exit ], [ -5, %lowpan_fetch_skb.exit16.cleanup_crit_edge ], [ -5, %pskb_may_pull.exit.i11.cleanup_crit_edge ], [ -5, %if.end.i.i7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %network_pfx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_uncompress_multicast_daddr(ptr noundef %skb, ptr nocapture noundef writeonly %ipaddr, i8 noundef zeroext %address_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %address_mode to i32
  %0 = zext i8 %address_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %address_mode, label %do.body [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb14
    i8 3, label %sw.bb30
  ]

sw.bb:                                            ; preds = %entry
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 16
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.if.end.i_crit_edge, !prof !148

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp3.i.i = icmp ult i32 %2, 16
  br i1 %cmp3.i.i, label %if.end.i.i.do.body47_crit_edge, label %pskb_may_pull.exit.i, !prof !148

if.end.i.i.do.body47_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 16, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.do.body47_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !148

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.do.body47_crit_edge:         ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %7 = call ptr @memcpy(ptr %ipaddr, ptr %6, i32 16)
  %call3.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %8 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %ipaddr, align 4
  %arrayidx4 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %len.i.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i.i89, align 4
  %data_len.i.i.i90 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i90, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.not.i.i92 = icmp eq i32 %12, %10
  br i1 %cmp.not.i.i92, label %if.end.i.i94, label %sw.bb1.if.end.i101_crit_edge, !prof !148

sw.bb1.if.end.i101_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i101

if.end.i.i94:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.i.i93 = icmp eq i32 %10, 0
  br i1 %cmp3.i.i93, label %if.end.i.i94.lowpan_fetch_skb.exit103_crit_edge, label %pskb_may_pull.exit.i98, !prof !148

if.end.i.i94.lowpan_fetch_skb.exit103_crit_edge:  ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit103

pskb_may_pull.exit.i98:                           ; preds = %if.end.i.i94
  %call13.i.i96 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #7
  %cmp14.i.not.i97 = icmp eq ptr %call13.i.i96, null
  br i1 %cmp14.i.not.i97, label %pskb_may_pull.exit.i98.lowpan_fetch_skb.exit103_crit_edge, label %pskb_may_pull.exit.i98.if.end.i101_crit_edge, !prof !148

pskb_may_pull.exit.i98.if.end.i101_crit_edge:     ; preds = %pskb_may_pull.exit.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i101

pskb_may_pull.exit.i98.lowpan_fetch_skb.exit103_crit_edge: ; preds = %pskb_may_pull.exit.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit103

if.end.i101:                                      ; preds = %pskb_may_pull.exit.i98.if.end.i101_crit_edge, %sw.bb1.if.end.i101_crit_edge
  %data.i.i99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i99 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i99, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx4, align 1
  %call3.i100 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  br label %lowpan_fetch_skb.exit103

lowpan_fetch_skb.exit103:                         ; preds = %if.end.i101, %pskb_may_pull.exit.i98.lowpan_fetch_skb.exit103_crit_edge, %if.end.i.i94.lowpan_fetch_skb.exit103_crit_edge
  %retval.0.i9.i102 = phi i1 [ true, %pskb_may_pull.exit.i98.lowpan_fetch_skb.exit103_crit_edge ], [ false, %if.end.i101 ], [ true, %if.end.i.i94.lowpan_fetch_skb.exit103_crit_edge ]
  %arrayidx8 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %18 = ptrtoint ptr %len.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i.i89, align 4
  %20 = ptrtoint ptr %data_len.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i.i90, align 8
  %sub.i.i.i106 = sub i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i.i106)
  %cmp.not.i.i107 = icmp ult i32 %sub.i.i.i106, 5
  br i1 %cmp.not.i.i107, label %if.end.i.i109, label %lowpan_fetch_skb.exit103.sw.epilog_crit_edge, !prof !148

lowpan_fetch_skb.exit103.sw.epilog_crit_edge:     ; preds = %lowpan_fetch_skb.exit103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i109:                                    ; preds = %lowpan_fetch_skb.exit103
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp3.i.i108 = icmp ult i32 %19, 5
  br i1 %cmp3.i.i108, label %if.end.i.i109.do.body47_crit_edge, label %pskb_may_pull.exit.i113, !prof !148

if.end.i.i109.do.body47_crit_edge:                ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

pskb_may_pull.exit.i113:                          ; preds = %if.end.i.i109
  %sub.i.i110 = sub nuw nsw i32 5, %sub.i.i.i106
  %call13.i.i111 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i110) #7
  %cmp14.i.not.i112 = icmp eq ptr %call13.i.i111, null
  br i1 %cmp14.i.not.i112, label %pskb_may_pull.exit.i113.do.body47_crit_edge, label %pskb_may_pull.exit.i113.sw.epilog_crit_edge, !prof !148

pskb_may_pull.exit.i113.sw.epilog_crit_edge:      ; preds = %pskb_may_pull.exit.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

pskb_may_pull.exit.i113.do.body47_crit_edge:      ; preds = %pskb_may_pull.exit.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

sw.bb14:                                          ; preds = %entry
  %22 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %ipaddr, align 4
  %arrayidx18 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %len.i.i.i119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i.i119, align 4
  %data_len.i.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i120, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp.not.i.i122 = icmp eq i32 %26, %24
  br i1 %cmp.not.i.i122, label %if.end.i.i124, label %sw.bb14.if.end.i131_crit_edge, !prof !148

sw.bb14.if.end.i131_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i131

if.end.i.i124:                                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp3.i.i123 = icmp eq i32 %24, 0
  br i1 %cmp3.i.i123, label %if.end.i.i124.lowpan_fetch_skb.exit133_crit_edge, label %pskb_may_pull.exit.i128, !prof !148

if.end.i.i124.lowpan_fetch_skb.exit133_crit_edge: ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit133

pskb_may_pull.exit.i128:                          ; preds = %if.end.i.i124
  %call13.i.i126 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #7
  %cmp14.i.not.i127 = icmp eq ptr %call13.i.i126, null
  br i1 %cmp14.i.not.i127, label %pskb_may_pull.exit.i128.lowpan_fetch_skb.exit133_crit_edge, label %pskb_may_pull.exit.i128.if.end.i131_crit_edge, !prof !148

pskb_may_pull.exit.i128.if.end.i131_crit_edge:    ; preds = %pskb_may_pull.exit.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i131

pskb_may_pull.exit.i128.lowpan_fetch_skb.exit133_crit_edge: ; preds = %pskb_may_pull.exit.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit133

if.end.i131:                                      ; preds = %pskb_may_pull.exit.i128.if.end.i131_crit_edge, %sw.bb14.if.end.i131_crit_edge
  %data.i.i129 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i129 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i129, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %31 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx18, align 1
  %call3.i130 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  br label %lowpan_fetch_skb.exit133

lowpan_fetch_skb.exit133:                         ; preds = %if.end.i131, %pskb_may_pull.exit.i128.lowpan_fetch_skb.exit133_crit_edge, %if.end.i.i124.lowpan_fetch_skb.exit133_crit_edge
  %retval.0.i9.i132 = phi i1 [ true, %pskb_may_pull.exit.i128.lowpan_fetch_skb.exit133_crit_edge ], [ false, %if.end.i131 ], [ true, %if.end.i.i124.lowpan_fetch_skb.exit133_crit_edge ]
  %arrayidx22 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 13
  %32 = ptrtoint ptr %len.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i.i119, align 4
  %34 = ptrtoint ptr %data_len.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i.i120, align 8
  %sub.i.i.i136 = sub i32 %33, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i.i136)
  %cmp.not.i.i137 = icmp ult i32 %sub.i.i.i136, 3
  br i1 %cmp.not.i.i137, label %if.end.i.i139, label %lowpan_fetch_skb.exit133.lowpan_fetch_skb.exit148_crit_edge, !prof !148

lowpan_fetch_skb.exit133.lowpan_fetch_skb.exit148_crit_edge: ; preds = %lowpan_fetch_skb.exit133
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit148

if.end.i.i139:                                    ; preds = %lowpan_fetch_skb.exit133
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp3.i.i138 = icmp ult i32 %33, 3
  br i1 %cmp3.i.i138, label %if.end.i.i139.do.body47_crit_edge, label %pskb_may_pull.exit.i143, !prof !148

if.end.i.i139.do.body47_crit_edge:                ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

pskb_may_pull.exit.i143:                          ; preds = %if.end.i.i139
  %sub.i.i140 = sub nuw nsw i32 3, %sub.i.i.i136
  %call13.i.i141 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i140) #7
  %cmp14.i.not.i142 = icmp eq ptr %call13.i.i141, null
  br i1 %cmp14.i.not.i142, label %pskb_may_pull.exit.i143.do.body47_crit_edge, label %pskb_may_pull.exit.i143.lowpan_fetch_skb.exit148_crit_edge, !prof !148

pskb_may_pull.exit.i143.lowpan_fetch_skb.exit148_crit_edge: ; preds = %pskb_may_pull.exit.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_fetch_skb.exit148

pskb_may_pull.exit.i143.do.body47_crit_edge:      ; preds = %pskb_may_pull.exit.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

lowpan_fetch_skb.exit148:                         ; preds = %pskb_may_pull.exit.i143.lowpan_fetch_skb.exit148_crit_edge, %lowpan_fetch_skb.exit133.lowpan_fetch_skb.exit148_crit_edge
  %data.i.i144 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i144 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i144, align 4
  %38 = call ptr @memcpy(ptr %arrayidx22, ptr %37, i32 3)
  %call3.i145 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #7
  br i1 %retval.0.i9.i132, label %lowpan_fetch_skb.exit148.do.body47_crit_edge, label %lowpan_fetch_skb.exit148.cleanup_crit_edge

lowpan_fetch_skb.exit148.cleanup_crit_edge:       ; preds = %lowpan_fetch_skb.exit148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lowpan_fetch_skb.exit148.do.body47_crit_edge:     ; preds = %lowpan_fetch_skb.exit148
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

sw.bb30:                                          ; preds = %entry
  %39 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %ipaddr, align 4
  %arrayidx34 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %arrayidx34, align 1
  %arrayidx36 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 15
  %len.i.i.i149 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %41 = ptrtoint ptr %len.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i.i149, align 4
  %data_len.i.i.i150 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %43 = ptrtoint ptr %data_len.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i.i150, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp.not.i.i152 = icmp eq i32 %44, %42
  br i1 %cmp.not.i.i152, label %if.end.i.i154, label %sw.bb30.if.end.i161_crit_edge, !prof !148

sw.bb30.if.end.i161_crit_edge:                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i161

if.end.i.i154:                                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp3.i.i153 = icmp eq i32 %42, 0
  br i1 %cmp3.i.i153, label %if.end.i.i154.do.body47_crit_edge, label %pskb_may_pull.exit.i158, !prof !148

if.end.i.i154.do.body47_crit_edge:                ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

pskb_may_pull.exit.i158:                          ; preds = %if.end.i.i154
  %call13.i.i156 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #7
  %cmp14.i.not.i157 = icmp eq ptr %call13.i.i156, null
  br i1 %cmp14.i.not.i157, label %pskb_may_pull.exit.i158.do.body47_crit_edge, label %pskb_may_pull.exit.i158.if.end.i161_crit_edge, !prof !148

pskb_may_pull.exit.i158.if.end.i161_crit_edge:    ; preds = %pskb_may_pull.exit.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i161

pskb_may_pull.exit.i158.do.body47_crit_edge:      ; preds = %pskb_may_pull.exit.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.end.i161:                                      ; preds = %pskb_may_pull.exit.i158.if.end.i161_crit_edge, %sw.bb30.if.end.i161_crit_edge
  %data.i.i159 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i159 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i159, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %49 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx36, align 1
  %call3.i160 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_uncompress_multicast_daddr.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_uncompress_multicast_daddr, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !149

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_uncompress_multicast_daddr.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.31, i32 noundef %conv) #7
  br label %cleanup

sw.epilog:                                        ; preds = %pskb_may_pull.exit.i113.sw.epilog_crit_edge, %lowpan_fetch_skb.exit103.sw.epilog_crit_edge
  %data.i.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i114 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i114, align 4
  %52 = call ptr @memcpy(ptr %arrayidx8, ptr %51, i32 5)
  %call3.i115 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 5) #7
  br i1 %retval.0.i9.i102, label %sw.epilog.do.body47_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.do.body47_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

do.body47:                                        ; preds = %sw.epilog.do.body47_crit_edge, %pskb_may_pull.exit.i158.do.body47_crit_edge, %if.end.i.i154.do.body47_crit_edge, %lowpan_fetch_skb.exit148.do.body47_crit_edge, %pskb_may_pull.exit.i143.do.body47_crit_edge, %if.end.i.i139.do.body47_crit_edge, %pskb_may_pull.exit.i113.do.body47_crit_edge, %if.end.i.i109.do.body47_crit_edge, %pskb_may_pull.exit.i.do.body47_crit_edge, %if.end.i.i.do.body47_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_uncompress_multicast_daddr.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_uncompress_multicast_daddr, %if.then59)) #7
          to label %cleanup [label %if.then59], !srcloc !149

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_uncompress_multicast_daddr.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.body47, %sw.epilog.cleanup_crit_edge, %if.then, %do.body, %if.end.i161, %lowpan_fetch_skb.exit148.cleanup_crit_edge, %if.end.i
  %retval.0 = phi i32 [ -22, %if.then ], [ -5, %if.then59 ], [ -22, %do.body ], [ -5, %do.body47 ], [ 0, %lowpan_fetch_skb.exit148.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %if.end.i161 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_nhc_do_uncompression(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_cow(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %skb_cloned.exit.thread, label %skb_cloned.exit

skb_cloned.exit:                                  ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #7
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub.i.i)
  %cmp.i1 = icmp ult i32 %sub.ptr.sub.i.i, 40
  br i1 %cmp.i1, label %skb_cloned.exit.if.end.thread.i_crit_edge, label %if.end.i

skb_cloned.exit.if.end.thread.i_crit_edge:        ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i

skb_cloned.exit.thread:                           ; preds = %entry
  %data.i.i2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i2, align 4
  %head.i.i3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i3, align 8
  %sub.ptr.lhs.cast.i.i4 = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i5 = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i6 = sub i32 %sub.ptr.lhs.cast.i.i4, %sub.ptr.rhs.cast.i.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub.i.i6)
  %cmp.i17 = icmp ult i32 %sub.ptr.sub.i.i6, 40
  br i1 %cmp.i17, label %skb_cloned.exit.thread.if.end.thread.i_crit_edge, label %skb_cloned.exit.thread.__skb_cow.exit_crit_edge

skb_cloned.exit.thread.__skb_cow.exit_crit_edge:  ; preds = %skb_cloned.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_cow.exit

skb_cloned.exit.thread.if.end.thread.i_crit_edge: ; preds = %skb_cloned.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %skb_cloned.exit.thread.if.end.thread.i_crit_edge, %skb_cloned.exit.if.end.thread.i_crit_edge
  %sub.ptr.sub.i.i8 = phi i32 [ %sub.ptr.sub.i.i6, %skb_cloned.exit.thread.if.end.thread.i_crit_edge ], [ %sub.ptr.sub.i.i, %skb_cloned.exit.if.end.thread.i_crit_edge ]
  %phi.bo.i = sub nuw nsw i32 167, %sub.ptr.sub.i.i8
  %phi.bo11.i = and i32 %phi.bo.i, -128
  br label %if.then3.i

if.end.i:                                         ; preds = %skb_cloned.exit
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %if.end.i.__skb_cow.exit_crit_edge, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3.i

if.end.i.__skb_cow.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_cow.exit

if.then3.i:                                       ; preds = %if.end.i.if.then3.i_crit_edge, %if.end.thread.i
  %delta.010.i = phi i32 [ %phi.bo11.i, %if.end.thread.i ], [ 0, %if.end.i.if.then3.i_crit_edge ]
  %call4.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i, i32 noundef 0, i32 noundef 2592) #7
  br label %__skb_cow.exit

__skb_cow.exit:                                   ; preds = %if.then3.i, %if.end.i.__skb_cow.exit_crit_edge, %skb_cloned.exit.thread.__skb_cow.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.then3.i ], [ 0, %if.end.i.__skb_cow.exit_crit_edge ], [ 0, %skb_cloned.exit.thread.__skb_cow.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_header_compress(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readonly %daddr, ptr nocapture noundef readonly %saddr) #0 align 64 {
entry:
  %data.sroa.0.i = alloca [5 x i8], align 2
  %network_pfx.i = alloca %struct.in6_addr, align 8
  %hc_ptr = alloca ptr, align 4
  %head = alloca [52 x i8], align 1
  %dci_entry = alloca %struct.lowpan_iphc_ctx, align 4
  %sci_entry = alloca %struct.lowpan_iphc_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hc_ptr) #7
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %head) #7
  %0 = call ptr @memset(ptr %head, i32 0, i32 52)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dci_entry) #7
  %1 = call ptr @memset(ptr %dci_entry, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sci_entry) #7
  %2 = call ptr @memset(ptr %sci_entry, i32 255, i32 28)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %4)
  %cmp.not = icmp eq i16 %4, -31011
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr = getelementptr inbounds i8, ptr %head, i32 2
  %9 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %hc_ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_compress.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_compress, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !149

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %conv6 = zext i8 %bf.lshr to i32
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %payload_len, align 4
  %conv7 = zext i16 %12 to i32
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nexthdr, align 2
  %conv8 = zext i8 %14 to i32
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hop_limit, align 1
  %conv9 = zext i8 %16 to i32
  %daddr10 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_compress.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.10, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, ptr noundef %daddr10) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %daddr13 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call.i = call i32 @__ipv6_addr_type(ptr noundef %daddr13) #7
  %ctx = getelementptr i8, ptr %dev, i32 2312
  call void @_raw_spin_lock_bh(ptr noundef %ctx) #7
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %do.end
  %table1.i = getelementptr i8, ptr %dev, i32 2360
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %network_pfx.i) #7
  %17 = call ptr @memset(ptr %network_pfx.i, i32 0, i32 16)
  %18 = ptrtoint ptr %daddr13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %addr_mcast.sroa.0.0.copyload.i = load i32, ptr %daddr13, align 4
  %addr_mcast.sroa.0.sroa.0.0.extract.shift.i = and i32 %addr_mcast.sroa.0.0.copyload.i, -256
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %daddr13, i32 0, i32 1
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %daddr13, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then17
  %i.035.i = phi i32 [ 0, %if.then17 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.lowpan_iphc_ctx, ptr %table1.i, i32 %i.035.i
  %flags.i.i = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %arrayidx.i, i32 0, i32 3
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i30.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i30.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %plen.i = getelementptr %struct.lowpan_iphc_ctx, ptr %table1.i, i32 %i.035.i, i32 2
  %24 = ptrtoint ptr %plen.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %plen.i, align 4
  %pfx.i = getelementptr %struct.lowpan_iphc_ctx, ptr %table1.i, i32 %i.035.i, i32 1
  %conv.i478 = zext i8 %25 to i32
  %shr.i34.i = lshr i32 %conv.i478, 3
  %and.i.i = and i32 %conv.i478, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %26 = icmp slt i8 %25, 0
  %27 = sub nsw i32 16, %shr.i34.i
  %28 = select i1 %26, i32 0, i32 %27
  %29 = getelementptr i8, ptr %network_pfx.i, i32 %shr.i34.i
  %30 = call ptr @memset(ptr %29, i32 0, i32 %28)
  %31 = call ptr @memcpy(ptr %network_pfx.i, ptr %pfx.i, i32 %shr.i34.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.ipv6_addr_prefix.exit.i_crit_edge, label %if.then.i.i

if.end.i.ipv6_addr_prefix.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_addr_prefix.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [16 x i8], ptr %pfx.i, i32 0, i32 %shr.i34.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i, align 1
  %shr4.i.i = lshr i32 65280, %and.i.i
  %34 = trunc i32 %shr4.i.i to i8
  %conv6.i.i = and i8 %33, %34
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv6.i.i, ptr %29, align 1
  br label %ipv6_addr_prefix.exit.i

ipv6_addr_prefix.exit.i:                          ; preds = %if.then.i.i, %if.end.i.ipv6_addr_prefix.exit.i_crit_edge
  %36 = ptrtoint ptr %network_pfx.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %network_pfx.i, align 8
  %addr_mcast.sroa.6.sroa.0.0.extract.shift31.i = lshr i64 %37, 32
  %addr_mcast.sroa.6.sroa.0.0.extract.trunc32.i = trunc i64 %addr_mcast.sroa.6.sroa.0.0.extract.shift31.i to i32
  %addr_mcast.sroa.6.sroa.6.0.extract.trunc33.i = trunc i64 %37 to i32
  %addr_mcast.sroa.0.sroa.0.0.insert.insert.i = or i32 %addr_mcast.sroa.0.sroa.0.0.extract.shift.i, %conv.i478
  %xor.i.i = xor i32 %addr_mcast.sroa.0.sroa.0.0.insert.insert.i, %addr_mcast.sroa.0.0.copyload.i
  %38 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i.i, align 4
  %xor7.i.i = xor i32 %39, %addr_mcast.sroa.6.sroa.0.0.extract.trunc32.i
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %40 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9.i.i, align 4
  %xor12.i.i = xor i32 %41, %addr_mcast.sroa.6.sroa.6.0.extract.trunc33.i
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or13.i.i)
  %cmp.i.i = icmp eq i32 %or13.i.i, 0
  br i1 %cmp.i.i, label %ipv6_addr_prefix.exit.i.lowpan_iphc_ctx_get_by_mcast_addr.exit_crit_edge, label %ipv6_addr_prefix.exit.i.for.inc.i_crit_edge

ipv6_addr_prefix.exit.i.for.inc.i_crit_edge:      ; preds = %ipv6_addr_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

ipv6_addr_prefix.exit.i.lowpan_iphc_ctx_get_by_mcast_addr.exit_crit_edge: ; preds = %ipv6_addr_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_ctx_get_by_mcast_addr.exit

for.inc.i:                                        ; preds = %ipv6_addr_prefix.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.lowpan_iphc_ctx_get_by_mcast_addr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.lowpan_iphc_ctx_get_by_mcast_addr.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_ctx_get_by_mcast_addr.exit

lowpan_iphc_ctx_get_by_mcast_addr.exit:           ; preds = %for.inc.i.lowpan_iphc_ctx_get_by_mcast_addr.exit_crit_edge, %ipv6_addr_prefix.exit.i.lowpan_iphc_ctx_get_by_mcast_addr.exit_crit_edge
  %ret.0.i = phi ptr [ null, %for.inc.i.lowpan_iphc_ctx_get_by_mcast_addr.exit_crit_edge ], [ %arrayidx.i, %ipv6_addr_prefix.exit.i.lowpan_iphc_ctx_get_by_mcast_addr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %network_pfx.i) #7
  br label %if.end22

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call fastcc ptr @lowpan_iphc_ctx_get_by_addr(ptr noundef %dev, ptr noundef %daddr13)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %lowpan_iphc_ctx_get_by_mcast_addr.exit
  %dci.0 = phi ptr [ %ret.0.i, %lowpan_iphc_ctx_get_by_mcast_addr.exit ], [ %call21, %if.else ]
  %tobool23.not = icmp eq ptr %dci.0, null
  br i1 %tobool23.not, label %if.end22.if.end28_crit_edge, label %if.then24

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %42 = call ptr @memcpy(ptr %dci_entry, ptr %dci.0, i32 28)
  %43 = ptrtoint ptr %dci.0 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dci.0, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end22.if.end28_crit_edge
  %cid.0 = phi i8 [ 0, %if.end22.if.end28_crit_edge ], [ %44, %if.then24 ]
  call void @_raw_spin_unlock_bh(ptr noundef %ctx) #7
  call void @_raw_spin_lock_bh(ptr noundef %ctx) #7
  %saddr35 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call36 = call fastcc ptr @lowpan_iphc_ctx_get_by_addr(ptr noundef %dev, ptr noundef %saddr35)
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end28.if.end44_crit_edge, label %if.then38

if.end28.if.end44_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %45 = call ptr @memcpy(ptr %sci_entry, ptr %call36, i32 28)
  %46 = ptrtoint ptr %call36 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %call36, align 4
  %shl = shl i8 %47, 4
  %or42 = or i8 %shl, %cid.0
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end28.if.end44_crit_edge
  %cid.1 = phi i8 [ %cid.0, %if.end28.if.end44_crit_edge ], [ %or42, %if.then38 ]
  call void @_raw_spin_unlock_bh(ptr noundef %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cid.1)
  %tobool48.not = icmp eq i8 %cid.1, 0
  br i1 %tobool48.not, label %if.end44.if.end53_crit_edge, label %if.then49

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hc_ptr, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %cid.1, ptr %49, align 1
  %51 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i482 = getelementptr i8, ptr %51, i32 1
  store ptr %add.ptr.i482, ptr %hc_ptr, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end44.if.end53_crit_edge
  %iphc1.0 = phi i8 [ -128, %if.then49 ], [ 0, %if.end44.if.end53_crit_edge ]
  %call54 = call fastcc zeroext i8 @lowpan_iphc_tf_compress(ptr noundef nonnull %hc_ptr, ptr noundef %add.ptr.i.i)
  %call59 = call i32 @lowpan_nhc_check_compression(ptr noundef %skb, ptr noundef %add.ptr.i.i, ptr noundef nonnull %hc_ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call59)
  %cmp60 = icmp eq i32 %call59, -2
  br i1 %cmp60, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %52 = or i8 %call54, 96
  %nexthdr63 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hc_ptr, align 4
  %55 = ptrtoint ptr %nexthdr63 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nexthdr63, align 1
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %54, align 1
  %58 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i483 = getelementptr i8, ptr %58, i32 1
  store ptr %add.ptr.i483, ptr %hc_ptr, align 4
  br label %if.end68

if.else64:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %59 = or i8 %call54, 100
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.then62
  %iphc0.0 = phi i8 [ %52, %if.then62 ], [ %59, %if.else64 ]
  %hop_limit69 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %hop_limit69 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hop_limit69, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %61, label %sw.default [
    i8 1, label %sw.bb
    i8 64, label %sw.bb74
    i8 -1, label %sw.bb78
  ]

sw.bb:                                            ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %63 = or i8 %iphc0.0, 1
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %64 = or i8 %iphc0.0, 2
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %65 = or i8 %iphc0.0, 3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hc_ptr, align 4
  %68 = ptrtoint ptr %hop_limit69 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %hop_limit69, align 1
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %67, align 1
  %71 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i484 = getelementptr i8, ptr %71, i32 1
  store ptr %add.ptr.i484, ptr %hc_ptr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb78, %sw.bb74, %sw.bb
  %iphc0.1 = phi i8 [ %iphc0.0, %sw.default ], [ %65, %sw.bb78 ], [ %64, %sw.bb74 ], [ %63, %sw.bb ]
  %call.i485 = call i32 @__ipv6_addr_type(ptr noundef %saddr35) #7
  %and.i486 = and i32 %call.i485, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i486)
  %cmp85 = icmp eq i32 %and.i486, 0
  br i1 %cmp85, label %do.body88, label %if.else107

do.body88:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_compress.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_compress, %if.then100)) #7
          to label %do.end103 [label %if.then100], !srcloc !149

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_compress.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.15) #7
  br label %do.end103

do.end103:                                        ; preds = %if.then100, %do.body88
  %72 = or i8 %iphc1.0, 64
  br label %if.end183

if.else107:                                       ; preds = %sw.epilog
  br i1 %tobool37.not, label %if.else119, label %if.then109

if.then109:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  %call111 = call fastcc zeroext i8 @lowpan_compress_ctx_addr(ptr noundef nonnull %hc_ptr, ptr noundef %dev, ptr noundef %saddr35, ptr noundef nonnull %sci_entry, ptr noundef %saddr, i1 noundef zeroext true)
  %or114454 = or i8 %iphc1.0, %call111
  %73 = or i8 %or114454, 64
  br label %if.end183

if.else119:                                       ; preds = %if.else107
  %and120 = and i32 %call.i485, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else119.do.body162_crit_edge, label %land.lhs.true

if.else119.do.body162_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body162

land.lhs.true:                                    ; preds = %if.else119
  %arrayidx = getelementptr [16 x i8], ptr %saddr35, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx, align 1
  %76 = and i8 %75, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool125.not = icmp eq i8 %76, 0
  br i1 %tobool125.not, label %land.lhs.true126, label %land.lhs.true.do.body162_crit_edge

land.lhs.true.do.body162_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body162

land.lhs.true126:                                 ; preds = %land.lhs.true
  %arrayidx129 = getelementptr [8 x i16], ptr %saddr35, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx129, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool130.not = icmp eq i16 %78, 0
  br i1 %tobool130.not, label %land.lhs.true131, label %land.lhs.true126.do.body162_crit_edge

land.lhs.true126.do.body162_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body162

land.lhs.true131:                                 ; preds = %land.lhs.true126
  %arrayidx134 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool135.not = icmp eq i32 %80, 0
  br i1 %tobool135.not, label %if.then136, label %land.lhs.true131.do.body162_crit_edge

land.lhs.true131.do.body162_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body162

if.then136:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #9
  %call138 = call fastcc zeroext i8 @lowpan_compress_addr_64(ptr noundef nonnull %hc_ptr, ptr noundef %dev, ptr noundef %saddr35, ptr noundef %saddr, i1 noundef zeroext true)
  %or141453 = or i8 %call138, %iphc1.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_compress.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_compress, %if.then155)) #7
          to label %if.end183 [label %if.then155], !srcloc !149

if.then155:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #9
  %conv157 = zext i8 %or141453 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_compress.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.16, ptr noundef %saddr35, i32 noundef %conv157) #7
  br label %if.end183

do.body162:                                       ; preds = %land.lhs.true131.do.body162_crit_edge, %land.lhs.true126.do.body162_crit_edge, %land.lhs.true.do.body162_crit_edge, %if.else119.do.body162_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_compress.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_compress, %if.then174)) #7
          to label %do.end177 [label %if.then174], !srcloc !149

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_compress.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.17) #7
  br label %do.end177

do.end177:                                        ; preds = %if.then174, %do.body162
  %81 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hc_ptr, align 4
  %83 = call ptr @memcpy(ptr %82, ptr %saddr35, i32 16)
  %add.ptr.i487 = getelementptr i8, ptr %82, i32 16
  store ptr %add.ptr.i487, ptr %hc_ptr, align 4
  br label %if.end183

if.end183:                                        ; preds = %do.end177, %if.then155, %if.then136, %if.then109, %do.end103
  %iphc1.1 = phi i8 [ %72, %do.end103 ], [ %73, %if.then109 ], [ %iphc1.0, %do.end177 ], [ %or141453, %if.then155 ], [ %or141453, %if.then136 ]
  br i1 %tobool16.not, label %if.else225, label %do.body187

do.body187:                                       ; preds = %if.end183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_compress.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_compress, %if.then199)) #7
          to label %do.end202 [label %if.then199], !srcloc !149

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_compress.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.18) #7
  br label %do.end202

do.end202:                                        ; preds = %if.then199, %do.body187
  br i1 %tobool23.not, label %if.else217, label %if.then207

if.then207:                                       ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data.sroa.0.i)
  %arrayidx.i488 = getelementptr [16 x i8], ptr %daddr13, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx.i488 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %arrayidx.i488, align 1
  %86 = ptrtoint ptr %data.sroa.0.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %data.sroa.0.i, align 2
  %arrayidx3.i = getelementptr [16 x i8], ptr %daddr13, i32 0, i32 11
  %87 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %arrayidx3.i, align 1
  %data.sroa.0.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %data.sroa.0.i, i32 1
  %89 = ptrtoint ptr %data.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %data.sroa.0.i.1.i.1..sroa_idx, align 1
  %90 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hc_ptr, align 4
  %92 = call ptr @memcpy(ptr %91, ptr %data.sroa.0.i, i32 5)
  %data.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %91, i32 5
  %93 = ptrtoint ptr %data.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %data.sroa.10.0..sroa_idx.i, align 1
  %add.ptr.i.i489 = getelementptr i8, ptr %91, i32 6
  store ptr %add.ptr.i.i489, ptr %hc_ptr, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data.sroa.0.i)
  %94 = or i8 %iphc1.1, 12
  br label %if.end305

if.else217:                                       ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #9
  %call219 = call fastcc zeroext i8 @lowpan_iphc_mcast_addr_compress(ptr noundef nonnull %hc_ptr, ptr noundef %daddr13)
  %95 = or i8 %iphc1.1, %call219
  %or222452 = or i8 %95, 8
  br label %if.end305

if.else225:                                       ; preds = %if.end183
  br i1 %tobool23.not, label %if.else237, label %if.then227

if.then227:                                       ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #9
  %call229 = call fastcc zeroext i8 @lowpan_compress_ctx_addr(ptr noundef nonnull %hc_ptr, ptr noundef %dev, ptr noundef %daddr13, ptr noundef nonnull %dci_entry, ptr noundef %daddr, i1 noundef zeroext false)
  %or232451 = or i8 %iphc1.1, %call229
  %96 = or i8 %or232451, 4
  br label %if.end305

if.else237:                                       ; preds = %if.else225
  %and238 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %if.else237.do.body283_crit_edge, label %land.lhs.true240

if.else237.do.body283_crit_edge:                  ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body283

land.lhs.true240:                                 ; preds = %if.else237
  %arrayidx243 = getelementptr [16 x i8], ptr %saddr35, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx243, align 1
  %99 = and i8 %98, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool246.not = icmp eq i8 %99, 0
  br i1 %tobool246.not, label %land.lhs.true247, label %land.lhs.true240.do.body283_crit_edge

land.lhs.true240.do.body283_crit_edge:            ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body283

land.lhs.true247:                                 ; preds = %land.lhs.true240
  %arrayidx250 = getelementptr [8 x i16], ptr %saddr35, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx250, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool251.not = icmp eq i16 %101, 0
  br i1 %tobool251.not, label %land.lhs.true252, label %land.lhs.true247.do.body283_crit_edge

land.lhs.true247.do.body283_crit_edge:            ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body283

land.lhs.true252:                                 ; preds = %land.lhs.true247
  %arrayidx255 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool256.not = icmp eq i32 %103, 0
  br i1 %tobool256.not, label %if.then257, label %land.lhs.true252.do.body283_crit_edge

land.lhs.true252.do.body283_crit_edge:            ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body283

if.then257:                                       ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #9
  %call259 = call fastcc zeroext i8 @lowpan_compress_addr_64(ptr noundef nonnull %hc_ptr, ptr noundef %dev, ptr noundef %daddr13, ptr noundef %daddr, i1 noundef zeroext false)
  %or262450 = or i8 %call259, %iphc1.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_compress.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_compress, %if.then276)) #7
          to label %if.end305 [label %if.then276], !srcloc !149

if.then276:                                       ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #9
  %conv278 = zext i8 %or262450 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_compress.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.19, ptr noundef %daddr13, i32 noundef %conv278) #7
  br label %if.end305

do.body283:                                       ; preds = %land.lhs.true252.do.body283_crit_edge, %land.lhs.true247.do.body283_crit_edge, %land.lhs.true240.do.body283_crit_edge, %if.else237.do.body283_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_compress.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_compress, %if.then295)) #7
          to label %do.end299 [label %if.then295], !srcloc !149

if.then295:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_compress.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.20, ptr noundef %daddr13) #7
  br label %do.end299

do.end299:                                        ; preds = %if.then295, %do.body283
  %104 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hc_ptr, align 4
  %106 = call ptr @memcpy(ptr %105, ptr %daddr13, i32 16)
  %add.ptr.i490 = getelementptr i8, ptr %105, i32 16
  store ptr %add.ptr.i490, ptr %hc_ptr, align 4
  br label %if.end305

if.end305:                                        ; preds = %do.end299, %if.then276, %if.then257, %if.then227, %if.else217, %if.then207
  %iphc1.2 = phi i8 [ %94, %if.then207 ], [ %or222452, %if.else217 ], [ %96, %if.then227 ], [ %iphc1.1, %do.end299 ], [ %or262450, %if.then276 ], [ %or262450, %if.then257 ]
  %107 = and i8 %iphc0.1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool308.not = icmp eq i8 %107, 0
  br i1 %tobool308.not, label %if.end305.if.end315_crit_edge, label %if.then309

if.end305.if.end315_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end315

if.then309:                                       ; preds = %if.end305
  %call310 = call i32 @lowpan_nhc_do_compression(ptr noundef %skb, ptr noundef %add.ptr.i.i, ptr noundef nonnull %hc_ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %cmp311 = icmp slt i32 %call310, 0
  br i1 %cmp311, label %if.then309.cleanup_crit_edge, label %if.then309.if.end315_crit_edge

if.then309.if.end315_crit_edge:                   ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end315

if.then309.cleanup_crit_edge:                     ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end315:                                        ; preds = %if.then309.if.end315_crit_edge, %if.end305.if.end315_crit_edge
  %108 = ptrtoint ptr %head to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %iphc0.1, ptr %head, align 1
  %arrayidx317 = getelementptr inbounds [52 x i8], ptr %head, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %iphc1.2, ptr %arrayidx317, align 1
  %call318 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 40) #7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %110 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i, align 4
  %112 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %111 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %113 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i492 = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %114 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i492, ptr %transport_header.i, align 2
  %115 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hc_ptr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %116 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %head to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call320 = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub) #7
  %117 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hc_ptr, align 4
  %sub.ptr.lhs.cast323 = ptrtoint ptr %118 to i32
  %sub.ptr.sub325 = sub i32 %sub.ptr.lhs.cast323, %sub.ptr.rhs.cast
  %119 = call ptr @memcpy(ptr %call320, ptr %head, i32 %sub.ptr.sub325)
  %120 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data.i, align 4
  %122 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i495 = ptrtoint ptr %121 to i32
  %sub.ptr.rhs.cast.i496 = ptrtoint ptr %123 to i32
  %sub.ptr.sub.i497 = sub i32 %sub.ptr.lhs.cast.i495, %sub.ptr.rhs.cast.i496
  %conv.i498 = trunc i32 %sub.ptr.sub.i497 to i16
  %124 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i498, ptr %network_header.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_header_compress.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_header_compress, %if.then338)) #7
          to label %cleanup [label %if.then338], !srcloc !149

if.then338:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hc_ptr, align 4
  %sub.ptr.lhs.cast340 = ptrtoint ptr %126 to i32
  %sub.ptr.sub342 = sub i32 %sub.ptr.lhs.cast340, %sub.ptr.rhs.cast
  %127 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_header_compress.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.21, i32 noundef %sub.ptr.sub342, i32 noundef %128) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then338, %if.end315, %if.then309.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call310, %if.then309.cleanup_crit_edge ], [ 0, %if.end315 ], [ 0, %if.then338 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sci_entry) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dci_entry) #7
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %head) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hc_ptr) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lowpan_iphc_ctx_get_by_addr(ptr noundef %dev, ptr nocapture noundef readonly %addr) unnamed_addr #4 align 64 {
entry:
  %addr_pfx = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %table1 = getelementptr i8, ptr %dev, i32 2360
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr_pfx) #7
  %0 = call ptr @memset(ptr %addr_pfx, i32 255, i32 16)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.062 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.060 = phi ptr [ null, %entry ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lowpan_iphc_ctx, ptr %table1, i32 %i.062
  %flags.i = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %arrayidx, i32 0, i32 3
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i54.not = icmp eq i32 %5, 0
  br i1 %tobool.i54.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %plen = getelementptr %struct.lowpan_iphc_ctx, ptr %table1, i32 %i.062, i32 2
  %6 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %plen, align 4
  %conv = zext i8 %7 to i32
  %shr.i59 = lshr i32 %conv, 3
  %and.i = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %8 = icmp slt i8 %7, 0
  %9 = sub nsw i32 16, %shr.i59
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %addr_pfx, i32 %shr.i59
  %12 = call ptr @memset(ptr %11, i32 0, i32 %10)
  %13 = call ptr @memcpy(ptr %addr_pfx, ptr %addr, i32 %shr.i59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.ipv6_addr_prefix.exit_crit_edge, label %if.then.i

if.end.ipv6_addr_prefix.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_addr_prefix.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [16 x i8], ptr %addr, i32 0, i32 %shr.i59
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %shr4.i = lshr i32 65280, %and.i
  %16 = trunc i32 %shr4.i to i8
  %conv6.i = and i8 %15, %16
  %arrayidx8.i = getelementptr [16 x i8], ptr %addr_pfx, i32 0, i32 %shr.i59
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  br label %ipv6_addr_prefix.exit

ipv6_addr_prefix.exit:                            ; preds = %if.then.i, %if.end.ipv6_addr_prefix.exit_crit_edge
  %18 = tail call i8 @llvm.umax.i8(i8 %7, i8 64)
  %pfx = getelementptr %struct.lowpan_iphc_ctx, ptr %table1, i32 %i.062, i32 1
  %conv16 = zext i8 %18 to i32
  %shr.i55 = lshr i32 %conv16, 5
  %shl.i = shl nuw nsw i32 %shr.i55, 2
  %bcmp.i = call i32 @bcmp(ptr nonnull %addr_pfx, ptr %pfx, i32 %shl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %ipv6_addr_prefix.exit.for.inc_crit_edge

ipv6_addr_prefix.exit.for.inc_crit_edge:          ; preds = %ipv6_addr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %ipv6_addr_prefix.exit
  %and.i56 = and i32 %conv16, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool4.not.i = icmp eq i32 %and.i56, 0
  br i1 %tobool4.not.i, label %if.end.i.if.then18_crit_edge, label %land.lhs.true5.i

if.end.i.if.then18_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

land.lhs.true5.i:                                 ; preds = %if.end.i
  %arrayidx.i57 = getelementptr i32, ptr %addr_pfx, i32 %shr.i55
  %19 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i57, align 4
  %arrayidx6.i = getelementptr i32, ptr %pfx, i32 %shr.i55
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6.i, align 4
  %xor.i = xor i32 %22, %20
  %sub.i = sub nuw nsw i32 32, %and.i56
  %shl7.i = shl nsw i32 -1, %sub.i
  %and8.i = and i32 %xor.i, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true5.i.if.then18_crit_edge, label %land.lhs.true5.i.for.inc_crit_edge

land.lhs.true5.i.for.inc_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true5.i.if.then18_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true5.i.if.then18_crit_edge, %if.end.i.if.then18_crit_edge
  %tobool.not = icmp eq ptr %ret.060, null
  br i1 %tobool.not, label %if.then18.for.inc_crit_edge, label %if.end21

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end21:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %plen25 = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ret.060, i32 0, i32 2
  %23 = ptrtoint ptr %plen25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %plen25, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %24)
  %cmp27 = icmp ugt i8 %7, %24
  %spec.select = select i1 %cmp27, ptr %arrayidx, ptr %ret.060
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.then18.for.inc_crit_edge, %land.lhs.true5.i.for.inc_crit_edge, %ipv6_addr_prefix.exit.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi ptr [ %ret.060, %lor.lhs.false.for.inc_crit_edge ], [ %ret.060, %for.body.for.inc_crit_edge ], [ %arrayidx, %if.then18.for.inc_crit_edge ], [ %spec.select, %if.end21 ], [ %ret.060, %ipv6_addr_prefix.exit.for.inc_crit_edge ], [ %ret.060, %land.lhs.true5.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr_pfx) #7
  ret ptr %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @lowpan_iphc_tf_compress(ptr nocapture noundef %hc_ptr, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %hdr, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %1 = and i8 %bf.clear.i, 60
  %flow_lbl.i = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 1
  %2 = ptrtoint ptr %flow_lbl.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flow_lbl.i, align 1
  %4 = lshr i8 %3, 6
  %or.i = or i8 %4, %1
  %5 = and i8 %3, 48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_get_tc.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_tf_compress, %if.then.i)) #7
          to label %lowpan_iphc_get_tc.exit [label %if.then.i], !srcloc !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = lshr exact i8 %5, 4
  %7 = zext i8 %6 to i32
  %conv12.i = zext i8 %or.i to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_get_tc.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.36, i32 noundef %7, i32 noundef %conv12.i) #7
  br label %lowpan_iphc_get_tc.exit

lowpan_iphc_get_tc.exit:                          ; preds = %if.then.i, %entry
  %8 = shl nuw i8 %5, 2
  %or1622.i = or i8 %8, %or.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_tf_compress.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_tf_compress, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %lowpan_iphc_get_tc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %or1622.i to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_tf_compress.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.34, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lowpan_iphc_get_tc.exit
  %9 = ptrtoint ptr %flow_lbl.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flow_lbl.i, align 1
  %11 = and i8 %10, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end.if.else9_crit_edge

do.end.if.else9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else9

land.lhs.true.i:                                  ; preds = %do.end
  %arrayidx2.i = getelementptr %struct.ipv6hdr, ptr %hdr, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %lowpan_iphc_is_flow_lbl_zero.exit, label %land.lhs.true.i.if.else9_crit_edge

land.lhs.true.i.if.else9_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else9

lowpan_iphc_is_flow_lbl_zero.exit:                ; preds = %land.lhs.true.i
  %arrayidx5.i = getelementptr %struct.ipv6hdr, ptr %hdr, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not.i = icmp eq i8 %15, 0
  br i1 %tobool6.not.i, label %if.then5, label %lowpan_iphc_is_flow_lbl_zero.exit.if.else9_crit_edge

lowpan_iphc_is_flow_lbl_zero.exit.if.else9_crit_edge: ; preds = %lowpan_iphc_is_flow_lbl_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else9

if.then5:                                         ; preds = %lowpan_iphc_is_flow_lbl_zero.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or1622.i)
  %tobool6.not = icmp eq i8 %or1622.i, 0
  br i1 %tobool6.not, label %if.then5.if.end34_crit_edge, label %if.else

if.then5.if.end34_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hc_ptr, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or1622.i, ptr %17, align 1
  br label %if.end34.sink.split

if.else9:                                         ; preds = %lowpan_iphc_is_flow_lbl_zero.exit.if.else9_crit_edge, %land.lhs.true.i.if.else9_crit_edge, %do.end.if.else9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or.i)
  %tobool11.not = icmp eq i8 %or.i, 0
  %tf.sroa.10.0.flow_lbl.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %tf.sroa.10.0.flow_lbl.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %tf.sroa.10.0.copyload46 = load i8, ptr %tf.sroa.10.0.flow_lbl.sroa_idx, align 1
  %tf.sroa.14.0.flow_lbl.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %tf.sroa.14.0.flow_lbl.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %tf.sroa.14.0.copyload49 = load i8, ptr %tf.sroa.14.0.flow_lbl.sroa_idx, align 1
  br i1 %tobool11.not, label %if.then12, label %if.else23

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %or40 = or i8 %11, %8
  %21 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hc_ptr, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or40, ptr %22, align 1
  %tf.sroa.10.0..sroa_idx47 = getelementptr inbounds i8, ptr %22, i32 1
  %24 = ptrtoint ptr %tf.sroa.10.0..sroa_idx47 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %tf.sroa.10.0.copyload46, ptr %tf.sroa.10.0..sroa_idx47, align 1
  %tf.sroa.14.0..sroa_idx50 = getelementptr inbounds i8, ptr %22, i32 2
  %25 = ptrtoint ptr %tf.sroa.14.0..sroa_idx50 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %tf.sroa.14.0.copyload49, ptr %tf.sroa.14.0..sroa_idx50, align 1
  br label %if.end34.sink.split

if.else23:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hc_ptr, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %or1622.i, ptr %27, align 1
  %tf.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %27, i32 1
  %29 = ptrtoint ptr %tf.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %11, ptr %tf.sroa.10.0..sroa_idx, align 1
  %tf.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %27, i32 2
  %30 = ptrtoint ptr %tf.sroa.14.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %tf.sroa.10.0.copyload46, ptr %tf.sroa.14.0..sroa_idx, align 1
  %tf.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %27, i32 3
  %31 = ptrtoint ptr %tf.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %tf.sroa.14.0.copyload49, ptr %tf.sroa.15.0..sroa_idx, align 1
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.else23, %if.then12, %if.else
  %.sink57 = phi i32 [ 3, %if.then12 ], [ 4, %if.else23 ], [ 1, %if.else ]
  %val.0.ph = phi i8 [ 8, %if.then12 ], [ 0, %if.else23 ], [ 16, %if.else ]
  %32 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i42 = getelementptr i8, ptr %33, i32 %.sink57
  store ptr %add.ptr.i42, ptr %hc_ptr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.then5.if.end34_crit_edge
  %val.0 = phi i8 [ 24, %if.then5.if.end34_crit_edge ], [ %val.0.ph, %if.end34.sink.split ]
  ret i8 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_nhc_check_compression(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @lowpan_compress_ctx_addr(ptr nocapture noundef %hc_ptr, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ipaddr, ptr noundef %ctx, ptr nocapture noundef readonly %lladdr, i1 noundef zeroext %sam) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.in6_addr, align 4
  %tmp = alloca %struct.in6_addr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  %2 = call ptr @memset(ptr %tmp.i, i32 0, i32 16)
  %3 = ptrtoint ptr %lladdr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lladdr, align 8
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %4, label %land.end.i [
    i8 3, label %sw.bb.i
    i8 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  %6 = getelementptr inbounds %struct.ieee802154_addr, ptr %lladdr, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %6, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #7
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %tmp.i, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %arrayidx.i, align 4
  %11 = lshr i64 %9, 56
  %12 = trunc i64 %11 to i8
  %13 = xor i8 %12, 2
  store i8 %13, ptr %arrayidx.i, align 4
  %pfx.i = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 1
  %plen.i = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 2
  %14 = ptrtoint ptr %plen.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %plen.i, align 4
  %conv5.i = zext i8 %15 to i32
  %shr.i92.i = lshr i32 %conv5.i, 3
  %and.i.i = and i32 %conv5.i, 7
  %16 = call ptr @memcpy(ptr %tmp.i, ptr %pfx.i, i32 %shr.i92.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %sw.bb.i.ipv6_addr_prefix_copy.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.ipv6_addr_prefix_copy.exit.i_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_addr_prefix_copy.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr1.i.i = lshr i32 65280, %and.i.i
  %neg.i.i = ashr i32 -65281, %and.i.i
  %arrayidx.i.i = getelementptr [16 x i8], ptr %tmp.i, i32 0, i32 %shr.i92.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  %19 = trunc i32 %neg.i.i to i8
  %conv4.i.i = and i8 %18, %19
  %arrayidx6.i.i = getelementptr [16 x i8], ptr %pfx.i, i32 0, i32 %shr.i92.i
  %20 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx6.i.i, align 1
  %22 = trunc i32 %shr1.i.i to i8
  %23 = and i8 %21, %22
  %conv13.i.i = or i8 %23, %conv4.i.i
  store i8 %conv13.i.i, ptr %arrayidx.i.i, align 1
  br label %ipv6_addr_prefix_copy.exit.i

ipv6_addr_prefix_copy.exit.i:                     ; preds = %if.then.i.i, %sw.bb.i.ipv6_addr_prefix_copy.exit.i_crit_edge
  %24 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp.i, align 4
  %26 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ipaddr, align 4
  %xor.i.i = xor i32 %27, %25
  %arrayidx4.i.i = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i66.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx6.i66.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx6.i66.i, align 4
  %xor7.i.i = xor i32 %31, %29
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %35, %33
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %39, %37
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  br i1 %cmp.i.i, label %ipv6_addr_prefix_copy.exit.i.out_crit_edge, label %ipv6_addr_prefix_copy.exit.i.sw.epilog_crit_edge

ipv6_addr_prefix_copy.exit.i.sw.epilog_crit_edge: ; preds = %ipv6_addr_prefix_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

ipv6_addr_prefix_copy.exit.i.out_crit_edge:       ; preds = %ipv6_addr_prefix_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb6.i:                                         ; preds = %sw.bb
  %arrayidx8.i = getelementptr inbounds [16 x i8], ptr %tmp.i, i32 0, i32 11
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr inbounds [16 x i8], ptr %tmp.i, i32 0, i32 12
  %41 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -2, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr inbounds [8 x i16], ptr %tmp.i, i32 0, i32 7
  %42 = getelementptr inbounds %struct.ieee802154_addr, ptr %lladdr, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %42, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #7
  %46 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx12.i, align 2
  %pfx13.i = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 1
  %plen14.i = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 2
  %47 = ptrtoint ptr %plen14.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %plen14.i, align 4
  %conv15.i = zext i8 %48 to i32
  %shr.i6793.i = lshr i32 %conv15.i, 3
  %and.i68.i = and i32 %conv15.i, 7
  %49 = call ptr @memcpy(ptr %tmp.i, ptr %pfx13.i, i32 %shr.i6793.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68.i)
  %cmp.not.i69.i = icmp eq i32 %and.i68.i, 0
  br i1 %cmp.not.i69.i, label %sw.bb6.i.lowpan_iphc_compress_ctx_802154_lladdr.exit_crit_edge, label %if.then.i76.i

sw.bb6.i.lowpan_iphc_compress_ctx_802154_lladdr.exit_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_compress_ctx_802154_lladdr.exit

if.then.i76.i:                                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr1.i70.i = lshr i32 65280, %and.i68.i
  %neg.i71.i = ashr i32 -65281, %and.i68.i
  %arrayidx.i72.i = getelementptr [16 x i8], ptr %tmp.i, i32 0, i32 %shr.i6793.i
  %50 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i72.i, align 1
  %52 = trunc i32 %neg.i71.i to i8
  %conv4.i73.i = and i8 %51, %52
  %arrayidx6.i74.i = getelementptr [16 x i8], ptr %pfx13.i, i32 0, i32 %shr.i6793.i
  %53 = ptrtoint ptr %arrayidx6.i74.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx6.i74.i, align 1
  %55 = trunc i32 %shr1.i70.i to i8
  %56 = and i8 %54, %55
  %conv13.i75.i = or i8 %56, %conv4.i73.i
  store i8 %conv13.i75.i, ptr %arrayidx.i72.i, align 1
  br label %lowpan_iphc_compress_ctx_802154_lladdr.exit

land.end.i:                                       ; preds = %sw.bb
  %.b64.i = load i1, ptr @lowpan_iphc_compress_ctx_802154_lladdr.__already_done, align 1
  br i1 %.b64.i, label %land.end.i.lowpan_iphc_compress_ctx_802154_lladdr.exit.thread_crit_edge, label %if.then24.i, !prof !150

land.end.i.lowpan_iphc_compress_ctx_802154_lladdr.exit.thread_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_compress_ctx_802154_lladdr.exit.thread

if.then24.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lowpan_iphc_compress_ctx_802154_lladdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 824, i32 noundef 9, ptr noundef null) #7
  br label %lowpan_iphc_compress_ctx_802154_lladdr.exit.thread

lowpan_iphc_compress_ctx_802154_lladdr.exit.thread: ; preds = %if.then24.i, %land.end.i.lowpan_iphc_compress_ctx_802154_lladdr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  br label %sw.epilog

lowpan_iphc_compress_ctx_802154_lladdr.exit:      ; preds = %if.then.i76.i, %sw.bb6.i.lowpan_iphc_compress_ctx_802154_lladdr.exit_crit_edge
  %57 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tmp.i, align 4
  %59 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ipaddr, align 4
  %xor.i78.i = xor i32 %60, %58
  %arrayidx4.i79.i = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx4.i79.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx4.i79.i, align 4
  %arrayidx6.i80.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx6.i80.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx6.i80.i, align 4
  %xor7.i81.i = xor i32 %64, %62
  %or.i82.i = or i32 %xor7.i81.i, %xor.i78.i
  %arrayidx9.i83.i = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx9.i83.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx9.i83.i, align 4
  %arrayidx11.i84.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx11.i84.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx11.i84.i, align 4
  %xor12.i85.i = xor i32 %68, %66
  %or13.i86.i = or i32 %or.i82.i, %xor12.i85.i
  %69 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx17.i88.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 3
  %71 = ptrtoint ptr %arrayidx17.i88.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx17.i88.i, align 4
  %xor18.i89.i = xor i32 %72, %70
  %or19.i90.i = or i32 %or13.i86.i, %xor18.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i90.i)
  %cmp.i91.i = icmp eq i32 %or19.i90.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  br i1 %cmp.i91.i, label %lowpan_iphc_compress_ctx_802154_lladdr.exit.out_crit_edge, label %lowpan_iphc_compress_ctx_802154_lladdr.exit.sw.epilog_crit_edge

lowpan_iphc_compress_ctx_802154_lladdr.exit.sw.epilog_crit_edge: ; preds = %lowpan_iphc_compress_ctx_802154_lladdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

lowpan_iphc_compress_ctx_802154_lladdr.exit.out_crit_edge: ; preds = %lowpan_iphc_compress_ctx_802154_lladdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.default:                                       ; preds = %entry
  %call2 = tail call fastcc zeroext i1 @lowpan_iphc_addr_equal(ptr noundef %dev, ptr noundef %ctx, ptr noundef %ipaddr, ptr noundef %lladdr)
  br i1 %call2, label %sw.default.out_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default.out_crit_edge:                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %lowpan_iphc_compress_ctx_802154_lladdr.exit.sw.epilog_crit_edge, %lowpan_iphc_compress_ctx_802154_lladdr.exit.thread, %ipv6_addr_prefix_copy.exit.i.sw.epilog_crit_edge
  %73 = call ptr @memset(ptr %tmp, i32 0, i32 16)
  %arrayidx = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 11
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %arrayidx, align 1
  %arrayidx6 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 12
  %75 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -2, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 14
  %arrayidx10 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 14
  %76 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx10, align 2
  %78 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %arrayidx8, align 2
  %pfx = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 1
  %plen = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 2
  %79 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %plen, align 4
  %conv = zext i8 %80 to i32
  %shr.i116 = lshr i32 %conv, 3
  %and.i = and i32 %conv, 7
  %81 = call ptr @memcpy(ptr %tmp, ptr %pfx, i32 %shr.i116)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %sw.epilog.ipv6_addr_prefix_copy.exit_crit_edge, label %if.then.i

sw.epilog.ipv6_addr_prefix_copy.exit_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_addr_prefix_copy.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %shr1.i = lshr i32 65280, %and.i
  %neg.i = ashr i32 -65281, %and.i
  %arrayidx.i87 = getelementptr [16 x i8], ptr %tmp, i32 0, i32 %shr.i116
  %82 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i87, align 1
  %84 = trunc i32 %neg.i to i8
  %conv4.i = and i8 %83, %84
  %arrayidx6.i = getelementptr [16 x i8], ptr %pfx, i32 0, i32 %shr.i116
  %85 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx6.i, align 1
  %87 = trunc i32 %shr1.i to i8
  %88 = and i8 %86, %87
  %conv13.i = or i8 %88, %conv4.i
  store i8 %conv13.i, ptr %arrayidx.i87, align 1
  br label %ipv6_addr_prefix_copy.exit

ipv6_addr_prefix_copy.exit:                       ; preds = %if.then.i, %sw.epilog.ipv6_addr_prefix_copy.exit_crit_edge
  %89 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tmp, align 8
  %91 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ipaddr, align 4
  %xor.i = xor i32 %92, %90
  %arrayidx4.i = getelementptr inbounds [4 x i32], ptr %tmp, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i88 = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 1
  %95 = ptrtoint ptr %arrayidx6.i88 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx6.i88, align 4
  %xor7.i = xor i32 %96, %94
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr inbounds [4 x i32], ptr %tmp, i32 0, i32 2
  %97 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx9.i, align 8
  %arrayidx11.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 2
  %99 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %100, %98
  %or13.i = or i32 %or.i, %xor12.i
  %101 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx6, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 3
  %103 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %104, %102
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %ipv6_addr_prefix_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hc_ptr, align 4
  %107 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %arrayidx10, align 1
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %106, align 1
  br label %out.sink.split

if.end15:                                         ; preds = %ipv6_addr_prefix_copy.exit
  %110 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 0, ptr %tmp, align 8
  %111 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %arrayidx11.i, align 4
  %113 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %arrayidx9.i, align 8
  %114 = call ptr @memcpy(ptr %tmp, ptr %pfx, i32 %shr.i116)
  br i1 %cmp.not.i, label %if.end15.ipv6_addr_prefix_copy.exit99_crit_edge, label %if.then.i98

if.end15.ipv6_addr_prefix_copy.exit99_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_addr_prefix_copy.exit99

if.then.i98:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %shr1.i92 = lshr i32 65280, %and.i
  %neg.i93 = ashr i32 -65281, %and.i
  %arrayidx.i94 = getelementptr [16 x i8], ptr %tmp, i32 0, i32 %shr.i116
  %115 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i94, align 1
  %117 = trunc i32 %neg.i93 to i8
  %conv4.i95 = and i8 %116, %117
  %arrayidx6.i96 = getelementptr [16 x i8], ptr %pfx, i32 0, i32 %shr.i116
  %118 = ptrtoint ptr %arrayidx6.i96 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx6.i96, align 1
  %120 = trunc i32 %shr1.i92 to i8
  %121 = and i8 %119, %120
  %conv13.i97 = or i8 %121, %conv4.i95
  store i8 %conv13.i97, ptr %arrayidx.i94, align 1
  br label %ipv6_addr_prefix_copy.exit99

ipv6_addr_prefix_copy.exit99:                     ; preds = %if.then.i98, %if.end15.ipv6_addr_prefix_copy.exit99_crit_edge
  %122 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tmp, align 8
  %xor.i100 = xor i32 %123, %92
  %124 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx4.i, align 4
  %xor7.i103 = xor i32 %125, %96
  %or.i104 = or i32 %xor7.i103, %xor.i100
  %126 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx9.i, align 8
  %xor12.i107 = xor i32 %127, %100
  %or13.i108 = or i32 %or.i104, %xor12.i107
  %128 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx6, align 4
  %xor18.i111 = xor i32 %129, %104
  %or19.i112 = or i32 %or13.i108, %xor18.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i112)
  %cmp.i113 = icmp eq i32 %or19.i112, 0
  br i1 %cmp.i113, label %if.then24, label %land.end

if.then24:                                        ; preds = %ipv6_addr_prefix_copy.exit99
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hc_ptr, align 4
  %132 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 8)
  %133 = load i64, ptr %arrayidx11.i, align 1
  %134 = ptrtoint ptr %131 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %133, ptr %131, align 1
  br label %out.sink.split

land.end:                                         ; preds = %ipv6_addr_prefix_copy.exit99
  %.b86 = load i1, ptr @lowpan_compress_ctx_addr.__already_done, align 1
  br i1 %.b86, label %land.end.cleanup_crit_edge, label %if.then33, !prof !150

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lowpan_compress_ctx_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 894, i32 noundef 9, ptr noundef nonnull @.str.37) #7
  br label %cleanup

out.sink.split:                                   ; preds = %if.then24, %if.then12
  %.sink117 = phi i32 [ 8, %if.then24 ], [ 2, %if.then12 ]
  %dam.0.ph = phi i8 [ 1, %if.then24 ], [ 2, %if.then12 ]
  %135 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i114 = getelementptr i8, ptr %136, i32 %.sink117
  store ptr %add.ptr.i114, ptr %hc_ptr, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %sw.default.out_crit_edge, %lowpan_iphc_compress_ctx_802154_lladdr.exit.out_crit_edge, %ipv6_addr_prefix_copy.exit.i.out_crit_edge
  %dam.0 = phi i8 [ 3, %lowpan_iphc_compress_ctx_802154_lladdr.exit.out_crit_edge ], [ 3, %sw.default.out_crit_edge ], [ 3, %ipv6_addr_prefix_copy.exit.i.out_crit_edge ], [ %dam.0.ph, %out.sink.split ]
  br i1 %sam, label %if.then65, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then65:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom = zext i8 %dam.0 to i32
  %arrayidx66 = getelementptr [4 x i8], ptr @lowpan_iphc_dam_to_sam_value, i32 0, i32 %idxprom
  %137 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx66, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %out.cleanup_crit_edge, %if.then33, %land.end.cleanup_crit_edge
  %retval.0 = phi i8 [ %138, %if.then65 ], [ 0, %if.then33 ], [ 0, %land.end.cleanup_crit_edge ], [ %dam.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @lowpan_compress_addr_64(ptr nocapture noundef %hc_ptr, ptr nocapture noundef readonly %dev, ptr noundef readonly %ipaddr, ptr nocapture noundef readonly %lladdr, i1 noundef zeroext %sam) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %lladdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lladdr, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %3, label %land.end.i [
    i8 3, label %sw.bb.i
    i8 2, label %lowpan_iphc_compress_802154_lladdr.exit
  ]

sw.bb.i:                                          ; preds = %sw.bb
  %5 = getelementptr inbounds %struct.ieee802154_addr, ptr %lladdr, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %5, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #7
  %extended_addr.sroa.0.0.extract.shift.i = lshr i64 %8, 56
  %extended_addr.sroa.0.0.extract.trunc.i = trunc i64 %extended_addr.sroa.0.0.extract.shift.i to i8
  %extended_addr.sroa.7.0.extract.shift.i = lshr i64 %8, 40
  %extended_addr.sroa.7.0.extract.trunc.i = trunc i64 %extended_addr.sroa.7.0.extract.shift.i to i8
  %extended_addr.sroa.9.0.extract.shift.i = lshr i64 %8, 32
  %extended_addr.sroa.9.0.extract.trunc.i = trunc i64 %extended_addr.sroa.9.0.extract.shift.i to i8
  %extended_addr.sroa.11.0.extract.shift.i = lshr i64 %8, 24
  %extended_addr.sroa.11.0.extract.trunc.i = trunc i64 %extended_addr.sroa.11.0.extract.shift.i to i8
  %extended_addr.sroa.13.0.extract.shift.i = lshr i64 %8, 16
  %extended_addr.sroa.13.0.extract.trunc.i = trunc i64 %extended_addr.sroa.13.0.extract.shift.i to i8
  %extended_addr.sroa.15.0.extract.shift.i = lshr i64 %8, 8
  %extended_addr.sroa.15.0.extract.trunc.i = trunc i64 %extended_addr.sroa.15.0.extract.shift.i to i8
  %extended_addr.sroa.17.0.extract.trunc.i = trunc i64 %8 to i8
  %arrayidx.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 4
  %11 = xor i8 %extended_addr.sroa.0.0.extract.trunc.i, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %11)
  %cmp.i = icmp eq i8 %10, %11
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %extended_addr.sroa.5.0.extract.shift.i = lshr i64 %8, 48
  %extended_addr.sroa.5.0.extract.trunc.i = trunc i64 %extended_addr.sroa.5.0.extract.shift.i to i8
  %arrayidx6.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 9
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %extended_addr.sroa.5.0.extract.trunc.i)
  %cmp10.i = icmp eq i8 %13, %extended_addr.sroa.5.0.extract.trunc.i
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %arrayidx14.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 10
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %extended_addr.sroa.7.0.extract.trunc.i)
  %cmp18.i = icmp eq i8 %15, %extended_addr.sroa.7.0.extract.trunc.i
  br i1 %cmp18.i, label %land.lhs.true20.i, label %land.lhs.true12.i.sw.epilog_crit_edge

land.lhs.true12.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true20.i:                                ; preds = %land.lhs.true12.i
  %arrayidx22.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %16 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %extended_addr.sroa.9.0.extract.trunc.i)
  %cmp26.i = icmp eq i8 %17, %extended_addr.sroa.9.0.extract.trunc.i
  br i1 %cmp26.i, label %land.lhs.true28.i, label %land.lhs.true20.i.sw.epilog_crit_edge

land.lhs.true20.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true28.i:                                ; preds = %land.lhs.true20.i
  %arrayidx30.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %18 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx30.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %extended_addr.sroa.11.0.extract.trunc.i)
  %cmp34.i = icmp eq i8 %19, %extended_addr.sroa.11.0.extract.trunc.i
  br i1 %cmp34.i, label %land.lhs.true36.i, label %land.lhs.true28.i.sw.epilog_crit_edge

land.lhs.true28.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true36.i:                                ; preds = %land.lhs.true28.i
  %arrayidx38.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 13
  %20 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx38.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %extended_addr.sroa.13.0.extract.trunc.i)
  %cmp42.i = icmp eq i8 %21, %extended_addr.sroa.13.0.extract.trunc.i
  br i1 %cmp42.i, label %land.lhs.true44.i, label %land.lhs.true36.i.sw.epilog_crit_edge

land.lhs.true36.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true44.i:                                ; preds = %land.lhs.true36.i
  %arrayidx46.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 14
  %22 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx46.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %extended_addr.sroa.15.0.extract.trunc.i)
  %cmp50.i = icmp eq i8 %23, %extended_addr.sroa.15.0.extract.trunc.i
  br i1 %cmp50.i, label %land.lhs.true52.i, label %land.lhs.true44.i.sw.epilog_crit_edge

land.lhs.true44.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true52.i:                                ; preds = %land.lhs.true44.i
  %arrayidx54.i = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx54.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %extended_addr.sroa.17.0.extract.trunc.i)
  %cmp58.i = icmp eq i8 %25, %extended_addr.sroa.17.0.extract.trunc.i
  br i1 %cmp58.i, label %land.lhs.true52.i.if.then_crit_edge, label %land.lhs.true52.i.sw.epilog_crit_edge

land.lhs.true52.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true52.i.if.then_crit_edge:              ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.end.i:                                       ; preds = %sw.bb
  %.b122.i = load i1, ptr @lowpan_iphc_compress_802154_lladdr.__already_done, align 1
  br i1 %.b122.i, label %land.end.i.sw.epilog_crit_edge, label %if.then78.i, !prof !150

land.end.i.sw.epilog_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then78.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lowpan_iphc_compress_802154_lladdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 937, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

lowpan_iphc_compress_802154_lladdr.exit:          ; preds = %sw.bb
  %26 = getelementptr inbounds %struct.ieee802154_addr, ptr %lladdr, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %26, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #7
  %tmp.sroa.9.14.insert.ext.i = zext i16 %29 to i32
  %tmp.sroa.9.14.insert.insert.i = or i32 %tmp.sroa.9.14.insert.ext.i, -33554432
  %30 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ipaddr, align 4
  %xor.i.i = xor i32 %31, -25165824
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx6.i.i, align 4
  %or.i.i = or i32 %33, %xor.i.i
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %35, 255
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %37, %tmp.sroa.9.14.insert.insert.i
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %lowpan_iphc_compress_802154_lladdr.exit.if.then_crit_edge, label %lowpan_iphc_compress_802154_lladdr.exit.sw.epilog_crit_edge

lowpan_iphc_compress_802154_lladdr.exit.sw.epilog_crit_edge: ; preds = %lowpan_iphc_compress_802154_lladdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

lowpan_iphc_compress_802154_lladdr.exit.if.then_crit_edge: ; preds = %lowpan_iphc_compress_802154_lladdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lowpan_iphc_compress_802154_lladdr.exit.if.then_crit_edge, %land.lhs.true52.i.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_compress_addr_64.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_compress_addr_64, %if.then6)) #7
          to label %out [label %if.then6], !srcloc !149

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_compress_addr_64.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.39) #7
  br label %out

sw.default:                                       ; preds = %entry
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %38 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr_len.i.i, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %39, label %land.end.i.i [
    i8 6, label %sw.bb.i.i
    i8 8, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %lladdr to i32
  call void @__asan_loadN_noabort(i32 %41, i32 3)
  %tmp.i.sroa.9.8.copyload = load i24, ptr %lladdr, align 1
  %tmp.i.sroa.9.8.insert.ext89 = zext i24 %tmp.i.sroa.9.8.copyload to i32
  %tmp.i.sroa.9.8.insert.shift90 = shl nuw i32 %tmp.i.sroa.9.8.insert.ext89, 8
  %tmp.i.sroa.9.11.insert.insert = or i32 %tmp.i.sroa.9.8.insert.shift90, 255
  %add.ptr.i.i.i = getelementptr i8, ptr %lladdr, i32 3
  %42 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 3)
  %tmp.i.sroa.9.13.copyload = load i24, ptr %add.ptr.i.i.i, align 1
  %tmp.i.sroa.9.13.insert.ext = zext i24 %tmp.i.sroa.9.13.copyload to i32
  %tmp.i.sroa.9.13.insert.insert = or i32 %tmp.i.sroa.9.13.insert.ext, -33554432
  br label %lowpan_iphc_addr_equal.exit

sw.bb1.i.i:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %lladdr to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %lladdr, align 1
  %45 = lshr i64 %44, 56
  %46 = trunc i64 %45 to i8
  %47 = xor i8 %46, 2
  %tmp.i.sroa.9.8.insert.ext = zext i8 %47 to i64
  %tmp.i.sroa.9.8.insert.shift = shl nuw i64 %tmp.i.sroa.9.8.insert.ext, 56
  %tmp.i.sroa.9.8.insert.mask = and i64 %44, 72057589742960640
  %tmp.i.sroa.9.8.insert.insert = or i64 %tmp.i.sroa.9.8.insert.shift, %tmp.i.sroa.9.8.insert.mask
  %extract.t = trunc i64 %44 to i32
  %extract = lshr exact i64 %tmp.i.sroa.9.8.insert.insert, 32
  %extract.t97 = trunc i64 %extract to i32
  br label %lowpan_iphc_addr_equal.exit

land.end.i.i:                                     ; preds = %sw.default
  %.b39.i.i = load i1, ptr @lowpan_iphc_uncompress_lladdr.__already_done, align 1
  br i1 %.b39.i.i, label %land.end.i.i.lowpan_iphc_addr_equal.exit_crit_edge, label %if.then.i.i, !prof !150

land.end.i.i.lowpan_iphc_addr_equal.exit_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_addr_equal.exit

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lowpan_iphc_uncompress_lladdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 293, i32 noundef 9, ptr noundef null) #7
  br label %lowpan_iphc_addr_equal.exit

lowpan_iphc_addr_equal.exit:                      ; preds = %if.then.i.i, %land.end.i.i.lowpan_iphc_addr_equal.exit_crit_edge, %sw.bb1.i.i, %sw.bb.i.i
  %tmp.i.sroa.0.sroa.6.0 = phi i32 [ 0, %land.end.i.i.lowpan_iphc_addr_equal.exit_crit_edge ], [ 0, %if.then.i.i ], [ 8388608, %sw.bb1.i.i ], [ 8388608, %sw.bb.i.i ]
  %tmp.i.sroa.0.sroa.0.0 = phi i32 [ 0, %land.end.i.i.lowpan_iphc_addr_equal.exit_crit_edge ], [ 0, %if.then.i.i ], [ -33554432, %sw.bb1.i.i ], [ -33554432, %sw.bb.i.i ]
  %tmp.i.sroa.9.0.off0 = phi i32 [ 0, %land.end.i.i.lowpan_iphc_addr_equal.exit_crit_edge ], [ 0, %if.then.i.i ], [ %extract.t, %sw.bb1.i.i ], [ %tmp.i.sroa.9.13.insert.insert, %sw.bb.i.i ]
  %tmp.i.sroa.9.0.off32 = phi i32 [ 0, %land.end.i.i.lowpan_iphc_addr_equal.exit_crit_edge ], [ 0, %if.then.i.i ], [ %extract.t97, %sw.bb1.i.i ], [ %tmp.i.sroa.9.11.insert.insert, %sw.bb.i.i ]
  %tmp.i.sroa.0.sroa.0.0.insert.insert = or i32 %tmp.i.sroa.0.sroa.0.0, %tmp.i.sroa.0.sroa.6.0
  %48 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ipaddr, align 4
  %xor.i.i78 = xor i32 %49, %tmp.i.sroa.0.sroa.0.0.insert.insert
  %arrayidx6.i4.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx6.i4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx6.i4.i, align 4
  %or.i.i79 = or i32 %51, %xor.i.i78
  %arrayidx11.i.i80 = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx11.i.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx11.i.i80, align 4
  %xor12.i.i81 = xor i32 %53, %tmp.i.sroa.9.0.off32
  %or13.i.i82 = or i32 %or.i.i79, %xor12.i.i81
  %arrayidx17.i.i83 = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx17.i.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx17.i.i83, align 4
  %xor18.i.i84 = xor i32 %55, %tmp.i.sroa.9.0.off0
  %or19.i.i85 = or i32 %or13.i.i82, %xor18.i.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i85)
  %cmp.i.i86 = icmp eq i32 %or19.i.i85, 0
  br i1 %cmp.i.i86, label %if.then9, label %lowpan_iphc_addr_equal.exit.sw.epilog_crit_edge

lowpan_iphc_addr_equal.exit.sw.epilog_crit_edge:  ; preds = %lowpan_iphc_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then9:                                         ; preds = %lowpan_iphc_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_compress_addr_64.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_compress_addr_64, %if.then22)) #7
          to label %out [label %if.then22], !srcloc !149

if.then22:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_compress_addr_64.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.39) #7
  br label %out

sw.epilog:                                        ; preds = %lowpan_iphc_addr_equal.exit.sw.epilog_crit_edge, %lowpan_iphc_compress_802154_lladdr.exit.sw.epilog_crit_edge, %if.then78.i, %land.end.i.sw.epilog_crit_edge, %land.lhs.true52.i.sw.epilog_crit_edge, %land.lhs.true44.i.sw.epilog_crit_edge, %land.lhs.true36.i.sw.epilog_crit_edge, %land.lhs.true28.i.sw.epilog_crit_edge, %land.lhs.true20.i.sw.epilog_crit_edge, %land.lhs.true12.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge
  %arrayidx = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 4
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp = icmp eq i16 %57, 0
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.if.end54_crit_edge

sw.epilog.if.end54_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true:                                    ; preds = %sw.epilog
  %arrayidx29 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 10
  %58 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp31 = icmp eq i8 %59, 0
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true33:                                  ; preds = %land.lhs.true
  %arrayidx35 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %60 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %cmp37 = icmp eq i8 %61, -1
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true33.if.end54_crit_edge

land.lhs.true33.if.end54_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true39:                                  ; preds = %land.lhs.true33
  %arrayidx41 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %62 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %63)
  %cmp43 = icmp eq i8 %63, -2
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true39.if.end54_crit_edge

land.lhs.true39.if.end54_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true45:                                  ; preds = %land.lhs.true39
  %arrayidx47 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 13
  %64 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp49 = icmp eq i8 %65, 0
  br i1 %cmp49, label %if.then51, label %land.lhs.true45.if.end54_crit_edge

land.lhs.true45.if.end54_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then51:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx53 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 7
  %66 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hc_ptr, align 4
  %68 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %arrayidx53, align 1
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %67, align 1
  %71 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %71, i32 2
  store ptr %add.ptr.i, ptr %hc_ptr, align 4
  br label %out

if.end54:                                         ; preds = %land.lhs.true45.if.end54_crit_edge, %land.lhs.true39.if.end54_crit_edge, %land.lhs.true33.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %sw.epilog.if.end54_crit_edge
  %72 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hc_ptr, align 4
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %arrayidx, align 1
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %75, ptr %73, align 1
  %77 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i87 = getelementptr i8, ptr %77, i32 8
  store ptr %add.ptr.i87, ptr %hc_ptr, align 4
  br label %out

out:                                              ; preds = %if.end54, %if.then51, %if.then22, %if.then9, %if.then6, %if.then
  %dam.0 = phi i8 [ 3, %if.then6 ], [ 2, %if.then51 ], [ 1, %if.end54 ], [ 3, %if.then22 ], [ 3, %if.then ], [ 3, %if.then9 ]
  br i1 %sam, label %if.then59, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom = zext i8 %dam.0 to i32
  %arrayidx60 = getelementptr [4 x i8], ptr @lowpan_iphc_dam_to_sam_value, i32 0, i32 %idxprom
  %78 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx60, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %out.cleanup_crit_edge
  %retval.0 = phi i8 [ %79, %if.then59 ], [ %dam.0, %out.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @lowpan_iphc_mcast_addr_compress(ptr nocapture noundef %hc_ptr, ptr noundef readonly %ipaddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp5 = icmp eq i16 %3, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx9 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp11 = icmp eq i16 %5, 0
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %arrayidx15 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp17 = icmp eq i16 %7, 0
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %arrayidx21 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp23 = icmp eq i16 %9, 0
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true19.if.else_crit_edge

land.lhs.true19.if.else_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %arrayidx27 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp29 = icmp eq i16 %11, 0
  br i1 %cmp29, label %land.lhs.true31, label %land.lhs.true25.if.else_crit_edge

land.lhs.true25.if.else_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true31:                                  ; preds = %land.lhs.true25
  %arrayidx33 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp35 = icmp eq i16 %13, 0
  br i1 %cmp35, label %land.lhs.true37, label %land.lhs.true31.if.else_crit_edge

land.lhs.true31.if.else_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true37:                                  ; preds = %land.lhs.true31
  %arrayidx39 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 14
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx39, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp41 = icmp eq i8 %15, 0
  br i1 %cmp41, label %do.body, label %land.lhs.true37.if.else_crit_edge

land.lhs.true37.if.else_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.body:                                          ; preds = %land.lhs.true37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_mcast_addr_compress, %if.then45)) #7
          to label %do.end [label %if.then45], !srcloc !149

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.43) #7
  br label %do.end

do.end:                                           ; preds = %if.then45, %do.body
  %arrayidx47 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 15
  %16 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hc_ptr, align 4
  %18 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx47, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %17, align 1
  br label %if.end175

if.else:                                          ; preds = %land.lhs.true37.if.else_crit_edge, %land.lhs.true31.if.else_crit_edge, %land.lhs.true25.if.else_crit_edge, %land.lhs.true19.if.else_crit_edge, %land.lhs.true13.if.else_crit_edge, %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %arrayidx49 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx49, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp51 = icmp eq i16 %22, 0
  br i1 %cmp51, label %land.lhs.true53, label %if.else.do.body156_crit_edge

if.else.do.body156_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body156

land.lhs.true53:                                  ; preds = %if.else
  %arrayidx55 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp57 = icmp eq i16 %24, 0
  br i1 %cmp57, label %land.lhs.true59, label %land.lhs.true53.do.body156_crit_edge

land.lhs.true53.do.body156_crit_edge:             ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body156

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %arrayidx61 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx61, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp63 = icmp eq i16 %26, 0
  br i1 %cmp63, label %land.lhs.true65, label %land.lhs.true59.land.lhs.true110_crit_edge

land.lhs.true59.land.lhs.true110_crit_edge:       ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true110

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %arrayidx67 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx67, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp69 = icmp eq i16 %28, 0
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true65.land.lhs.true110_crit_edge

land.lhs.true65.land.lhs.true110_crit_edge:       ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true110

land.lhs.true71:                                  ; preds = %land.lhs.true65
  %arrayidx73 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx73, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp75 = icmp eq i16 %30, 0
  br i1 %cmp75, label %land.lhs.true77, label %land.lhs.true71.land.lhs.true110_crit_edge

land.lhs.true71.land.lhs.true110_crit_edge:       ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true110

land.lhs.true77:                                  ; preds = %land.lhs.true71
  %arrayidx79 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 12
  %31 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp81 = icmp eq i8 %32, 0
  br i1 %cmp81, label %do.body84, label %land.lhs.true77.land.lhs.true110_crit_edge

land.lhs.true77.land.lhs.true110_crit_edge:       ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true110

do.body84:                                        ; preds = %land.lhs.true77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_mcast_addr_compress, %if.then96)) #7
          to label %do.end99 [label %if.then96], !srcloc !149

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.44) #7
  br label %do.end99

do.end99:                                         ; preds = %if.then96, %do.body84
  %33 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hc_ptr, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %34, align 1
  %38 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i214 = getelementptr i8, ptr %38, i32 1
  store ptr %add.ptr.i214, ptr %hc_ptr, align 4
  %arrayidx103 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 13
  %39 = call ptr @memcpy(ptr %add.ptr.i214, ptr %arrayidx103, i32 3)
  br label %if.end175

land.lhs.true110:                                 ; preds = %land.lhs.true77.land.lhs.true110_crit_edge, %land.lhs.true71.land.lhs.true110_crit_edge, %land.lhs.true65.land.lhs.true110_crit_edge, %land.lhs.true59.land.lhs.true110_crit_edge
  %40 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %40)
  %.pr = load i16, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp114 = icmp eq i16 %.pr, 0
  br i1 %cmp114, label %land.lhs.true116, label %land.lhs.true110.do.body156_crit_edge

land.lhs.true110.do.body156_crit_edge:            ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body156

land.lhs.true116:                                 ; preds = %land.lhs.true110
  %arrayidx118 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx118, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp120 = icmp eq i16 %42, 0
  br i1 %cmp120, label %land.lhs.true122, label %land.lhs.true116.do.body156_crit_edge

land.lhs.true116.do.body156_crit_edge:            ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body156

land.lhs.true122:                                 ; preds = %land.lhs.true116
  %arrayidx124 = getelementptr [8 x i16], ptr %ipaddr, i32 0, i32 4
  %43 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx124, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp126 = icmp eq i16 %44, 0
  br i1 %cmp126, label %land.lhs.true128, label %land.lhs.true122.do.body156_crit_edge

land.lhs.true122.do.body156_crit_edge:            ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body156

land.lhs.true128:                                 ; preds = %land.lhs.true122
  %arrayidx130 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx130, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp132 = icmp eq i8 %46, 0
  br i1 %cmp132, label %do.body135, label %land.lhs.true128.do.body156_crit_edge

land.lhs.true128.do.body156_crit_edge:            ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body156

do.body135:                                       ; preds = %land.lhs.true128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_mcast_addr_compress, %if.then147)) #7
          to label %do.end150 [label %if.then147], !srcloc !149

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.45) #7
  br label %do.end150

do.end150:                                        ; preds = %if.then147, %do.body135
  %47 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hc_ptr, align 4
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx, align 1
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %48, align 1
  %52 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i216 = getelementptr i8, ptr %52, i32 1
  store ptr %add.ptr.i216, ptr %hc_ptr, align 4
  %arrayidx154 = getelementptr [16 x i8], ptr %ipaddr, i32 0, i32 11
  %53 = call ptr @memcpy(ptr %add.ptr.i216, ptr %arrayidx154, i32 5)
  br label %if.end175

do.body156:                                       ; preds = %land.lhs.true128.do.body156_crit_edge, %land.lhs.true122.do.body156_crit_edge, %land.lhs.true116.do.body156_crit_edge, %land.lhs.true110.do.body156_crit_edge, %land.lhs.true53.do.body156_crit_edge, %if.else.do.body156_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_iphc_mcast_addr_compress, %if.then168)) #7
          to label %do.end171 [label %if.then168], !srcloc !149

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.46) #7
  br label %do.end171

do.end171:                                        ; preds = %if.then168, %do.body156
  %54 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hc_ptr, align 4
  %56 = call ptr @memcpy(ptr %55, ptr %ipaddr, i32 16)
  br label %if.end175

if.end175:                                        ; preds = %do.end171, %do.end150, %do.end99, %do.end
  %.sink224 = phi i32 [ 3, %do.end99 ], [ 16, %do.end171 ], [ 5, %do.end150 ], [ 1, %do.end ]
  %val.0 = phi i8 [ 2, %do.end99 ], [ 0, %do.end171 ], [ 1, %do.end150 ], [ 3, %do.end ]
  %57 = ptrtoint ptr %hc_ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hc_ptr, align 4
  %add.ptr.i215 = getelementptr i8, ptr %58, i32 %.sink224
  store ptr %add.ptr.i215, ptr %hc_ptr, align 4
  ret i8 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_nhc_do_compression(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lowpan_iphc_addr_equal(ptr nocapture noundef readonly %dev, ptr noundef readonly %ctx, ptr nocapture noundef readonly %ipaddr, ptr nocapture noundef readonly %lladdr) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  %0 = call ptr @memset(ptr %tmp, i32 0, i32 16)
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %1 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr_len.i, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %2, label %land.end.i [
    i8 6, label %sw.bb.i
    i8 8, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -2, ptr %tmp, align 4
  %arrayidx2.i.i = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 8
  %6 = call ptr @memcpy(ptr %arrayidx4.i.i, ptr %lladdr, i32 3)
  %arrayidx6.i.i = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 11
  %7 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %arrayidx6.i.i, align 1
  %arrayidx8.i.i = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 12
  %8 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %arrayidx8.i.i, align 4
  %arrayidx10.i.i = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 13
  %add.ptr.i.i = getelementptr i8, ptr %lladdr, i32 3
  %9 = call ptr @memcpy(ptr %arrayidx10.i.i, ptr %add.ptr.i.i, i32 3)
  br label %lowpan_iphc_uncompress_lladdr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %tmp, align 4
  %arrayidx2.i40.i = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx2.i40.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %arrayidx2.i40.i, align 1
  %arrayidx4.i41.i = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 8
  %12 = ptrtoint ptr %lladdr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %lladdr, align 1
  %14 = ptrtoint ptr %arrayidx4.i41.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %arrayidx4.i41.i, align 4
  %15 = lshr i64 %13, 56
  %16 = trunc i64 %15 to i8
  %17 = xor i8 %16, 2
  store i8 %17, ptr %arrayidx4.i41.i, align 4
  br label %lowpan_iphc_uncompress_lladdr.exit

land.end.i:                                       ; preds = %entry
  %.b39.i = load i1, ptr @lowpan_iphc_uncompress_lladdr.__already_done, align 1
  br i1 %.b39.i, label %land.end.i.lowpan_iphc_uncompress_lladdr.exit_crit_edge, label %if.then.i, !prof !150

land.end.i.lowpan_iphc_uncompress_lladdr.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_iphc_uncompress_lladdr.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lowpan_iphc_uncompress_lladdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 293, i32 noundef 9, ptr noundef null) #7
  br label %lowpan_iphc_uncompress_lladdr.exit

lowpan_iphc_uncompress_lladdr.exit:               ; preds = %if.then.i, %land.end.i.lowpan_iphc_uncompress_lladdr.exit_crit_edge, %sw.bb1.i, %sw.bb.i
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %lowpan_iphc_uncompress_lladdr.exit.if.end_crit_edge, label %if.then

lowpan_iphc_uncompress_lladdr.exit.if.end_crit_edge: ; preds = %lowpan_iphc_uncompress_lladdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lowpan_iphc_uncompress_lladdr.exit
  %pfx = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 1
  %plen = getelementptr inbounds %struct.lowpan_iphc_ctx, ptr %ctx, i32 0, i32 2
  %18 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %plen, align 4
  %conv = zext i8 %19 to i32
  %shr.i5 = lshr i32 %conv, 3
  %and.i = and i32 %conv, 7
  %20 = call ptr @memcpy(ptr %tmp, ptr %pfx, i32 %shr.i5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then.i3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i3:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %shr1.i = lshr i32 65280, %and.i
  %neg.i = ashr i32 -65281, %and.i
  %arrayidx.i = getelementptr [16 x i8], ptr %tmp, i32 0, i32 %shr.i5
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %23 = trunc i32 %neg.i to i8
  %conv4.i = and i8 %22, %23
  %arrayidx6.i = getelementptr [16 x i8], ptr %pfx, i32 0, i32 %shr.i5
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx6.i, align 1
  %26 = trunc i32 %shr1.i to i8
  %27 = and i8 %25, %26
  %conv13.i = or i8 %27, %conv4.i
  store i8 %conv13.i, ptr %arrayidx.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.i3, %if.then.if.end_crit_edge, %lowpan_iphc_uncompress_lladdr.exit.if.end_crit_edge
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tmp, align 4
  %30 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ipaddr, align 4
  %xor.i = xor i32 %31, %29
  %arrayidx4.i = getelementptr inbounds [4 x i32], ptr %tmp, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i4 = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx6.i4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.i4, align 4
  %xor7.i = xor i32 %35, %33
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr inbounds [4 x i32], ptr %tmp, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %39, %37
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr inbounds [4 x i32], ptr %tmp, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %43, %41
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  ret i1 %cmp.i
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !37, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !79, !81, !83, !85, !86, !87, !89, !91, !93, !94, !95, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !114, !116, !117, !118, !120, !122, !124, !126, !128, !129, !130, !132, !133, !135, !136, !138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__func__.lowpan_header_decompress, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/6lowpan/iphc.c", i32 620, i32 17}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/6lowpan/iphc.c", i32 620, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/6lowpan/iphc.c", i32 646, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug486, !5, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/6lowpan/iphc.c", i32 667, i32 3}
!11 = !{ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug487, !10, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/6lowpan/iphc.c", i32 674, i32 3}
!14 = !{ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug488, !13, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/6lowpan/iphc.c", i32 696, i32 3}
!17 = !{ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug489, !16, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/6lowpan/iphc.c", i32 720, i32 3}
!20 = !{ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug490, !19, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/6lowpan/iphc.c", i32 732, i32 3}
!23 = !{ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug491, !22, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/6lowpan/iphc.c", i32 764, i32 2}
!26 = !{ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug492, !25, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/6lowpan/iphc.c", i32 767, i32 2}
!29 = !{ptr @lowpan_header_decompress.__UNIQUE_ID_ddebug493, !28, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/6lowpan/iphc.c", i32 777, i32 27}
!32 = !{ptr @__ksymtab_lowpan_header_decompress, !33, !"__ksymtab_lowpan_header_decompress", i1 false, i1 false}
!33 = !{!"../net/6lowpan/iphc.c", i32 781, i32 1}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/6lowpan/iphc.c", i32 1146, i32 2}
!36 = !{ptr @lowpan_header_compress.__UNIQUE_ID_ddebug502, !35, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/6lowpan/iphc.c", i32 1151, i32 27}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/6lowpan/iphc.c", i32 1162, i32 27}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/6lowpan/iphc.c", i32 1230, i32 3}
!43 = !{ptr @lowpan_header_compress.__UNIQUE_ID_ddebug503, !42, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/6lowpan/iphc.c", i32 1245, i32 5}
!46 = !{ptr @lowpan_header_compress.__UNIQUE_ID_ddebug504, !45, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/6lowpan/iphc.c", i32 1248, i32 5}
!49 = !{ptr @lowpan_header_compress.__UNIQUE_ID_ddebug505, !48, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/6lowpan/iphc.c", i32 1257, i32 3}
!52 = !{ptr @lowpan_header_compress.__UNIQUE_ID_ddebug506, !51, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/6lowpan/iphc.c", i32 1281, i32 5}
!55 = !{ptr @lowpan_header_compress.__UNIQUE_ID_ddebug507, !54, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/6lowpan/iphc.c", i32 1284, i32 5}
!58 = !{ptr @lowpan_header_compress.__UNIQUE_ID_ddebug508, !57, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/6lowpan/iphc.c", i32 1307, i32 2}
!61 = !{ptr @lowpan_header_compress.__UNIQUE_ID_ddebug509, !60, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/6lowpan/iphc.c", i32 1309, i32 27}
!64 = !{ptr @__ksymtab_lowpan_header_compress, !65, !"__ksymtab_lowpan_header_compress", i1 false, i1 false}
!65 = !{!"../net/6lowpan/iphc.c", i32 1313, i32 1}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../net/6lowpan/iphc.c", i32 598, i32 3}
!68 = !{ptr @lowpan_ttl_values, !69, !"lowpan_ttl_values", i1 false, i1 false}
!69 = !{!"../net/6lowpan/iphc.c", i32 606, i32 17}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/6lowpan/iphc.c", i32 407, i32 3}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @lowpan_iphc_uncompress_ctx_addr.__UNIQUE_ID_ddebug482, !71, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/6lowpan/iphc.c", i32 412, i32 3}
!76 = !{ptr @lowpan_iphc_uncompress_ctx_addr.__UNIQUE_ID_ddebug483, !75, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/6lowpan/iphc.c", i32 417, i32 4}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../net/6lowpan/iphc.c", i32 184, i32 3}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../net/6lowpan/iphc.c", i32 293, i32 3}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/6lowpan/iphc.c", i32 345, i32 3}
!85 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @lowpan_iphc_uncompress_addr.__UNIQUE_ID_ddebug480, !84, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!87 = !{ptr @lowpan_iphc_uncompress_addr.__UNIQUE_ID_ddebug481, !88, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!88 = !{!"../net/6lowpan/iphc.c", i32 350, i32 3}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/6lowpan/iphc.c", i32 354, i32 24}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/6lowpan/iphc.c", i32 464, i32 3}
!93 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @lowpan_uncompress_multicast_daddr.__UNIQUE_ID_ddebug484, !92, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!95 = !{ptr @lowpan_uncompress_multicast_daddr.__UNIQUE_ID_ddebug485, !96, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!96 = !{!"../net/6lowpan/iphc.c", i32 469, i32 3}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/6lowpan/iphc.c", i32 473, i32 24}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/6lowpan/iphc.c", i32 1023, i32 2}
!101 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @lowpan_iphc_tf_compress.__UNIQUE_ID_ddebug497, !100, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/6lowpan/iphc.c", i32 1002, i32 2}
!105 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @lowpan_iphc_get_tc.__UNIQUE_ID_ddebug496, !104, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../net/6lowpan/iphc.c", i32 894, i32 2}
!109 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../net/6lowpan/iphc.c", i32 824, i32 3}
!112 = !{ptr @lowpan_iphc_dam_to_sam_value, !113, !"lowpan_iphc_dam_to_sam_value", i1 false, i1 false}
!113 = !{!"../net/6lowpan/iphc.c", i32 783, i32 17}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/6lowpan/iphc.c", i32 954, i32 4}
!116 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @lowpan_compress_addr_64.__UNIQUE_ID_ddebug494, !115, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!118 = !{ptr @lowpan_compress_addr_64.__UNIQUE_ID_ddebug495, !119, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!119 = !{!"../net/6lowpan/iphc.c", i32 961, i32 4}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/6lowpan/iphc.c", i32 972, i32 25}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/6lowpan/iphc.c", i32 979, i32 24}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../net/6lowpan/iphc.c", i32 937, i32 3}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/6lowpan/iphc.c", i32 1106, i32 3}
!128 = !{ptr @.str.43, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug498, !127, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!130 = !{ptr @.str.44, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/6lowpan/iphc.c", i32 1111, i32 3}
!132 = !{ptr @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug499, !131, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!133 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/6lowpan/iphc.c", i32 1117, i32 3}
!135 = !{ptr @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug500, !134, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/6lowpan/iphc.c", i32 1123, i32 3}
!138 = !{ptr @lowpan_iphc_mcast_addr_compress.__UNIQUE_ID_ddebug501, !137, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 2148867813, i64 2148867818, i64 2148867831, i64 2148867875, i64 2148867909, i64 2148867930}
!150 = !{!"branch_weights", i32 2000, i32 1}
