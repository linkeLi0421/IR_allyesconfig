; ModuleID = '/llk/IR_all_yes/drivers/net/can/c_can/c_can_main.c_pt.bc'
source_filename = "../drivers/net/can/c_can/c_can_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+alloc_c_can_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_c_can_dev\09\09\09\09"
module asm "\09.long\09__crc_alloc_c_can_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_c_can_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_c_can_dev\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_c_can_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+c_can_power_down\22, \22a\22\09"
module asm "\09.weak\09__crc_c_can_power_down\09\09\09\09"
module asm "\09.long\09__crc_c_can_power_down\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_c_can_power_down:\09\09\09\09\09"
module asm "\09.asciz \09\22c_can_power_down\22\09\09\09\09\09"
module asm "__kstrtabns_c_can_power_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+c_can_power_up\22, \22a\22\09"
module asm "\09.weak\09__crc_c_can_power_up\09\09\09\09"
module asm "\09.long\09__crc_c_can_power_up\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_c_can_power_up:\09\09\09\09\09"
module asm "\09.asciz \09\22c_can_power_up\22\09\09\09\09\09"
module asm "__kstrtabns_c_can_power_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+free_c_can_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_free_c_can_dev\09\09\09\09"
module asm "\09.long\09__crc_free_c_can_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_c_can_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22free_c_can_dev\22\09\09\09\09\09"
module asm "__kstrtabns_free_c_can_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_c_can_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_register_c_can_dev\09\09\09\09"
module asm "\09.long\09__crc_register_c_can_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_c_can_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22register_c_can_dev\22\09\09\09\09\09"
module asm "__kstrtabns_register_c_can_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_c_can_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_c_can_dev\09\09\09\09"
module asm "\09.long\09__crc_unregister_c_can_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_c_can_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_c_can_dev\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_c_can_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.can_frame = type { i32, %union.anon.146, i8, i8, i8, [8 x i8] }
%union.anon.146 = type { i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.can_berr_counter = type { i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.c_can_tx_ring = type { i32, i32, i32 }
%struct.c_can_priv = type { %struct.can_priv, %struct.napi_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, %struct.c_can_tx_ring, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.c_can_raminit, ptr, i32 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.c_can_raminit = type { ptr, i32, %struct.raminit_bits, i8 }
%struct.raminit_bits = type { i8, i8 }

@c_can_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"c_can\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 16, i32 1, i32 8, i32 4, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_c_can_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_c_can_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_c_can_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_c_can_dev to i32), ptr @__kstrtab_alloc_c_can_dev, ptr @__kstrtabns_alloc_c_can_dev }, section "___ksymtab_gpl+alloc_c_can_dev", align 4
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/can/c_can/c_can_main.c\00", [61 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_c_can_power_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_c_can_power_down = external dso_local constant [0 x i8], align 1
@__ksymtab_c_can_power_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @c_can_power_down to i32), ptr @__kstrtab_c_can_power_down, ptr @__kstrtabns_c_can_power_down }, section "___ksymtab_gpl+c_can_power_down", align 4
@__kstrtab_c_can_power_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_c_can_power_up = external dso_local constant [0 x i8], align 1
@__ksymtab_c_can_power_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @c_can_power_up to i32), ptr @__kstrtab_c_can_power_up, ptr @__kstrtabns_c_can_power_up }, section "___ksymtab_gpl+c_can_power_up", align 4
@__kstrtab_free_c_can_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_c_can_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_free_c_can_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_c_can_dev to i32), ptr @__kstrtab_free_c_can_dev, ptr @__kstrtabns_free_c_can_dev }, section "___ksymtab_gpl+free_c_can_dev", align 4
@c_can_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @c_can_open, ptr @c_can_close, ptr @c_can_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__kstrtab_register_c_can_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_c_can_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_register_c_can_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_c_can_dev to i32), ptr @__kstrtab_register_c_can_dev, ptr @__kstrtabns_register_c_can_dev }, section "___ksymtab_gpl+register_c_can_dev", align 4
@__kstrtab_unregister_c_can_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_c_can_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_c_can_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_c_can_dev to i32), ptr @__kstrtab_unregister_c_can_dev, ptr @__kstrtabns_unregister_c_can_dev }, section "___ksymtab_gpl+unregister_c_can_dev", align 4
@__UNIQUE_ID_author475 = internal constant [52 x i8] c"c_can.author=Bhupesh Sharma <bhupesh.sharma@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file476 = internal constant [39 x i8] c"c_can.file=drivers/net/can/c_can/c_can\00", section ".modinfo", align 1
@__UNIQUE_ID_license477 = internal constant [21 x i8] c"c_can.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description478 = internal constant [60 x i8] c"c_can.description=CAN bus driver for Bosch C_CAN controller\00", section ".modinfo", align 1
@c_can_poll.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 1, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"c_can\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"c_can_poll\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"entered error warning state\0A\00", [35 x i8] zeroinitializer }, align 32
@c_can_poll.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.4, i8 1, i8 17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"entered error passive state\0A\00", [35 x i8] zeroinitializer }, align 32
@c_can_poll.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.5, i8 1, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"entered bus off state\0A\00", [41 x i8] zeroinitializer }, align 32
@c_can_poll.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.6, i8 1, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"left bus off state\0A\00", [44 x i8] zeroinitializer }, align 32
@c_can_poll.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.7, i8 1, i8 21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"left error passive state\0A\00", [38 x i8] zeroinitializer }, align 32
@c_can_poll.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.8, i8 1, i8 22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"left error warning state\0A\00", [38 x i8] zeroinitializer }, align 32
@c_can_handle_bus_err.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str, ptr @.str.10, i8 1, i8 2, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c_can_handle_bus_err\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stuff error\0A\00", [19 x i8] zeroinitializer }, align 32
@c_can_handle_bus_err.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str, ptr @.str.11, i8 1, i8 3, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"form error\0A\00", [20 x i8] zeroinitializer }, align 32
@c_can_handle_bus_err.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str, ptr @.str.12, i8 1, i8 4, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ack error\0A\00", [21 x i8] zeroinitializer }, align 32
@c_can_handle_bus_err.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str, ptr @.str.13, i8 1, i8 5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bit1 error\0A\00", [20 x i8] zeroinitializer }, align 32
@c_can_handle_bus_err.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str, ptr @.str.14, i8 1, i8 6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bit0 error\0A\00", [20 x i8] zeroinitializer }, align 32
@c_can_handle_bus_err.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str, ptr @.str.15, i8 1, i8 7, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRC error\0A\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Updating object timed out\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CCTRL: software reset failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"setting BTR=%04x BRPE=%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CCTRL: set CONTROL_INIT failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to open can device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@c_can_tx_busy.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str, ptr @.str.25, i8 0, i8 111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c_can_tx_busy\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Stopping tx-queue (tx_head=0x%08x, tx_tail=0x%08x, len=%d).\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"c_can_bittiming_const\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 196, i32 41 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1273, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"c_can_netdev_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1358, i32 36 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1087, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1092, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1097, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1104, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1109, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1114, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1035, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1039, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1043, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1047, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1051, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1055, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 248, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 651, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 577, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 524, i32 7 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 495, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1168, i32 19 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1176, i32 19 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 104, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [38 x i8] c"../drivers/net/can/c_can/c_can_main.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 442, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author475, ptr @__UNIQUE_ID_description478, ptr @__UNIQUE_ID_file476, ptr @__UNIQUE_ID_license477, ptr @__ksymtab_alloc_c_can_dev, ptr @__ksymtab_c_can_power_down, ptr @__ksymtab_c_can_power_up, ptr @__ksymtab_free_c_can_dev, ptr @__ksymtab_register_c_can_dev, ptr @__ksymtab_unregister_c_can_dev, ptr @c_can_bittiming_const, ptr @.str, ptr @c_can_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_c_can_dev(i32 noundef %msg_obj_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %msg_obj_num, 2
  %call = tail call ptr @alloc_candev_mqs(i32 noundef 648, i32 noundef %div, i32 noundef 1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %msg_obj_num2 = getelementptr i8, ptr %call, i32 2848
  %0 = ptrtoint ptr %msg_obj_num2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %msg_obj_num, ptr %msg_obj_num2, align 8
  %sub = sub i32 %msg_obj_num, %div
  %msg_obj_rx_num = getelementptr i8, ptr %call, i32 2852
  %1 = ptrtoint ptr %msg_obj_rx_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %msg_obj_rx_num, align 4
  %msg_obj_rx_first = getelementptr i8, ptr %call, i32 2860
  %2 = ptrtoint ptr %msg_obj_rx_first to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %msg_obj_rx_first, align 4
  %msg_obj_rx_last = getelementptr i8, ptr %call, i32 2864
  %3 = ptrtoint ptr %msg_obj_rx_last to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %msg_obj_rx_last, align 8
  %sub8 = sub i32 32, %sub
  %shr = lshr i32 -1, %sub8
  %msg_obj_rx_mask = getelementptr i8, ptr %call, i32 2876
  %4 = ptrtoint ptr %msg_obj_rx_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %msg_obj_rx_mask, align 4
  %msg_obj_tx_num10 = getelementptr i8, ptr %call, i32 2856
  %5 = ptrtoint ptr %msg_obj_tx_num10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %msg_obj_tx_num10, align 8
  %add12 = add i32 %sub, 1
  %msg_obj_tx_first = getelementptr i8, ptr %call, i32 2868
  %6 = ptrtoint ptr %msg_obj_tx_first to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add12, ptr %msg_obj_tx_first, align 4
  %msg_obj_tx_last = getelementptr i8, ptr %call, i32 2872
  %7 = ptrtoint ptr %msg_obj_tx_last to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %msg_obj_num, ptr %msg_obj_tx_last, align 8
  %tx = getelementptr i8, ptr %call, i32 2892
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx, align 4
  %tail = getelementptr i8, ptr %call, i32 2896
  %9 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tail, align 4
  %obj_num = getelementptr i8, ptr %call, i32 2900
  %10 = ptrtoint ptr %obj_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %obj_num, align 4
  %napi = getelementptr i8, ptr %call, i32 2616
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @c_can_poll, i32 noundef %sub) #6
  %dev20 = getelementptr i8, ptr %call, i32 2840
  %11 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %dev20, align 8
  %bittiming_const = getelementptr i8, ptr %call, i32 2332
  %12 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @c_can_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call, i32 2596
  %13 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @c_can_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call, i32 2608
  %14 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @c_can_get_berr_counter, ptr %do_get_berr_counter, align 8
  %ctrlmode_supported = getelementptr i8, ptr %call, i32 2480
  %15 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 19, ptr %ctrlmode_supported, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_poll(ptr noundef %napi, i32 noundef %quota) #0 align 64 {
entry:
  %frame.i28.i.i = alloca ptr, align 4
  %frame.i.i.i = alloca ptr, align 4
  %cf.i315 = alloca ptr, align 4
  %cf.i291 = alloca ptr, align 4
  %cf.i278 = alloca ptr, align 4
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %last_status = getelementptr i8, ptr %1, i32 2888
  %2 = ptrtoint ptr %last_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_status, align 8
  %sie_pending = getelementptr i8, ptr %1, i32 2880
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sie_pending, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %sie_pending, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sie_pending) #6, !srcloc !95
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %read_reg = getelementptr i8, ptr %1, i32 2904
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 8
  %call3 = tail call zeroext i16 %6(ptr noundef %add.ptr.i, i32 noundef 2) #6
  %conv4 = zext i16 %call3 to i32
  %7 = ptrtoint ptr %last_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv4, ptr %last_status, align 8
  %type = getelementptr i8, ptr %1, i32 2928
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.then.if.end10_crit_edge, label %if.then9

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %write_reg = getelementptr i8, ptr %1, i32 2908
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  tail call void %11(ptr noundef %add.ptr.i, i32 noundef 2, i16 noundef zeroext 7) #6
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = and i32 %3, 65535
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9, %if.then.if.end10_crit_edge
  %conv11.pre-phi = phi i32 [ %conv4, %if.then.if.end10_crit_edge ], [ %conv4, %if.then9 ], [ %.pre, %if.else ]
  %and = and i32 %conv11.pre-phi, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp ne i32 %and, 0
  %and14 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %do.body17, label %if.end10.if.end28_crit_edge

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.body17:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_poll.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_poll, %do.end26)) #6
          to label %if.then23 [label %do.end26], !srcloc !97

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_poll.__UNIQUE_ID_ddebug469, ptr noundef %1, ptr noundef nonnull @.str.3) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %12 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !98
  %error_warning.i = getelementptr i8, ptr %1, i32 2312
  %13 = ptrtoint ptr %error_warning.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error_warning.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %error_warning.i, align 4
  %state4.i = getelementptr i8, ptr %1, i32 2472
  %15 = ptrtoint ptr %state4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state4.i, align 8
  %call17.i = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %cf.i) #6
  %tobool.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool.not.i, label %do.end26.c_can_handle_state_change.exit_crit_edge, label %if.end.i, !prof !99

do.end26.c_can_handle_state_change.exit_crit_edge: ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_handle_state_change.exit

if.end.i:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg.i.i = getelementptr i8, ptr %1, i32 2904
  %16 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg.i.i, align 8
  %call1.i.i = call zeroext i16 %17(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %and.i.i = lshr i16 %call1.i.i, 8
  %shr.i.i = and i16 %and.i.i, 127
  %18 = and i16 %call1.i.i, 255
  %19 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg.i.i, align 8
  %call22.i = call zeroext i16 %20(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %21 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %or32.i = or i32 %24, 4
  store i32 %or32.i, ptr %22, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %shr.i.i)
  %cmp.i = icmp ugt i16 %18, %shr.i.i
  %conv38.i = select i1 %cmp.i, i8 8, i8 4
  %25 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cf.i, align 4
  %arrayidx40.i = getelementptr %struct.can_frame, ptr %26, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv38.i, ptr %arrayidx40.i, align 1
  %conv42.i = trunc i16 %call1.i.i to i8
  %28 = load ptr, ptr %cf.i, align 4
  %arrayidx44.i = getelementptr %struct.can_frame, ptr %28, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv42.i, ptr %arrayidx44.i, align 2
  %conv46.i = trunc i16 %shr.i.i to i8
  %30 = load ptr, ptr %cf.i, align 4
  %arrayidx48.i = getelementptr %struct.can_frame, ptr %30, i32 0, i32 5, i32 7
  %31 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv46.i, ptr %arrayidx48.i, align 1
  %call84.i = call i32 @netif_receive_skb(ptr noundef nonnull %call17.i) #6
  br label %c_can_handle_state_change.exit

c_can_handle_state_change.exit:                   ; preds = %if.end.i, %do.end26.c_can_handle_state_change.exit_crit_edge
  %retval.0.i277 = phi i32 [ 1, %if.end.i ], [ 0, %do.end26.c_can_handle_state_change.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  br label %if.end28

if.end28:                                         ; preds = %c_can_handle_state_change.exit, %if.end10.if.end28_crit_edge
  %work_done.0 = phi i32 [ %retval.0.i277, %c_can_handle_state_change.exit ], [ 0, %if.end10.if.end28_crit_edge ]
  %and30 = and i32 %conv11.pre-phi, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp ne i32 %and30, 0
  %and34 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %or.cond254 = select i1 %tobool31.not, i1 %tobool35.not, i1 false
  br i1 %or.cond254, label %do.body38, label %if.end28.if.end60_crit_edge

if.end28.if.end60_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.body38:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_poll.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_poll, %do.end57)) #6
          to label %if.then52 [label %do.end57], !srcloc !97

if.then52:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_poll.__UNIQUE_ID_ddebug470, ptr noundef %1, ptr noundef nonnull @.str.4) #6
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body38
  %call58 = call fastcc i32 @c_can_handle_state_change(ptr noundef %1, i32 noundef 3)
  %add59 = add i32 %call58, %work_done.0
  br label %if.end60

if.end60:                                         ; preds = %do.end57, %if.end28.if.end60_crit_edge
  %work_done.1 = phi i32 [ %add59, %do.end57 ], [ %work_done.0, %if.end28.if.end60_crit_edge ]
  %and62 = and i32 %conv11.pre-phi, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp ne i32 %and62, 0
  %and66 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond255 = select i1 %tobool63.not, i1 %tobool67.not, i1 false
  br i1 %or.cond255, label %do.body70, label %if.end92

do.body70:                                        ; preds = %if.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_poll.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_poll, %do.end89)) #6
          to label %if.then84 [label %do.end89], !srcloc !97

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_poll.__UNIQUE_ID_ddebug471, ptr noundef %1, ptr noundef nonnull @.str.5) #6
  br label %do.end89

do.end89:                                         ; preds = %if.then84, %do.body70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i278) #6
  %32 = ptrtoint ptr %cf.i278 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i278, align 4, !annotation !98
  %state13.i = getelementptr i8, ptr %1, i32 2472
  %33 = ptrtoint ptr %state13.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %state13.i, align 8
  %bus_off.i = getelementptr i8, ptr %1, i32 2320
  %34 = ptrtoint ptr %bus_off.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bus_off.i, align 4
  %inc16.i = add i32 %35, 1
  store i32 %inc16.i, ptr %bus_off.i, align 4
  %call17.i280 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %cf.i278) #6
  %tobool.not.i281 = icmp eq ptr %call17.i280, null
  br i1 %tobool.not.i281, label %do.end89.c_can_handle_state_change.exit290_crit_edge, label %if.end.i287, !prof !99

do.end89.c_can_handle_state_change.exit290_crit_edge: ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_handle_state_change.exit290

if.end.i287:                                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg.i.i282 = getelementptr i8, ptr %1, i32 2904
  %36 = ptrtoint ptr %read_reg.i.i282 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_reg.i.i282, align 8
  %call1.i.i283 = call zeroext i16 %37(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %38 = ptrtoint ptr %read_reg.i.i282 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_reg.i.i282, align 8
  %call22.i286 = call zeroext i16 %39(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %40 = ptrtoint ptr %cf.i278 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cf.i278, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %or81.i = or i32 %43, 64
  store i32 %or81.i, ptr %41, align 8
  call void @can_bus_off(ptr noundef %1) #6
  %call84.i288 = call i32 @netif_receive_skb(ptr noundef nonnull %call17.i280) #6
  br label %c_can_handle_state_change.exit290

c_can_handle_state_change.exit290:                ; preds = %if.end.i287, %do.end89.c_can_handle_state_change.exit290_crit_edge
  %retval.0.i289 = phi i32 [ 1, %if.end.i287 ], [ 0, %do.end89.c_can_handle_state_change.exit290_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i278) #6
  %add91 = add i32 %retval.0.i289, %work_done.1
  br label %end

if.end92:                                         ; preds = %if.end60
  %or.cond257 = select i1 %tobool63.not, i1 true, i1 %tobool67.not
  br i1 %or.cond257, label %if.end92.if.end124_crit_edge, label %do.body102

if.end92.if.end124_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

do.body102:                                       ; preds = %if.end92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_poll.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_poll, %do.end121)) #6
          to label %if.then116 [label %do.end121], !srcloc !97

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_poll.__UNIQUE_ID_ddebug472, ptr noundef %1, ptr noundef nonnull @.str.6) #6
  br label %do.end121

do.end121:                                        ; preds = %if.then116, %do.body102
  %call122 = call fastcc i32 @c_can_handle_state_change(ptr noundef %1, i32 noundef 3)
  %add123 = add i32 %call122, %work_done.1
  br label %if.end124

if.end124:                                        ; preds = %do.end121, %if.end92.if.end124_crit_edge
  %work_done.2 = phi i32 [ %work_done.1, %if.end92.if.end124_crit_edge ], [ %add123, %do.end121 ]
  %or.cond259 = select i1 %tobool31.not, i1 true, i1 %tobool35.not
  br i1 %or.cond259, label %if.end124.if.end156_crit_edge, label %do.body134

if.end124.if.end156_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

do.body134:                                       ; preds = %if.end124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_poll.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_poll, %do.end153)) #6
          to label %if.then148 [label %do.end153], !srcloc !97

if.then148:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_poll.__UNIQUE_ID_ddebug473, ptr noundef %1, ptr noundef nonnull @.str.7) #6
  br label %do.end153

do.end153:                                        ; preds = %if.then148, %do.body134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i291) #6
  %44 = ptrtoint ptr %cf.i291 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i291, align 4, !annotation !98
  %error_warning.i293 = getelementptr i8, ptr %1, i32 2312
  %45 = ptrtoint ptr %error_warning.i293 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error_warning.i293, align 4
  %inc.i294 = add i32 %46, 1
  store i32 %inc.i294, ptr %error_warning.i293, align 4
  %state4.i295 = getelementptr i8, ptr %1, i32 2472
  %47 = ptrtoint ptr %state4.i295 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %state4.i295, align 8
  %call17.i296 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %cf.i291) #6
  %tobool.not.i297 = icmp eq ptr %call17.i296, null
  br i1 %tobool.not.i297, label %do.end153.c_can_handle_state_change.exit314_crit_edge, label %if.end.i303, !prof !99

do.end153.c_can_handle_state_change.exit314_crit_edge: ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_handle_state_change.exit314

if.end.i303:                                      ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg.i.i298 = getelementptr i8, ptr %1, i32 2904
  %48 = ptrtoint ptr %read_reg.i.i298 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_reg.i.i298, align 8
  %call1.i.i299 = call zeroext i16 %49(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %and.i.i300 = lshr i16 %call1.i.i299, 8
  %shr.i.i301 = and i16 %and.i.i300, 127
  %50 = and i16 %call1.i.i299, 255
  %51 = ptrtoint ptr %read_reg.i.i298 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read_reg.i.i298, align 8
  %call22.i302 = call zeroext i16 %52(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %53 = ptrtoint ptr %cf.i291 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cf.i291, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %or32.i304 = or i32 %56, 4
  store i32 %or32.i304, ptr %54, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %shr.i.i301)
  %cmp.i305 = icmp ugt i16 %50, %shr.i.i301
  %conv38.i306 = select i1 %cmp.i305, i8 8, i8 4
  %57 = ptrtoint ptr %cf.i291 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cf.i291, align 4
  %arrayidx40.i307 = getelementptr %struct.can_frame, ptr %58, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %arrayidx40.i307 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv38.i306, ptr %arrayidx40.i307, align 1
  %conv42.i308 = trunc i16 %call1.i.i299 to i8
  %60 = load ptr, ptr %cf.i291, align 4
  %arrayidx44.i309 = getelementptr %struct.can_frame, ptr %60, i32 0, i32 5, i32 6
  %61 = ptrtoint ptr %arrayidx44.i309 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv42.i308, ptr %arrayidx44.i309, align 2
  %conv46.i310 = trunc i16 %shr.i.i301 to i8
  %62 = load ptr, ptr %cf.i291, align 4
  %arrayidx48.i311 = getelementptr %struct.can_frame, ptr %62, i32 0, i32 5, i32 7
  %63 = ptrtoint ptr %arrayidx48.i311 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv46.i310, ptr %arrayidx48.i311, align 1
  %call84.i312 = call i32 @netif_receive_skb(ptr noundef nonnull %call17.i296) #6
  br label %c_can_handle_state_change.exit314

c_can_handle_state_change.exit314:                ; preds = %if.end.i303, %do.end153.c_can_handle_state_change.exit314_crit_edge
  %retval.0.i313 = phi i32 [ 1, %if.end.i303 ], [ 0, %do.end153.c_can_handle_state_change.exit314_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i291) #6
  %add155 = add i32 %retval.0.i313, %work_done.2
  br label %if.end156

if.end156:                                        ; preds = %c_can_handle_state_change.exit314, %if.end124.if.end156_crit_edge
  %work_done.3 = phi i32 [ %work_done.2, %if.end124.if.end156_crit_edge ], [ %add155, %c_can_handle_state_change.exit314 ]
  %or.cond261 = select i1 %tobool12.not, i1 true, i1 %tobool15.not
  br i1 %or.cond261, label %if.end156.if.end188_crit_edge, label %do.body166

if.end156.if.end188_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

do.body166:                                       ; preds = %if.end156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_poll.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_poll, %do.end185)) #6
          to label %if.then180 [label %do.end185], !srcloc !97

if.then180:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_poll.__UNIQUE_ID_ddebug474, ptr noundef %1, ptr noundef nonnull @.str.8) #6
  br label %do.end185

do.end185:                                        ; preds = %if.then180, %do.body166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i315) #6
  %64 = ptrtoint ptr %cf.i315 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i315, align 4, !annotation !98
  %state.i = getelementptr i8, ptr %1, i32 2472
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %state.i, align 8
  %call17.i317 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %cf.i315) #6
  %tobool.not.i318 = icmp eq ptr %call17.i317, null
  br i1 %tobool.not.i318, label %do.end185.c_can_handle_state_change.exit327_crit_edge, label %if.end.i324, !prof !99

do.end185.c_can_handle_state_change.exit327_crit_edge: ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_handle_state_change.exit327

if.end.i324:                                      ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg.i.i319 = getelementptr i8, ptr %1, i32 2904
  %66 = ptrtoint ptr %read_reg.i.i319 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read_reg.i.i319, align 8
  %call1.i.i320 = call zeroext i16 %67(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %and.i.i321 = lshr i16 %call1.i.i320, 8
  %68 = ptrtoint ptr %read_reg.i.i319 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_reg.i.i319, align 8
  %call22.i323 = call zeroext i16 %69(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %70 = ptrtoint ptr %cf.i315 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cf.i315, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %or.i = or i32 %73, 4
  store i32 %or.i, ptr %71, align 8
  %74 = load ptr, ptr %cf.i315, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %74, i32 0, i32 5, i32 1
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 64, ptr %arrayidx.i, align 1
  %conv24.i = trunc i16 %call1.i.i320 to i8
  %76 = load ptr, ptr %cf.i315, align 4
  %arrayidx26.i = getelementptr %struct.can_frame, ptr %76, i32 0, i32 5, i32 6
  %77 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv24.i, ptr %arrayidx26.i, align 2
  %78 = trunc i16 %and.i.i321 to i8
  %conv27.i = and i8 %78, 127
  %79 = load ptr, ptr %cf.i315, align 4
  %arrayidx29.i = getelementptr %struct.can_frame, ptr %79, i32 0, i32 5, i32 7
  %80 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv27.i, ptr %arrayidx29.i, align 1
  %call84.i325 = call i32 @netif_receive_skb(ptr noundef nonnull %call17.i317) #6
  br label %c_can_handle_state_change.exit327

c_can_handle_state_change.exit327:                ; preds = %if.end.i324, %do.end185.c_can_handle_state_change.exit327_crit_edge
  %retval.0.i326 = phi i32 [ 1, %if.end.i324 ], [ 0, %do.end185.c_can_handle_state_change.exit327_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i315) #6
  %add187 = add i32 %retval.0.i326, %work_done.3
  br label %if.end188

if.end188:                                        ; preds = %c_can_handle_state_change.exit327, %if.end156.if.end188_crit_edge
  %work_done.4 = phi i32 [ %work_done.3, %if.end156.if.end188_crit_edge ], [ %add187, %c_can_handle_state_change.exit327 ]
  %and190 = and i32 %conv11.pre-phi, 7
  %call191 = call fastcc i32 @c_can_handle_bus_err(ptr noundef %1, i32 noundef %and190)
  %add192 = add i32 %call191, %work_done.4
  %sub = sub i32 %quota, %add192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp51.i = icmp sgt i32 %sub, 0
  br i1 %cmp51.i, label %while.body.lr.ph.i, label %if.end188.c_can_do_rx_poll.exit_crit_edge

if.end188.c_can_do_rx_poll.exit_crit_edge:        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_do_rx_poll.exit

while.body.lr.ph.i:                               ; preds = %if.end188
  %msg_obj_rx_last.i.i = getelementptr i8, ptr %1, i32 2864
  %read_reg.i.i329 = getelementptr i8, ptr %1, i32 2904
  %read_reg32.i.i = getelementptr i8, ptr %1, i32 2912
  %msg_obj_rx_mask.i = getelementptr i8, ptr %1, i32 2876
  %comm_rcv_high.i.i.i = getelementptr i8, ptr %1, i32 2948
  %write_reg.i.i.i = getelementptr i8, ptr %1, i32 2908
  %rx_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_over_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %stats1.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %type.i.i.i = getelementptr i8, ptr %1, i32 2928
  %rx_bytes.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_dropped.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %c_can_read_objects.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pend.055.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %and.i, %c_can_read_objects.exit.i.while.body.i_crit_edge ]
  %pkts.053.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %c_can_read_objects.exit.i.while.body.i_crit_edge ]
  %quota.addr.052.i = phi i32 [ %sub, %while.body.lr.ph.i ], [ %sub.i, %c_can_read_objects.exit.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pend.055.i)
  %tobool.not.i330 = icmp eq i32 %pend.055.i, 0
  br i1 %tobool.not.i330, label %if.then.i, label %while.body.i.if.end5.i_crit_edge

while.body.i.if.end5.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %81 = ptrtoint ptr %msg_obj_rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_obj_rx_last.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %82)
  %cmp.i.i = icmp ugt i32 %82, 16
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %read_reg32.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read_reg32.i.i, align 8
  %call.i.i331 = call i32 %84(ptr noundef %add.ptr.i, i32 noundef 32) #6
  br label %c_can_get_pending.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %read_reg.i.i329 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read_reg.i.i329, align 8
  %call1.i.i332 = call zeroext i16 %86(ptr noundef %add.ptr.i, i32 noundef 32) #6
  %conv.i.i = zext i16 %call1.i.i332 to i32
  br label %c_can_get_pending.exit.i

c_can_get_pending.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %pend.0.i.i = phi i32 [ %call.i.i331, %if.then.i.i ], [ %conv.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pend.0.i.i)
  %tobool2.not.i = icmp eq i32 %pend.0.i.i, 0
  br i1 %tobool2.not.i, label %c_can_get_pending.exit.i.c_can_do_rx_poll.exit_crit_edge, label %if.end.i333

c_can_get_pending.exit.i.c_can_do_rx_poll.exit_crit_edge: ; preds = %c_can_get_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_do_rx_poll.exit

if.end.i333:                                      ; preds = %c_can_get_pending.exit.i
  %87 = ptrtoint ptr %msg_obj_rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %msg_obj_rx_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pend.0.i.i, i32 %88)
  %cmp.i24.i = icmp eq i32 %pend.0.i.i, %88
  br i1 %cmp.i24.i, label %if.end.i333.if.end5.i_crit_edge, label %cond.false.i.i

if.end.i333.if.end5.i_crit_edge:                  ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

cond.false.i.i:                                   ; preds = %if.end.i333
  %call.i.i.i = call i32 @__sw_hweight32(i32 noundef %pend.0.i.i) #6
  %89 = call i32 @llvm.ctlz.i32(i32 %pend.0.i.i, i1 true) #6, !range !100
  %sub.i.i.i = sub nuw nsw i32 32, %89
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %call.i.i.i)
  %cmp281.i.i = icmp eq i32 %sub.i.i.i, %call.i.i.i
  br i1 %cmp281.i.i, label %cond.false.i.i.if.end5.i_crit_edge, label %cond.false.i.i.for.cond.i.i_crit_edge

cond.false.i.i.for.cond.i.i_crit_edge:            ; preds = %cond.false.i.i
  br label %for.cond.i.i

cond.false.i.i.if.end5.i_crit_edge:               ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %cond.false.i.i.for.cond.i.i_crit_edge
  %lasts.0.in.i.i = phi i32 [ %lasts.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %sub.i.i.i, %cond.false.i.i.for.cond.i.i_crit_edge ]
  %sub.i.i = add i32 %lasts.0.in.i.i, -2
  %shl.i.i = shl nuw i32 1, %sub.i.i
  %and285.i.i = and i32 %shl.i.i, %pend.0.i.i
  %tobool286.not.i.i = icmp eq i32 %and285.i.i, 0
  %lasts.0.i.i = add i32 %lasts.0.in.i.i, -1
  br i1 %tobool286.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub289.i.i = sub i32 33, %lasts.0.in.i.i
  %shr290.i.i = lshr i32 -1, %sub289.i.i
  %neg.i.i = xor i32 %shr290.i.i, -1
  %and293.i.i = and i32 %pend.0.i.i, %neg.i.i
  br label %if.end5.i

if.end5.i:                                        ; preds = %for.end.i.i, %cond.false.i.i.if.end5.i_crit_edge, %if.end.i333.if.end5.i_crit_edge, %while.body.i.if.end5.i_crit_edge
  %pend.1.i = phi i32 [ %pend.055.i, %while.body.i.if.end5.i_crit_edge ], [ %pend.0.i.i, %if.end.i333.if.end5.i_crit_edge ], [ %pend.0.i.i, %cond.false.i.i.if.end5.i_crit_edge ], [ %pend.0.i.i, %for.end.i.i ]
  %toread.0.i = phi i32 [ %pend.055.i, %while.body.i.if.end5.i_crit_edge ], [ %pend.0.i.i, %if.end.i333.if.end5.i_crit_edge ], [ %pend.0.i.i, %cond.false.i.i.if.end5.i_crit_edge ], [ %and293.i.i, %for.end.i.i ]
  %neg.i = xor i32 %toread.0.i, -1
  %and.i = and i32 %pend.1.i, %neg.i
  %quota.addr.0.ph.fr.i46.i = freeze i32 %quota.addr.052.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota.addr.0.ph.fr.i46.i)
  %cmp.i2647.i = icmp sgt i32 %quota.addr.0.ph.fr.i46.i, 0
  br i1 %cmp.i2647.i, label %if.end5.i.while.cond.i.preheader.i_crit_edge, label %if.end5.i.c_can_read_objects.exit.i_crit_edge

if.end5.i.c_can_read_objects.exit.i_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_read_objects.exit.i

if.end5.i.while.cond.i.preheader.i_crit_edge:     ; preds = %if.end5.i
  br label %while.cond.i.preheader.i

while.cond.i.preheader.i:                         ; preds = %while.cond.outer.backedge.i.i.while.cond.i.preheader.i_crit_edge, %if.end5.i.while.cond.i.preheader.i_crit_edge
  %quota.addr.0.ph.fr.i50.i = phi i32 [ %quota.addr.0.ph.fr.i.i, %while.cond.outer.backedge.i.i.while.cond.i.preheader.i_crit_edge ], [ %quota.addr.0.ph.fr.i46.i, %if.end5.i.while.cond.i.preheader.i_crit_edge ]
  %pend.addr.0.ph.i49.i = phi i32 [ %and.i30.i, %while.cond.outer.backedge.i.i.while.cond.i.preheader.i_crit_edge ], [ %toread.0.i, %if.end5.i.while.cond.i.preheader.i_crit_edge ]
  %pkts.0.ph.i48.i = phi i32 [ %pkts.0.ph.be.i.i, %while.cond.outer.backedge.i.i.while.cond.i.preheader.i_crit_edge ], [ 0, %if.end5.i.while.cond.i.preheader.i_crit_edge ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i35.i.while.cond.i.i_crit_edge, %while.cond.i.preheader.i
  %pend.addr.0.i.i = phi i32 [ %and.i30.i, %if.end.i35.i.while.cond.i.i_crit_edge ], [ %pend.addr.0.ph.i49.i, %while.cond.i.preheader.i ]
  %90 = call i32 @llvm.cttz.i32(i32 %pend.addr.0.i.i, i1 true) #6, !range !100
  %91 = add nuw nsw i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pend.addr.0.i.i)
  %iszero.i.i = icmp eq i32 %pend.addr.0.i.i, 0
  %ffs.i.i = select i1 %iszero.i.i, i32 0, i32 %91
  br i1 %iszero.i.i, label %while.cond.i.i.c_can_read_objects.exit.i_crit_edge, label %while.body.i.i

while.cond.i.i.c_can_read_objects.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_read_objects.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %sub.i27.i = add nsw i32 %ffs.i.i, -1
  %shl.i28.i = shl nuw i32 1, %sub.i27.i
  %neg.i29.i = xor i32 %shl.i28.i, -1
  %and.i30.i = and i32 %pend.addr.0.i.i, %neg.i29.i
  %92 = ptrtoint ptr %comm_rcv_high.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %comm_rcv_high.i.i.i, align 4
  call fastcc void @c_can_obj_update(ptr noundef %1, i32 noundef 0, i32 noundef %93, i32 noundef %ffs.i.i) #6
  %94 = ptrtoint ptr %read_reg.i.i329 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read_reg.i.i329, align 8
  %call.i31.i = call zeroext i16 %95(ptr noundef %add.ptr.i, i32 noundef 14) #6
  %conv.i32.i = zext i16 %call.i31.i to i32
  %and1.i.i = and i32 %conv.i32.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i35.i, label %if.then.i33.i

if.then.i33.i:                                    ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame.i.i.i) #6
  %96 = ptrtoint ptr %frame.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame.i.i.i, align 4, !annotation !98
  %97 = ptrtoint ptr %write_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write_reg.i.i.i, align 4
  %conv.i.i.i = and i16 %call.i31.i, 8191
  call void %98(ptr noundef %add.ptr.i, i32 noundef 14, i16 noundef zeroext %conv.i.i.i) #6
  call fastcc void @c_can_obj_update(ptr noundef %1, i32 noundef 0, i32 noundef 144, i32 noundef %ffs.i.i) #6
  %99 = ptrtoint ptr %rx_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_errors.i.i.i, align 4
  %inc.i.i.i = add i32 %100, 1
  store i32 %inc.i.i.i, ptr %rx_errors.i.i.i, align 4
  %101 = ptrtoint ptr %rx_over_errors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_over_errors.i.i.i, align 4
  %inc2.i.i.i = add i32 %102, 1
  store i32 %inc2.i.i.i, ptr %rx_over_errors.i.i.i, align 4
  %call3.i.i.i = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %frame.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i33.i.c_can_handle_lost_msg_obj.exit.i.i_crit_edge, label %if.end.i.i.i, !prof !99

if.then.i33.i.c_can_handle_lost_msg_obj.exit.i.i_crit_edge: ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_handle_lost_msg_obj.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %frame.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %frame.i.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %or.i.i.i = or i32 %106, 4
  store i32 %or.i.i.i, ptr %104, align 8
  %107 = load ptr, ptr %frame.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.can_frame, ptr %107, i32 0, i32 5, i32 1
  %108 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %arrayidx.i.i.i, align 1
  %call7.i.i.i = call i32 @netif_receive_skb(ptr noundef nonnull %call3.i.i.i) #6
  br label %c_can_handle_lost_msg_obj.exit.i.i

c_can_handle_lost_msg_obj.exit.i.i:               ; preds = %if.end.i.i.i, %if.then.i33.i.c_can_handle_lost_msg_obj.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 1, %if.end.i.i.i ], [ 0, %if.then.i33.i.c_can_handle_lost_msg_obj.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i.i.i) #6
  %add.i34.i = add i32 %retval.0.i.i.i, %pkts.0.ph.i48.i
  %sub4.i.i = sub nuw nsw i32 %quota.addr.0.ph.fr.i50.i, %retval.0.i.i.i
  br label %while.cond.outer.backedge.i.i

while.cond.outer.backedge.i.i:                    ; preds = %c_can_rx_finalize.exit.i.i, %c_can_handle_lost_msg_obj.exit.i.i
  %quota.addr.0.ph.be.i.i = phi i32 [ %dec.i.i, %c_can_rx_finalize.exit.i.i ], [ %sub4.i.i, %c_can_handle_lost_msg_obj.exit.i.i ]
  %pkts.0.ph.be.i.i = phi i32 [ %inc.i.i, %c_can_rx_finalize.exit.i.i ], [ %add.i34.i, %c_can_handle_lost_msg_obj.exit.i.i ]
  %quota.addr.0.ph.fr.i.i = freeze i32 %quota.addr.0.ph.be.i.i
  %cmp.i26.i = icmp sgt i32 %quota.addr.0.ph.fr.i.i, 0
  br i1 %cmp.i26.i, label %while.cond.outer.backedge.i.i.while.cond.i.preheader.i_crit_edge, label %while.cond.outer.backedge.i.i.c_can_read_objects.exit.i_crit_edge

while.cond.outer.backedge.i.i.c_can_read_objects.exit.i_crit_edge: ; preds = %while.cond.outer.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_read_objects.exit.i

while.cond.outer.backedge.i.i.while.cond.i.preheader.i_crit_edge: ; preds = %while.cond.outer.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.preheader.i

if.end.i35.i:                                     ; preds = %while.body.i.i
  %and5.i.i = and i32 %conv.i32.i, 32768
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i35.i.while.cond.i.i_crit_edge, label %if.end8.i.i

if.end.i35.i.while.cond.i.i_crit_edge:            ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

if.end8.i.i:                                      ; preds = %if.end.i35.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame.i28.i.i) #6
  %109 = ptrtoint ptr %frame.i28.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame.i28.i.i, align 4, !annotation !98
  %call2.i.i.i = call ptr @alloc_can_skb(ptr noundef %1, ptr noundef nonnull %frame.i28.i.i) #6
  %tobool.not.i30.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i30.i.i, label %if.then.i.i.i, label %if.end.i33.i.i

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %rx_dropped.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_dropped.i.i.i, align 4
  %inc.i31.i.i = add i32 %111, 1
  store i32 %inc.i31.i.i, ptr %rx_dropped.i.i.i, align 4
  br label %c_can_read_msg_object.exit.i.i

if.end.i33.i.i:                                   ; preds = %if.end8.i.i
  %conv.i32.i.i = and i32 %conv.i32.i, 15
  %112 = call i32 @llvm.umin.i32(i32 %conv.i32.i.i, i32 8) #6
  %113 = trunc i32 %112 to i8
  %114 = ptrtoint ptr %frame.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %frame.i28.i.i, align 4
  %116 = getelementptr inbounds %struct.can_frame, ptr %115, i32 0, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %113, ptr %116, align 4
  %118 = ptrtoint ptr %read_reg32.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read_reg32.i.i, align 8
  %call9.i.i.i = call i32 %119(ptr noundef %add.ptr.i, i32 noundef 12) #6
  %and10.i.i.i = and i32 %call9.i.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.else.i.i.i, label %if.then12.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end.i33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and13.i.i.i = and i32 %call9.i.i.i, 536870911
  %or.i34.i.i = or i32 %and13.i.i.i, -2147483648
  %120 = ptrtoint ptr %frame.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %frame.i28.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or.i34.i.i, ptr %121, align 8
  br label %if.end16.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i.i.i = lshr i32 %call9.i.i.i, 18
  %and14.i.i.i = and i32 %shr.i.i.i, 2047
  %123 = ptrtoint ptr %frame.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %frame.i28.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %and14.i.i.i, ptr %124, align 8
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then12.i.i.i
  %and17.i.i.i = and i32 %call9.i.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and17.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.else22.i.i.i, label %if.then19.i.i.i

if.then19.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %frame.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %frame.i28.i.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 8
  %or21.i.i.i = or i32 %129, 1073741824
  store i32 %or21.i.i.i, ptr %127, align 8
  br label %if.end75.i.i.i

if.else22.i.i.i:                                  ; preds = %if.end16.i.i.i
  %130 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp25.i.i.i = icmp eq i32 %131, 1
  %132 = ptrtoint ptr %frame.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %frame.i28.i.i, align 4
  %134 = getelementptr inbounds %struct.can_frame, ptr %133, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %134, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp298.not.i.i.i = icmp eq i8 %136, 0
  br i1 %cmp25.i.i.i, label %for.cond.preheader.i.i.i, label %for.cond53.preheader.i.i.i

for.cond53.preheader.i.i.i:                       ; preds = %if.else22.i.i.i
  br i1 %cmp298.not.i.i.i, label %for.cond53.preheader.i.i.i.if.end72.i.i.i_crit_edge, label %for.cond53.preheader.i.i.i.for.body57.i.i.i_crit_edge

for.cond53.preheader.i.i.i.for.body57.i.i.i_crit_edge: ; preds = %for.cond53.preheader.i.i.i
  br label %for.body57.i.i.i

for.cond53.preheader.i.i.i.if.end72.i.i.i_crit_edge: ; preds = %for.cond53.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.else22.i.i.i
  br i1 %cmp298.not.i.i.i, label %for.cond.preheader.i.i.i.if.end72.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.if.end72.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %dreg.010.i.i.i = phi i32 [ %add51.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 15, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %i.09.i.i.i = phi i32 [ %add50.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %137 = ptrtoint ptr %read_reg32.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read_reg32.i.i, align 8
  %call32.i.i.i = call i32 %138(ptr noundef %add.ptr.i, i32 noundef %dreg.010.i.i.i) #6
  %conv33.i.i.i = trunc i32 %call32.i.i.i to i8
  %139 = ptrtoint ptr %frame.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %frame.i28.i.i, align 4
  %arrayidx.i35.i.i = getelementptr %struct.can_frame, ptr %140, i32 0, i32 5, i32 %i.09.i.i.i
  %141 = ptrtoint ptr %arrayidx.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv33.i.i.i, ptr %arrayidx.i35.i.i, align 1
  %shr35.i.i.i = lshr i32 %call32.i.i.i, 8
  %conv36.i.i.i = trunc i32 %shr35.i.i.i to i8
  %142 = load ptr, ptr %frame.i28.i.i, align 4
  %add38.i.i.i = or i32 %i.09.i.i.i, 1
  %arrayidx39.i.i.i = getelementptr %struct.can_frame, ptr %142, i32 0, i32 5, i32 %add38.i.i.i
  %143 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv36.i.i.i, ptr %arrayidx39.i.i.i, align 1
  %shr40.i.i.i = lshr i32 %call32.i.i.i, 16
  %conv41.i.i.i = trunc i32 %shr40.i.i.i to i8
  %144 = load ptr, ptr %frame.i28.i.i, align 4
  %add43.i.i.i = or i32 %i.09.i.i.i, 2
  %arrayidx44.i.i.i = getelementptr %struct.can_frame, ptr %144, i32 0, i32 5, i32 %add43.i.i.i
  %145 = ptrtoint ptr %arrayidx44.i.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv41.i.i.i, ptr %arrayidx44.i.i.i, align 1
  %shr45.i.i.i = lshr i32 %call32.i.i.i, 24
  %conv46.i.i.i = trunc i32 %shr45.i.i.i to i8
  %146 = load ptr, ptr %frame.i28.i.i, align 4
  %add48.i.i.i = or i32 %i.09.i.i.i, 3
  %arrayidx49.i.i.i = getelementptr %struct.can_frame, ptr %146, i32 0, i32 5, i32 %add48.i.i.i
  %147 = ptrtoint ptr %arrayidx49.i.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv46.i.i.i, ptr %arrayidx49.i.i.i, align 1
  %add50.i.i.i = add nuw nsw i32 %i.09.i.i.i, 4
  %add51.i.i.i = add nuw nsw i32 %dreg.010.i.i.i, 2
  %148 = load ptr, ptr %frame.i28.i.i, align 4
  %149 = getelementptr inbounds %struct.can_frame, ptr %148, i32 0, i32 1
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %149, align 4
  %conv28.i.i.i = zext i8 %151 to i32
  %cmp29.i.i.i = icmp ult i32 %add50.i.i.i, %conv28.i.i.i
  br i1 %cmp29.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.if.end72.i.i.i_crit_edge

for.body.i.i.i.if.end72.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.body57.i.i.i:                                 ; preds = %for.body57.i.i.i.for.body57.i.i.i_crit_edge, %for.cond53.preheader.i.i.i.for.body57.i.i.i_crit_edge
  %dreg.16.i.i.i = phi i32 [ %inc70.i.i.i, %for.body57.i.i.i.for.body57.i.i.i_crit_edge ], [ 15, %for.cond53.preheader.i.i.i.for.body57.i.i.i_crit_edge ]
  %i.15.i.i.i = phi i32 [ %add69.i.i.i, %for.body57.i.i.i.for.body57.i.i.i_crit_edge ], [ 0, %for.cond53.preheader.i.i.i.for.body57.i.i.i_crit_edge ]
  %152 = ptrtoint ptr %read_reg.i.i329 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read_reg.i.i329, align 8
  %call58.i.i.i = call zeroext i16 %153(ptr noundef %add.ptr.i, i32 noundef %dreg.16.i.i.i) #6
  %conv60.i.i.i = trunc i16 %call58.i.i.i to i8
  %154 = ptrtoint ptr %frame.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %frame.i28.i.i, align 4
  %arrayidx62.i.i.i = getelementptr %struct.can_frame, ptr %155, i32 0, i32 5, i32 %i.15.i.i.i
  %156 = ptrtoint ptr %arrayidx62.i.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv60.i.i.i, ptr %arrayidx62.i.i.i, align 1
  %157 = lshr i16 %call58.i.i.i, 8
  %conv64.i.i.i = trunc i16 %157 to i8
  %158 = load ptr, ptr %frame.i28.i.i, align 4
  %add66.i.i.i = or i32 %i.15.i.i.i, 1
  %arrayidx67.i.i.i = getelementptr %struct.can_frame, ptr %158, i32 0, i32 5, i32 %add66.i.i.i
  %159 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv64.i.i.i, ptr %arrayidx67.i.i.i, align 1
  %add69.i.i.i = add nuw nsw i32 %i.15.i.i.i, 2
  %inc70.i.i.i = add nuw nsw i32 %dreg.16.i.i.i, 1
  %160 = load ptr, ptr %frame.i28.i.i, align 4
  %161 = getelementptr inbounds %struct.can_frame, ptr %160, i32 0, i32 1
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 4
  %conv54.i.i.i = zext i8 %163 to i32
  %cmp55.i.i.i = icmp ult i32 %add69.i.i.i, %conv54.i.i.i
  br i1 %cmp55.i.i.i, label %for.body57.i.i.i.for.body57.i.i.i_crit_edge, label %for.body57.i.i.i.if.end72.i.i.i_crit_edge

for.body57.i.i.i.if.end72.i.i.i_crit_edge:        ; preds = %for.body57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i.i.i

for.body57.i.i.i.for.body57.i.i.i_crit_edge:      ; preds = %for.body57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.i.i.i

if.end72.i.i.i:                                   ; preds = %for.body57.i.i.i.if.end72.i.i.i_crit_edge, %for.body.i.i.i.if.end72.i.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end72.i.i.i_crit_edge, %for.cond53.preheader.i.i.i.if.end72.i.i.i_crit_edge
  %164 = ptrtoint ptr %frame.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %frame.i28.i.i, align 4
  %166 = getelementptr inbounds %struct.can_frame, ptr %165, i32 0, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %166, align 4
  %conv73.i.i.i = zext i8 %168 to i32
  %169 = ptrtoint ptr %rx_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rx_bytes.i.i.i, align 4
  %add74.i.i.i = add i32 %170, %conv73.i.i.i
  store i32 %add74.i.i.i, ptr %rx_bytes.i.i.i, align 4
  br label %if.end75.i.i.i

if.end75.i.i.i:                                   ; preds = %if.end72.i.i.i, %if.then19.i.i.i
  %171 = ptrtoint ptr %stats1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %stats1.i.i.i, align 4
  %inc76.i.i.i = add i32 %172, 1
  store i32 %inc76.i.i.i, ptr %stats1.i.i.i, align 4
  %call77.i.i.i = call i32 @netif_receive_skb(ptr noundef nonnull %call2.i.i.i) #6
  br label %c_can_read_msg_object.exit.i.i

c_can_read_msg_object.exit.i.i:                   ; preds = %if.end75.i.i.i, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i28.i.i) #6
  %173 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp.not.i.i.i = icmp eq i32 %174, 1
  br i1 %cmp.not.i.i.i, label %c_can_read_msg_object.exit.i.i.c_can_rx_finalize.exit.i.i_crit_edge, label %if.then.i37.i.i

c_can_read_msg_object.exit.i.i.c_can_rx_finalize.exit.i.i_crit_edge: ; preds = %c_can_read_msg_object.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_rx_finalize.exit.i.i

if.then.i37.i.i:                                  ; preds = %c_can_read_msg_object.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @c_can_obj_update(ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef %ffs.i.i) #6
  br label %c_can_rx_finalize.exit.i.i

c_can_rx_finalize.exit.i.i:                       ; preds = %if.then.i37.i.i, %c_can_read_msg_object.exit.i.i.c_can_rx_finalize.exit.i.i_crit_edge
  %inc.i.i = add i32 %pkts.0.ph.i48.i, 1
  %dec.i.i = add i32 %quota.addr.0.ph.fr.i50.i, -1
  br label %while.cond.outer.backedge.i.i

c_can_read_objects.exit.i:                        ; preds = %while.cond.outer.backedge.i.i.c_can_read_objects.exit.i_crit_edge, %while.cond.i.i.c_can_read_objects.exit.i_crit_edge, %if.end5.i.c_can_read_objects.exit.i_crit_edge
  %pkts.0.ph.i45.i = phi i32 [ 0, %if.end5.i.c_can_read_objects.exit.i_crit_edge ], [ %pkts.0.ph.i48.i, %while.cond.i.i.c_can_read_objects.exit.i_crit_edge ], [ %pkts.0.ph.be.i.i, %while.cond.outer.backedge.i.i.c_can_read_objects.exit.i_crit_edge ]
  %add.i = add i32 %pkts.0.ph.i45.i, %pkts.053.i
  %sub.i = sub i32 %quota.addr.0.ph.fr.i46.i, %pkts.0.ph.i45.i
  %cmp.i336 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i336, label %c_can_read_objects.exit.i.while.body.i_crit_edge, label %c_can_read_objects.exit.i.c_can_do_rx_poll.exit_crit_edge

c_can_read_objects.exit.i.c_can_do_rx_poll.exit_crit_edge: ; preds = %c_can_read_objects.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_do_rx_poll.exit

c_can_read_objects.exit.i.while.body.i_crit_edge: ; preds = %c_can_read_objects.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

c_can_do_rx_poll.exit:                            ; preds = %c_can_read_objects.exit.i.c_can_do_rx_poll.exit_crit_edge, %c_can_get_pending.exit.i.c_can_do_rx_poll.exit_crit_edge, %if.end188.c_can_do_rx_poll.exit_crit_edge
  %pkts.0.lcssa.i = phi i32 [ 0, %if.end188.c_can_do_rx_poll.exit_crit_edge ], [ %pkts.053.i, %c_can_get_pending.exit.i.c_can_do_rx_poll.exit_crit_edge ], [ %add.i, %c_can_read_objects.exit.i.c_can_do_rx_poll.exit_crit_edge ]
  %add194 = add i32 %pkts.0.lcssa.i, %add192
  %tx.i = getelementptr i8, ptr %1, i32 2892
  %msg_obj_tx_last.i = getelementptr i8, ptr %1, i32 2872
  %175 = ptrtoint ptr %msg_obj_tx_last.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %msg_obj_tx_last.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %176)
  %cmp.i338 = icmp ugt i32 %176, 32
  br i1 %cmp.i338, label %if.then.i339, label %if.else.i

if.then.i339:                                     ; preds = %c_can_do_rx_poll.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg32.i = getelementptr i8, ptr %1, i32 2912
  %177 = ptrtoint ptr %read_reg32.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %read_reg32.i, align 8
  %call2.i = call i32 %178(ptr noundef %add.ptr.i, i32 noundef 36) #6
  br label %if.end.i340

if.else.i:                                        ; preds = %c_can_do_rx_poll.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg.i = getelementptr i8, ptr %1, i32 2904
  %179 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %read_reg.i, align 8
  %call3.i = call zeroext i16 %180(ptr noundef %add.ptr.i, i32 noundef 35) #6
  %conv.i = zext i16 %call3.i to i32
  br label %if.end.i340

if.end.i340:                                      ; preds = %if.else.i, %if.then.i339
  %pend.0.i = phi i32 [ %call2.i, %if.then.i339 ], [ %conv.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pend.0.i)
  %iszero80.i = icmp eq i32 %pend.0.i, 0
  br i1 %iszero80.i, label %if.end.i340.end_crit_edge, label %while.body.lr.ph.i341

if.end.i340.end_crit_edge:                        ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

while.body.lr.ph.i341:                            ; preds = %if.end.i340
  %msg_obj_tx_first.i = getelementptr i8, ptr %1, i32 2868
  %write_reg.i.i = getelementptr i8, ptr %1, i32 2908
  br label %while.body.i346

while.body.i346:                                  ; preds = %while.body.i346.while.body.i346_crit_edge, %while.body.lr.ph.i341
  %pend.183.i = phi i32 [ %pend.0.i, %while.body.lr.ph.i341 ], [ %and.i343, %while.body.i346.while.body.i346_crit_edge ]
  %bytes.082.i = phi i32 [ 0, %while.body.lr.ph.i341 ], [ %add5.i, %while.body.i346.while.body.i346_crit_edge ]
  %pkts.081.i = phi i32 [ 0, %while.body.lr.ph.i341 ], [ %inc.i345, %while.body.i346.while.body.i346_crit_edge ]
  %181 = call i32 @llvm.cttz.i32(i32 %pend.183.i, i1 true) #6, !range !100
  %shl.i = shl nuw i32 1, %181
  %neg.i342 = xor i32 %shl.i, -1
  %and.i343 = and i32 %pend.183.i, %neg.i342
  %182 = ptrtoint ptr %msg_obj_tx_first.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %msg_obj_tx_first.i, align 4
  %add.i344 = add i32 %183, %181
  %184 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write_reg.i.i, align 4
  call void %185(ptr noundef %add.ptr.i, i32 noundef 14, i16 noundef zeroext 0) #6
  call fastcc void @c_can_obj_update(ptr noundef %1, i32 noundef 0, i32 noundef 176, i32 noundef %add.i344) #6
  %call4.i = call i32 @can_get_echo_skb(ptr noundef %1, i32 noundef %181, ptr noundef null) #6
  %add5.i = add i32 %call4.i, %bytes.082.i
  %inc.i345 = add i32 %pkts.081.i, 1
  %iszero.i = icmp eq i32 %and.i343, 0
  br i1 %iszero.i, label %while.end.i, label %while.body.i346.while.body.i346_crit_edge

while.body.i346.while.body.i346_crit_edge:        ; preds = %while.body.i346
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i346

while.end.i:                                      ; preds = %while.body.i346
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i345)
  %tobool6.not.i = icmp eq i32 %inc.i345, 0
  br i1 %tobool6.not.i, label %while.end.i.end_crit_edge, label %if.end8.i

while.end.i.end_crit_edge:                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end8.i:                                        ; preds = %while.end.i
  %tail9.i = getelementptr i8, ptr %1, i32 2896
  %186 = ptrtoint ptr %tail9.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tail9.i, align 4
  %add10.i = add i32 %187, %inc.i345
  store i32 %add10.i, ptr %tail9.i, align 4
  %obj_num.i.i = getelementptr i8, ptr %1, i32 2900
  %188 = ptrtoint ptr %obj_num.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %obj_num.i.i, align 4
  %190 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tx.i, align 4
  %sub.neg.i.i = add i32 %189, %add10.i
  %sub1.i.i = sub i32 %sub.neg.i.i, %191
  %conv.i.i347 = trunc i32 %sub1.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i347)
  %tobool12.not.i = icmp eq i8 %conv.i.i347, 0
  br i1 %tobool12.not.i, label %if.end8.i.if.end18.i_crit_edge, label %do.end.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !101
  %dev17.i = getelementptr i8, ptr %1, i32 2840
  %192 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev17.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %193, i32 0, i32 103
  %194 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %195) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %if.end8.i.if.end18.i_crit_edge
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %196 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %tx_bytes.i, align 4
  %add19.i = add i32 %197, %add5.i
  store i32 %add19.i, ptr %tx_bytes.i, align 4
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %198 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tx_packets.i, align 4
  %add20.i = add i32 %199, %inc.i345
  store i32 %add20.i, ptr %tx_packets.i, align 4
  %200 = ptrtoint ptr %tail9.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %tail9.i, align 4
  %202 = ptrtoint ptr %obj_num.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %obj_num.i.i, align 4
  %sub.i.i348 = add i32 %203, 255
  %and.i.i349 = and i32 %sub.i.i348, %201
  %conv.i75.i = trunc i32 %and.i.i349 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i75.i)
  %cmp23.i = icmp eq i8 %conv.i75.i, 0
  br i1 %cmp23.i, label %if.then25.i, label %if.end18.i.end_crit_edge

if.end18.i.end_crit_edge:                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then25.i:                                      ; preds = %if.end18.i
  %204 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %tx.i, align 4
  %and.i78.i = and i32 %sub.i.i348, 255
  %conv28.i = and i32 %and.i78.i, %205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28.i)
  %cmp2985.not.i = icmp eq i32 %conv28.i, 0
  br i1 %cmp2985.not.i, label %if.then25.i.end_crit_edge, label %if.then25.i.for.body.i_crit_edge

if.then25.i.for.body.i_crit_edge:                 ; preds = %if.then25.i
  br label %for.body.i

if.then25.i.end_crit_edge:                        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then25.i.for.body.i_crit_edge
  %idx.086.i = phi i32 [ %inc33.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then25.i.for.body.i_crit_edge ]
  %206 = ptrtoint ptr %msg_obj_tx_first.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %msg_obj_tx_first.i, align 4
  %add32.i = add i32 %207, %idx.086.i
  call fastcc void @c_can_obj_update(ptr noundef %1, i32 noundef 0, i32 noundef 132, i32 noundef %add32.i) #6
  %inc33.i = add nuw nsw i32 %idx.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc33.i, %conv28.i
  br i1 %exitcond.not.i, label %for.body.i.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.end_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

end:                                              ; preds = %for.body.i.end_crit_edge, %if.then25.i.end_crit_edge, %if.end18.i.end_crit_edge, %while.end.i.end_crit_edge, %if.end.i340.end_crit_edge, %c_can_handle_state_change.exit290
  %work_done.5 = phi i32 [ %add91, %c_can_handle_state_change.exit290 ], [ %add194, %if.end.i340.end_crit_edge ], [ %add194, %while.end.i.end_crit_edge ], [ %add194, %if.end18.i.end_crit_edge ], [ %add194, %if.then25.i.end_crit_edge ], [ %add194, %for.body.i.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.5, i32 %quota)
  %cmp195 = icmp slt i32 %work_done.5, %quota
  br i1 %cmp195, label %if.then197, label %end.if.end203_crit_edge

end.if.end203_crit_edge:                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

if.then197:                                       ; preds = %end
  %call198 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.5) #6
  %state = getelementptr i8, ptr %1, i32 2472
  %208 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %209)
  %cmp199.not = icmp eq i32 %209, 3
  br i1 %cmp199.not, label %if.then197.if.end203_crit_edge, label %if.then201

if.then197.if.end203_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

if.then201:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg.i350 = getelementptr i8, ptr %1, i32 2904
  %210 = ptrtoint ptr %read_reg.i350 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read_reg.i350, align 8
  %call.i = call zeroext i16 %211(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %spec.select.i = or i16 %call.i, 14
  %write_reg.i = getelementptr i8, ptr %1, i32 2908
  %212 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %write_reg.i, align 4
  call void %213(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %spec.select.i) #6
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %if.then197.if.end203_crit_edge, %end.if.end203_crit_edge
  ret i32 %work_done.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_set_mode(ptr noundef %dev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call fastcc i32 @c_can_start(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #6
  %read_reg.i = getelementptr i8, ptr %dev, i32 2904
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 8
  %call.i = tail call zeroext i16 %3(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %spec.select.i = or i16 %call.i, 14
  %write_reg.i = getelementptr i8, ptr %dev, i32 2908
  %4 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i, align 4
  tail call void %5(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %spec.select.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_get_berr_counter(ptr noundef %dev, ptr nocapture noundef writeonly %bec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %device.i = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.c_can_pm_runtime_get_sync.exit_crit_edge, label %if.then.i

entry.c_can_pm_runtime_get_sync.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_pm_runtime_get_sync.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %1, i32 noundef 4) #6
  br label %c_can_pm_runtime_get_sync.exit

c_can_pm_runtime_get_sync.exit:                   ; preds = %if.then.i, %entry.c_can_pm_runtime_get_sync.exit_crit_edge
  %read_reg.i = getelementptr i8, ptr %dev, i32 2904
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 8
  %call1.i = tail call zeroext i16 %3(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %and.i = lshr i16 %call1.i, 8
  %shr.i = and i16 %and.i, 127
  %rxerr.i = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %4 = ptrtoint ptr %rxerr.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %shr.i, ptr %rxerr.i, align 2
  %5 = and i16 %call1.i, 255
  %6 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %bec, align 2
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %tobool.not.i5 = icmp eq ptr %8, null
  br i1 %tobool.not.i5, label %c_can_pm_runtime_get_sync.exit.c_can_pm_runtime_put_sync.exit_crit_edge, label %if.then.i7

c_can_pm_runtime_get_sync.exit.c_can_pm_runtime_put_sync.exit_crit_edge: ; preds = %c_can_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_pm_runtime_put_sync.exit

if.then.i7:                                       ; preds = %c_can_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i6 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %8, i32 noundef 4) #6
  br label %c_can_pm_runtime_put_sync.exit

c_can_pm_runtime_put_sync.exit:                   ; preds = %if.then.i7, %c_can_pm_runtime_get_sync.exit.c_can_pm_runtime_put_sync.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c_can_power_down(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr i8, ptr %dev, i32 2928
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end.if.end15_crit_edge, label %do.end, !prof !102

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1273, i32 noundef 9, ptr noundef null) #6
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %read_reg = getelementptr i8, ptr %dev, i32 2904
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 8
  %call22 = tail call zeroext i16 %5(ptr noundef %add.ptr.i, i32 noundef 1) #6
  %6 = or i16 %call22, 256
  %write_reg = getelementptr i8, ptr %dev, i32 2908
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  tail call void %8(ptr noundef %add.ptr.i, i32 noundef 1, i16 noundef zeroext %6) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 100
  %10 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg, align 8
  %call2664 = tail call zeroext i16 %11(ptr noundef %add.ptr.i, i32 noundef 2) #6
  %12 = and i16 %call2664, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool29.not65 = icmp eq i16 %12, 0
  br i1 %tobool29.not65, label %if.end15.land.rhs_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end15.land.rhs_crit_edge:                      ; preds = %if.end15
  br label %land.rhs

land.rhs:                                         ; preds = %do.end36.land.rhs_crit_edge, %if.end15.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %13, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp30 = icmp slt i32 %sub, 0
  br i1 %cmp30, label %do.end36, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end36:                                         ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !104
  %14 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg, align 8
  %call26 = tail call zeroext i16 %15(ptr noundef %add.ptr.i, i32 noundef 2) #6
  %16 = and i16 %call26, 1024
  %tobool29.not = icmp eq i16 %16, 0
  br i1 %tobool29.not, label %do.end36.land.rhs_crit_edge, label %do.end36.while.end_crit_edge

do.end36.while.end_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end36.land.rhs_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.end:                                        ; preds = %do.end36.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end15.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub41 = sub i32 %add, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41)
  %cmp42 = icmp slt i32 %sub41, 0
  br i1 %cmp42, label %while.end.cleanup_crit_edge, label %if.end45

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %while.end
  %18 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg, align 8
  %call.i.i = tail call zeroext i16 %19(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %20 = and i16 %call.i.i, -15
  %21 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg, align 4
  tail call void %22(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %20) #6
  %23 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg, align 4
  tail call void %24(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext 1) #6
  %parent.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 8
  %call2.i = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %26) #6
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %state.i, align 8
  %raminit.i = getelementptr i8, ptr %dev, i32 2944
  %28 = ptrtoint ptr %raminit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %raminit.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end45.c_can_reset_ram.exit_crit_edge, label %if.then.i

if.end45.c_can_reset_ram.exit_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_reset_ram.exit

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %29(ptr noundef %add.ptr.i, i1 noundef zeroext false) #6
  br label %c_can_reset_ram.exit

c_can_reset_ram.exit:                             ; preds = %if.then.i, %if.end45.c_can_reset_ram.exit_crit_edge
  %device.i = getelementptr i8, ptr %dev, i32 2844
  %30 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device.i, align 4
  %tobool.not.i61 = icmp eq ptr %31, null
  br i1 %tobool.not.i61, label %c_can_reset_ram.exit.cleanup_crit_edge, label %if.then.i63

c_can_reset_ram.exit.cleanup_crit_edge:           ; preds = %c_can_reset_ram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i63:                                      ; preds = %c_can_reset_ram.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i62 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %31, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i63, %c_can_reset_ram.exit.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -110, %while.end.cleanup_crit_edge ], [ 0, %c_can_reset_ram.exit.cleanup_crit_edge ], [ 0, %if.then.i63 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c_can_power_up(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr i8, ptr %dev, i32 2928
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end.if.end15_crit_edge, label %do.end, !prof !102

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1308, i32 noundef 9, ptr noundef null) #6
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %device.i = getelementptr i8, ptr %dev, i32 2844
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end15.c_can_pm_runtime_get_sync.exit_crit_edge, label %if.then.i

if.end15.c_can_pm_runtime_get_sync.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_pm_runtime_get_sync.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %5, i32 noundef 4) #6
  br label %c_can_pm_runtime_get_sync.exit

c_can_pm_runtime_get_sync.exit:                   ; preds = %if.then.i, %if.end15.c_can_pm_runtime_get_sync.exit_crit_edge
  %raminit.i = getelementptr i8, ptr %dev, i32 2944
  %6 = ptrtoint ptr %raminit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raminit.i, align 8
  %tobool.not.i83 = icmp eq ptr %7, null
  br i1 %tobool.not.i83, label %c_can_pm_runtime_get_sync.exit.c_can_reset_ram.exit_crit_edge, label %if.then.i84

c_can_pm_runtime_get_sync.exit.c_can_reset_ram.exit_crit_edge: ; preds = %c_can_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_reset_ram.exit

if.then.i84:                                      ; preds = %c_can_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %add.ptr.i, i1 noundef zeroext true) #6
  br label %c_can_reset_ram.exit

c_can_reset_ram.exit:                             ; preds = %if.then.i84, %c_can_pm_runtime_get_sync.exit.c_can_reset_ram.exit_crit_edge
  %read_reg = getelementptr i8, ptr %dev, i32 2904
  %8 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg, align 8
  %call22 = tail call zeroext i16 %9(ptr noundef %add.ptr.i, i32 noundef 1) #6
  %10 = and i16 %call22, -257
  %write_reg = getelementptr i8, ptr %dev, i32 2908
  %11 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg, align 4
  tail call void %12(ptr noundef %add.ptr.i, i32 noundef 1, i16 noundef zeroext %10) #6
  %13 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg, align 8
  %call26 = tail call zeroext i16 %14(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %15 = and i16 %call26, -2
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  tail call void %17(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 100
  %19 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg, align 8
  %call3393 = tail call zeroext i16 %20(ptr noundef %add.ptr.i, i32 noundef 2) #6
  %21 = and i16 %call3393, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool36.not94 = icmp eq i16 %21, 0
  br i1 %tobool36.not94, label %c_can_reset_ram.exit.while.end_crit_edge, label %c_can_reset_ram.exit.land.rhs_crit_edge

c_can_reset_ram.exit.land.rhs_crit_edge:          ; preds = %c_can_reset_ram.exit
  br label %land.rhs

c_can_reset_ram.exit.while.end_crit_edge:         ; preds = %c_can_reset_ram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs:                                         ; preds = %do.end43.land.rhs_crit_edge, %c_can_reset_ram.exit.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %22, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp37 = icmp slt i32 %sub, 0
  br i1 %cmp37, label %do.end43, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end43:                                         ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !106
  %23 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg, align 8
  %call33 = tail call zeroext i16 %24(ptr noundef %add.ptr.i, i32 noundef 2) #6
  %25 = and i16 %call33, 1024
  %tobool36.not = icmp eq i16 %25, 0
  br i1 %tobool36.not, label %do.end43.while.end_crit_edge, label %do.end43.land.rhs_crit_edge

do.end43.land.rhs_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

do.end43.while.end_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end43.while.end_crit_edge, %land.rhs.while.end_crit_edge, %c_can_reset_ram.exit.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub48 = sub i32 %add, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub48)
  %cmp49 = icmp slt i32 %sub48, 0
  br i1 %cmp49, label %while.end.err_out_crit_edge, label %if.end52

while.end.err_out_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end52:                                         ; preds = %while.end
  %call53 = tail call fastcc i32 @c_can_start(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.err_out_crit_edge

if.end52.err_out_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end56:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_reg, align 8
  %call.i = tail call zeroext i16 %28(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %spec.select.i = or i16 %call.i, 14
  %29 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg, align 4
  tail call void %30(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %spec.select.i) #6
  br label %cleanup

err_out:                                          ; preds = %if.end52.err_out_crit_edge, %while.end.err_out_crit_edge
  %ret.0 = phi i32 [ %call53, %if.end52.err_out_crit_edge ], [ -110, %while.end.err_out_crit_edge ]
  %31 = ptrtoint ptr %raminit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %raminit.i, align 8
  %tobool.not.i86 = icmp eq ptr %32, null
  br i1 %tobool.not.i86, label %err_out.c_can_reset_ram.exit88_crit_edge, label %if.then.i87

err_out.c_can_reset_ram.exit88_crit_edge:         ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_reset_ram.exit88

if.then.i87:                                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %32(ptr noundef %add.ptr.i, i1 noundef zeroext false) #6
  br label %c_can_reset_ram.exit88

c_can_reset_ram.exit88:                           ; preds = %if.then.i87, %err_out.c_can_reset_ram.exit88_crit_edge
  %33 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i, align 4
  %tobool.not.i90 = icmp eq ptr %34, null
  br i1 %tobool.not.i90, label %c_can_reset_ram.exit88.cleanup_crit_edge, label %if.then.i92

c_can_reset_ram.exit88.cleanup_crit_edge:         ; preds = %c_can_reset_ram.exit88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i92:                                      ; preds = %c_can_reset_ram.exit88
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i91 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %34, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i92, %c_can_reset_ram.exit88.cleanup_crit_edge, %if.end56, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %c_can_reset_ram.exit88.cleanup_crit_edge ], [ %ret.0, %if.then.i92 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c_can_start(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx.i = getelementptr i8, ptr %dev, i32 2892
  %type.i.i = getelementptr i8, ptr %dev, i32 2928
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  %write_reg.i.i = getelementptr i8, ptr %dev, i32 2908
  %2 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i.i, align 4
  tail call void %3(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext -32767) #6
  %read_reg.i.i = getelementptr i8, ptr %dev, i32 2904
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end.i.i
  %retry.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i.i, align 8
  %call1.i.i = tail call zeroext i16 %5(ptr noundef %add.ptr.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.i.i)
  %tobool.not.i.i = icmp sgt i16 %call1.i.i, -1
  br i1 %tobool.not.i.i, label %while.cond.i.i.if.end.i_crit_edge, label %while.body.i.i

while.cond.i.i.if.end.i_crit_edge:                ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  tail call void @msleep(i32 noundef 20) #6
  %inc.i.i = add nuw nsw i32 %retry.0.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, 102
  br i1 %exitcond.i.i, label %while.body.i.i.c_can_chip_config.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.c_can_chip_config.exit_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_chip_config.exit

if.end.i:                                         ; preds = %while.cond.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %write_reg.i = getelementptr i8, ptr %dev, i32 2908
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext 0) #6
  %ctrlmode.i = getelementptr i8, ptr %dev, i32 2476
  %8 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrlmode.i, align 4
  %10 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %.not.i = icmp eq i32 %10, 3
  br i1 %.not.i, label %if.end.i.if.end27.sink.split.i_crit_edge, label %if.else.i

if.end.i.if.end27.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.not.i = icmp eq i32 %and5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %.not73.i = icmp eq i32 %10, 0
  %.mux.i = select i1 %tobool6.not.not.i, i16 8, i16 16
  br i1 %.not73.i, label %if.else.i.if.end27.i_crit_edge, label %if.else.i.if.end27.sink.split.i_crit_edge

if.else.i.if.end27.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.sink.split.i

if.else.i.if.end27.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.end27.sink.split.i:                            ; preds = %if.else.i.if.end27.sink.split.i_crit_edge, %if.end.i.if.end27.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 24, %if.end.i.if.end27.sink.split.i_crit_edge ], [ %.mux.i, %if.else.i.if.end27.sink.split.i_crit_edge ]
  %11 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg.i, align 4
  tail call void %12(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext 128) #6
  %13 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i, align 4
  tail call void %14(ptr noundef %add.ptr.i, i32 noundef 6, i16 noundef zeroext %.sink.i) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end27.sink.split.i, %if.else.i.if.end27.i_crit_edge
  %msg_obj_rx_first.i.i = getelementptr i8, ptr %dev, i32 2860
  %15 = ptrtoint ptr %msg_obj_rx_first.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_obj_rx_first.i.i, align 4
  %msg_obj_num.i.i = getelementptr i8, ptr %dev, i32 2848
  %17 = ptrtoint ptr %msg_obj_num.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_obj_num.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not26.i.i = icmp ugt i32 %16, %18
  br i1 %cmp.not26.i.i, label %if.end27.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end27.i.for.end.i.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end27.i
  %write_reg32.i.i.i = getelementptr i8, ptr %dev, i32 2916
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.027.i.i = phi i32 [ %16, %for.body.lr.ph.i.i ], [ %inc.i59.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %19 = ptrtoint ptr %write_reg32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg32.i.i.i, align 4
  tail call void %20(ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef 0) #6
  %21 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg.i, align 4
  tail call void %22(ptr noundef %add.ptr.i, i32 noundef 14, i16 noundef zeroext 0) #6
  tail call fastcc void @c_can_obj_update(ptr noundef %dev, i32 noundef 0, i32 noundef 176, i32 noundef %i.027.i.i) #6
  %inc.i59.i = add i32 %i.027.i.i, 1
  %23 = ptrtoint ptr %msg_obj_num.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_obj_num.i.i, align 8
  %cmp.not.i60.i = icmp ugt i32 %inc.i59.i, %24
  br i1 %cmp.not.i60.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end27.i.for.end.i.i_crit_edge
  %25 = ptrtoint ptr %msg_obj_rx_first.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_obj_rx_first.i.i, align 4
  %msg_obj_rx_last.i.i = getelementptr i8, ptr %dev, i32 2864
  %27 = ptrtoint ptr %msg_obj_rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_obj_rx_last.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp328.i.i = icmp ult i32 %26, %28
  br i1 %cmp328.i.i, label %for.body4.lr.ph.i.i, label %for.end.i.i.c_can_configure_msg_objects.exit.i_crit_edge

for.end.i.i.c_can_configure_msg_objects.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_configure_msg_objects.exit.i

for.body4.lr.ph.i.i:                              ; preds = %for.end.i.i
  %write_reg32.i22.i.i = getelementptr i8, ptr %dev, i32 2916
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.body4.i.i.for.body4.i.i_crit_edge, %for.body4.lr.ph.i.i
  %i.129.i.i = phi i32 [ %26, %for.body4.lr.ph.i.i ], [ %inc6.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ]
  %29 = ptrtoint ptr %write_reg32.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg32.i22.i.i, align 4
  tail call void %30(ptr noundef %add.ptr.i, i32 noundef 10, i32 noundef 536870912) #6
  %31 = ptrtoint ptr %write_reg32.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg32.i22.i.i, align 4
  tail call void %32(ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef -2147483648) #6
  %33 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg.i, align 4
  tail call void %34(ptr noundef %add.ptr.i, i32 noundef 14, i16 noundef zeroext 5120) #6
  tail call fastcc void @c_can_obj_update(ptr noundef %dev, i32 noundef 0, i32 noundef 240, i32 noundef %i.129.i.i) #6
  %inc6.i.i = add nuw i32 %i.129.i.i, 1
  %35 = ptrtoint ptr %msg_obj_rx_last.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_obj_rx_last.i.i, align 8
  %cmp3.i.i = icmp ult i32 %inc6.i.i, %36
  br i1 %cmp3.i.i, label %for.body4.i.i.for.body4.i.i_crit_edge, label %for.body4.i.i.c_can_configure_msg_objects.exit.i_crit_edge

for.body4.i.i.c_can_configure_msg_objects.exit.i_crit_edge: ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_configure_msg_objects.exit.i

for.body4.i.i.for.body4.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i.i

c_can_configure_msg_objects.exit.i:               ; preds = %for.body4.i.i.c_can_configure_msg_objects.exit.i_crit_edge, %for.end.i.i.c_can_configure_msg_objects.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %28, %for.end.i.i.c_can_configure_msg_objects.exit.i_crit_edge ], [ %36, %for.body4.i.i.c_can_configure_msg_objects.exit.i_crit_edge ]
  %write_reg32.i24.i.i = getelementptr i8, ptr %dev, i32 2916
  %37 = ptrtoint ptr %write_reg32.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_reg32.i24.i.i, align 4
  tail call void %38(ptr noundef %add.ptr.i, i32 noundef 10, i32 noundef 536870912) #6
  %39 = ptrtoint ptr %write_reg32.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg32.i24.i.i, align 4
  tail call void %40(ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef -2147483648) #6
  %41 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg.i, align 4
  tail call void %42(ptr noundef %add.ptr.i, i32 noundef 14, i16 noundef zeroext 5248) #6
  tail call fastcc void @c_can_obj_update(ptr noundef %dev, i32 noundef 0, i32 noundef 240, i32 noundef %.lcssa.i.i) #6
  %43 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg.i, align 4
  tail call void %44(ptr noundef %add.ptr.i, i32 noundef 2, i16 noundef zeroext 7) #6
  %45 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tx.i, align 4
  %tail.i = getelementptr i8, ptr %dev, i32 2896
  %46 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %tail.i, align 4
  %tx_dir.i = getelementptr i8, ptr %dev, i32 2884
  %47 = ptrtoint ptr %tx_dir.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tx_dir.i, align 4
  %brp1.i.i = getelementptr i8, ptr %dev, i32 2368
  %48 = ptrtoint ptr %brp1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brp1.i.i, align 4
  %sub.i.i = add i32 %49, -1
  %conv.i.i = and i32 %sub.i.i, 63
  %shr.i.i = lshr i32 %sub.i.i, 6
  %sjw3.i.i = getelementptr i8, ptr %dev, i32 2364
  %50 = ptrtoint ptr %sjw3.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sjw3.i.i, align 4
  %prop_seg.i.i = getelementptr i8, ptr %dev, i32 2352
  %52 = ptrtoint ptr %prop_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prop_seg.i.i, align 4
  %phase_seg1.i.i = getelementptr i8, ptr %dev, i32 2356
  %54 = ptrtoint ptr %phase_seg1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phase_seg1.i.i, align 4
  %add.i.i = add i32 %55, %53
  %phase_seg2.i.i = getelementptr i8, ptr %dev, i32 2360
  %56 = ptrtoint ptr %phase_seg2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phase_seg2.i.i, align 4
  %conv5.i.i = shl i32 %51, 6
  %conv11.i.i = add i32 %conv5.i.i, 16320
  %shl.i.i = and i32 %conv11.i.i, 16320
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %conv7.i.i = shl i32 %add.i.i, 8
  %conv12.i.i = add i32 %conv7.i.i, 65280
  %shl13.i.i = and i32 %conv12.i.i, 65280
  %or14.i.i = or i32 %or.i.i, %shl13.i.i
  %conv9.i.i = shl i32 %57, 12
  %conv15.i.i = add i32 %conv9.i.i, 1044480
  %shl16.i.i = and i32 %conv15.i.i, 1044480
  %or17.i.i = or i32 %or14.i.i, %shl16.i.i
  %and19.i.i = and i32 %shr.i.i, 15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %or17.i.i, i32 noundef %and19.i.i) #9
  %read_reg.i62.i = getelementptr i8, ptr %dev, i32 2904
  %58 = ptrtoint ptr %read_reg.i62.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_reg.i62.i, align 8
  %call20.i.i = tail call zeroext i16 %59(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %60 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg.i, align 4
  tail call void %61(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext 65) #6
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %c_can_configure_msg_objects.exit.i
  %retry.0.i.i.i = phi i32 [ 0, %c_can_configure_msg_objects.exit.i ], [ %inc.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %62 = ptrtoint ptr %read_reg.i62.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_reg.i62.i, align 8
  %call.i.i.i = tail call zeroext i16 %63(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %64 = and i16 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp.not.i.not.i.i = icmp eq i16 %64, 0
  br i1 %cmp.not.i.not.i.i, label %while.body.i.i.i, label %if.end.i64.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 2147480) #6
  %inc.i.i.i = add nuw nsw i32 %retry.0.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %inc.i.i.i, 1002
  br i1 %exitcond.i.i.i, label %while.body.i.i.i.c_can_chip_config.exit_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

while.body.i.i.i.c_can_chip_config.exit_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_chip_config.exit

if.end.i64.i:                                     ; preds = %while.cond.i.i.i
  %66 = and i16 %call20.i.i, -2
  %67 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_reg.i, align 4
  %conv25.i.i = trunc i32 %or17.i.i to i16
  tail call void %68(ptr noundef %add.ptr.i, i32 noundef 4, i16 noundef zeroext %conv25.i.i) #6
  %69 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_reg.i, align 4
  %conv27.i.i = trunc i32 %and19.i.i to i16
  tail call void %70(ptr noundef %add.ptr.i, i32 noundef 7, i16 noundef zeroext %conv27.i.i) #6
  %71 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_reg.i, align 4
  tail call void %72(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %66) #6
  br label %while.cond.i71.i.i

while.cond.i71.i.i:                               ; preds = %while.body.i74.i.i.while.cond.i71.i.i_crit_edge, %if.end.i64.i
  %retry.0.i67.i.i = phi i32 [ 0, %if.end.i64.i ], [ %inc.i72.i.i, %while.body.i74.i.i.while.cond.i71.i.i_crit_edge ]
  %73 = ptrtoint ptr %read_reg.i62.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read_reg.i62.i, align 8
  %call.i68.i.i = tail call zeroext i16 %74(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %75 = and i16 %call.i68.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp.not.i70.i.i = icmp eq i16 %75, 0
  br i1 %cmp.not.i70.i.i, label %if.end, label %while.body.i74.i.i

while.body.i74.i.i:                               ; preds = %while.cond.i71.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 2147480) #6
  %inc.i72.i.i = add nuw nsw i32 %retry.0.i67.i.i, 1
  %exitcond.i73.i.i = icmp eq i32 %inc.i72.i.i, 1002
  br i1 %exitcond.i73.i.i, label %while.body.i74.i.i.c_can_chip_config.exit_crit_edge, label %while.body.i74.i.i.while.cond.i71.i.i_crit_edge

while.body.i74.i.i.while.cond.i71.i.i_crit_edge:  ; preds = %while.body.i74.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i71.i.i

while.body.i74.i.i.c_can_chip_config.exit_crit_edge: ; preds = %while.body.i74.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_chip_config.exit

c_can_chip_config.exit:                           ; preds = %while.body.i74.i.i.c_can_chip_config.exit_crit_edge, %while.body.i.i.i.c_can_chip_config.exit_crit_edge, %while.body.i.i.c_can_chip_config.exit_crit_edge
  %.str.20.sink.i = phi ptr [ @.str.20, %while.body.i74.i.i.c_can_chip_config.exit_crit_edge ], [ @.str.20, %while.body.i.i.i.c_can_chip_config.exit_crit_edge ], [ @.str.18, %while.body.i.i.c_can_chip_config.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull %.str.20.sink.i) #9
  br label %cleanup

if.end:                                           ; preds = %while.cond.i71.i.i
  %77 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.not = icmp eq i32 %78, 1
  %cond = select i1 %cmp.not, i32 127, i32 123
  %comm_rcv_high = getelementptr i8, ptr %dev, i32 2948
  %79 = ptrtoint ptr %comm_rcv_high to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %cond, ptr %comm_rcv_high, align 4
  %state = getelementptr i8, ptr %dev, i32 2472
  %80 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %state, align 8
  %device = getelementptr i8, ptr %dev, i32 2844
  %81 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device, align 4
  %call.i = tail call ptr @pinctrl_get(ptr noundef %82) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.pinctrl_get_select.exit_crit_edge, label %if.end.i17

if.end.pinctrl_get_select.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pinctrl_get_select.exit

if.end.i17:                                       ; preds = %if.end
  %call2.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call.i, ptr noundef nonnull @.str.17) #6
  %cmp.i1.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pinctrl_put(ptr noundef %call.i) #6
  br label %pinctrl_get_select.exit

if.end6.i:                                        ; preds = %if.end.i17
  %call7.i = tail call i32 @pinctrl_select_state(ptr noundef %call.i, ptr noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.then8.i, label %if.end6.i.pinctrl_get_select.exit_crit_edge

if.end6.i.pinctrl_get_select.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pinctrl_get_select.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pinctrl_put(ptr noundef %call.i) #6
  %83 = inttoptr i32 %call7.i to ptr
  br label %pinctrl_get_select.exit

pinctrl_get_select.exit:                          ; preds = %if.then8.i, %if.end6.i.pinctrl_get_select.exit_crit_edge, %if.then4.i, %if.end.pinctrl_get_select.exit_crit_edge
  %retval.0.i18 = phi ptr [ %call2.i, %if.then4.i ], [ %83, %if.then8.i ], [ %call.i, %if.end.pinctrl_get_select.exit_crit_edge ], [ %call.i, %if.end6.i.pinctrl_get_select.exit_crit_edge ]
  %cmp.i19 = icmp ugt ptr %retval.0.i18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19, label %if.else, label %if.then4

if.then4:                                         ; preds = %pinctrl_get_select.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pinctrl_put(ptr noundef %retval.0.i18) #6
  br label %cleanup

if.else:                                          ; preds = %pinctrl_get_select.exit
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device, align 4
  %call6 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %85) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %c_can_chip_config.exit
  %retval.0 = phi i32 [ -5, %c_can_chip_config.exit ], [ 0, %if.else ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_c_can_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %dev, i32 2616
  tail call void @__netif_napi_del(ptr noundef %napi) #6
  tail call void @synchronize_net() #6
  tail call void @free_candev(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_c_can_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %1) #6
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %or = or i32 %3, 262144
  store i32 %or, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @c_can_netdev_ops, ptr %netdev_ops, align 8
  tail call void @c_can_set_ethtool_ops(ptr noundef %dev) #6
  %call2 = tail call i32 @register_candev(ptr noundef %dev) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c_can_set_ethtool_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_c_can_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_candev(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c_can_handle_state_change(ptr noundef %dev, i32 noundef %error_type) unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !98
  %1 = zext i32 %error_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %error_type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb5
    i32 1, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr i8, ptr %dev, i32 2472
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %error_warning = getelementptr i8, ptr %dev, i32 2312
  %3 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error_warning, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %error_warning, align 4
  %state4 = getelementptr i8, ptr %dev, i32 2472
  %5 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %error_passive = getelementptr i8, ptr %dev, i32 2316
  %6 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_passive, align 4
  %inc8 = add i32 %7, 1
  store i32 %inc8, ptr %error_passive, align 4
  %state10 = getelementptr i8, ptr %dev, i32 2472
  %8 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %state10, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state13 = getelementptr i8, ptr %dev, i32 2472
  %9 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %state13, align 8
  %bus_off = getelementptr i8, ptr %dev, i32 2320
  %10 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_off, align 4
  %inc16 = add i32 %11, 1
  store i32 %inc16, ptr %bus_off, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb5, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %call17 = call ptr @alloc_can_err_skb(ptr noundef %dev, ptr noundef nonnull %cf) #6
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end, !prof !99

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %read_reg.i = getelementptr i8, ptr %dev, i32 2904
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 8
  %call1.i = call zeroext i16 %13(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %and.i = lshr i16 %call1.i, 8
  %shr.i = and i16 %and.i, 127
  %14 = and i16 %call1.i, 255
  %15 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg.i, align 8
  %call22 = call zeroext i16 %16(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %17 = zext i32 %error_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %error_type, label %if.end.sw.epilog83_crit_edge [
    i32 0, label %sw.bb23
    i32 2, label %sw.bb30
    i32 3, label %sw.bb49
    i32 1, label %sw.bb79
  ]

if.end.sw.epilog83_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog83

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %or = or i32 %21, 4
  store i32 %or, ptr %19, align 8
  %22 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %22, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 64, ptr %arrayidx, align 1
  %conv24 = trunc i16 %call1.i to i8
  %24 = load ptr, ptr %cf, align 4
  %arrayidx26 = getelementptr %struct.can_frame, ptr %24, i32 0, i32 5, i32 6
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv24, ptr %arrayidx26, align 2
  %conv27 = trunc i16 %shr.i to i8
  %26 = load ptr, ptr %cf, align 4
  %arrayidx29 = getelementptr %struct.can_frame, ptr %26, i32 0, i32 5, i32 7
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv27, ptr %arrayidx29, align 1
  br label %sw.epilog83

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cf, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %or32 = or i32 %31, 4
  store i32 %or32, ptr %29, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %shr.i)
  %cmp = icmp ugt i16 %14, %shr.i
  %conv38 = select i1 %cmp, i8 8, i8 4
  %32 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cf, align 4
  %arrayidx40 = getelementptr %struct.can_frame, ptr %33, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv38, ptr %arrayidx40, align 1
  %conv42 = trunc i16 %call1.i to i8
  %35 = load ptr, ptr %cf, align 4
  %arrayidx44 = getelementptr %struct.can_frame, ptr %35, i32 0, i32 5, i32 6
  %36 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv42, ptr %arrayidx44, align 2
  %conv46 = trunc i16 %shr.i to i8
  %37 = load ptr, ptr %cf, align 4
  %arrayidx48 = getelementptr %struct.can_frame, ptr %37, i32 0, i32 5, i32 7
  %38 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv46, ptr %arrayidx48, align 1
  br label %sw.epilog83

sw.bb49:                                          ; preds = %if.end
  %39 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cf, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %or51 = or i32 %42, 4
  store i32 %or51, ptr %40, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call22)
  %tobool52.not = icmp sgt i16 %call22, -1
  br i1 %tobool52.not, label %sw.bb49.if.end59_crit_edge, label %if.then53

sw.bb49.if.end59_crit_edge:                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then53:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cf, align 4
  %arrayidx55 = getelementptr %struct.can_frame, ptr %44, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx55, align 1
  %47 = or i8 %46, 16
  store i8 %47, ptr %arrayidx55, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %sw.bb49.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %14)
  %cmp62 = icmp ugt i16 %14, 127
  br i1 %cmp62, label %if.then64, label %if.end59.if.end70_crit_edge

if.end59.if.end70_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cf, align 4
  %arrayidx66 = getelementptr %struct.can_frame, ptr %49, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx66, align 1
  %52 = or i8 %51, 32
  store i8 %52, ptr %arrayidx66, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.end59.if.end70_crit_edge
  %conv72 = trunc i16 %call1.i to i8
  %53 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cf, align 4
  %arrayidx74 = getelementptr %struct.can_frame, ptr %54, i32 0, i32 5, i32 6
  %55 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv72, ptr %arrayidx74, align 2
  %conv76 = trunc i16 %shr.i to i8
  %56 = load ptr, ptr %cf, align 4
  %arrayidx78 = getelementptr %struct.can_frame, ptr %56, i32 0, i32 5, i32 7
  %57 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv76, ptr %arrayidx78, align 1
  br label %sw.epilog83

sw.bb79:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cf, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %or81 = or i32 %61, 64
  store i32 %or81, ptr %59, align 8
  call void @can_bus_off(ptr noundef %dev) #6
  br label %sw.epilog83

sw.epilog83:                                      ; preds = %sw.bb79, %if.end70, %sw.bb30, %sw.bb23, %if.end.sw.epilog83_crit_edge
  %call84 = call i32 @netif_receive_skb(ptr noundef nonnull %call17) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog83, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog83 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c_can_handle_bus_err(ptr noundef %dev, i32 noundef %lec_type) unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !98
  %1 = zext i32 %lec_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %lec_type, label %if.end [
    i32 7, label %entry.cleanup_crit_edge
    i32 0, label %entry.cleanup_crit_edge197
  ]

entry.cleanup_crit_edge197:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %2 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %can_stats = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %can_stats, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %can_stats, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %6 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_errors, align 4
  %inc6 = add i32 %7, 1
  store i32 %inc6, ptr %rx_errors, align 4
  %call7 = call ptr @alloc_can_err_skb(ptr noundef %dev, ptr noundef nonnull %cf) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end13, !prof !99

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %or = or i32 %11, 136
  store i32 %or, ptr %9, align 8
  %12 = zext i32 %lec_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %lec_type, label %if.end13.sw.epilog_crit_edge [
    i32 1, label %do.body14
    i32 2, label %do.body33
    i32 3, label %do.body60
    i32 4, label %do.body84
    i32 5, label %do.body111
    i32 6, label %do.body138
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body14:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_handle_bus_err, %do.end28)) #6
          to label %if.then25 [label %do.end28], !srcloc !97

if.then25:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_handle_bus_err.__UNIQUE_ID_ddebug463, ptr noundef %dev, ptr noundef nonnull @.str.10) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body14
  %13 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %14, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 2
  %17 = or i8 %16, 4
  store i8 %17, ptr %arrayidx, align 2
  br label %sw.epilog

do.body33:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_handle_bus_err, %do.end52)) #6
          to label %if.then47 [label %do.end52], !srcloc !97

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_handle_bus_err.__UNIQUE_ID_ddebug464, ptr noundef %dev, ptr noundef nonnull @.str.11) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body33
  %18 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cf, align 4
  %arrayidx54 = getelementptr %struct.can_frame, ptr %19, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx54, align 2
  %22 = or i8 %21, 2
  store i8 %22, ptr %arrayidx54, align 2
  br label %sw.epilog

do.body60:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_handle_bus_err, %do.end79)) #6
          to label %if.then74 [label %do.end79], !srcloc !97

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_handle_bus_err.__UNIQUE_ID_ddebug465, ptr noundef %dev, ptr noundef nonnull @.str.12) #6
  br label %do.end79

do.end79:                                         ; preds = %if.then74, %do.body60
  %23 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cf, align 4
  %arrayidx81 = getelementptr %struct.can_frame, ptr %24, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 25, ptr %arrayidx81, align 1
  br label %sw.epilog

do.body84:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_handle_bus_err, %do.end103)) #6
          to label %if.then98 [label %do.end103], !srcloc !97

if.then98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_handle_bus_err.__UNIQUE_ID_ddebug466, ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  br label %do.end103

do.end103:                                        ; preds = %if.then98, %do.body84
  %26 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cf, align 4
  %arrayidx105 = getelementptr %struct.can_frame, ptr %27, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx105, align 2
  %30 = or i8 %29, 16
  store i8 %30, ptr %arrayidx105, align 2
  br label %sw.epilog

do.body111:                                       ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_handle_bus_err, %do.end130)) #6
          to label %if.then125 [label %do.end130], !srcloc !97

if.then125:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_handle_bus_err.__UNIQUE_ID_ddebug467, ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  br label %do.end130

do.end130:                                        ; preds = %if.then125, %do.body111
  %31 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cf, align 4
  %arrayidx132 = getelementptr %struct.can_frame, ptr %32, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx132, align 2
  %35 = or i8 %34, 8
  store i8 %35, ptr %arrayidx132, align 2
  br label %sw.epilog

do.body138:                                       ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_handle_bus_err, %do.end157)) #6
          to label %if.then152 [label %do.end157], !srcloc !97

if.then152:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_handle_bus_err.__UNIQUE_ID_ddebug468, ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  br label %do.end157

do.end157:                                        ; preds = %if.then152, %do.body138
  %36 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cf, align 4
  %arrayidx159 = getelementptr %struct.can_frame, ptr %37, i32 0, i32 5, i32 3
  %38 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %arrayidx159, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end157, %do.end130, %do.end103, %do.end79, %do.end52, %do.end28, %if.end13.sw.epilog_crit_edge
  %call160 = call i32 @netif_receive_skb(ptr noundef nonnull %call7) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge197
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge197 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @c_can_obj_update(ptr noundef %dev, i32 noundef %iface, i32 noundef %cmd, i32 noundef %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mul = mul i32 %iface, 11
  %add = add i32 %mul, 8
  %write_reg32 = getelementptr i8, ptr %dev, i32 2916
  %0 = ptrtoint ptr %write_reg32 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg32, align 4
  %shl = shl i32 %cmd, 16
  %or = or i32 %shl, %obj
  tail call void %1(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef %or) #6
  %read_reg = getelementptr i8, ptr %dev, i32 2904
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 8
  %call1 = tail call zeroext i16 %3(ptr noundef %add.ptr.i, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1)
  %tobool2.not = icmp sgt i16 %call1, -1
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 8
  %call1.1 = tail call zeroext i16 %6(ptr noundef %add.ptr.i, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.1)
  %tobool2.not.1 = icmp sgt i16 %call1.1, -1
  br i1 %tobool2.not.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #6
  %8 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg, align 8
  %call1.2 = tail call zeroext i16 %9(ptr noundef %add.ptr.i, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.2)
  %tobool2.not.2 = icmp sgt i16 %call1.2, -1
  br i1 %tobool2.not.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #6
  %11 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg, align 8
  %call1.3 = tail call zeroext i16 %12(ptr noundef %add.ptr.i, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.3)
  %tobool2.not.3 = icmp sgt i16 %call1.3, -1
  br i1 %tobool2.not.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg, align 8
  %call1.4 = tail call zeroext i16 %15(ptr noundef %add.ptr.i, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.4)
  %tobool2.not.4 = icmp sgt i16 %call1.4, -1
  br i1 %tobool2.not.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  %17 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg, align 8
  %call1.5 = tail call zeroext i16 %18(ptr noundef %add.ptr.i, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.5)
  %tobool2.not.5 = icmp sgt i16 %call1.5, -1
  br i1 %tobool2.not.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %device.i = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.c_can_pm_runtime_get_sync.exit_crit_edge, label %if.then.i

entry.c_can_pm_runtime_get_sync.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_pm_runtime_get_sync.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %1, i32 noundef 4) #6
  br label %c_can_pm_runtime_get_sync.exit

c_can_pm_runtime_get_sync.exit:                   ; preds = %if.then.i, %entry.c_can_pm_runtime_get_sync.exit_crit_edge
  %raminit.i = getelementptr i8, ptr %dev, i32 2944
  %2 = ptrtoint ptr %raminit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raminit.i, align 8
  %tobool.not.i32 = icmp eq ptr %3, null
  br i1 %tobool.not.i32, label %c_can_pm_runtime_get_sync.exit.c_can_reset_ram.exit_crit_edge, label %if.then.i33

c_can_pm_runtime_get_sync.exit.c_can_reset_ram.exit_crit_edge: ; preds = %c_can_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_reset_ram.exit

if.then.i33:                                      ; preds = %c_can_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %add.ptr.i, i1 noundef zeroext true) #6
  br label %c_can_reset_ram.exit

c_can_reset_ram.exit:                             ; preds = %if.then.i33, %c_can_pm_runtime_get_sync.exit.c_can_reset_ram.exit_crit_edge
  %call1 = tail call i32 @open_candev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %c_can_reset_ram.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %exit_open_fail

if.end:                                           ; preds = %c_can_reset_ram.exit
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @c_can_isr, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %exit_irq_fail

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @c_can_start(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %exit_start_fail

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %napi = getelementptr i8, ptr %dev, i32 2616
  tail call void @napi_enable(ptr noundef %napi) #6
  %read_reg.i = getelementptr i8, ptr %dev, i32 2904
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 8
  %call.i34 = tail call zeroext i16 %7(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %spec.select.i = or i16 %call.i34, 14
  %write_reg.i = getelementptr i8, ptr %dev, i32 2908
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %spec.select.i) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

exit_start_fail:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call10 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %dev) #6
  br label %exit_irq_fail

exit_irq_fail:                                    ; preds = %exit_start_fail, %if.then3
  %err.0 = phi i32 [ %call.i, %if.then3 ], [ %call5, %exit_start_fail ]
  tail call void @close_candev(ptr noundef %dev) #6
  br label %exit_open_fail

exit_open_fail:                                   ; preds = %exit_irq_fail, %if.then
  %err.1 = phi i32 [ %call1, %if.then ], [ %err.0, %exit_irq_fail ]
  %14 = ptrtoint ptr %raminit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %raminit.i, align 8
  %tobool.not.i36 = icmp eq ptr %15, null
  br i1 %tobool.not.i36, label %exit_open_fail.c_can_reset_ram.exit38_crit_edge, label %if.then.i37

exit_open_fail.c_can_reset_ram.exit38_crit_edge:  ; preds = %exit_open_fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_reset_ram.exit38

if.then.i37:                                      ; preds = %exit_open_fail
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef %add.ptr.i, i1 noundef zeroext false) #6
  br label %c_can_reset_ram.exit38

c_can_reset_ram.exit38:                           ; preds = %if.then.i37, %exit_open_fail.c_can_reset_ram.exit38_crit_edge
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 4
  %tobool.not.i40 = icmp eq ptr %17, null
  br i1 %tobool.not.i40, label %c_can_reset_ram.exit38.cleanup_crit_edge, label %if.then.i42

c_can_reset_ram.exit38.cleanup_crit_edge:         ; preds = %c_can_reset_ram.exit38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i42:                                      ; preds = %c_can_reset_ram.exit38
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i41 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %17, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i42, %c_can_reset_ram.exit38.cleanup_crit_edge, %if.end8
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %err.1, %c_can_reset_ram.exit38.cleanup_crit_edge ], [ %err.1, %if.then.i42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_close(ptr noundef %dev) #0 align 64 {
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
  %napi = getelementptr i8, ptr %dev, i32 2616
  tail call void @napi_disable(ptr noundef %napi) #6
  %read_reg.i.i = getelementptr i8, ptr %dev, i32 2904
  %2 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i.i, align 8
  %call.i.i = tail call zeroext i16 %3(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %4 = and i16 %call.i.i, -15
  %write_reg.i.i = getelementptr i8, ptr %dev, i32 2908
  %5 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_reg.i.i, align 4
  tail call void %6(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %4) #6
  %7 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i.i, align 4
  tail call void %8(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext 1) #6
  %parent.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %call2.i = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %10) #6
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %state.i, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %dev) #6
  tail call void @close_candev(ptr noundef %dev) #6
  %raminit.i = getelementptr i8, ptr %dev, i32 2944
  %14 = ptrtoint ptr %raminit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %raminit.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %entry.c_can_reset_ram.exit_crit_edge, label %if.then.i

entry.c_can_reset_ram.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_reset_ram.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef %add.ptr.i, i1 noundef zeroext false) #6
  br label %c_can_reset_ram.exit

c_can_reset_ram.exit:                             ; preds = %if.then.i, %entry.c_can_reset_ram.exit_crit_edge
  %device.i = getelementptr i8, ptr %dev, i32 2844
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 4
  %tobool.not.i10 = icmp eq ptr %17, null
  br i1 %tobool.not.i10, label %c_can_reset_ram.exit.c_can_pm_runtime_put_sync.exit_crit_edge, label %if.then.i12

c_can_reset_ram.exit.c_can_pm_runtime_put_sync.exit_crit_edge: ; preds = %c_can_reset_ram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_pm_runtime_put_sync.exit

if.then.i12:                                      ; preds = %c_can_reset_ram.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i11 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %17, i32 noundef 4) #6
  br label %c_can_pm_runtime_put_sync.exit

c_can_pm_runtime_put_sync.exit:                   ; preds = %if.then.i12, %c_can_reset_ram.exit.c_can_pm_runtime_put_sync.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx = getelementptr i8, ptr %dev, i32 2892
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
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
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !102

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
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !99

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
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !102

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
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !99

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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !102

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
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
  %call2 = tail call fastcc zeroext i1 @c_can_tx_busy(ptr noundef %add.ptr.i, ptr noundef %tx)
  br i1 %call2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %36 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx, align 4
  %obj_num.i = getelementptr i8, ptr %dev, i32 2900
  %38 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %obj_num.i, align 4
  %sub.i = add i32 %39, 255
  %and.i = and i32 %sub.i, %37
  %conv.i = trunc i32 %and.i to i8
  %conv = and i32 %and.i, 255
  %inc = add i32 %37, 1
  store i32 %inc, ptr %tx, align 4
  %tail.i = getelementptr i8, ptr %dev, i32 2896
  %40 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail.i, align 4
  %inc.neg = xor i32 %37, -1
  %sub.neg.i = add i32 %39, %inc.neg
  %sub1.i = add i32 %sub.neg.i, %41
  %conv.i41 = trunc i32 %sub1.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i41)
  %cmp = icmp eq i8 %conv.i41, 0
  br i1 %cmp, label %if.then9, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end4.if.end10_crit_edge
  %44 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail.i, align 4
  %46 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %obj_num.i, align 4
  %sub.i44 = add i32 %47, 255
  %and.i45 = and i32 %sub.i44, %45
  %conv.i46 = trunc i32 %and.i45 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv.i46)
  %cmp13 = icmp ult i8 %conv.i, %conv.i46
  %48 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv.i47 = zext i8 %50 to i16
  %or.i = or i16 %conv.i47, 2176
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %1, align 8
  %and.i48 = and i32 %52, 1073741824
  %and6.i = and i32 %52, 536870911
  %or8.i = or i32 %and6.i, -1073741824
  %and10.i = shl i32 %52, 18
  %shl.i = and i32 %and10.i, 536608768
  %or11.i = or i32 %shl.i, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool4.not1.i = icmp slt i32 %52, 0
  %arb.0.i = select i1 %tobool4.not1.i, i32 %or8.i, i32 %or11.i
  %53 = lshr exact i32 %and.i48, 1
  %54 = or i32 %arb.0.i, %53
  %55 = xor i32 %54, 536870912
  %and.lobit.i = lshr exact i32 %and.i48, 30
  %tx_dir.i = getelementptr i8, ptr %dev, i32 2884
  %div3.i.i = lshr i32 %conv, 5
  %arrayidx.i.i = getelementptr i32, ptr %tx_dir.i, i32 %div3.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i49 = and i32 %and.i, 31
  %58 = lshr i32 %57, %and.i.i49
  %59 = and i32 %58, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit.i, i32 %59)
  %cmp.not.i = icmp eq i32 %and.lobit.i, %59
  br i1 %cmp.not.i, label %if.end10.if.end24.i_crit_edge, label %if.then22.i

if.end10.if.end24.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %msg_obj_tx_first.i = getelementptr i8, ptr %dev, i32 2868
  %60 = ptrtoint ptr %msg_obj_tx_first.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msg_obj_tx_first.i, align 4
  %add.i = add i32 %61, %conv
  %write_reg32.i.i = getelementptr i8, ptr %dev, i32 2916
  %62 = ptrtoint ptr %write_reg32.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg32.i.i, align 4
  tail call void %63(ptr noundef %add.ptr.i, i32 noundef 23, i32 noundef 0) #6
  %write_reg.i.i.i = getelementptr i8, ptr %dev, i32 2908
  %64 = ptrtoint ptr %write_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_reg.i.i.i, align 4
  tail call void %65(ptr noundef %add.ptr.i, i32 noundef 25, i16 noundef zeroext 0) #6
  tail call fastcc void @c_can_obj_update(ptr noundef %dev, i32 noundef 1, i32 noundef 176, i32 noundef %add.i) #6
  tail call void @_change_bit(i32 noundef %conv, ptr noundef %tx_dir.i) #6
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end10.if.end24.i_crit_edge
  %write_reg32.i = getelementptr i8, ptr %dev, i32 2916
  %66 = ptrtoint ptr %write_reg32.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_reg32.i, align 4
  tail call void %67(ptr noundef %add.ptr.i, i32 noundef 23, i32 noundef %55) #6
  %write_reg.i = getelementptr i8, ptr %dev, i32 2908
  %68 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_reg.i, align 4
  tail call void %69(ptr noundef %add.ptr.i, i32 noundef 25, i16 noundef zeroext %or.i) #6
  %type.i = getelementptr i8, ptr %dev, i32 2928
  %70 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp28.i = icmp eq i32 %71, 1
  %72 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp347.not.i = icmp eq i8 %73, 0
  br i1 %cmp28.i, label %for.cond.preheader.i, label %for.cond60.preheader.i

for.cond60.preheader.i:                           ; preds = %if.end24.i
  br i1 %cmp347.not.i, label %for.cond60.preheader.i.c_can_setup_tx_object.exit_crit_edge, label %for.cond60.preheader.i.for.body64.i_crit_edge

for.cond60.preheader.i.for.body64.i_crit_edge:    ; preds = %for.cond60.preheader.i
  br label %for.body64.i

for.cond60.preheader.i.c_can_setup_tx_object.exit_crit_edge: ; preds = %for.cond60.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_setup_tx_object.exit

for.cond.preheader.i:                             ; preds = %if.end24.i
  br i1 %cmp347.not.i, label %for.cond.preheader.i.c_can_setup_tx_object.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.c_can_setup_tx_object.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_setup_tx_object.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %dreg.09.i = phi i32 [ %add58.i, %for.body.i.for.body.i_crit_edge ], [ 26, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ %add57.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %i.08.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i, align 1
  %conv37.i = zext i8 %75 to i32
  %add39.i = or i32 %i.08.i, 1
  %arrayidx40.i = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %add39.i
  %76 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %77 to i32
  %shl42.i = shl nuw nsw i32 %conv41.i, 8
  %or43.i = or i32 %shl42.i, %conv37.i
  %add45.i = or i32 %i.08.i, 2
  %arrayidx46.i = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %add45.i
  %78 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %79 to i32
  %shl48.i = shl nuw nsw i32 %conv47.i, 16
  %or49.i = or i32 %or43.i, %shl48.i
  %add51.i = or i32 %i.08.i, 3
  %arrayidx52.i = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %add51.i
  %80 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx52.i, align 1
  %conv53.i = zext i8 %81 to i32
  %shl54.i = shl nuw i32 %conv53.i, 24
  %or55.i = or i32 %or49.i, %shl54.i
  %82 = ptrtoint ptr %write_reg32.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_reg32.i, align 4
  tail call void %83(ptr noundef %add.ptr.i, i32 noundef %dreg.09.i, i32 noundef %or55.i) #6
  %add57.i = add nuw nsw i32 %i.08.i, 4
  %add58.i = add nuw nsw i32 %dreg.09.i, 2
  %84 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %48, align 4
  %conv33.i = zext i8 %85 to i32
  %cmp34.i = icmp ult i32 %add57.i, %conv33.i
  br i1 %cmp34.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.c_can_setup_tx_object.exit_crit_edge

for.body.i.c_can_setup_tx_object.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_setup_tx_object.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body64.i:                                     ; preds = %for.body64.i.for.body64.i_crit_edge, %for.cond60.preheader.i.for.body64.i_crit_edge
  %i.15.i = phi i32 [ %add80.i, %for.body64.i.for.body64.i_crit_edge ], [ 0, %for.cond60.preheader.i.for.body64.i_crit_edge ]
  %86 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_reg.i, align 4
  %div.udiv11.i = lshr exact i32 %i.15.i, 1
  %add68.i = add nuw nsw i32 %div.udiv11.i, 26
  %arrayidx70.i = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %i.15.i
  %88 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = zext i8 %89 to i16
  %add73.i = or i32 %i.15.i, 1
  %arrayidx74.i = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %add73.i
  %90 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx74.i, align 1
  %conv75.i = zext i8 %91 to i16
  %shl76.i = shl nuw i16 %conv75.i, 8
  %or77.i = or i16 %shl76.i, %conv71.i
  tail call void %87(ptr noundef %add.ptr.i, i32 noundef %add68.i, i16 noundef zeroext %or77.i) #6
  %add80.i = add nuw nsw i32 %i.15.i, 2
  %92 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %48, align 4
  %conv61.i = zext i8 %93 to i32
  %cmp62.i = icmp ult i32 %add80.i, %conv61.i
  br i1 %cmp62.i, label %for.body64.i.for.body64.i_crit_edge, label %for.body64.i.c_can_setup_tx_object.exit_crit_edge

for.body64.i.c_can_setup_tx_object.exit_crit_edge: ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %c_can_setup_tx_object.exit

for.body64.i.for.body64.i_crit_edge:              ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body64.i

c_can_setup_tx_object.exit:                       ; preds = %for.body64.i.c_can_setup_tx_object.exit_crit_edge, %for.body.i.c_can_setup_tx_object.exit_crit_edge, %for.cond.preheader.i.c_can_setup_tx_object.exit_crit_edge, %for.cond60.preheader.i.c_can_setup_tx_object.exit_crit_edge
  %call17 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %dev, i32 noundef %conv, i32 noundef 0) #6
  %msg_obj_tx_first = getelementptr i8, ptr %dev, i32 2868
  %94 = ptrtoint ptr %msg_obj_tx_first to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_obj_tx_first, align 4
  %add = add i32 %95, %conv
  %or.i50 = select i1 %cmp13, i32 179, i32 183
  tail call fastcc void @c_can_obj_update(ptr noundef %dev, i32 noundef 1, i32 noundef %or.i50, i32 noundef %add) #6
  br label %cleanup

cleanup:                                          ; preds = %c_can_setup_tx_object.exit, %if.end.cleanup_crit_edge, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %c_can_setup_tx_object.exit ], [ 0, %can_dropped_invalid_skb.exit ], [ 16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %read_reg = getelementptr i8, ptr %dev_id, i32 2904
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 8
  %call1 = tail call zeroext i16 %1(ptr noundef %add.ptr.i, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool.not = icmp eq i16 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1)
  %tobool2.not = icmp sgt i16 %call1, -1
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sie_pending = getelementptr i8, ptr %dev_id, i32 2880
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sie_pending, i32 noundef 4) #6
  %2 = ptrtoint ptr %sie_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %sie_pending, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 8
  %call.i = tail call zeroext i16 %4(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %5 = and i16 %call.i, -15
  %write_reg.i = getelementptr i8, ptr %dev_id, i32 2908
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext %5) #6
  %napi = getelementptr i8, ptr %dev_id, i32 2616
  %call.i12 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i12, label %if.then.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @c_can_tx_busy(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %tx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %obj_num.i = getelementptr inbounds %struct.c_can_tx_ring, ptr %tx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj_num.i, align 4
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring, align 4
  %tail.i = getelementptr inbounds %struct.c_can_tx_ring, ptr %tx_ring, i32 0, i32 1
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail.i, align 4
  %sub.neg.i = sub i32 %1, %3
  %sub1.i = add i32 %sub.neg.i, %5
  %conv.i = trunc i32 %sub1.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp.not = icmp eq i8 %conv.i, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !107
  %10 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %obj_num.i, align 4
  %12 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ring, align 4
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail.i, align 4
  %sub.neg.i33 = sub i32 %11, %13
  %sub1.i34 = add i32 %sub.neg.i33, %15
  %conv.i35 = trunc i32 %sub1.i34 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i35)
  %cmp6 = icmp eq i8 %conv.i35, 0
  br i1 %cmp6, label %do.body10, label %if.end22

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_tx_busy.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_tx_busy, %return)) #6
          to label %if.then15 [label %return], !srcloc !97

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ring, align 4
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail.i, align 4
  %sub = sub i32 %19, %21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @c_can_tx_busy.__UNIQUE_ID_ddebug462, ptr noundef %17, ptr noundef nonnull @.str.25, i32 noundef %19, i32 noundef %21, i32 noundef %sub) #6
  br label %return

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %_tx.i.i36 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i36, align 128
  %state.i.i37 = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i37) #6
  br label %return

return:                                           ; preds = %if.end22, %if.then15, %do.body10, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end22 ], [ false, %entry.return_crit_edge ], [ true, %if.then15 ], [ true, %do.body10 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__ksymtab_alloc_c_can_dev, !1, !"__ksymtab_alloc_c_can_dev", i1 false, i1 false}
!1 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1261, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1273, i32 2}
!4 = !{ptr @__ksymtab_c_can_power_down, !5, !"__ksymtab_c_can_power_down", i1 false, i1 false}
!5 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1296, i32 1}
!6 = !{ptr @__ksymtab_c_can_power_up, !7, !"__ksymtab_c_can_power_up", i1 false, i1 false}
!7 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1346, i32 1}
!8 = !{ptr @__ksymtab_free_c_can_dev, !9, !"__ksymtab_free_c_can_dev", i1 false, i1 false}
!9 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1356, i32 1}
!10 = !{ptr @__ksymtab_register_c_can_dev, !11, !"__ksymtab_register_c_can_dev", i1 false, i1 false}
!11 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1385, i32 1}
!12 = !{ptr @__ksymtab_unregister_c_can_dev, !13, !"__ksymtab_unregister_c_can_dev", i1 false, i1 false}
!13 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1391, i32 1}
!14 = !{ptr @__UNIQUE_ID_author475, !15, !"__UNIQUE_ID_author475", i1 false, i1 false}
!15 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1393, i32 1}
!16 = !{ptr @__UNIQUE_ID_file476, !17, !"__UNIQUE_ID_file476", i1 false, i1 false}
!17 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1394, i32 1}
!18 = !{ptr @__UNIQUE_ID_license477, !17, !"__UNIQUE_ID_license477", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description478, !20, !"__UNIQUE_ID_description478", i1 false, i1 false}
!20 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1395, i32 1}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1087, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @c_can_poll.__UNIQUE_ID_ddebug469, !22, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1092, i32 3}
!28 = !{ptr @c_can_poll.__UNIQUE_ID_ddebug470, !27, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1097, i32 3}
!31 = !{ptr @c_can_poll.__UNIQUE_ID_ddebug471, !30, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1104, i32 3}
!34 = !{ptr @c_can_poll.__UNIQUE_ID_ddebug472, !33, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1109, i32 3}
!37 = !{ptr @c_can_poll.__UNIQUE_ID_ddebug473, !36, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1114, i32 3}
!40 = !{ptr @c_can_poll.__UNIQUE_ID_ddebug474, !39, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1035, i32 3}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug463, !42, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1039, i32 3}
!47 = !{ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug464, !46, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1043, i32 3}
!50 = !{ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug465, !49, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1047, i32 3}
!53 = !{ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug466, !52, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1051, i32 3}
!56 = !{ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug467, !55, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1055, i32 3}
!59 = !{ptr @c_can_handle_bus_err.__UNIQUE_ID_ddebug468, !58, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 248, i32 18}
!62 = !{ptr @c_can_bittiming_const, !63, !"c_can_bittiming_const", i1 false, i1 false}
!63 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 196, i32 41}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 651, i32 39}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 577, i32 20}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 524, i32 7}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 495, i32 20}
!72 = !{ptr @c_can_netdev_ops, !73, !"c_can_netdev_ops", i1 false, i1 false}
!73 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1358, i32 36}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1168, i32 19}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 1176, i32 19}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/c_can/c_can_main.c", i32 442, i32 3}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @c_can_tx_busy.__UNIQUE_ID_ddebug462, !82, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148503370}
!95 = !{i64 750298, i64 750315, i64 750339, i64 750365, i64 750383}
!96 = !{i64 2148503740}
!97 = !{i64 2148725345, i64 2148725350, i64 2148725363, i64 2148725407, i64 2148725441, i64 2148725462}
!98 = !{!"auto-init"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i32 0, i32 33}
!101 = !{i64 2156983196}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2157018314}
!104 = !{i64 2157018156}
!105 = !{i64 2157025606}
!106 = !{i64 2157025448}
!107 = !{i64 2156975685}
