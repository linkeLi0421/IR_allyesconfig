; ModuleID = '/llk/IR_all_yes/drivers/net/can/sja1000/sja1000.c_pt.bc'
source_filename = "../drivers/net/can/sja1000/sja1000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sja1000_interrupt\22, \22a\22\09"
module asm "\09.weak\09__crc_sja1000_interrupt\09\09\09\09"
module asm "\09.long\09__crc_sja1000_interrupt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sja1000_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22sja1000_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_sja1000_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+alloc_sja1000dev\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_sja1000dev\09\09\09\09"
module asm "\09.long\09__crc_alloc_sja1000dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_sja1000dev:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_sja1000dev\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_sja1000dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+free_sja1000dev\22, \22a\22\09"
module asm "\09.weak\09__crc_free_sja1000dev\09\09\09\09"
module asm "\09.long\09__crc_free_sja1000dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_sja1000dev:\09\09\09\09\09"
module asm "\09.asciz \09\22free_sja1000dev\22\09\09\09\09\09"
module asm "__kstrtabns_free_sja1000dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_sja1000dev\22, \22a\22\09"
module asm "\09.weak\09__crc_register_sja1000dev\09\09\09\09"
module asm "\09.long\09__crc_register_sja1000dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sja1000dev:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sja1000dev\22\09\09\09\09\09"
module asm "__kstrtabns_register_sja1000dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_sja1000dev\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_sja1000dev\09\09\09\09"
module asm "\09.long\09__crc_unregister_sja1000dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_sja1000dev:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_sja1000dev\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_sja1000dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.can_frame = type { i32, %union.anon.146, i8, i8, i8, [8 x i8] }
%union.anon.146 = type { i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.can_berr_counter = type { i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }

@__UNIQUE_ID_author463 = internal constant [63 x i8] c"sja1000.author=Oliver Hartkopp <oliver.hartkopp@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file464 = internal constant [45 x i8] c"sja1000.file=drivers/net/can/sja1000/sja1000\00", section ".modinfo", align 1
@__UNIQUE_ID_license465 = internal constant [29 x i8] c"sja1000.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description466 = internal constant [48 x i8] c"sja1000.description=sja1000CAN netdevice driver\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wakeup interrupt\0A\00", [46 x i8] zeroinitializer }, align 32
@sja1000_interrupt.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sja1000\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sja1000_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/can/sja1000/sja1000.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d messages handled in ISR\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_sja1000_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_sja1000_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_sja1000_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sja1000_interrupt to i32), ptr @__kstrtab_sja1000_interrupt, ptr @__kstrtabns_sja1000_interrupt }, section "___ksymtab_gpl+sja1000_interrupt", align 4
@sja1000_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"sja1000\00\00\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 64, i32 1 }, [48 x i8] zeroinitializer }, align 32
@alloc_sja1000dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->cmdreg_lock\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_sja1000dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_sja1000dev = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_sja1000dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_sja1000dev to i32), ptr @__kstrtab_alloc_sja1000dev, ptr @__kstrtabns_alloc_sja1000dev }, section "___ksymtab_gpl+alloc_sja1000dev", align 4
@__kstrtab_free_sja1000dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_sja1000dev = external dso_local constant [0 x i8], align 1
@__ksymtab_free_sja1000dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_sja1000dev to i32), ptr @__kstrtab_free_sja1000dev, ptr @__kstrtabns_free_sja1000dev }, section "___ksymtab_gpl+free_sja1000dev", align 4
@sja1000_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @sja1000_open, ptr @sja1000_close, ptr @sja1000_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__kstrtab_register_sja1000dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sja1000dev = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sja1000dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sja1000dev to i32), ptr @__kstrtab_register_sja1000dev, ptr @__kstrtabns_register_sja1000dev }, section "___ksymtab_gpl+register_sja1000dev", align 4
@__kstrtab_unregister_sja1000dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_sja1000dev = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_sja1000dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_sja1000dev to i32), ptr @__kstrtab_unregister_sja1000dev, ptr @__kstrtabns_unregister_sja1000dev }, section "___ksymtab_gpl+unregister_sja1000dev", align 4
@__initcall__kmod_sja1000__472_697_sja1000_init6 = internal global ptr @sja1000_init, section ".initcall6.init", align 4
@sja1000_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: driver removed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sja1000_exit\00", [19 x i8] zeroinitializer }, align 32
@sja1000_exit._entry_ptr = internal global ptr @sja1000_exit._entry, section ".printk_index", align 4
@__exitcall_sja1000_exit = internal global ptr @sja1000_exit, section ".exitcall.exit", align 4
@sja1000_err.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sja1000_err\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data overrun interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@sja1000_err.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.10, i8 0, i8 105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error warning interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@sja1000_err.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.11, i8 0, i8 116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error passive interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@sja1000_err.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.12, i8 0, i8 118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arbitration lost interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting BTR0=0x%02x BTR1=0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"setting SJA1000 into normal mode failed!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"probing failed\0A\00", [16 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"setting SJA1000 into reset mode failed!\0A\00", [55 x i8] zeroinitializer }, align 32
@sja1000_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s CAN netdevice driver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sja1000_init\00", [19 x i8] zeroinitializer }, align 32
@sja1000_init._entry_ptr = internal global ptr @sja1000_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 520, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 558, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [24 x i8] c"sja1000_bittiming_const\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 73, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 639, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"sja1000_netdev_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 654, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 701, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 413, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 423, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 465, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 474, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 256, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 172, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 109, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 104, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 137, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [37 x i8] c"../drivers/net/can/sja1000/sja1000.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 692, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_file464, ptr @__UNIQUE_ID_license465, ptr @__exitcall_sja1000_exit, ptr @__initcall__kmod_sja1000__472_697_sja1000_init6, ptr @__ksymtab_alloc_sja1000dev, ptr @__ksymtab_free_sja1000dev, ptr @__ksymtab_register_sja1000dev, ptr @__ksymtab_sja1000_interrupt, ptr @__ksymtab_unregister_sja1000dev, ptr @sja1000_exit, ptr @sja1000_exit._entry, ptr @sja1000_exit._entry_ptr, ptr @sja1000_init._entry, ptr @sja1000_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sja1000_bittiming_const, ptr @alloc_sja1000dev.__key, ptr @.str.5, ptr @sja1000_netdev_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1000_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_sja1000dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1000_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1000_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1000_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1000_interrupt(i32 %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %pre_irq = getelementptr i8, ptr %dev_id, i32 2628
  %0 = ptrtoint ptr %pre_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pre_irq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %1(ptr noundef %add.ptr.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %read_reg = getelementptr i8, ptr %dev_id, i32 2620
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 4
  %call3 = tail call zeroext i8 %3(ptr noundef %add.ptr.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3)
  %cmp = icmp eq i8 %call3, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %while.cond.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.cond.preheader:                             ; preds = %if.end
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %call8143 = call zeroext i8 %5(ptr noundef %add.ptr.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8143)
  %tobool10.not145.not = icmp eq i8 %call8143, 0
  br i1 %tobool10.not145.not, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ctrlmode = getelementptr i8, ptr %dev_id, i32 2476
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  %cmdreg_lock.i.i = getelementptr i8, ptr %dev_id, i32 2652
  %write_reg.i.i = getelementptr i8, ptr %dev_id, i32 2624
  br label %while.body

while.body:                                       ; preds = %if.end69.while.body_crit_edge, %while.body.lr.ph
  %call8148 = phi i8 [ %call8143, %while.body.lr.ph ], [ %call8, %if.end69.while.body_crit_edge ]
  %n.0146 = phi i32 [ 0, %while.body.lr.ph ], [ %inc70, %if.end69.while.body_crit_edge ]
  %conv9149 = zext i8 %call8148 to i32
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call14 = call zeroext i8 %7(ptr noundef %add.ptr.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call14)
  %cmp16 = icmp eq i8 %call14, -1
  br i1 %cmp16, label %land.lhs.true, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true:                                    ; preds = %while.body
  %8 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg, align 4
  %call.i = call zeroext i8 %9(ptr noundef %add.ptr.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp.i.not = icmp eq i8 %call.i, -1
  br i1 %cmp.i.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %while.body.if.end21_crit_edge
  %and = and i32 %conv9149, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %and27 = and i32 %conv9149, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end40_crit_edge, label %if.then29

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then29:                                        ; preds = %if.end25
  %10 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrlmode, align 4
  %and30 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp ne i32 %and30, 0
  %12 = and i8 %call14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool35.not = icmp eq i8 %12, 0
  %or.cond131 = select i1 %tobool31.not, i1 %tobool35.not, i1 false
  br i1 %or.cond131, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %tx_errors, align 4
  call void @can_free_echo_skb(ptr noundef %dev_id, i32 noundef 0, ptr noundef null) #6
  br label %if.end39

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = call i32 @can_get_echo_skb(ptr noundef %dev_id, i32 noundef 0, ptr noundef null) #6
  %15 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %16, %call37
  store i32 %add, ptr %tx_bytes, align 4
  %17 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_packets, align 4
  %inc38 = add i32 %18, 1
  store i32 %inc38, ptr %tx_packets, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then36
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %20) #6
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end25.if.end40_crit_edge
  %and42 = and i32 %conv9149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %21 = and i8 %call14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool48.not142 = icmp eq i8 %21, 0
  %or.cond153 = select i1 %tobool43.not, i1 true, i1 %tobool48.not142
  br i1 %or.cond153, label %if.end40.if.end60_crit_edge, label %if.end40.while.body49_crit_edge

if.end40.while.body49_crit_edge:                  ; preds = %if.end40
  br label %while.body49

if.end40.if.end60_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

while.body49:                                     ; preds = %if.end59.while.body49_crit_edge, %if.end40.while.body49_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %22 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !79
  %call2.i = call ptr @alloc_can_skb(ptr noundef %dev_id, ptr noundef nonnull %cf.i) #6
  %cmp.i132 = icmp eq ptr %call2.i, null
  br i1 %cmp.i132, label %while.body49.sja1000_rx.exit_crit_edge, label %if.end.i

while.body49.sja1000_rx.exit_crit_edge:           ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1000_rx.exit

if.end.i:                                         ; preds = %while.body49
  %23 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg, align 4
  %call3.i = call zeroext i8 %24(ptr noundef %add.ptr.i, i32 noundef 16) #6
  %conv.i = zext i8 %call3.i to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %25 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_reg, align 4
  %call23.i = call zeroext i8 %26(ptr noundef %add.ptr.i, i32 noundef 17) #6
  %conv24.i = zext i8 %call23.i to i32
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 %conv24.i, 21
  %27 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_reg, align 4
  %call9.i = call zeroext i8 %28(ptr noundef %add.ptr.i, i32 noundef 18) #6
  %conv10.i = zext i8 %call9.i to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 13
  %or.i = or i32 %shl11.i, %shl.i
  %29 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_reg, align 4
  %call13.i = call zeroext i8 %30(ptr noundef %add.ptr.i, i32 noundef 19) #6
  %conv14.i = zext i8 %call13.i to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 5
  %or16.i = or i32 %shl15.i, %or.i
  %31 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_reg, align 4
  %call18.i = call zeroext i8 %32(ptr noundef %add.ptr.i, i32 noundef 20) #6
  %33 = lshr i8 %call18.i, 3
  %34 = zext i8 %33 to i32
  %or20.i = or i32 %or16.i, %34
  %or21.i = or i32 %or20.i, -2147483648
  br label %if.end31.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl25.i = shl nuw nsw i32 %conv24.i, 3
  %35 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_reg, align 4
  %call27.i = call zeroext i8 %36(ptr noundef %add.ptr.i, i32 noundef 18) #6
  %37 = lshr i8 %call27.i, 5
  %38 = zext i8 %37 to i32
  %or30.i = or i32 %shl25.i, %38
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i, %if.then4.i
  %dreg.0.i = phi i8 [ 21, %if.then4.i ], [ 19, %if.else.i ]
  %id.0.i = phi i32 [ %or21.i, %if.then4.i ], [ %or30.i, %if.else.i ]
  %39 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cf.i, align 4
  %and33.i = and i8 %call3.i, 15
  %41 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrlmode, align 4
  %and.i.i = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %and33.i)
  %cmp.i.i = icmp ugt i8 %and33.i, 8
  %or.cond.i.i = and i1 %cmp.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end31.i.can_frame_set_cc_len.exit.i_crit_edge

if.end31.i.can_frame_set_cc_len.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_frame_set_cc_len.exit.i

if.then.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %len8_dlc.i.i = getelementptr inbounds %struct.can_frame, ptr %40, i32 0, i32 4
  %43 = ptrtoint ptr %len8_dlc.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %and33.i, ptr %len8_dlc.i.i, align 1
  br label %can_frame_set_cc_len.exit.i

can_frame_set_cc_len.exit.i:                      ; preds = %if.then.i.i, %if.end31.i.can_frame_set_cc_len.exit.i_crit_edge
  %44 = call i8 @llvm.umin.i8(i8 %and33.i, i8 8) #6
  %45 = getelementptr inbounds %struct.can_frame, ptr %40, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %44, ptr %45, align 4
  %and36.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %for.cond.preheader.i, label %if.then38.i

for.cond.preheader.i:                             ; preds = %can_frame_set_cc_len.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp4288.not.i = icmp eq i8 %44, 0
  br i1 %cmp4288.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then38.i:                                      ; preds = %can_frame_set_cc_len.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %or39.i = or i32 %id.0.i, 1073741824
  br label %if.end49.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.090.i = phi i32 [ %inc47.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %dreg.189.i = phi i8 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %dreg.0.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %47 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_reg, align 4
  %inc.i = add i8 %dreg.189.i, 1
  %conv45.i = zext i8 %dreg.189.i to i32
  %call46.i = call zeroext i8 %48(ptr noundef %add.ptr.i, i32 noundef %conv45.i) #6
  %49 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cf.i, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %50, i32 0, i32 5, i32 %i.090.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %call46.i, ptr %arrayidx.i, align 1
  %inc47.i = add nuw nsw i32 %i.090.i, 1
  %52 = load ptr, ptr %cf.i, align 4
  %53 = getelementptr inbounds %struct.can_frame, ptr %52, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 4
  %conv41.i = zext i8 %55 to i32
  %cmp42.i = icmp ult i32 %inc47.i, %conv41.i
  br i1 %cmp42.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv41.i.le = zext i8 %55 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv41.i.le, %for.end.i.loopexit ]
  %56 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_bytes.i, align 4
  %add.i = add i32 %57, %.lcssa.i
  store i32 %add.i, ptr %rx_bytes.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %for.end.i, %if.then38.i
  %id.1.i = phi i32 [ %or39.i, %if.then38.i ], [ %id.0.i, %for.end.i ]
  %58 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stats1.i, align 4
  %inc50.i = add i32 %59, 1
  store i32 %inc50.i, ptr %stats1.i, align 4
  %60 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cf.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %id.1.i, ptr %61, align 8
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cmdreg_lock.i.i) #6
  %63 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg.i.i, align 4
  call void %64(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext 4) #6
  %65 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_reg, align 4
  %call5.i.i = call zeroext i8 %66(ptr noundef %add.ptr.i, i32 noundef 2) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cmdreg_lock.i.i, i32 noundef %call2.i.i) #6
  %call51.i = call i32 @netif_rx(ptr noundef nonnull %call2.i) #6
  br label %sja1000_rx.exit

sja1000_rx.exit:                                  ; preds = %if.end49.i, %while.body49.sja1000_rx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  %67 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_reg, align 4
  %call51 = call zeroext i8 %68(ptr noundef %add.ptr.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call51)
  %cmp53 = icmp eq i8 %call51, -1
  br i1 %cmp53, label %land.lhs.true55, label %sja1000_rx.exit.if.end59_crit_edge

sja1000_rx.exit.if.end59_crit_edge:               ; preds = %sja1000_rx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

land.lhs.true55:                                  ; preds = %sja1000_rx.exit
  %69 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_reg, align 4
  %call.i135 = call zeroext i8 %70(ptr noundef %add.ptr.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i135)
  %cmp.i136.not = icmp eq i8 %call.i135, -1
  br i1 %cmp.i136.not, label %land.lhs.true55.out_crit_edge, label %land.lhs.true55.if.end59_crit_edge

land.lhs.true55.if.end59_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

land.lhs.true55.out_crit_edge:                    ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end59:                                         ; preds = %land.lhs.true55.if.end59_crit_edge, %sja1000_rx.exit.if.end59_crit_edge
  %71 = and i8 %call51, 1
  %tobool48.not = icmp eq i8 %71, 0
  br i1 %tobool48.not, label %if.end59.if.end60_crit_edge, label %if.end59.while.body49_crit_edge

if.end59.while.body49_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body49

if.end59.if.end60_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end60:                                         ; preds = %if.end59.if.end60_crit_edge, %if.end40.if.end60_crit_edge
  %status.1 = phi i8 [ %call14, %if.end40.if.end60_crit_edge ], [ %call51, %if.end59.if.end60_crit_edge ]
  %and62 = and i32 %conv9149, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end60.if.end69_crit_edge, label %if.then64

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then64:                                        ; preds = %if.end60
  %call65 = call fastcc i32 @sja1000_err(ptr noundef %dev_id, i8 noundef zeroext %call8148, i8 noundef zeroext %status.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end69_crit_edge, label %if.then64.out_crit_edge

if.then64.out_crit_edge:                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end60.if.end69_crit_edge
  %inc70 = add nuw nsw i32 %n.0146, 1
  %72 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_reg, align 4
  %call8 = call zeroext i8 %73(ptr noundef %add.ptr.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8)
  %tobool10.not = icmp ne i8 %call8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %n.0146)
  %cmp11 = icmp ult i32 %n.0146, 19
  %or.cond = select i1 %tobool10.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.end69.while.body_crit_edge, label %if.end69.out_crit_edge

if.end69.out_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end69.while.body_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

out:                                              ; preds = %if.end69.out_crit_edge, %if.then64.out_crit_edge, %land.lhs.true55.out_crit_edge, %land.lhs.true.out_crit_edge, %while.cond.preheader.out_crit_edge, %if.end.out_crit_edge
  %n.1 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %while.cond.preheader.out_crit_edge ], [ %n.0146, %land.lhs.true55.out_crit_edge ], [ %n.0146, %land.lhs.true.out_crit_edge ], [ %inc70, %if.end69.out_crit_edge ], [ %n.0146, %if.then64.out_crit_edge ]
  %post_irq = getelementptr i8, ptr %dev_id, i32 2632
  %74 = ptrtoint ptr %post_irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %post_irq, align 4
  %tobool72.not = icmp eq ptr %75, null
  br i1 %tobool72.not, label %out.if.end75_crit_edge, label %if.then73

out.if.end75_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then73:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void %75(ptr noundef %add.ptr.i) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %out.if.end75_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %n.1)
  %cmp76 = icmp sgt i32 %n.1, 19
  br i1 %cmp76, label %do.body79, label %if.end75.if.end89_crit_edge

if.end75.if.end89_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

do.body79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1000_interrupt.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sja1000_interrupt, %if.end89)) #6
          to label %if.then85 [label %if.end89], !srcloc !80

if.then85:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sja1000_interrupt.__UNIQUE_ID_ddebug471, ptr noundef %dev_id, ptr noundef nonnull @.str.4, i32 noundef %n.1) #6
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %do.body79, %if.end75.if.end89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1)
  %tobool90.not = icmp ne i32 %n.1, 0
  %cond = zext i1 %tobool90.not to i32
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1000_err(ptr noundef %dev, i8 noundef zeroext %isrc, i8 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !79
  %state2 = getelementptr i8, ptr %dev, i32 2472
  %1 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state2, align 4
  %call3 = call ptr @alloc_can_err_skb(ptr noundef %dev, ptr noundef nonnull %cf) #6
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_reg = getelementptr i8, ptr %dev, i32 2620
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call4 = call zeroext i8 %4(ptr noundef %add.ptr.i, i32 noundef 15) #6
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 4
  %call6 = call zeroext i8 %6(ptr noundef %add.ptr.i, i32 noundef 14) #6
  %7 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %8, i32 0, i32 5, i32 6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call4, ptr %arrayidx, align 2
  %10 = load ptr, ptr %cf, align 4
  %arrayidx11 = getelementptr %struct.can_frame, ptr %10, i32 0, i32 5, i32 7
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call6, ptr %arrayidx11, align 1
  %conv12 = zext i8 %isrc to i32
  %and = and i32 %conv12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end27_crit_edge, label %do.body14

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body14:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1000_err.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sja1000_err, %do.end23)) #6
          to label %if.then20 [label %do.end23], !srcloc !80

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sja1000_err.__UNIQUE_ID_ddebug467, ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body14
  %12 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %or = or i32 %15, 4
  store i32 %or, ptr %13, align 8
  %16 = load ptr, ptr %cf, align 4
  %arrayidx25 = getelementptr %struct.can_frame, ptr %16, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx25, align 1
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %18 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %20 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_errors, align 4
  %inc26 = add i32 %21, 1
  store i32 %inc26, ptr %rx_errors, align 4
  %cmdreg_lock.i = getelementptr i8, ptr %dev, i32 2652
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cmdreg_lock.i) #6
  %write_reg.i = getelementptr i8, ptr %dev, i32 2624
  %22 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg.i, align 4
  call void %23(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext 8) #6
  %24 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg, align 4
  %call5.i = call zeroext i8 %25(ptr noundef %add.ptr.i, i32 noundef 2) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cmdreg_lock.i, i32 noundef %call2.i) #6
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %if.end.if.end27_crit_edge
  %and29 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end64_crit_edge, label %do.body33

if.end27.if.end64_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.body33:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1000_err.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sja1000_err, %do.end52)) #6
          to label %if.then47 [label %do.end52], !srcloc !80

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sja1000_err.__UNIQUE_ID_ddebug468, ptr noundef %dev, ptr noundef nonnull @.str.10) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body33
  %conv53 = zext i8 %status to i32
  %and54 = and i32 %conv53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else, label %do.end52.if.end64_crit_edge

do.end52.if.end64_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.else:                                          ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  %and58 = lshr i32 %conv53, 6
  %and58.lobit = and i32 %and58, 1
  br label %if.end64

if.end64:                                         ; preds = %if.else, %do.end52.if.end64_crit_edge, %if.end27.if.end64_crit_edge
  %state.0 = phi i32 [ %2, %if.end27.if.end64_crit_edge ], [ 3, %do.end52.if.end64_crit_edge ], [ %and58.lobit, %if.else ]
  %and66 = and i32 %conv12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end64.if.end112_crit_edge, label %if.then68

if.end64.if.end112_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then68:                                        ; preds = %if.end64
  %can_stats = getelementptr i8, ptr %dev, i32 2308
  %26 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %can_stats, align 4
  %inc70 = add i32 %27, 1
  store i32 %inc70, ptr %can_stats, align 4
  %rx_errors71 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %28 = ptrtoint ptr %rx_errors71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_errors71, align 4
  %inc72 = add i32 %29, 1
  store i32 %inc72, ptr %rx_errors71, align 4
  %30 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg, align 4
  %call74 = call zeroext i8 %31(ptr noundef %add.ptr.i, i32 noundef 12) #6
  %32 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cf, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %or76 = or i32 %35, 136
  store i32 %or76, ptr %33, align 8
  %and78 = and i8 %call74, -64
  %36 = zext i8 %and78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i8 %and78, label %if.then68.sw.epilog_crit_edge [
    i8 0, label %if.then68.sw.epilog.sink.split_crit_edge
    i8 64, label %sw.bb84
    i8 -128, label %sw.bb90
  ]

if.then68.sw.epilog.sink.split_crit_edge:         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.then68.sw.epilog_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb90:                                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb90, %sw.bb84, %if.then68.sw.epilog.sink.split_crit_edge
  %.sink264 = phi i8 [ 4, %sw.bb90 ], [ 2, %sw.bb84 ], [ 1, %if.then68.sw.epilog.sink.split_crit_edge ]
  %37 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %37)
  %.sink = load ptr, ptr %cf, align 4
  %arrayidx80 = getelementptr %struct.can_frame, ptr %.sink, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx80, align 2
  %40 = or i8 %39, %.sink264
  store i8 %40, ptr %arrayidx80, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then68.sw.epilog_crit_edge
  %and97 = and i8 %call74, 31
  %41 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cf, align 4
  %arrayidx100 = getelementptr %struct.can_frame, ptr %42, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %and97, ptr %arrayidx100, align 1
  %44 = and i8 %call74, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp103 = icmp eq i8 %44, 0
  br i1 %cmp103, label %if.then105, label %sw.epilog.if.end112_crit_edge

sw.epilog.if.end112_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then105:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cf, align 4
  %arrayidx107 = getelementptr %struct.can_frame, ptr %46, i32 0, i32 5, i32 2
  %47 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx107, align 2
  %49 = or i8 %48, -128
  store i8 %49, ptr %arrayidx107, align 2
  br label %if.end112

if.end112:                                        ; preds = %if.then105, %sw.epilog.if.end112_crit_edge, %if.end64.if.end112_crit_edge
  %and114 = and i32 %conv12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end112.if.end143_crit_edge, label %do.body118

if.end112.if.end143_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

do.body118:                                       ; preds = %if.end112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1000_err.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sja1000_err, %do.end137)) #6
          to label %if.then132 [label %do.end137], !srcloc !80

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sja1000_err.__UNIQUE_ID_ddebug469, ptr noundef %dev, ptr noundef nonnull @.str.11) #6
  br label %do.end137

do.end137:                                        ; preds = %if.then132, %do.body118
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state.0)
  %cmp138 = icmp eq i32 %state.0, 2
  %.249 = select i1 %cmp138, i32 1, i32 2
  br label %if.end143

if.end143:                                        ; preds = %do.end137, %if.end112.if.end143_crit_edge
  %state.1 = phi i32 [ %state.0, %if.end112.if.end143_crit_edge ], [ %.249, %do.end137 ]
  %and145 = and i32 %conv12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end143.if.end181_crit_edge, label %do.body149

if.end143.if.end181_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

do.body149:                                       ; preds = %if.end143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1000_err.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sja1000_err, %do.end168)) #6
          to label %if.then163 [label %do.end168], !srcloc !80

if.then163:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sja1000_err.__UNIQUE_ID_ddebug470, ptr noundef %dev, ptr noundef nonnull @.str.12) #6
  br label %do.end168

do.end168:                                        ; preds = %if.then163, %do.body149
  %50 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_reg, align 4
  %call170 = call zeroext i8 %51(ptr noundef %add.ptr.i, i32 noundef 11) #6
  %arbitration_lost = getelementptr i8, ptr %dev, i32 2324
  %52 = ptrtoint ptr %arbitration_lost to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arbitration_lost, align 4
  %inc173 = add i32 %53, 1
  store i32 %inc173, ptr %arbitration_lost, align 4
  %54 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cf, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %or175 = or i32 %57, 2
  store i32 %or175, ptr %55, align 8
  %58 = and i8 %call170, 31
  %59 = load ptr, ptr %cf, align 4
  %data179 = getelementptr inbounds %struct.can_frame, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %data179 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %58, ptr %data179, align 8
  br label %if.end181

if.end181:                                        ; preds = %do.end168, %if.end143.if.end181_crit_edge
  %61 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %state.1, i32 %62)
  %cmp184.not = icmp eq i32 %state.1, %62
  br i1 %cmp184.not, label %if.end181.if.end199_crit_edge, label %if.then186

if.end181.if.end199_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end199

if.then186:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_cmp1(i8 %call4, i8 %call6)
  %cmp187.not = icmp ult i8 %call4, %call6
  %spec.select = select i1 %cmp187.not, i32 0, i32 %state.1
  call void @__sanitizer_cov_trace_cmp1(i8 %call4, i8 %call6)
  %cmp189.not = icmp ugt i8 %call4, %call6
  %cond194 = select i1 %cmp189.not, i32 0, i32 %state.1
  %63 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cf, align 4
  call void @can_change_state(ptr noundef %dev, ptr noundef %64, i32 noundef %spec.select, i32 noundef %cond194) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state.1)
  %cmp195 = icmp eq i32 %state.1, 3
  br i1 %cmp195, label %if.then197, label %if.then186.if.end199_crit_edge

if.then186.if.end199_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end199

if.then197:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #8
  call void @can_bus_off(ptr noundef %dev) #6
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %if.then186.if.end199_crit_edge, %if.end181.if.end199_crit_edge
  %call200 = call i32 @netif_rx(ptr noundef nonnull %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end199 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_sja1000dev(i32 noundef %sizeof_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %sizeof_priv, 396
  %call = tail call ptr @alloc_candev_mqs(i32 noundef %add, i32 noundef 1, i32 noundef 1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr i8, ptr %call, i32 2640
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %dev2, align 4
  %bittiming_const = getelementptr i8, ptr %call, i32 2332
  %1 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sja1000_bittiming_const, ptr %bittiming_const, align 4
  %do_set_bittiming = getelementptr i8, ptr %call, i32 2588
  %2 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sja1000_set_bittiming, ptr %do_set_bittiming, align 4
  %do_set_mode = getelementptr i8, ptr %call, i32 2596
  %3 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sja1000_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call, i32 2608
  %4 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sja1000_get_berr_counter, ptr %do_get_berr_counter, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call, i32 2480
  %5 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 351, ptr %ctrlmode_supported, align 4
  %cmdreg_lock = getelementptr i8, ptr %call, i32 2652
  tail call void @__raw_spin_lock_init(ptr noundef %cmdreg_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @alloc_sja1000dev.__key, i16 noundef signext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sizeof_priv)
  %tobool8.not = icmp eq i32 %sizeof_priv, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call, i32 2700
  %priv10 = getelementptr i8, ptr %call, i32 2636
  %6 = ptrtoint ptr %priv10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %priv10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1000_set_bittiming(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %brp = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brp, align 4
  %sjw = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sjw, align 4
  %prop_seg = getelementptr i8, ptr %dev, i32 2352
  %4 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr i8, ptr %dev, i32 2356
  %6 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %5, 15
  %sub3 = add i32 %add, %7
  %and4 = and i32 %sub3, 15
  %phase_seg2 = getelementptr i8, ptr %dev, i32 2360
  %8 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phase_seg2, align 4
  %sub5 = shl i32 %9, 4
  %and6 = add i32 %sub5, 112
  %shl7 = and i32 %and6, 112
  %or8 = or i32 %shl7, %and4
  %conv9 = trunc i32 %or8 to i8
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %10 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrlmode, align 4
  %12 = trunc i32 %11 to i8
  %13 = shl i8 %12, 5
  %14 = and i8 %13, -128
  %15 = or i8 %14, %conv9
  %sub = add i32 %1, 63
  %and = and i32 %sub, 63
  %sub1 = shl i32 %3, 6
  %and2 = add i32 %sub1, 192
  %or = or i32 %and2, %and
  %conv = trunc i32 %or to i8
  %conv15 = and i32 %or, 255
  %conv16 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv15, i32 noundef %conv16) #9
  %write_reg = getelementptr i8, ptr %dev, i32 2624
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  tail call void %17(ptr noundef %add.ptr.i, i32 noundef 6, i8 noundef zeroext %conv) #6
  %18 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg, align 4
  tail call void %19(ptr noundef %add.ptr.i, i32 noundef 7, i8 noundef zeroext %15) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1000_set_mode(ptr noundef %dev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  tail call fastcc void @sja1000_start(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %sw.bb.return_crit_edge, label %if.then

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_tx_wake_queue(ptr noundef %1) #6
  br label %return

return:                                           ; preds = %if.then, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1000_get_berr_counter(ptr noundef %dev, ptr nocapture noundef writeonly %bec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %read_reg = getelementptr i8, ptr %dev, i32 2620
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 4
  %call1 = tail call zeroext i8 %1(ptr noundef %add.ptr.i, i32 noundef 15) #6
  %conv = zext i8 %call1 to i16
  %2 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %bec, align 2
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call3 = tail call zeroext i8 %4(ptr noundef %add.ptr.i, i32 noundef 14) #6
  %conv4 = zext i8 %call3 to i16
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %5 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv4, ptr %rxerr, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_sja1000dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @free_candev(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_sja1000dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr i8, ptr %dev, i32 2644
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %read_reg.i.i = getelementptr i8, ptr %dev, i32 2620
  %2 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %add.ptr.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.i.not.i = icmp eq i8 %call.i.i, -1
  br i1 %cmp.i.not.i, label %sja1000_probe_chip.exit, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sja1000_probe_chip.exit:                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 262144
  store i32 %or, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sja1000_netdev_ops, ptr %netdev_ops, align 8
  %add.ptr.i.i12 = getelementptr i8, ptr %dev, i32 2304
  %read_reg.i = getelementptr i8, ptr %dev, i32 2620
  %7 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call zeroext i8 %8(ptr noundef %add.ptr.i.i12, i32 noundef 0) #6
  %write_reg.i = getelementptr i8, ptr %dev, i32 2624
  %9 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg.i, align 4
  tail call void %10(ptr noundef %add.ptr.i.i12, i32 noundef 4, i8 noundef zeroext 0) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %i.018.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %status.017.i = phi i8 [ %call1.i, %if.end ], [ %call4.i, %if.end.i.for.body.i_crit_edge ]
  %11 = and i8 %status.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i13 = icmp eq i8 %11, 0
  br i1 %tobool.not.i13, label %if.end.i, label %if.then.i14

if.then.i14:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %state.i, align 4
  br label %set_reset_mode.exit

if.end.i:                                         ; preds = %for.body.i
  %13 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i, align 4
  tail call void %14(ptr noundef %add.ptr.i.i12, i32 noundef 0, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #6
  %16 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg.i, align 4
  %call4.i = tail call zeroext i8 %17(ptr noundef %add.ptr.i.i12, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %set_reset_mode.exit

set_reset_mode.exit:                              ; preds = %for.end.i, %if.then.i14
  %18 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i, align 4
  %cdr.i = getelementptr i8, ptr %dev, i32 2699
  %20 = ptrtoint ptr %cdr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cdr.i, align 1
  %22 = or i8 %21, -128
  tail call void %19(ptr noundef %add.ptr.i.i12, i32 noundef 31, i8 noundef zeroext %22) #6
  %23 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg.i, align 4
  tail call void %24(ptr noundef %add.ptr.i.i12, i32 noundef 16, i8 noundef zeroext 0) #6
  %25 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg.i, align 4
  tail call void %26(ptr noundef %add.ptr.i.i12, i32 noundef 17, i8 noundef zeroext 0) #6
  %27 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg.i, align 4
  tail call void %28(ptr noundef %add.ptr.i.i12, i32 noundef 18, i8 noundef zeroext 0) #6
  %29 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg.i, align 4
  tail call void %30(ptr noundef %add.ptr.i.i12, i32 noundef 19, i8 noundef zeroext 0) #6
  %31 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg.i, align 4
  tail call void %32(ptr noundef %add.ptr.i.i12, i32 noundef 20, i8 noundef zeroext -1) #6
  %33 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg.i, align 4
  tail call void %34(ptr noundef %add.ptr.i.i12, i32 noundef 21, i8 noundef zeroext -1) #6
  %35 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg.i, align 4
  tail call void %36(ptr noundef %add.ptr.i.i12, i32 noundef 22, i8 noundef zeroext -1) #6
  %37 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_reg.i, align 4
  tail call void %38(ptr noundef %add.ptr.i.i12, i32 noundef 23, i8 noundef zeroext -1) #6
  %39 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg.i, align 4
  %ocr.i = getelementptr i8, ptr %dev, i32 2698
  %41 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ocr.i, align 2
  %43 = or i8 %42, 2
  tail call void %40(ptr noundef %add.ptr.i.i12, i32 noundef 8, i8 noundef zeroext %43) #6
  %call1 = tail call i32 @register_candev(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %set_reset_mode.exit, %sja1000_probe_chip.exit
  %retval.0 = phi i32 [ -19, %sja1000_probe_chip.exit ], [ %call1, %set_reset_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_sja1000dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %read_reg.i = getelementptr i8, ptr %dev, i32 2620
  %0 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call zeroext i8 %1(ptr noundef %add.ptr.i.i, i32 noundef 0) #6
  %write_reg.i = getelementptr i8, ptr %dev, i32 2624
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  tail call void %3(ptr noundef %add.ptr.i.i, i32 noundef 4, i8 noundef zeroext 0) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.018.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %status.017.i = phi i8 [ %call1.i, %entry ], [ %call4.i, %if.end.i.for.body.i_crit_edge ]
  %4 = and i8 %status.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %state.i, align 4
  br label %set_reset_mode.exit

if.end.i:                                         ; preds = %for.body.i
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  tail call void %7(ptr noundef %add.ptr.i.i, i32 noundef 0, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #6
  %9 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg.i, align 4
  %call4.i = tail call zeroext i8 %10(ptr noundef %add.ptr.i.i, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %set_reset_mode.exit

set_reset_mode.exit:                              ; preds = %for.end.i, %if.then.i
  tail call void @unregister_candev(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1000_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1) #9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sja1000_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sja1000_start(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %read_reg.i = getelementptr i8, ptr %dev, i32 2620
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call zeroext i8 %3(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %write_reg.i = getelementptr i8, ptr %dev, i32 2624
  %4 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i, align 4
  tail call void %5(ptr noundef %add.ptr.i, i32 noundef 4, i8 noundef zeroext 0) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.018.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %status.017.i = phi i8 [ %call1.i, %if.then ], [ %call4.i, %if.end.i.for.body.i_crit_edge ]
  %6 = and i8 %status.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %state, align 4
  br label %if.end

if.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #6
  %11 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i, align 4
  %call4.i = tail call zeroext i8 %12(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %if.end

if.end:                                           ; preds = %for.end.i, %if.then.i, %entry.if.end_crit_edge
  %read_reg = getelementptr i8, ptr %dev, i32 2620
  %13 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg, align 4
  %call1 = tail call zeroext i8 %14(ptr noundef %add.ptr.i, i32 noundef 31) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call1)
  %tobool.not = icmp sgt i8 %call1, -1
  br i1 %tobool.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %write_reg.i23 = getelementptr i8, ptr %dev, i32 2624
  %15 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i23, align 4
  %cdr.i = getelementptr i8, ptr %dev, i32 2699
  %17 = ptrtoint ptr %cdr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cdr.i, align 1
  %19 = or i8 %18, -128
  tail call void %16(ptr noundef %add.ptr.i, i32 noundef 31, i8 noundef zeroext %19) #6
  %20 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg.i23, align 4
  tail call void %21(ptr noundef %add.ptr.i, i32 noundef 16, i8 noundef zeroext 0) #6
  %22 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg.i23, align 4
  tail call void %23(ptr noundef %add.ptr.i, i32 noundef 17, i8 noundef zeroext 0) #6
  %24 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_reg.i23, align 4
  tail call void %25(ptr noundef %add.ptr.i, i32 noundef 18, i8 noundef zeroext 0) #6
  %26 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg.i23, align 4
  tail call void %27(ptr noundef %add.ptr.i, i32 noundef 19, i8 noundef zeroext 0) #6
  %28 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg.i23, align 4
  tail call void %29(ptr noundef %add.ptr.i, i32 noundef 20, i8 noundef zeroext -1) #6
  %30 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg.i23, align 4
  tail call void %31(ptr noundef %add.ptr.i, i32 noundef 21, i8 noundef zeroext -1) #6
  %32 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg.i23, align 4
  tail call void %33(ptr noundef %add.ptr.i, i32 noundef 22, i8 noundef zeroext -1) #6
  %34 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg.i23, align 4
  tail call void %35(ptr noundef %add.ptr.i, i32 noundef 23, i8 noundef zeroext -1) #6
  %36 = ptrtoint ptr %write_reg.i23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg.i23, align 4
  %ocr.i = getelementptr i8, ptr %dev, i32 2698
  %38 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ocr.i, align 2
  %40 = or i8 %39, 2
  tail call void %37(ptr noundef %add.ptr.i, i32 noundef 8, i8 noundef zeroext %40) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %write_reg = getelementptr i8, ptr %dev, i32 2624
  %41 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg, align 4
  tail call void %42(ptr noundef %add.ptr.i, i32 noundef 15, i8 noundef zeroext 0) #6
  %43 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg, align 4
  tail call void %44(ptr noundef %add.ptr.i, i32 noundef 14, i8 noundef zeroext 0) #6
  %45 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_reg, align 4
  %call6 = tail call zeroext i8 %46(ptr noundef %add.ptr.i, i32 noundef 12) #6
  %47 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_reg, align 4
  %call8 = tail call zeroext i8 %48(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %49 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_reg, align 4
  %call1.i26 = tail call zeroext i8 %50(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %ctrlmode10.i = getelementptr i8, ptr %dev, i32 2476
  br label %for.body.i27

for.body.i27:                                     ; preds = %if.end8.i.for.body.i27_crit_edge, %if.end3
  %i.051.i = phi i32 [ 0, %if.end3 ], [ %inc.i31, %if.end8.i.for.body.i27_crit_edge ]
  %mod_reg_val.050.i = phi i8 [ 0, %if.end3 ], [ %64, %if.end8.i.for.body.i27_crit_edge ]
  %status.049.i = phi i8 [ %call1.i26, %if.end3 ], [ %call28.i, %if.end8.i.for.body.i27_crit_edge ]
  %51 = and i8 %status.049.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp2.i = icmp eq i8 %51, 0
  br i1 %cmp2.i, label %if.then.i30, label %if.end8.i

if.then.i30:                                      ; preds = %for.body.i27
  %52 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %state, align 4
  %53 = ptrtoint ptr %ctrlmode10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ctrlmode10.i, align 4
  %and5.i = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i29 = icmp eq i32 %and5.i, 0
  %55 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg, align 4
  br i1 %tobool.not.i29, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %56(ptr noundef %add.ptr.i, i32 noundef 4, i8 noundef zeroext -1) #6
  br label %set_normal_mode.exit

if.else.i:                                        ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %56(ptr noundef %add.ptr.i, i32 noundef 4, i8 noundef zeroext 127) #6
  br label %set_normal_mode.exit

if.end8.i:                                        ; preds = %for.body.i27
  %57 = ptrtoint ptr %ctrlmode10.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctrlmode10.i, align 4
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 2
  %61 = or i8 %60, %mod_reg_val.050.i
  %62 = lshr i8 %59, 4
  %63 = and i8 %62, 4
  %64 = or i8 %61, %63
  %65 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_reg, align 4
  tail call void %66(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext %64) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 2147480) #6
  %68 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_reg, align 4
  %call28.i = tail call zeroext i8 %69(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %inc.i31 = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i32 = icmp eq i32 %inc.i31, 100
  br i1 %exitcond.not.i32, label %for.end.i33, label %if.end8.i.for.body.i27_crit_edge

if.end8.i.for.body.i27_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i27

for.end.i33:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %set_normal_mode.exit

set_normal_mode.exit:                             ; preds = %for.end.i33, %if.else.i, %if.then6.i
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1000_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %read_reg.i = getelementptr i8, ptr %dev, i32 2620
  %0 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call zeroext i8 %1(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %write_reg.i = getelementptr i8, ptr %dev, i32 2624
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  tail call void %3(ptr noundef %add.ptr.i, i32 noundef 4, i8 noundef zeroext 0) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.018.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %status.017.i = phi i8 [ %call1.i, %entry ], [ %call4.i, %if.end.i.for.body.i_crit_edge ]
  %4 = and i8 %status.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %state.i, align 4
  br label %set_reset_mode.exit

if.end.i:                                         ; preds = %for.body.i
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #6
  %9 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg.i, align 4
  %call4.i = tail call zeroext i8 %10(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %set_reset_mode.exit

set_reset_mode.exit:                              ; preds = %for.end.i, %if.then.i
  %call1 = tail call i32 @open_candev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %set_reset_mode.exit.cleanup_crit_edge

set_reset_mode.exit.cleanup_crit_edge:            ; preds = %set_reset_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %set_reset_mode.exit
  %flags = getelementptr i8, ptr %dev, i32 2696
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 4
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool2.not = icmp eq i16 %13, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq_flags = getelementptr i8, ptr %dev, i32 2648
  %16 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_flags, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @sja1000_interrupt, ptr noundef null, i32 noundef %17, ptr noundef %dev, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then6

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @close_candev(ptr noundef %dev) #6
  br label %cleanup

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  tail call fastcc void @sja1000_start(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %set_reset_mode.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -11, %if.then6 ], [ %call1, %set_reset_mode.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1000_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %read_reg.i = getelementptr i8, ptr %dev, i32 2620
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call zeroext i8 %3(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %write_reg.i = getelementptr i8, ptr %dev, i32 2624
  %4 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i, align 4
  tail call void %5(ptr noundef %add.ptr.i, i32 noundef 4, i8 noundef zeroext 0) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.018.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %status.017.i = phi i8 [ %call1.i, %entry ], [ %call4.i, %if.end.i.for.body.i_crit_edge ]
  %6 = and i8 %status.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %state.i, align 4
  br label %set_reset_mode.exit

if.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #6
  %11 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i, align 4
  %call4.i = tail call zeroext i8 %12(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %set_reset_mode.exit

set_reset_mode.exit:                              ; preds = %for.end.i, %if.then.i
  %flags = getelementptr i8, ptr %dev, i32 2696
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 4
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.then, label %set_reset_mode.exit.if.end_crit_edge

set_reset_mode.exit.if.end_crit_edge:             ; preds = %set_reset_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %set_reset_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %set_reset_mode.exit.if.end_crit_edge
  tail call void @close_candev(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1000_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %3, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !81

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !82

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !81

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !82

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !81

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %16 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp38.i.i = icmp eq i16 %16, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex.i.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %14, align 8
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skbcnt.i.i, align 4
  %23 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %26 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %38 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %40 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp.i = icmp eq i8 %42, 8
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %len8_dlc.i, align 1
  %45 = add i8 %44, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %45)
  %46 = icmp ult i8 %45, 7
  br i1 %46, label %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_get_cc_dlc.exit

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %47 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  br label %can_get_cc_dlc.exit

can_get_cc_dlc.exit:                              ; preds = %if.end.i, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge
  %retval.0.i117 = phi i8 [ %49, %if.end.i ], [ %44, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 8
  %and = lshr i32 %51, 24
  %52 = trunc i32 %and to i8
  %53 = and i8 %52, 64
  %54 = or i8 %53, %retval.0.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %tobool7.not = icmp sgt i32 %51, -1
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %can_get_cc_dlc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %55 = or i8 %54, -128
  %write_reg = getelementptr i8, ptr %dev, i32 2624
  %56 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg, align 4
  tail call void %57(ptr noundef %add.ptr.i, i32 noundef 16, i8 noundef zeroext %55) #6
  %58 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_reg, align 4
  %and13 = lshr i32 %51, 21
  %conv14 = trunc i32 %and13 to i8
  tail call void %59(ptr noundef %add.ptr.i, i32 noundef 17, i8 noundef zeroext %conv14) #6
  %60 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg, align 4
  %and16 = lshr i32 %51, 13
  %conv18 = trunc i32 %and16 to i8
  tail call void %61(ptr noundef %add.ptr.i, i32 noundef 18, i8 noundef zeroext %conv18) #6
  br label %if.end35

if.else:                                          ; preds = %can_get_cc_dlc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %write_reg26 = getelementptr i8, ptr %dev, i32 2624
  %62 = ptrtoint ptr %write_reg26 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg26, align 4
  tail call void %63(ptr noundef %add.ptr.i, i32 noundef 16, i8 noundef zeroext %54) #6
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then8
  %write_reg26.sink128 = phi ptr [ %write_reg26, %if.else ], [ %write_reg, %if.then8 ]
  %.sink127 = phi i32 [ 3, %if.else ], [ 5, %if.then8 ]
  %.sink125 = phi i32 [ 17, %if.else ], [ 19, %if.then8 ]
  %.sink124 = phi i8 [ 5, %if.else ], [ 3, %if.then8 ]
  %.sink = phi i32 [ 18, %if.else ], [ 20, %if.then8 ]
  %dreg.0 = phi i8 [ 19, %if.else ], [ 21, %if.then8 ]
  %64 = ptrtoint ptr %write_reg26.sink128 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_reg26.sink128, align 4
  %and28 = lshr i32 %51, %.sink127
  %conv30 = trunc i32 %and28 to i8
  tail call void %65(ptr noundef %add.ptr.i, i32 noundef %.sink125, i8 noundef zeroext %conv30) #6
  %66 = ptrtoint ptr %write_reg26.sink128 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_reg26.sink128, align 4
  %.tr = trunc i32 %51 to i8
  %conv34 = shl i8 %.tr, %.sink124
  tail call void %67(ptr noundef %add.ptr.i, i32 noundef %.sink, i8 noundef zeroext %conv34) #6
  %68 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp120.not = icmp eq i8 %70, 0
  br i1 %cmp120.not, label %if.end35.for.end_crit_edge, label %for.body.lr.ph

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end35
  %write_reg38 = getelementptr i8, ptr %dev, i32 2624
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %for.body.for.body_crit_edge ]
  %dreg.1121 = phi i8 [ %dreg.0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %71 = ptrtoint ptr %write_reg38 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_reg38, align 4
  %inc = add i8 %dreg.1121, 1
  %conv39 = zext i8 %dreg.1121 to i32
  %arrayidx = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %i.0122
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx, align 1
  tail call void %72(ptr noundef %add.ptr.i, i32 noundef %conv39, i8 noundef zeroext %74) #6
  %inc41 = add nuw nsw i32 %i.0122, 1
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %68, align 4
  %conv36 = zext i8 %76 to i32
  %cmp = icmp ult i32 %inc41, %conv36
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end35.for.end_crit_edge
  %call42 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %dev, i32 noundef 0, i32 noundef 0) #6
  %77 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ctrlmode, align 4
  %79 = trunc i32 %78 to i8
  %80 = lshr i8 %79, 2
  %81 = and i8 %80, 2
  %and54 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cmd_reg_val.1.v = select i1 %tobool55.not, i8 1, i8 16
  %cmd_reg_val.1 = or i8 %81, %cmd_reg_val.1.v
  %cmdreg_lock.i = getelementptr i8, ptr %dev, i32 2652
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmdreg_lock.i) #6
  %write_reg.i = getelementptr i8, ptr %dev, i32 2624
  %82 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_reg.i, align 4
  tail call void %83(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext %cmd_reg_val.1) #6
  %read_reg.i = getelementptr i8, ptr %dev, i32 2620
  %84 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read_reg.i, align 4
  %call5.i = tail call zeroext i8 %85(ptr noundef %add.ptr.i, i32 noundef 2) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmdreg_lock.i, i32 noundef %call2.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %can_dropped_invalid_skb.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__UNIQUE_ID_author463, !1, !"__UNIQUE_ID_author463", i1 false, i1 false}
!1 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 69, i32 1}
!2 = !{ptr @__UNIQUE_ID_file464, !3, !"__UNIQUE_ID_file464", i1 false, i1 false}
!3 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 70, i32 1}
!4 = !{ptr @__UNIQUE_ID_license465, !3, !"__UNIQUE_ID_license465", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description466, !6, !"__UNIQUE_ID_description466", i1 false, i1 false}
!6 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 71, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 520, i32 21}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 558, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sja1000_interrupt.__UNIQUE_ID_ddebug471, !10, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!15 = !{ptr @__ksymtab_sja1000_interrupt, !16, !"__ksymtab_sja1000_interrupt", i1 false, i1 false}
!16 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 562, i32 1}
!17 = !{ptr @alloc_sja1000dev.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 639, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__ksymtab_alloc_sja1000dev, !21, !"__ksymtab_alloc_sja1000dev", i1 false, i1 false}
!21 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 646, i32 1}
!22 = !{ptr @__ksymtab_free_sja1000dev, !23, !"__ksymtab_free_sja1000dev", i1 false, i1 false}
!23 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 652, i32 1}
!24 = !{ptr @__ksymtab_register_sja1000dev, !25, !"__ksymtab_register_sja1000dev", i1 false, i1 false}
!25 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 681, i32 1}
!26 = !{ptr @__ksymtab_unregister_sja1000dev, !27, !"__ksymtab_unregister_sja1000dev", i1 false, i1 false}
!27 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 688, i32 1}
!28 = !{ptr @__initcall__kmod_sja1000__472_697_sja1000_init6, !29, !"__initcall__kmod_sja1000__472_697_sja1000_init6", i1 false, i1 false}
!29 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 697, i32 1}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 701, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sja1000_exit._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sja1000_exit._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__exitcall_sja1000_exit, !36, !"__exitcall_sja1000_exit", i1 false, i1 false}
!36 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 704, i32 1}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 413, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sja1000_err.__UNIQUE_ID_ddebug467, !38, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 423, i32 3}
!43 = !{ptr @sja1000_err.__UNIQUE_ID_ddebug468, !42, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 465, i32 3}
!46 = !{ptr @sja1000_err.__UNIQUE_ID_ddebug469, !45, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 474, i32 3}
!49 = !{ptr @sja1000_err.__UNIQUE_ID_ddebug470, !48, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!50 = !{ptr @sja1000_bittiming_const, !51, !"sja1000_bittiming_const", i1 false, i1 false}
!51 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 73, i32 41}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 256, i32 19}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 172, i32 18}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 109, i32 19}
!58 = !{ptr @sja1000_netdev_ops, !59, !"sja1000_netdev_ops", i1 false, i1 false}
!59 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 654, i32 36}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!62 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 137, i32 18}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/sja1000/sja1000.c", i32 692, i32 2}
!67 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sja1000_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sja1000_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i64 2148969347, i64 2148969352, i64 2148969365, i64 2148969409, i64 2148969443, i64 2148969464}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{!"branch_weights", i32 1, i32 2000}
