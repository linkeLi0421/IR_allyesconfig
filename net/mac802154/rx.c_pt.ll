; ModuleID = '/llk/IR_all_yes/net/mac802154/rx.c_pt.bc'
source_filename = "../net/mac802154/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee802154_rx_irqsafe\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_rx_irqsafe\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_rx_irqsafe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_rx_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_rx_irqsafe\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_rx_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee802154_local = type { %struct.ieee802154_hw, ptr, ptr, i32, %struct.list_head, %struct.mutex, ptr, %struct.hrtimer, i8, i8, %struct.tasklet_struct, %struct.sk_buff_head, ptr, %struct.work_struct }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee802154_sub_if_data = type { %struct.list_head, %struct.wpan_dev, ptr, ptr, i32, [16 x i8], %struct.mutex, %struct.mac802154_llsec }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }
%struct.mac802154_llsec = type { %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_table, [64 x %struct.hlist_head], [64 x %struct.hlist_head], %struct.rwlock_t }
%struct.ieee802154_llsec_params = type { i8, i32, i8, %struct.ieee802154_llsec_key_id, i64, i16, i64, i64, i16 }
%struct.ieee802154_llsec_key_id = type { i8, i8, %union.anon.121 }
%union.anon.121 = type { %struct.ieee802154_addr }
%struct.ieee802154_addr = type { i8, i16, %union.anon.118 }
%union.anon.118 = type { i64 }
%struct.ieee802154_llsec_table = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.119, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.119 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ieee802154_hdr = type { %struct.ieee802154_hdr_fc, i8, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.ieee802154_sechdr }
%struct.ieee802154_hdr_fc = type { i16 }
%struct.ieee802154_sechdr = type { i8, i8, i32, %union.anon.122 }
%union.anon.122 = type { i64 }

@ieee802154_rx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/mac802154/rx.c\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_ieee802154_rx_irqsafe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_rx_irqsafe = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_rx_irqsafe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_rx_irqsafe to i32), ptr @__kstrtab_ieee802154_rx_irqsafe, ptr @__kstrtabns_ieee802154_rx_irqsafe }, section "___ksymtab+ieee802154_rx_irqsafe", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@ieee802154_monitors_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__ieee802154_rx_handle_packet.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac802154\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__ieee802154_rx_handle_packet\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"got invalid frame\0A\00", [45 x i8] zeroinitializer }, align 32
@__ieee802154_rx_handle_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee802154_parse_frame_start.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ieee802154_parse_frame_start\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fc: %04x dsn: %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"destination\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@ieee802154_parse_frame_start.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str, ptr @.str.12, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"seclevel %i\0A\00", [19 x i8] zeroinitializer }, align 32
@ieee802154_parse_frame_start.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str, ptr @.str.13, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"implicit key\0A\00", [18 x i8] zeroinitializer }, align 32
@ieee802154_parse_frame_start.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str, ptr @.str.14, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key %02x\0A\00", [22 x i8] zeroinitializer }, align 32
@ieee802154_parse_frame_start.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str, ptr @.str.15, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"key %04x:%04x %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@ieee802154_parse_frame_start.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str, ptr @.str.16, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"key source %8phC %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@ieee802154_print_addr.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str, ptr @.str.18, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ieee802154_print_addr\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s not present\0A\00", [16 x i8] zeroinitializer }, align 32
@ieee802154_print_addr.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str, ptr @.str.19, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s PAN ID: %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@ieee802154_print_addr.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str, ptr @.str.20, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s is short: %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@ieee802154_print_addr.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str, ptr @.str.21, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s is hardware: %8phC\0A\00", [41 x i8] zeroinitializer }, align 32
@ieee802154_subif_frame.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str, ptr @.str.23, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ieee802154_subif_frame\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"getting packet via slave interface %s\0A\00", [57 x i8] zeroinitializer }, align 32
@ieee802154_subif_frame.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str, ptr @.str.24, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid dest mode\0A\00", [45 x i8] zeroinitializer }, align 32
@ieee802154_subif_frame.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str, ptr @.str.25, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"decryption failed: %i\0A\00", [41 x i8] zeroinitializer }, align 32
@ieee802154_subif_frame._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ieee802154_subif_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014ieee802154: bad frame received (type = %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@ieee802154_subif_frame._entry_ptr = internal global ptr @ieee802154_subif_frame._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 253, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 695, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 231, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 723, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 200, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 145, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 152, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 153, i32 24 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 161, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 165, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 169, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 173, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 181, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 118, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 120, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 122, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 127, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 40, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 76, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 88, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [22 x i8] c"../net/mac802154/rx.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 104, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_ieee802154_rx_irqsafe, ptr @ieee802154_subif_frame._entry, ptr @ieee802154_subif_frame._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @ieee802154_subif_frame._rs, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_subif_frame._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_subif_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee802154_rx(ptr noundef %local, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !74) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b73 = load i1, ptr @ieee802154_rx.__already_done, align 1
  br i1 %.b73, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !84

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee802154_rx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %suspended = getelementptr inbounds %struct.ieee802154_local, ptr %local, i32 0, i32 9
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspended, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool35.not = icmp eq i8 %5, 0
  br i1 %tobool35.not, label %if.end37, label %if.end27.drop_crit_edge

if.end27.drop_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end37:                                         ; preds = %if.end27
  %flags = getelementptr inbounds %struct.ieee802154_hw, ptr %local, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and38 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %call41 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 0, ptr noundef %9, i32 noundef %11) #7
  %call42 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 2) #7
  %12 = tail call i16 @llvm.bswap.i16(i16 %call41) #7
  %13 = ptrtoint ptr %call42 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %call42, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %14 = tail call i32 @llvm.read_register.i32(metadata !74) #7
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end43.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end43.rcu_read_lock.exit_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end43
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end43.rcu_read_lock.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %23 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 6655
  %bf.set3.i = or i16 %bf.clear.i, 25088
  store i16 %bf.set3.i, ptr %ip_summed.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %24 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 246, ptr %protocol.i, align 8
  %call.i74 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i76:                                ; preds = %rcu_read_lock.exit
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i76.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i76.do.end.i_crit_edge:             ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i76
  %.b50.i = load i1, ptr @ieee802154_monitors_rx.__warned, align 1
  br i1 %.b50.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i77

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i77:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee802154_monitors_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @.str.3) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i77, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i76.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %interfaces.i = getelementptr inbounds %struct.ieee802154_local, ptr %local, i32 0, i32 4
  %25 = ptrtoint ptr %interfaces.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %sdata.051.i = load volatile ptr, ptr %interfaces.i, align 8
  %cmp.not52.i = icmp eq ptr %sdata.051.i, %interfaces.i
  br i1 %cmp.not52.i, label %do.end.i.ieee802154_monitors_rx.exit_crit_edge, label %for.body.lr.ph.i

do.end.i.ieee802154_monitors_rx.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee802154_monitors_rx.exit

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sdata.053.i = phi ptr [ %sdata.051.i, %for.body.lr.ph.i ], [ %sdata.0.i, %for.inc.i.for.body.i_crit_edge ]
  %iftype.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata.053.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iftype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp13.not.i = icmp eq i32 %27, 1
  br i1 %cmp13.not.i, label %if.end15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end15.i:                                       ; preds = %for.body.i
  %state.i.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata.053.i, i32 0, i32 4
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end15.i.for.inc.i_crit_edge, label %if.end18.i

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end18.i:                                       ; preds = %if.end15.i
  %call19.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #7
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.end18.i.for.inc.i_crit_edge, label %if.then21.i

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata.053.i, i32 0, i32 3
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %32 = getelementptr inbounds %struct.anon.44, ptr %call19.i, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %32, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %call19.i, i32 0, i32 15
  %34 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call19.i, i32 0, i32 15, i32 0, i32 18
  %35 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 246, ptr %protocol.i.i, align 8
  %call.i.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %call19.i) #7
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %stats.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36
  %38 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %42 = load ptr, ptr %dev.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 2
  %43 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %44, %41
  store i32 %add.i, ptr %rx_bytes.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %if.end18.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %45 = ptrtoint ptr %sdata.053.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %sdata.0.i = load volatile ptr, ptr %sdata.053.i, align 8
  %cmp.not.i = icmp eq ptr %sdata.0.i, %interfaces.i
  br i1 %cmp.not.i, label %for.inc.i.ieee802154_monitors_rx.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.ieee802154_monitors_rx.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee802154_monitors_rx.exit

ieee802154_monitors_rx.exit:                      ; preds = %for.inc.i.ieee802154_monitors_rx.exit_crit_edge, %do.end.i.ieee802154_monitors_rx.exit_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and46 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %ieee802154_monitors_rx.exit.if.end55_crit_edge, label %if.then48

ieee802154_monitors_rx.exit.if.end55_crit_edge:   ; preds = %ieee802154_monitors_rx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then48:                                        ; preds = %ieee802154_monitors_rx.exit
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i, align 4
  %len50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len50, align 4
  %call51 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 0, ptr noundef %49, i32 noundef %51) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call51)
  %tobool52.not = icmp eq i16 %call51, 0
  br i1 %tobool52.not, label %if.then48.if.end55_crit_edge, label %if.then53

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then53:                                        ; preds = %if.then48
  %call.i78 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i78, label %if.then53.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i81

if.then53.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i81:                                ; preds = %if.then53
  %call1.i79 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, %if.then53.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  %52 = tail call i32 @llvm.read_register.i32(metadata !74) #7
  %and.i.i.i.i.i85 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %drop

if.end55:                                         ; preds = %if.then48.if.end55_crit_edge, %ieee802154_monitors_rx.exit.if.end55_crit_edge
  %len56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len56, align 4
  %sub = add i32 %57, -2
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #7
  tail call fastcc void @__ieee802154_rx_handle_packet(ptr noundef %local, ptr noundef %skb)
  %call.i88 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i88, label %if.end55.rcu_read_unlock.exit99_crit_edge, label %land.lhs.true.i91

if.end55.rcu_read_unlock.exit99_crit_edge:        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit99

land.lhs.true.i91:                                ; preds = %if.end55
  %call1.i89 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89)
  %tobool.not.i90 = icmp eq i32 %call1.i89, 0
  br i1 %tobool.not.i90, label %land.lhs.true.i91.rcu_read_unlock.exit99_crit_edge, label %land.lhs.true2.i93

land.lhs.true.i91.rcu_read_unlock.exit99_crit_edge: ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit99

land.lhs.true2.i93:                               ; preds = %land.lhs.true.i91
  %.b4.i92 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i92, label %land.lhs.true2.i93.rcu_read_unlock.exit99_crit_edge, label %if.then.i94

land.lhs.true2.i93.rcu_read_unlock.exit99_crit_edge: ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit99

if.then.i94:                                      ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit99

rcu_read_unlock.exit99:                           ; preds = %if.then.i94, %land.lhs.true2.i93.rcu_read_unlock.exit99_crit_edge, %land.lhs.true.i91.rcu_read_unlock.exit99_crit_edge, %if.end55.rcu_read_unlock.exit99_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  %58 = tail call i32 @llvm.read_register.i32(metadata !74) #7
  %and.i.i.i.i.i95 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i96, align 4
  %sub.i.i.i97 = add i32 %61, -1
  store volatile i32 %sub.i.i.i97, ptr %preempt_count.i.i.i.i96, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

drop:                                             ; preds = %rcu_read_unlock.exit, %if.end27.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %drop, %rcu_read_unlock.exit99
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ieee802154_rx_handle_packet(ptr noundef %local, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #7
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 56)
  %call = call fastcc i32 @ieee802154_parse_frame_start(ptr noundef %skb, ptr noundef nonnull %hdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ieee802154_rx_handle_packet.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ieee802154_rx_handle_packet, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !88

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ieee802154_rx_handle_packet.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.7) #7
  br label %cleanup

do.body7:                                         ; preds = %entry
  %call8 = call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %do.body7.do.end17_crit_edge

do.body7.do.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true:                                    ; preds = %do.body7
  %call10 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b50 = load i1, ptr @__ieee802154_rx_handle_packet.__warned, align 1
  br i1 %.b50, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__ieee802154_rx_handle_packet.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @.str.3) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %do.body7.do.end17_crit_edge
  %interfaces = getelementptr inbounds %struct.ieee802154_local, ptr %local, i32 0, i32 4
  %1 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %1)
  %sdata.053 = load volatile ptr, ptr %interfaces, align 8
  %cmp.not54 = icmp eq ptr %sdata.053, %interfaces
  br i1 %cmp.not54, label %do.end17.cleanup_crit_edge, label %do.end17.for.body_crit_edge

do.end17.for.body_crit_edge:                      ; preds = %do.end17
  br label %for.body

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end17.for.body_crit_edge
  %sdata.055 = phi ptr [ %sdata.0, %for.inc.for.body_crit_edge ], [ %sdata.053, %do.end17.for.body_crit_edge ]
  %iftype = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata.055, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24.not = icmp eq i32 %3, 0
  br i1 %cmp24.not, label %if.end26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %state.i = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata.055, i32 0, i32 4
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end26.for.inc_crit_edge, label %if.end29

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ieee802154_subif_frame(ptr noundef %sdata.055, ptr noundef %skb)
  br label %cleanup

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %sdata.055 to i32
  call void @__asan_load4_noabort(i32 %6)
  %sdata.0 = load volatile ptr, ptr %sdata.055, align 8
  %cmp.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end29, %do.end17.cleanup_crit_edge, %if.then5, %do.body
  %skb.addr.0.sink = phi ptr [ %skb, %do.body ], [ %skb, %if.then5 ], [ null, %if.end29 ], [ %skb, %do.end17.cleanup_crit_edge ], [ %skb, %for.inc.cleanup_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb.addr.0.sink, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee802154_rx_irqsafe(ptr noundef %hw, ptr noundef %skb, i8 noundef zeroext %lqi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %lqi, ptr %cb.i, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, 8192
  store i16 %bf.set, ptr %pkt_type, align 8
  %skb_queue = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 11
  tail call void @skb_queue_tail(ptr noundef %skb_queue, ptr noundef %skb) #7
  %state.i = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tasklet = getelementptr inbounds %struct.ieee802154_local, ptr %hw, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #7
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee802154_parse_frame_start(ptr noundef %skb, ptr noundef %hdr) unnamed_addr #0 align 64 {
entry:
  %key = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = call ptr @memset(ptr %cb.i, i32 0, i32 40)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %call1 = tail call i32 @ieee802154_hdr_pull(ptr noundef %skb, ptr noundef %hdr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call1 to i16
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %6 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %mac_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_parse_frame_start, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !88

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdr, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #7
  %conv7 = zext i16 %9 to i32
  %seq = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 1
  %10 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %seq, align 2
  %conv8 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.9, i32 noundef %conv7, i32 noundef %conv8) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %hdr, align 8
  %bf.lshr = lshr i16 %bf.load, 8
  %13 = trunc i16 %bf.lshr to i8
  %conv11 = and i8 %13, 7
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11, ptr %type, align 1
  %bf.load13 = load i16, ptr %hdr, align 8
  %ackreq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %15 = lshr i16 %bf.load13, 13
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %ackreq to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ackreq, align 2
  %bf.load19 = load i16, ptr %hdr, align 8
  %secen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 3
  %19 = lshr i16 %bf.load19, 11
  %20 = trunc i16 %19 to i8
  %21 = and i8 %20, 1
  %22 = ptrtoint ptr %secen to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %secen, align 1
  %dest = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  tail call fastcc void @ieee802154_print_addr(ptr noundef nonnull @.str.10, ptr noundef %dest)
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  tail call fastcc void @ieee802154_print_addr(ptr noundef nonnull @.str.11, ptr noundef %source)
  %source24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %23 = call ptr @memcpy(ptr %source24, ptr %source, i32 16)
  %dest26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %24 = call ptr @memcpy(ptr %dest26, ptr %dest, i32 16)
  %25 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load29 = load i16, ptr %hdr, align 8
  %26 = and i16 %bf.load29, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool32.not = icmp eq i16 %26, 0
  br i1 %tobool32.not, label %do.end.cleanup_crit_edge, label %if.then33

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_parse_frame_start, %if.then46)) #7
          to label %do.end52 [label %if.then46], !srcloc !88

if.then46:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %sec = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %27 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load47 = load i8, ptr %sec, align 8
  %bf.clear48 = and i8 %bf.load47, 7
  %conv49 = zext i8 %bf.clear48 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.12, i32 noundef %conv49) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then46, %if.then33
  %sec53 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %28 = ptrtoint ptr %sec53 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load54 = load i8, ptr %sec53, align 8
  %bf.lshr55 = lshr i8 %bf.load54, 3
  %bf.clear56 = and i8 %bf.lshr55, 3
  %conv57 = zext i8 %bf.clear56 to i32
  %29 = zext i32 %conv57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv57, label %do.end52.unreachabledefault [
    i32 0, label %do.body58
    i32 1, label %do.body75
    i32 2, label %do.body94
    i32 3, label %sw.bb115
  ]

do.body58:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_parse_frame_start, %if.then70)) #7
          to label %sw.epilog [label %if.then70], !srcloc !88

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.13) #7
  br label %sw.epilog

do.body75:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_parse_frame_start, %if.then87)) #7
          to label %sw.epilog [label %if.then87], !srcloc !88

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  %key_id = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %key_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %key_id, align 1
  %conv89 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.14, i32 noundef %conv89) #7
  br label %sw.epilog

do.body94:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_parse_frame_start, %if.then106)) #7
          to label %sw.epilog [label %if.then106], !srcloc !88

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %32 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %shr = lshr i32 %35, 16
  %and = and i32 %35, 65535
  %key_id110 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %key_id110 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %key_id110, align 1
  %conv111 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.15, i32 noundef %shr, i32 noundef %and, i32 noundef %conv111) #7
  br label %sw.epilog

sw.bb115:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  %38 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %38, align 8
  %41 = tail call i64 @llvm.bswap.i64(i64 %40)
  %42 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %key, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_parse_frame_start, %if.then129)) #7
          to label %sw.epilog [label %if.then129], !srcloc !88

if.then129:                                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #9
  %key_id131 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %key_id131 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %key_id131, align 1
  %conv132 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.16, ptr noundef nonnull %key, i32 noundef %conv132) #7
  br label %sw.epilog

do.end52.unreachabledefault:                      ; preds = %do.end52
  unreachable

sw.epilog:                                        ; preds = %if.then129, %sw.bb115, %if.then106, %do.body94, %if.then87, %do.body75, %if.then70, %do.body58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee802154_subif_frame(ptr noundef %sdata, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_subif_frame.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_subif_frame, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_subif_frame.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.23, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pan_id = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pan_id, align 8
  %short_addr = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %short_addr, align 2
  %dest = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dest, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %7, label %do.body103 [
    i8 0, label %if.else
    i8 3, label %sw.bb16
    i8 2, label %sw.bb52
  ]

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_type11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %9 = ptrtoint ptr %pkt_type11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load12 = load i16, ptr %pkt_type11, align 8
  %bf.clear13 = and i16 %bf.load12, 8191
  store i16 %bf.clear13, ptr %pkt_type11, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end
  %pan_id19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %10 = ptrtoint ptr %pan_id19 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pan_id19, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %3)
  %cmp22.not = icmp eq i16 %11, %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp28.not = icmp eq i16 %11, -1
  %or.cond = or i1 %cmp22.not, %cmp28.not
  br i1 %or.cond, label %if.else35, label %if.then30

if.then30:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_type31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %12 = ptrtoint ptr %pkt_type31 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load32 = load i16, ptr %pkt_type31, align 8
  %bf.clear33 = and i16 %bf.load32, 8191
  %bf.set34 = or i16 %bf.clear33, 24576
  store i16 %bf.set34, ptr %pkt_type31, align 8
  br label %sw.epilog

if.else35:                                        ; preds = %sw.bb16
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  %extended_addr = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata, i32 0, i32 1, i32 9
  %16 = ptrtoint ptr %extended_addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %extended_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp38 = icmp eq i64 %15, %17
  %pkt_type41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %pkt_type41 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load42 = load i16, ptr %pkt_type41, align 8
  %bf.clear43 = and i16 %bf.load42, 8191
  br i1 %cmp38, label %if.then40, label %if.else45

if.then40:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %pkt_type41 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.clear43, ptr %pkt_type41, align 8
  br label %sw.epilog

if.else45:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set49 = or i16 %bf.clear43, 24576
  %20 = ptrtoint ptr %pkt_type41 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %bf.set49, ptr %pkt_type41, align 8
  br label %sw.epilog

sw.bb52:                                          ; preds = %do.end
  %pan_id55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %21 = ptrtoint ptr %pan_id55 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pan_id55, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %3)
  %cmp58.not = icmp eq i16 %22, %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp65.not = icmp eq i16 %22, -1
  %or.cond20 = or i1 %cmp58.not, %cmp65.not
  br i1 %or.cond20, label %if.else72, label %if.then67

if.then67:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_type68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %23 = ptrtoint ptr %pkt_type68 to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load69 = load i16, ptr %pkt_type68, align 8
  %bf.clear70 = and i16 %bf.load69, 8191
  %bf.set71 = or i16 %bf.clear70, 24576
  store i16 %bf.set71, ptr %pkt_type68, align 8
  br label %sw.epilog

if.else72:                                        ; preds = %sw.bb52
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %5)
  %cmp77 = icmp eq i16 %26, %5
  br i1 %cmp77, label %if.then79, label %if.else84

if.then79:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_type80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %27 = ptrtoint ptr %pkt_type80 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load81 = load i16, ptr %pkt_type80, align 8
  %bf.clear82 = and i16 %bf.load81, 8191
  store i16 %bf.clear82, ptr %pkt_type80, align 8
  br label %sw.epilog

if.else84:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp88 = icmp eq i16 %26, -1
  %pkt_type91 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %28 = ptrtoint ptr %pkt_type91 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load92 = load i16, ptr %pkt_type91, align 8
  %bf.clear93 = and i16 %bf.load92, 8191
  br i1 %cmp88, label %if.then90, label %if.else95

if.then90:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set94 = or i16 %bf.clear93, 8192
  %29 = ptrtoint ptr %pkt_type91 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %bf.set94, ptr %pkt_type91, align 8
  br label %sw.epilog

if.else95:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set99 = or i16 %bf.clear93, 24576
  %30 = ptrtoint ptr %pkt_type91 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.set99, ptr %pkt_type91, align 8
  br label %sw.epilog

do.body103:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_subif_frame.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_subif_frame, %if.then115)) #7
          to label %fail [label %if.then115], !srcloc !88

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_subif_frame.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.24) #7
  br label %fail

sw.epilog:                                        ; preds = %if.else95, %if.then90, %if.then79, %if.then67, %if.else45, %if.then40, %if.then30, %if.else
  %dev119 = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata, i32 0, i32 3
  %31 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev119, align 4
  %33 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %33, align 8
  %sec = getelementptr inbounds %struct.ieee802154_sub_if_data, ptr %sdata, i32 0, i32 7
  %call120 = tail call i32 @mac802154_llsec_decrypt(ptr noundef %sec, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end139, label %do.body123

do.body123:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_subif_frame.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_subif_frame, %if.then135)) #7
          to label %fail [label %if.then135], !srcloc !88

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_subif_frame.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.25, i32 noundef %call120) #7
  br label %fail

if.end139:                                        ; preds = %sw.epilog
  %35 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev119, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36
  %37 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stats, align 8
  %inc = add i32 %38, 1
  store i32 %inc, ptr %stats, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %41 = load ptr, ptr %dev119, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 36, i32 2
  %42 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %43, %40
  store i32 %add, ptr %rx_bytes, align 8
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %45, label %sw.default148 [
    i8 0, label %if.end139.fail_crit_edge
    i8 2, label %if.end139.fail_crit_edge21
    i8 3, label %if.end139.fail_crit_edge22
    i8 1, label %sw.bb146
  ]

if.end139.fail_crit_edge22:                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end139.fail_crit_edge21:                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end139.fail_crit_edge:                         ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

sw.bb146:                                         ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %47 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %48 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 246, ptr %protocol.i, align 8
  %call.i = tail call i32 @netif_receive_skb(ptr noundef %skb) #7
  br label %cleanup

sw.default148:                                    ; preds = %if.end139
  %call149 = tail call i32 @___ratelimit(ptr noundef nonnull @ieee802154_subif_frame._rs, ptr noundef nonnull @.str.22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %sw.default148.fail_crit_edge, label %do.end154

sw.default148.fail_crit_edge:                     ; preds = %sw.default148
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

do.end154:                                        ; preds = %sw.default148
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type, align 1
  %conv158 = zext i8 %50 to i32
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv158) #10
  br label %fail

fail:                                             ; preds = %do.end154, %sw.default148.fail_crit_edge, %if.end139.fail_crit_edge, %if.end139.fail_crit_edge21, %if.end139.fail_crit_edge22, %if.then135, %do.body123, %if.then115, %do.body103
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %sw.bb146
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_pull(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee802154_print_addr(ptr noundef %name, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  %hw = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %do.body, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_print_addr.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_print_addr, %if.then4)) #7
          to label %do.body6 [label %if.then4], !srcloc !88

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_print_addr.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.18, ptr noundef %name) #7
  br label %do.body6

do.body6:                                         ; preds = %if.then4, %do.body, %entry.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_print_addr.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_print_addr, %if.then18)) #7
          to label %do.end21 [label %if.then18], !srcloc !88

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %pan_id = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pan_id, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv19 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_print_addr.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %conv19) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body6
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp24 = icmp eq i8 %6, 2
  br i1 %cmp24, label %do.body27, label %if.else

do.body27:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_print_addr.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_print_addr, %if.then39)) #7
          to label %if.end58 [label %if.then39], !srcloc !88

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %7 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv40 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_print_addr.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %conv40) #7
  br label %if.end58

if.else:                                          ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw) #7
  %11 = getelementptr inbounds %struct.ieee802154_addr, ptr %addr, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %hw, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee802154_print_addr.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee802154_print_addr, %if.then55)) #7
          to label %do.end57 [label %if.then55], !srcloc !88

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee802154_print_addr.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.21, ptr noundef %name, ptr noundef nonnull %hw) #7
  br label %do.end57

do.end57:                                         ; preds = %if.then55, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw) #7
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %if.then39, %do.body27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac802154_llsec_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !15, !17, !18, !19, !20, !22, !24, !25, !26, !28, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !73}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/mac802154/rx.c", i32 253, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_ieee802154_rx_irqsafe, !4, !"__ksymtab_ieee802154_rx_irqsafe", i1 false, i1 false}
!4 = !{!"../net/mac802154/rx.c", i32 303, i32 1}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/mac802154/rx.c", i32 231, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/mac802154/rx.c", i32 200, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__ieee802154_rx_handle_packet.__UNIQUE_ID_ddebug351, !16, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/mac802154/rx.c", i32 205, i32 2}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/mac802154/rx.c", i32 145, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug345, !23, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/mac802154/rx.c", i32 152, i32 24}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/mac802154/rx.c", i32 153, i32 24}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/mac802154/rx.c", i32 161, i32 3}
!32 = !{ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug346, !31, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/mac802154/rx.c", i32 165, i32 4}
!35 = !{ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug347, !34, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/mac802154/rx.c", i32 169, i32 4}
!38 = !{ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug348, !37, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/mac802154/rx.c", i32 173, i32 4}
!41 = !{ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug349, !40, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/mac802154/rx.c", i32 181, i32 4}
!44 = !{ptr @ieee802154_parse_frame_start.__UNIQUE_ID_ddebug350, !43, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/mac802154/rx.c", i32 118, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ieee802154_print_addr.__UNIQUE_ID_ddebug341, !46, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/mac802154/rx.c", i32 120, i32 2}
!51 = !{ptr @ieee802154_print_addr.__UNIQUE_ID_ddebug342, !50, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/mac802154/rx.c", i32 122, i32 3}
!54 = !{ptr @ieee802154_print_addr.__UNIQUE_ID_ddebug343, !53, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/mac802154/rx.c", i32 127, i32 3}
!57 = !{ptr @ieee802154_print_addr.__UNIQUE_ID_ddebug344, !56, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/mac802154/rx.c", i32 40, i32 2}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ieee802154_subif_frame.__UNIQUE_ID_ddebug338, !59, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/mac802154/rx.c", i32 76, i32 3}
!64 = !{ptr @ieee802154_subif_frame.__UNIQUE_ID_ddebug339, !63, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/mac802154/rx.c", i32 88, i32 3}
!67 = !{ptr @ieee802154_subif_frame.__UNIQUE_ID_ddebug340, !66, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/mac802154/rx.c", i32 104, i32 3}
!70 = !{ptr @ieee802154_subif_frame._rs, !69, !"_rs", i1 false, i1 false}
!71 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ieee802154_subif_frame._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @ieee802154_subif_frame._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i8 0, i8 2}
!86 = !{i64 2149361539}
!87 = !{i64 2149361805}
!88 = !{i64 2148696885, i64 2148696890, i64 2148696903, i64 2148696947, i64 2148696981, i64 2148697002}
