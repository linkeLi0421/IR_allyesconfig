; ModuleID = '/llk/IR_all_yes/drivers/net/can/cc770/cc770.c_pt.bc'
source_filename = "../drivers/net/can/cc770/cc770.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+alloc_cc770dev\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_cc770dev\09\09\09\09"
module asm "\09.long\09__crc_alloc_cc770dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_cc770dev:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_cc770dev\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_cc770dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+free_cc770dev\22, \22a\22\09"
module asm "\09.weak\09__crc_free_cc770dev\09\09\09\09"
module asm "\09.long\09__crc_free_cc770dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_cc770dev:\09\09\09\09\09"
module asm "\09.asciz \09\22free_cc770dev\22\09\09\09\09\09"
module asm "__kstrtabns_free_cc770dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_cc770dev\22, \22a\22\09"
module asm "\09.weak\09__crc_register_cc770dev\09\09\09\09"
module asm "\09.long\09__crc_register_cc770dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_cc770dev:\09\09\09\09\09"
module asm "\09.asciz \09\22register_cc770dev\22\09\09\09\09\09"
module asm "__kstrtabns_register_cc770dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_cc770dev\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_cc770dev\09\09\09\09"
module asm "\09.long\09__crc_unregister_cc770dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_cc770dev:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_cc770dev\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_cc770dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
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
%struct.can_berr_counter = type { i16, i16 }
%struct.cc770_priv = type { %struct.can_priv, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [5 x i8], i8, i8, i8, i8, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.146, i8, i8, i8, [8 x i8] }
%union.anon.146 = type { i8 }

@__UNIQUE_ID_author463 = internal constant [53 x i8] c"cc770.author=Wolfgang Grandegger <wg@grandegger.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file464 = internal constant [39 x i8] c"cc770.file=drivers/net/can/cc770/cc770\00", section ".modinfo", align 1
@__UNIQUE_ID_license465 = internal constant [21 x i8] c"cc770.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description466 = internal constant [44 x i8] c"cc770.description=cc770CAN netdevice driver\00", section ".modinfo", align 1
@__param_str_msgobj15_eff = internal constant [19 x i8] c"cc770.msgobj15_eff\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msgobj15_eff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_msgobj15_eff = internal constant %struct.kernel_param { ptr @__param_str_msgobj15_eff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @msgobj15_eff } }, section "__param", align 4
@__UNIQUE_ID_msgobj15_efftype467 = internal constant [32 x i8] c"cc770.parmtype=msgobj15_eff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msgobj15_eff468 = internal constant [103 x i8] c"cc770.parm=msgobj15_eff:Extended 29-bit frames for message object 15 (default: 11-bit standard frames)\00", section ".modinfo", align 1
@__param_str_i82527_compat = internal constant [20 x i8] c"cc770.i82527_compat\00", align 1
@i82527_compat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i82527_compat = internal constant %struct.kernel_param { ptr @__param_str_i82527_compat, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @i82527_compat } }, section "__param", align 4
@__UNIQUE_ID_i82527_compattype469 = internal constant [33 x i8] c"cc770.parmtype=i82527_compat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i82527_compat470 = internal constant [98 x i8] c"cc770.parm=i82527_compat:Strict Intel 82527 compatibility mode without using additional functions\00", section ".modinfo", align 1
@cc770_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"cc770\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 64, i32 1 }, [48 x i8] zeroinitializer }, align 32
@cc770_obj_flags = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\01\05\03\07\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_cc770dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_cc770dev = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_cc770dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_cc770dev to i32), ptr @__kstrtab_alloc_cc770dev, ptr @__kstrtabns_alloc_cc770dev }, section "___ksymtab_gpl+alloc_cc770dev", align 4
@__kstrtab_free_cc770dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_cc770dev = external dso_local constant [0 x i8], align 1
@__ksymtab_free_cc770dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_cc770dev to i32), ptr @__kstrtab_free_cc770dev, ptr @__kstrtabns_free_cc770dev }, section "___ksymtab_gpl+free_cc770dev", align 4
@cc770_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @cc770_open, ptr @cc770_close, ptr @cc770_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@register_cc770dev.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -43, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cc770\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"register_cc770dev\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/can/cc770/cc770.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"i82527 mode with additional functions\0A\00", [57 x i8] zeroinitializer }, align 32
@register_cc770dev.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"strict i82527 compatibility mode\0A\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_register_cc770dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_cc770dev = external dso_local constant [0 x i8], align 1
@__ksymtab_register_cc770dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_cc770dev to i32), ptr @__kstrtab_register_cc770dev, ptr @__kstrtabns_register_cc770dev }, section "___ksymtab_gpl+register_cc770dev", align 4
@__kstrtab_unregister_cc770dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_cc770dev = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_cc770dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_cc770dev to i32), ptr @__kstrtab_unregister_cc770dev, ptr @__kstrtabns_unregister_cc770dev }, section "___ksymtab_gpl+unregister_cc770dev", align 4
@__initcall__kmod_cc770__480_886_cc770_init6 = internal global ptr @cc770_init, section ".initcall6.init", align 4
@cc770_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016cc770: driver removed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cc770_exit\00", [21 x i8] zeroinitializer }, align 32
@cc770_exit._entry_ptr = internal global ptr @cc770_exit._entry, section ".printk_index", align 4
@__exitcall_cc770_exit = internal global ptr @cc770_exit, section ".exitcall.exit", align 4
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting BTR0=0x%02x BTR1=0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@enable_all_objs.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 31, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable_all_objs\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Message object %d for RX data, RTR, SFF and EFF\0A\00", [47 x i8] zeroinitializer }, align 32
@enable_all_objs.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 33, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Message object %d for RX %s %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RTR\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EFF\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SFF\00", [28 x i8] zeroinitializer }, align 32
@enable_all_objs.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.15, i8 0, i8 39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Message object %d for TX data, RTR, SFF and EFF\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"probing @0x%p failed (reset)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"probing @0x%p failed (pattern)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unexpected interrupt id %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cc770_interrupt.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc770_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d messages handled in ISR\00", [37 x i8] zeroinitializer }, align 32
@cc770_err.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cc770_err\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"status interrupt (%#x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"missing tx skb in tx interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TX register is still occupied!\0A\00", [32 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@cc770_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016cc770: CAN netdevice driver\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cc770_init\00", [21 x i8] zeroinitializer }, align 32
@cc770_init._entry_ptr = internal global ptr @cc770_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 3, i64 0, i64 3, i64 7]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6]
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"msgobj15_eff\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 61, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"i82527_compat\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 66, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"cc770_bittiming_const\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 85, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"cc770_obj_flags\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 76, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"cc770_netdev_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 831, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 855, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 858, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 890, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 366, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 124, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 127, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 156, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 303, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 315, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 735, i32 21 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 753, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 507, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 677, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 438, i32 19 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 104, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [33 x i8] c"../drivers/net/can/cc770/cc770.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 882, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_file464, ptr @__UNIQUE_ID_i82527_compat470, ptr @__UNIQUE_ID_i82527_compattype469, ptr @__UNIQUE_ID_license465, ptr @__UNIQUE_ID_msgobj15_eff468, ptr @__UNIQUE_ID_msgobj15_efftype467, ptr @__exitcall_cc770_exit, ptr @__initcall__kmod_cc770__480_886_cc770_init6, ptr @__ksymtab_alloc_cc770dev, ptr @__ksymtab_free_cc770dev, ptr @__ksymtab_register_cc770dev, ptr @__ksymtab_unregister_cc770dev, ptr @__param_i82527_compat, ptr @__param_msgobj15_eff, ptr @cc770_exit, ptr @cc770_exit._entry, ptr @cc770_exit._entry_ptr, ptr @cc770_init._entry, ptr @cc770_init._entry_ptr, ptr @msgobj15_eff, ptr @i82527_compat, ptr @cc770_bittiming_const, ptr @cc770_obj_flags, ptr @cc770_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgobj15_eff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82527_compat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_obj_flags to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_cc770dev(i32 noundef %sizeof_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %sizeof_priv, 364
  %call = tail call ptr @alloc_candev_mqs(i32 noundef %add, i32 noundef 1, i32 noundef 1, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr i8, ptr %call, i32 2640
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %dev2, align 4
  %bittiming_const = getelementptr i8, ptr %call, i32 2332
  %1 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cc770_bittiming_const, ptr %bittiming_const, align 4
  %do_set_bittiming = getelementptr i8, ptr %call, i32 2588
  %2 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cc770_set_bittiming, ptr %do_set_bittiming, align 4
  %do_set_mode = getelementptr i8, ptr %call, i32 2596
  %3 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cc770_set_mode, ptr %do_set_mode, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call, i32 2480
  %4 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %ctrlmode_supported, align 4
  %tx_skb = getelementptr i8, ptr %call, i32 2664
  %5 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tx_skb, align 4
  %obj_flags = getelementptr i8, ptr %call, i32 2652
  %6 = call ptr @memcpy(ptr %obj_flags, ptr @cc770_obj_flags, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sizeof_priv)
  %tobool6.not = icmp eq i32 %sizeof_priv, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %call, i32 2668
  %priv8 = getelementptr i8, ptr %call, i32 2636
  %7 = ptrtoint ptr %priv8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %priv8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_set_bittiming(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv15, i32 noundef %conv16) #8
  %write_reg = getelementptr i8, ptr %dev, i32 2624
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  tail call void %17(ptr noundef %add.ptr.i, i32 noundef 63, i8 noundef zeroext %conv) #5
  %18 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg, align 4
  tail call void %19(ptr noundef %add.ptr.i, i32 noundef 79, i8 noundef zeroext %15) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_set_mode(ptr noundef %dev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 4
  br i1 %cmp.not.i, label %sw.bb.cc770_start.exit_crit_edge, label %if.then.i

sw.bb.cc770_start.exit_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cc770_start.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @set_reset_mode(ptr noundef %dev) #5
  br label %cc770_start.exit

cc770_start.exit:                                 ; preds = %if.then.i, %sw.bb.cc770_start.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %read_reg.i.i = getelementptr i8, ptr %dev, i32 2620
  %2 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i.i, align 4
  %call1.i.i = tail call zeroext i8 %3(ptr noundef %add.ptr.i.i, i32 noundef 95) #5
  %write_reg.i.i = getelementptr i8, ptr %dev, i32 2624
  %4 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i.i, align 4
  tail call void %5(ptr noundef %add.ptr.i.i, i32 noundef 1, i8 noundef zeroext 7) #5
  tail call fastcc void @enable_all_objs(ptr noundef %dev) #5
  %6 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i.i, align 4
  %control_normal_mode.i.i = getelementptr i8, ptr %dev, i32 2657
  %8 = ptrtoint ptr %control_normal_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %control_normal_mode.i.i, align 1
  tail call void %7(ptr noundef %add.ptr.i.i, i32 noundef 0, i8 noundef zeroext %9) #5
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %12) #5
  br label %return

return:                                           ; preds = %cc770_start.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %cc770_start.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_cc770dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @free_candev(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_cc770dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %write_reg.i = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg.i, align 4
  tail call void %1(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext 97) #5
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %cpu_interface.i = getelementptr i8, ptr %dev, i32 2658
  %4 = ptrtoint ptr %cpu_interface.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cpu_interface.i, align 2
  tail call void %3(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %5) #5
  %read_reg.i = getelementptr i8, ptr %dev, i32 2620
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 4
  %call2.i = tail call zeroext i8 %7(ptr noundef %add.ptr.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2.i)
  %tobool.not.i = icmp sgt i8 %call2.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reg_base.i = getelementptr i8, ptr %dev, i32 2644
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %9) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i, align 4
  tail call void %11(ptr noundef %add.ptr.i, i32 noundef 24, i8 noundef zeroext 37) #5
  %12 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg.i, align 4
  tail call void %13(ptr noundef %add.ptr.i, i32 noundef 42, i8 noundef zeroext 82) #5
  %14 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg.i, align 4
  tail call void %15(ptr noundef %add.ptr.i, i32 noundef 173, i8 noundef zeroext -61) #5
  %16 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg.i, align 4
  %call7.i = tail call zeroext i8 %17(ptr noundef %add.ptr.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %call7.i)
  %cmp.not.i = icmp eq i8 %call7.i, 37
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.then21.i_crit_edge

if.end.i.if.then21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %18 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg.i, align 4
  %call11.i = tail call zeroext i8 %19(ptr noundef %add.ptr.i, i32 noundef 42) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %call11.i)
  %cmp13.not.i = icmp eq i8 %call11.i, 82
  br i1 %cmp13.not.i, label %lor.lhs.false15.i, label %lor.lhs.false.i.if.then21.i_crit_edge

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_reg.i, align 4
  %call17.i = tail call zeroext i8 %21(ptr noundef %add.ptr.i, i32 noundef 173) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -61, i8 %call17.i)
  %cmp19.not.i = icmp eq i8 %call17.i, -61
  br i1 %cmp19.not.i, label %if.end23.i, label %lor.lhs.false15.i.if.then21.i_crit_edge

lor.lhs.false15.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false15.i.if.then21.i_crit_edge, %lor.lhs.false.i.if.then21.i_crit_edge, %if.end.i.if.then21.i_crit_edge
  %reg_base22.i = getelementptr i8, ptr %dev, i32 2644
  %22 = ptrtoint ptr %reg_base22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base22.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %23) #8
  br label %cleanup

if.end23.i:                                       ; preds = %lor.lhs.false15.i
  %24 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg.i, align 4
  %call25.i = tail call zeroext i8 %25(ptr noundef %add.ptr.i, i32 noundef 0) #5
  %26 = and i8 %call25.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool28.not.i = icmp eq i8 %26, 0
  br i1 %tobool28.not.i, label %if.end23.i.if.end_crit_edge, label %if.then29.i

if.end23.i.if.end_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then29.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %control_normal_mode.i = getelementptr i8, ptr %dev, i32 2657
  %27 = ptrtoint ptr %control_normal_mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %control_normal_mode.i, align 1
  %29 = or i8 %28, 32
  store i8 %29, ptr %control_normal_mode.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then29.i, %if.end23.i.if.end_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %30 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cc770_netdev_ops, ptr %netdev_ops, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 8
  %or = or i32 %32, 262144
  store i32 %or, ptr %flags, align 8
  %33 = load i32, ptr @i82527_compat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not = icmp eq i32 %33, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %control_normal_mode = getelementptr i8, ptr %dev, i32 2657
  %34 = ptrtoint ptr %control_normal_mode to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %control_normal_mode, align 1
  %36 = and i8 %35, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool3.not = icmp eq i8 %36, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %do_get_berr_counter = getelementptr i8, ptr %dev, i32 2608
  %37 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @cc770_get_berr_counter, ptr %do_get_berr_counter, align 4
  %38 = ptrtoint ptr %control_normal_mode to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 42, ptr %control_normal_mode, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_cc770dev.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@register_cc770dev, %if.end38)) #5
          to label %if.then12 [label %if.end38], !srcloc !106

if.then12:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @register_cc770dev.__UNIQUE_ID_ddebug478, ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %control_normal_mode16 = getelementptr i8, ptr %dev, i32 2657
  %39 = ptrtoint ptr %control_normal_mode16 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 10, ptr %control_normal_mode16, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_cc770dev.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@register_cc770dev, %if.end38)) #5
          to label %if.then32 [label %if.end38], !srcloc !106

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @register_cc770dev.__UNIQUE_ID_ddebug479, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.else, %if.then12, %if.then4
  %40 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg.i, align 4
  tail call void %41(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext 65) #5
  %42 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg.i, align 4
  %clkout.i = getelementptr i8, ptr %dev, i32 2659
  %44 = ptrtoint ptr %clkout.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %clkout.i, align 1
  tail call void %43(ptr noundef %add.ptr.i, i32 noundef 31, i8 noundef zeroext %45) #5
  %46 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg.i, align 4
  %48 = ptrtoint ptr %cpu_interface.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cpu_interface.i, align 2
  tail call void %47(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %49) #5
  %50 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg.i, align 4
  %bus_config.i = getelementptr i8, ptr %dev, i32 2660
  %52 = ptrtoint ptr %bus_config.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bus_config.i, align 4
  tail call void %51(ptr noundef %add.ptr.i, i32 noundef 47, i8 noundef zeroext %53) #5
  %54 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_reg.i, align 4
  %call.i = tail call zeroext i8 %55(ptr noundef %add.ptr.i, i32 noundef 95) #5
  %56 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg.i, align 4
  tail call void %57(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext 0) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end38
  %mo.080.i = phi i32 [ 1, %if.end38 ], [ %inc21.i, %for.body.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_reg.i, align 4
  %60 = shl i32 %mo.080.i, 4
  tail call void %59(ptr noundef %add.ptr.i, i32 noundef %60, i8 noundef zeroext 87) #5
  %61 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_reg.i, align 4
  tail call void %62(ptr noundef %add.ptr.i, i32 noundef %60, i8 noundef zeroext 85) #5
  %63 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg.i, align 4
  %65 = or i32 %60, 1
  tail call void %64(ptr noundef %add.ptr.i, i32 noundef %65, i8 noundef zeroext 85) #5
  %66 = or i32 %60, 7
  %67 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_reg.i, align 4
  tail call void %68(ptr noundef %add.ptr.i, i32 noundef %66, i8 noundef zeroext 0) #5
  %69 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_reg.i, align 4
  %71 = or i32 %60, 8
  tail call void %70(ptr noundef %add.ptr.i, i32 noundef %71, i8 noundef zeroext 0) #5
  %72 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_reg.i, align 4
  %74 = or i32 %60, 9
  tail call void %73(ptr noundef %add.ptr.i, i32 noundef %74, i8 noundef zeroext 0) #5
  %75 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_reg.i, align 4
  %77 = or i32 %60, 10
  tail call void %76(ptr noundef %add.ptr.i, i32 noundef %77, i8 noundef zeroext 0) #5
  %78 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_reg.i, align 4
  %80 = or i32 %60, 11
  tail call void %79(ptr noundef %add.ptr.i, i32 noundef %80, i8 noundef zeroext 0) #5
  %81 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_reg.i, align 4
  %83 = or i32 %60, 12
  tail call void %82(ptr noundef %add.ptr.i, i32 noundef %83, i8 noundef zeroext 0) #5
  %84 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_reg.i, align 4
  %86 = or i32 %60, 13
  tail call void %85(ptr noundef %add.ptr.i, i32 noundef %86, i8 noundef zeroext 0) #5
  %87 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_reg.i, align 4
  %89 = or i32 %60, 14
  tail call void %88(ptr noundef %add.ptr.i, i32 noundef %89, i8 noundef zeroext 0) #5
  %90 = or i32 %60, 2
  %91 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_reg.i, align 4
  tail call void %92(ptr noundef %add.ptr.i, i32 noundef %90, i8 noundef zeroext 0) #5
  %93 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_reg.i, align 4
  %95 = or i32 %60, 3
  tail call void %94(ptr noundef %add.ptr.i, i32 noundef %95, i8 noundef zeroext 0) #5
  %96 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write_reg.i, align 4
  %98 = or i32 %60, 4
  tail call void %97(ptr noundef %add.ptr.i, i32 noundef %98, i8 noundef zeroext 0) #5
  %99 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_reg.i, align 4
  %101 = or i32 %60, 5
  tail call void %100(ptr noundef %add.ptr.i, i32 noundef %101, i8 noundef zeroext 0) #5
  %102 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write_reg.i, align 4
  %104 = or i32 %60, 6
  tail call void %103(ptr noundef %add.ptr.i, i32 noundef %104, i8 noundef zeroext 0) #5
  %inc21.i = add nuw nsw i32 %mo.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, 16
  br i1 %exitcond.not.i, label %chipset_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

chipset_init.exit:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write_reg.i, align 4
  tail call void %106(ptr noundef %add.ptr.i, i32 noundef 6, i8 noundef zeroext 0) #5
  %107 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_reg.i, align 4
  tail call void %108(ptr noundef %add.ptr.i, i32 noundef 7, i8 noundef zeroext 0) #5
  %109 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_reg.i, align 4
  tail call void %110(ptr noundef %add.ptr.i, i32 noundef 8, i8 noundef zeroext 0) #5
  %111 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write_reg.i, align 4
  tail call void %112(ptr noundef %add.ptr.i, i32 noundef 9, i8 noundef zeroext 0) #5
  %113 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write_reg.i, align 4
  tail call void %114(ptr noundef %add.ptr.i, i32 noundef 10, i8 noundef zeroext 0) #5
  %115 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_reg.i, align 4
  tail call void %116(ptr noundef %add.ptr.i, i32 noundef 11, i8 noundef zeroext 0) #5
  tail call fastcc void @set_reset_mode(ptr noundef %dev)
  %call39 = tail call i32 @register_candev(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %chipset_init.exit, %if.then21.i, %if.then.i
  %retval.0 = phi i32 [ %call39, %chipset_init.exit ], [ -19, %if.then.i ], [ -19, %if.then21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_get_berr_counter(ptr noundef %dev, ptr nocapture noundef writeonly %bec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %read_reg = getelementptr i8, ptr %dev, i32 2620
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 4
  %call1 = tail call zeroext i8 %1(ptr noundef %add.ptr.i, i32 noundef 127) #5
  %conv = zext i8 %call1 to i16
  %2 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %bec, align 2
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call3 = tail call zeroext i8 %4(ptr noundef %add.ptr.i, i32 noundef 111) #5
  %conv4 = zext i8 %call3 to i16
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %5 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv4, ptr %rxerr, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_reset_mode(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %write_reg = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg, align 4
  tail call void %1(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext 65) #5
  %state = getelementptr i8, ptr %dev, i32 2472
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %state, align 4
  %read_reg = getelementptr i8, ptr %dev, i32 2620
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call1 = tail call zeroext i8 %4(ptr noundef %add.ptr.i, i32 noundef 95) #5
  %5 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_reg, align 4
  tail call void %6(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext 0) #5
  %control_normal_mode.i = getelementptr i8, ptr %dev, i32 2657
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  tail call void %8(ptr noundef %add.ptr.i, i32 noundef 241, i8 noundef zeroext 85) #5
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  tail call void %10(ptr noundef %add.ptr.i, i32 noundef 240, i8 noundef zeroext 85) #5
  %arrayidx.i = getelementptr i8, ptr %dev, i32 2653
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %entry.for.inc.sink.split.i_crit_edge, label %land.lhs.true.i

entry.for.inc.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

land.lhs.true.i:                                  ; preds = %entry
  %14 = ptrtoint ptr %control_normal_mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %control_normal_mode.i, align 1
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not.i = icmp eq i8 %16, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.sink.split.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i.for.inc.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %land.lhs.true.i.for.inc.sink.split.i_crit_edge, %entry.for.inc.sink.split.i_crit_edge
  %17 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg, align 4
  tail call void %18(ptr noundef %add.ptr.i, i32 noundef 225, i8 noundef zeroext 85) #5
  %19 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg, align 4
  tail call void %20(ptr noundef %add.ptr.i, i32 noundef 224, i8 noundef zeroext 85) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %land.lhs.true.i.for.inc.i_crit_edge
  %arrayidx.i.1 = getelementptr i8, ptr %dev, i32 2654
  %21 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.1, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.1 = icmp eq i8 %23, 0
  br i1 %tobool.not.i.1, label %for.inc.i.for.inc.sink.split.i.1_crit_edge, label %land.lhs.true.i.1

for.inc.i.for.inc.sink.split.i.1_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i.1

land.lhs.true.i.1:                                ; preds = %for.inc.i
  %24 = ptrtoint ptr %control_normal_mode.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %control_normal_mode.i, align 1
  %26 = and i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not.i.1 = icmp eq i8 %26, 0
  br i1 %tobool5.not.i.1, label %land.lhs.true.i.1.for.inc.sink.split.i.1_crit_edge, label %land.lhs.true.i.1.for.inc.i.1_crit_edge

land.lhs.true.i.1.for.inc.i.1_crit_edge:          ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.1

land.lhs.true.i.1.for.inc.sink.split.i.1_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i.1

for.inc.sink.split.i.1:                           ; preds = %land.lhs.true.i.1.for.inc.sink.split.i.1_crit_edge, %for.inc.i.for.inc.sink.split.i.1_crit_edge
  %27 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg, align 4
  tail call void %28(ptr noundef %add.ptr.i, i32 noundef 209, i8 noundef zeroext 85) #5
  %29 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg, align 4
  tail call void %30(ptr noundef %add.ptr.i, i32 noundef 208, i8 noundef zeroext 85) #5
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %for.inc.sink.split.i.1, %land.lhs.true.i.1.for.inc.i.1_crit_edge
  %arrayidx.i.2 = getelementptr i8, ptr %dev, i32 2655
  %31 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.2, align 1
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.2 = icmp eq i8 %33, 0
  br i1 %tobool.not.i.2, label %for.inc.i.1.for.inc.sink.split.i.2_crit_edge, label %land.lhs.true.i.2

for.inc.i.1.for.inc.sink.split.i.2_crit_edge:     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i.2

land.lhs.true.i.2:                                ; preds = %for.inc.i.1
  %34 = ptrtoint ptr %control_normal_mode.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %control_normal_mode.i, align 1
  %36 = and i8 %35, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool5.not.i.2 = icmp eq i8 %36, 0
  br i1 %tobool5.not.i.2, label %land.lhs.true.i.2.for.inc.sink.split.i.2_crit_edge, label %land.lhs.true.i.2.for.inc.i.2_crit_edge

land.lhs.true.i.2.for.inc.i.2_crit_edge:          ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.2

land.lhs.true.i.2.for.inc.sink.split.i.2_crit_edge: ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i.2

for.inc.sink.split.i.2:                           ; preds = %land.lhs.true.i.2.for.inc.sink.split.i.2_crit_edge, %for.inc.i.1.for.inc.sink.split.i.2_crit_edge
  %37 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_reg, align 4
  tail call void %38(ptr noundef %add.ptr.i, i32 noundef 193, i8 noundef zeroext 85) #5
  %39 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg, align 4
  tail call void %40(ptr noundef %add.ptr.i, i32 noundef 192, i8 noundef zeroext 85) #5
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %for.inc.sink.split.i.2, %land.lhs.true.i.2.for.inc.i.2_crit_edge
  %arrayidx.i.3 = getelementptr i8, ptr %dev, i32 2656
  %41 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.3, align 1
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.3 = icmp eq i8 %43, 0
  br i1 %tobool.not.i.3, label %for.inc.i.2.for.inc.sink.split.i.3_crit_edge, label %land.lhs.true.i.3

for.inc.i.2.for.inc.sink.split.i.3_crit_edge:     ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i.3

land.lhs.true.i.3:                                ; preds = %for.inc.i.2
  %44 = ptrtoint ptr %control_normal_mode.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %control_normal_mode.i, align 1
  %46 = and i8 %45, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool5.not.i.3 = icmp eq i8 %46, 0
  br i1 %tobool5.not.i.3, label %land.lhs.true.i.3.for.inc.sink.split.i.3_crit_edge, label %land.lhs.true.i.3.for.inc.i.3_crit_edge

land.lhs.true.i.3.for.inc.i.3_crit_edge:          ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.3

land.lhs.true.i.3.for.inc.sink.split.i.3_crit_edge: ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i.3

for.inc.sink.split.i.3:                           ; preds = %land.lhs.true.i.3.for.inc.sink.split.i.3_crit_edge, %for.inc.i.2.for.inc.sink.split.i.3_crit_edge
  %47 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg, align 4
  tail call void %48(ptr noundef %add.ptr.i, i32 noundef 177, i8 noundef zeroext 85) #5
  %49 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_reg, align 4
  tail call void %50(ptr noundef %add.ptr.i, i32 noundef 176, i8 noundef zeroext 85) #5
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %for.inc.sink.split.i.3, %land.lhs.true.i.3.for.inc.i.3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_cc770dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @set_reset_mode(ptr noundef %dev)
  tail call void @unregister_candev(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @msgobj15_eff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load i8, ptr @cc770_obj_flags, align 1
  %2 = or i8 %1, 4
  store i8 %2, ptr @cc770_obj_flags, align 1
  %3 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @cc770_obj_flags, i32 0, i32 1), align 1
  %4 = and i8 %3, -5
  store i8 %4, ptr getelementptr inbounds ([5 x i8], ptr @cc770_obj_flags, i32 0, i32 1), align 1
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cc770_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_all_objs(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %control_normal_mode = getelementptr i8, ptr %dev, i32 2657
  %write_reg = getelementptr i8, ptr %dev, i32 2624
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %o.0138 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cc770_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %o.0138
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %sub = sub nuw nsw i32 15, %o.0138
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body72, label %if.then

if.then:                                          ; preds = %for.body
  %2 = ptrtoint ptr %control_normal_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %control_normal_mode, align 1
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %do.body20, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %o.0138)
  %cmp6.not = icmp eq i32 %o.0138, 0
  br i1 %cmp6.not, label %do.body9, label %if.then5.for.inc_crit_edge

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_all_objs.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@enable_all_objs, %if.end47)) #5
          to label %if.then15 [label %if.end47], !srcloc !106

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @enable_all_objs.__UNIQUE_ID_ddebug471, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %sub) #5
  br label %if.end47

do.body20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_all_objs.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@enable_all_objs, %if.end47)) #5
          to label %if.then34 [label %if.end47], !srcloc !106

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %and36 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond = select i1 %tobool37.not, ptr @.str.12, ptr @.str.11
  %and39 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %cond41 = select i1 %tobool40.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @enable_all_objs.__UNIQUE_ID_ddebug472, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %sub, ptr noundef nonnull %cond, ptr noundef nonnull %cond41) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then34, %do.body20, %if.then15, %do.body9
  %and49 = and i8 %1, 4
  %and55 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %5 = or i8 %and49, 8
  %msgcfg.1 = select i1 %tobool56.not, i8 %and49, i8 %5
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %8 = shl nuw nsw i32 %sub, 4
  %9 = or i32 %8, 6
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef %9, i8 noundef zeroext %msgcfg.1) #5
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  tail call void %11(ptr noundef %add.ptr.i, i32 noundef %8, i8 noundef zeroext -103) #5
  %12 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg, align 4
  %14 = or i32 %8, 1
  br i1 %tobool56.not, label %if.else67, label %if.then65

if.then65:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %add.ptr.i, i32 noundef %14, i8 noundef zeroext 89) #5
  br label %for.inc

if.else67:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %add.ptr.i, i32 noundef %14, i8 noundef zeroext 85) #5
  br label %for.inc

do.body72:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_all_objs.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@enable_all_objs, %do.end91)) #5
          to label %if.then86 [label %do.end91], !srcloc !106

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @enable_all_objs.__UNIQUE_ID_ddebug473, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %sub) #5
  br label %do.end91

do.end91:                                         ; preds = %if.then86, %do.body72
  %15 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg, align 4
  %17 = shl nuw nsw i32 %sub, 4
  %18 = or i32 %17, 1
  tail call void %16(ptr noundef %add.ptr.i, i32 noundef %18, i8 noundef zeroext 85) #5
  %19 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg, align 4
  tail call void %20(ptr noundef %add.ptr.i, i32 noundef %17, i8 noundef zeroext 85) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end91, %if.else67, %if.then65, %if.then5.for.inc_crit_edge
  %inc = add nuw nsw i32 %o.0138, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @set_reset_mode(ptr noundef %dev)
  %call1 = tail call i32 @open_candev(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %irq_flags = getelementptr i8, ptr %dev, i32 2648
  %2 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_flags, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @cc770_interrupt, ptr noundef null, i32 noundef %3, ptr noundef %dev, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @close_candev(ptr noundef %dev) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 4
  br i1 %cmp.not.i, label %if.end5.cc770_start.exit_crit_edge, label %if.then.i

if.end5.cc770_start.exit_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cc770_start.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @set_reset_mode(ptr noundef %dev) #5
  br label %cc770_start.exit

cc770_start.exit:                                 ; preds = %if.then.i, %if.end5.cc770_start.exit_crit_edge
  %read_reg.i.i = getelementptr i8, ptr %dev, i32 2620
  %6 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i.i, align 4
  %call1.i.i = tail call zeroext i8 %7(ptr noundef %add.ptr.i, i32 noundef 95) #5
  %write_reg.i.i = getelementptr i8, ptr %dev, i32 2624
  %8 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i.i, align 4
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext 7) #5
  tail call fastcc void @enable_all_objs(ptr noundef %dev) #5
  %10 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i.i, align 4
  %control_normal_mode.i.i = getelementptr i8, ptr %dev, i32 2657
  %12 = ptrtoint ptr %control_normal_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %control_normal_mode.i.i, align 1
  tail call void %11(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext %13) #5
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cc770_start.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then4 ], [ 0, %cc770_start.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  tail call fastcc void @set_reset_mode(ptr noundef %dev)
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %dev) #5
  tail call void @close_candev(ptr noundef %dev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !107

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !108

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !107

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !108

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !107

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 104, i32 noundef 9, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
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
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
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
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
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
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  %read_reg = getelementptr i8, ptr %dev, i32 2620
  %38 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_reg, align 4
  %call2 = tail call zeroext i8 %39(ptr noundef %add.ptr.i, i32 noundef 177) #5
  %40 = and i8 %call2, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %40)
  %cmp = icmp eq i8 %40, 32
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tx_skb = getelementptr i8, ptr %dev, i32 2664
  %41 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %skb, ptr %tx_skb, align 4
  tail call fastcc void @cc770_tx(ptr noundef %dev, i32 noundef 11)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 16, %if.then4 ], [ 0, %if.end5 ], [ 0, %can_dropped_invalid_skb.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %state = getelementptr i8, ptr %dev_id, i32 2472
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pre_irq = getelementptr i8, ptr %dev_id, i32 2628
  %2 = ptrtoint ptr %pre_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pre_irq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %add.ptr.i) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %read_reg = getelementptr i8, ptr %dev_id, i32 2620
  %write_reg.i94 = getelementptr i8, ptr %dev_id, i32 2624
  %control_normal_mode.i = getelementptr i8, ptr %dev_id, i32 2657
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 11
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %tx_skb.i = getelementptr i8, ptr %dev_id, i32 2664
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %call5120 = tail call zeroext i8 %5(ptr noundef %add.ptr.i, i32 noundef 95) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5120)
  %tobool6.not121 = icmp eq i8 %call5120, 0
  br i1 %tobool6.not121, label %if.end3.while.end_crit_edge, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  br label %if.end8

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end8:                                          ; preds = %while.body.backedge.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %call5124 = phi i8 [ %call5, %while.body.backedge.if.end8_crit_edge ], [ %call5120, %if.end3.if.end8_crit_edge ]
  %n.0119122 = phi i32 [ %inc, %while.body.backedge.if.end8_crit_edge ], [ 0, %if.end3.if.end8_crit_edge ]
  %inc = add nuw nsw i32 %n.0119122, 1
  %conv = zext i8 %call5124 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call5124)
  %cmp9 = icmp eq i8 %call5124, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call1.i = tail call zeroext i8 %7(ptr noundef %add.ptr.i, i32 noundef 1) #5
  %8 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i94, align 4
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext 7) #5
  %conv.i = zext i8 %call1.i to i32
  %10 = and i32 %conv.i, 199
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %if.then11.while.cond.backedge_crit_edge, label %cc770_status_interrupt.exit

if.then11.while.cond.backedge_crit_edge:          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

cc770_status_interrupt.exit:                      ; preds = %if.then11
  tail call fastcc void @cc770_err(ptr noundef %dev_id, i8 noundef zeroext %call1.i) #5
  %and7.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool13.not = icmp eq i32 %and7.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %n.0119122)
  %cmp4 = icmp ult i32 %n.0119122, 19
  %or.cond = select i1 %tobool13.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %cc770_status_interrupt.exit.while.body.backedge_crit_edge, label %cc770_status_interrupt.exit.while.end_crit_edge

cc770_status_interrupt.exit.while.end_crit_edge:  ; preds = %cc770_status_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

cc770_status_interrupt.exit.while.body.backedge_crit_edge: ; preds = %cc770_status_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call5124)
  %cmp.i = icmp eq i8 %call5124, 2
  %sub.i = sub nsw i32 17, %conv
  %retval.0.i90 = select i1 %cmp.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i90)
  %cmp18 = icmp sgt i32 %retval.0.i90, 4
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.18, i32 noundef %conv) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end27.i, %if.then26.i, %if.then.i109, %if.end24.i.while.cond.backedge_crit_edge, %if.then7.i.while.cond.backedge_crit_edge, %if.then.i102.while.cond.backedge_crit_edge, %if.end.3.i, %if.end.2.i.while.cond.backedge_crit_edge, %if.end.1.i.while.cond.backedge_crit_edge, %if.end.i.while.cond.backedge_crit_edge, %if.then25.while.cond.backedge_crit_edge, %if.then20, %if.then11.while.cond.backedge_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %n.0119122)
  %cmp4.old = icmp ult i32 %n.0119122, 19
  br i1 %cmp4.old, label %while.cond.backedge.while.body.backedge_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.backedge.while.body.backedge_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge

while.body.backedge:                              ; preds = %while.cond.backedge.while.body.backedge_crit_edge, %cc770_status_interrupt.exit.while.body.backedge_crit_edge
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 4
  %call5 = tail call zeroext i8 %13(ptr noundef %add.ptr.i, i32 noundef 95) #5
  %tobool6.not = icmp eq i8 %call5, 0
  br i1 %tobool6.not, label %while.body.backedge.while.end_crit_edge, label %while.body.backedge.if.end8_crit_edge

while.body.backedge.if.end8_crit_edge:            ; preds = %while.body.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

while.body.backedge.while.end_crit_edge:          ; preds = %while.body.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end22:                                         ; preds = %if.else
  %arrayidx = getelementptr %struct.cc770_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %retval.0.i90
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv23 = zext i8 %15 to i32
  %and = and i32 %conv23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.end22
  %sub.i92 = sub nsw i32 15, %retval.0.i90
  %16 = shl nuw nsw i32 %sub.i92, 4
  %17 = or i32 %16, 1
  %18 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg, align 4
  %call1.i95 = tail call zeroext i8 %19(ptr noundef %add.ptr.i, i32 noundef %16) #5
  %20 = and i8 %call1.i95, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool2.not.i = icmp eq i8 %20, 0
  br i1 %tobool2.not.i, label %if.then25.while.cond.backedge_crit_edge, label %if.end.i

if.then25.while.cond.backedge_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end.i:                                         ; preds = %if.then25
  %21 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg, align 4
  %call4.i = tail call zeroext i8 %22(ptr noundef %add.ptr.i, i32 noundef %17) #5
  tail call fastcc void @cc770_rx(ptr noundef %dev_id, i32 noundef %sub.i92, i8 noundef zeroext %call4.i) #5
  %23 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg.i94, align 4
  tail call void %24(ptr noundef %add.ptr.i, i32 noundef %16, i8 noundef zeroext -103) #5
  %25 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg.i94, align 4
  tail call void %26(ptr noundef %add.ptr.i, i32 noundef %17, i8 noundef zeroext 89) #5
  %27 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_reg, align 4
  %call1.1.i = tail call zeroext i8 %28(ptr noundef %add.ptr.i, i32 noundef %16) #5
  %29 = and i8 %call1.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.1.i = icmp eq i8 %29, 0
  br i1 %tobool2.not.1.i, label %if.end.i.while.cond.backedge_crit_edge, label %if.end.1.i

if.end.i.while.cond.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end.1.i:                                       ; preds = %if.end.i
  %30 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg, align 4
  %call4.1.i = tail call zeroext i8 %31(ptr noundef %add.ptr.i, i32 noundef %17) #5
  tail call fastcc void @cc770_rx(ptr noundef %dev_id, i32 noundef %sub.i92, i8 noundef zeroext %call4.1.i) #5
  %32 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg.i94, align 4
  tail call void %33(ptr noundef %add.ptr.i, i32 noundef %16, i8 noundef zeroext -103) #5
  %34 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg.i94, align 4
  tail call void %35(ptr noundef %add.ptr.i, i32 noundef %17, i8 noundef zeroext 89) #5
  %36 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_reg, align 4
  %call1.2.i = tail call zeroext i8 %37(ptr noundef %add.ptr.i, i32 noundef %16) #5
  %38 = and i8 %call1.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool2.not.2.i = icmp eq i8 %38, 0
  br i1 %tobool2.not.2.i, label %if.end.1.i.while.cond.backedge_crit_edge, label %if.end.2.i

if.end.1.i.while.cond.backedge_crit_edge:         ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end.2.i:                                       ; preds = %if.end.1.i
  %39 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_reg, align 4
  %call4.2.i = tail call zeroext i8 %40(ptr noundef %add.ptr.i, i32 noundef %17) #5
  tail call fastcc void @cc770_rx(ptr noundef %dev_id, i32 noundef %sub.i92, i8 noundef zeroext %call4.2.i) #5
  %41 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg.i94, align 4
  tail call void %42(ptr noundef %add.ptr.i, i32 noundef %16, i8 noundef zeroext -103) #5
  %43 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg.i94, align 4
  tail call void %44(ptr noundef %add.ptr.i, i32 noundef %17, i8 noundef zeroext 89) #5
  %45 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_reg, align 4
  %call1.3.i = tail call zeroext i8 %46(ptr noundef %add.ptr.i, i32 noundef %16) #5
  %47 = and i8 %call1.3.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool2.not.3.i = icmp eq i8 %47, 0
  br i1 %tobool2.not.3.i, label %if.end.2.i.while.cond.backedge_crit_edge, label %if.end.3.i

if.end.2.i.while.cond.backedge_crit_edge:         ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_reg, align 4
  %call4.3.i = tail call zeroext i8 %49(ptr noundef %add.ptr.i, i32 noundef %17) #5
  tail call fastcc void @cc770_rx(ptr noundef %dev_id, i32 noundef %sub.i92, i8 noundef zeroext %call4.3.i) #5
  %50 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg.i94, align 4
  tail call void %51(ptr noundef %add.ptr.i, i32 noundef %16, i8 noundef zeroext -103) #5
  %52 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg.i94, align 4
  tail call void %53(ptr noundef %add.ptr.i, i32 noundef %17, i8 noundef zeroext 89) #5
  br label %while.cond.backedge

if.else26:                                        ; preds = %if.end22
  %and30 = and i32 %conv23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %sub.i104 = sub nsw i32 15, %retval.0.i90
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.else26
  %54 = shl nuw nsw i32 %sub.i104, 4
  %55 = or i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i104)
  %cmp.i99 = icmp ult i32 %sub.i104, 15
  br label %while.body.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %if.then32
  %dec48.i = phi i32 [ 3, %if.then32 ], [ %dec.i, %if.end24.i.while.body.i_crit_edge ]
  %56 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_reg, align 4
  %call2.i = tail call zeroext i8 %57(ptr noundef %add.ptr.i, i32 noundef %55) #5
  %conv.i101 = zext i8 %call2.i to i32
  %and.i = and i32 %conv.i101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.then.i102, label %while.body.i.if.end15.i_crit_edge

while.body.i.if.end15.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then.i102:                                     ; preds = %while.body.i
  %58 = ptrtoint ptr %control_normal_mode.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %control_normal_mode.i, align 1
  %60 = and i8 %59, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool6.not.i = icmp eq i8 %60, 0
  br i1 %tobool6.not.i, label %if.then.i102.while.cond.backedge_crit_edge, label %if.then7.i

if.then.i102.while.cond.backedge_crit_edge:       ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.then7.i:                                       ; preds = %if.then.i102
  %61 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_reg, align 4
  %call9.i = tail call zeroext i8 %62(ptr noundef %add.ptr.i, i32 noundef %54) #5
  %63 = and i8 %call9.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool12.not.i = icmp eq i8 %63, 0
  br i1 %tobool12.not.i, label %if.then7.i.while.cond.backedge_crit_edge, label %if.then7.i.if.end15.i_crit_edge

if.then7.i.if.end15.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then7.i.while.cond.backedge_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end15.i:                                       ; preds = %if.then7.i.if.end15.i_crit_edge, %while.body.i.if.end15.i_crit_edge
  %and17.i = and i32 %conv.i101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then19.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_over_errors.i, align 4
  %inc.i = add i32 %65, 1
  store i32 %inc.i, ptr %rx_over_errors.i, align 4
  %66 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_errors.i, align 4
  %inc20.i = add i32 %67, 1
  store i32 %inc20.i, ptr %rx_errors.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end21.i_crit_edge
  br i1 %cmp.i99, label %if.then23.i, label %if.end21.i.if.end24.i_crit_edge

if.end21.i.if.end24.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_reg.i94, align 4
  tail call void %69(ptr noundef %add.ptr.i, i32 noundef %55, i8 noundef zeroext -11) #5
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end21.i.if.end24.i_crit_edge
  tail call fastcc void @cc770_rx(ptr noundef %dev_id, i32 noundef %sub.i104, i8 noundef zeroext %call2.i) #5
  %70 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_reg.i94, align 4
  tail call void %71(ptr noundef %add.ptr.i, i32 noundef %54, i8 noundef zeroext -103) #5
  %72 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_reg.i94, align 4
  tail call void %73(ptr noundef %add.ptr.i, i32 noundef %55, i8 noundef zeroext 85) #5
  %dec.i = add nsw i32 %dec48.i, -1
  %tobool.not.i = icmp eq i32 %dec48.i, 0
  br i1 %tobool.not.i, label %if.end24.i.while.cond.backedge_crit_edge, label %if.end24.i.while.body.i_crit_edge

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end24.i.while.cond.backedge_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.else33:                                        ; preds = %if.else26
  %74 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_reg, align 4
  %76 = shl nuw nsw i32 %sub.i104, 4
  %77 = or i32 %76, 1
  %call2.i106 = tail call zeroext i8 %75(ptr noundef %add.ptr.i, i32 noundef %77) #5
  %78 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_reg.i94, align 4
  tail call void %79(ptr noundef %add.ptr.i, i32 noundef %76, i8 noundef zeroext 85) #5
  %80 = ptrtoint ptr %write_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_reg.i94, align 4
  tail call void %81(ptr noundef %add.ptr.i, i32 noundef %77, i8 noundef zeroext 85) #5
  %82 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i108 = icmp eq ptr %83, null
  br i1 %tobool.not.i108, label %if.then.i109, label %if.end.i112, !prof !108

if.then.i109:                                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.23) #8
  br label %while.cond.backedge

if.end.i112:                                      ; preds = %if.else33
  %conv.i110 = zext i8 %call2.i106 to i32
  %and.i111 = and i32 %conv.i110, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %tobool7.not.i = icmp eq i32 %and.i111, 0
  br i1 %tobool7.not.i, label %if.end.i112.if.end16.i_crit_edge, label %if.then14.i, !prof !107

if.end.i112.if.end16.i_crit_edge:                 ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_over_errors.i, align 4
  %inc.i114 = add i32 %85, 1
  store i32 %inc.i114, ptr %rx_over_errors.i, align 4
  %86 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_errors.i, align 4
  %inc15.i = add i32 %87, 1
  store i32 %inc15.i, ptr %rx_errors.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end.i112.if.end16.i_crit_edge
  %and18.i = and i32 %conv.i110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end27.i, label %if.then26.i, !prof !107

if.then26.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @cc770_rx(ptr noundef %dev_id, i32 noundef %sub.i104, i8 noundef zeroext %call2.i106) #5
  tail call fastcc void @cc770_tx(ptr noundef %dev_id, i32 noundef %sub.i104) #5
  br label %while.cond.backedge

if.end27.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i = tail call i32 @can_put_echo_skb(ptr noundef nonnull %83, ptr noundef %dev_id, i32 noundef 0, i32 noundef 0) #5
  %call30.i = tail call i32 @can_get_echo_skb(ptr noundef %dev_id, i32 noundef 0, ptr noundef null) #5
  %88 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %89, %call30.i
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %90 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tx_packets.i, align 4
  %inc31.i = add i32 %91, 1
  store i32 %inc31.i, ptr %tx_packets.i, align 4
  %92 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %tx_skb.i, align 4
  %93 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %94) #5
  br label %while.cond.backedge

while.end:                                        ; preds = %while.body.backedge.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %cc770_status_interrupt.exit.while.end_crit_edge, %if.end3.while.end_crit_edge
  %n.1 = phi i32 [ 0, %if.end3.while.end_crit_edge ], [ %inc, %cc770_status_interrupt.exit.while.end_crit_edge ], [ %inc, %while.body.backedge.while.end_crit_edge ], [ %inc, %while.cond.backedge.while.end_crit_edge ]
  %post_irq = getelementptr i8, ptr %dev_id, i32 2632
  %95 = ptrtoint ptr %post_irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %post_irq, align 4
  %tobool37.not = icmp eq ptr %96, null
  br i1 %tobool37.not, label %while.end.if.end40_crit_edge, label %if.then38

while.end.if.end40_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then38:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %96(ptr noundef %add.ptr.i) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %while.end.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %n.1)
  %cmp41 = icmp sgt i32 %n.1, 19
  br i1 %cmp41, label %do.body44, label %if.end40.if.end54_crit_edge

if.end40.if.end54_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.body44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc770_interrupt.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cc770_interrupt, %if.end54)) #5
          to label %if.then50 [label %if.end54], !srcloc !106

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cc770_interrupt.__UNIQUE_ID_ddebug477, ptr noundef %dev_id, ptr noundef nonnull @.str.20, i32 noundef %n.1) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %do.body44, %if.end40.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1)
  %tobool55.not = icmp ne i32 %n.1, 0
  %cond = zext i1 %tobool55.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end54 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc770_err(ptr noundef %dev, i8 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #5
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc770_err.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cc770_err, %do.end7)) #5
          to label %if.then [label %do.end7], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cc770_err.__UNIQUE_ID_ddebug476, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %call8 = call ptr @alloc_can_err_skb(ptr noundef %dev, ptr noundef nonnull %cf) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %control_normal_mode = getelementptr i8, ptr %dev, i32 2657
  %1 = ptrtoint ptr %control_normal_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %control_normal_mode, align 1
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool13.not = icmp eq i8 %3, 0
  br i1 %tobool13.not, label %if.end11.if.end20_crit_edge, label %if.then14

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %read_reg = getelementptr i8, ptr %dev, i32 2620
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %call15 = call zeroext i8 %5(ptr noundef %add.ptr.i, i32 noundef 127) #5
  %6 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %7, i32 0, i32 5, i32 6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call15, ptr %arrayidx, align 2
  %9 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg, align 4
  %call17 = call zeroext i8 %10(ptr noundef %add.ptr.i, i32 noundef 111) #5
  %11 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cf, align 4
  %arrayidx19 = getelementptr %struct.can_frame, ptr %12, i32 0, i32 5, i32 7
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call17, ptr %arrayidx19, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end11.if.end20_crit_edge
  %conv21 = zext i8 %status to i32
  %and22 = and i32 %conv21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %write_reg = getelementptr i8, ptr %dev, i32 2624
  %14 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg, align 4
  call void %15(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext 1) #5
  %16 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %or = or i32 %19, 64
  store i32 %or, ptr %17, align 8
  %state = getelementptr i8, ptr %dev, i32 2472
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %state, align 4
  %bus_off = getelementptr i8, ptr %dev, i32 2320
  %21 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bus_off, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %bus_off, align 4
  call void @can_bus_off(ptr noundef %dev) #5
  br label %if.end61

if.else:                                          ; preds = %if.end20
  %and27 = and i32 %conv21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %23 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cf, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  br i1 %tobool28.not, label %if.else53, label %if.then29

if.then29:                                        ; preds = %if.else
  %or31 = or i32 %26, 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or31, ptr %24, align 8
  %28 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cf, align 4
  %arrayidx33 = getelementptr %struct.can_frame, ptr %29, i32 0, i32 5, i32 7
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp = icmp slt i8 %31, 0
  %arrayidx38 = getelementptr %struct.can_frame, ptr %29, i32 0, i32 5, i32 1
  br i1 %cmp, label %if.then36, label %if.else44

if.then36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 48, ptr %arrayidx38, align 1
  %state40 = getelementptr i8, ptr %dev, i32 2472
  %33 = ptrtoint ptr %state40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %state40, align 4
  %error_passive = getelementptr i8, ptr %dev, i32 2316
  %34 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error_passive, align 4
  %inc43 = add i32 %35, 1
  store i32 %inc43, ptr %error_passive, align 4
  br label %if.end61

if.else44:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 12, ptr %arrayidx38, align 1
  %state48 = getelementptr i8, ptr %dev, i32 2472
  %37 = ptrtoint ptr %state48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %state48, align 4
  %error_warning = getelementptr i8, ptr %dev, i32 2312
  %38 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error_warning, align 4
  %inc51 = add i32 %39, 1
  store i32 %inc51, ptr %error_warning, align 4
  br label %if.end61

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %or55 = or i32 %26, 8
  %40 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or55, ptr %24, align 8
  %41 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cf, align 4
  %arrayidx57 = getelementptr %struct.can_frame, ptr %42, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 64, ptr %arrayidx57, align 2
  %state59 = getelementptr i8, ptr %dev, i32 2472
  %44 = ptrtoint ptr %state59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %state59, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else53, %if.else44, %if.then36, %if.then24
  %trunc = trunc i8 %status to i3
  %45 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.28)
  switch i3 %trunc, label %if.else78 [
    i3 -1, label %if.end61.if.end109_crit_edge
    i3 0, label %if.end61.if.end109_crit_edge2
    i3 3, label %if.then75
  ]

if.end61.if.end109_crit_edge2:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.end61.if.end109_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then75:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cf, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %or77 = or i32 %49, 32
  store i32 %or77, ptr %47, align 8
  br label %if.end109

if.else78:                                        ; preds = %if.end61
  %and63 = and i8 %status, 7
  %conv65 = zext i8 %and63 to i32
  %50 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cf, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %or80 = or i32 %53, 8
  store i32 %or80, ptr %51, align 8
  %54 = zext i32 %conv65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %conv65, label %if.else78.if.end109_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb87
    i32 4, label %sw.bb93
    i32 5, label %sw.bb99
    i32 6, label %sw.bb105
  ]

if.else78.if.end109_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

sw.bb:                                            ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cf, align 4
  %arrayidx83 = getelementptr %struct.can_frame, ptr %56, i32 0, i32 5, i32 2
  %57 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx83, align 2
  %59 = or i8 %58, 4
  store i8 %59, ptr %arrayidx83, align 2
  br label %if.end109

sw.bb87:                                          ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cf, align 4
  %arrayidx89 = getelementptr %struct.can_frame, ptr %61, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx89, align 2
  %64 = or i8 %63, 2
  store i8 %64, ptr %arrayidx89, align 2
  br label %if.end109

sw.bb93:                                          ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cf, align 4
  %arrayidx95 = getelementptr %struct.can_frame, ptr %66, i32 0, i32 5, i32 2
  %67 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx95, align 2
  %69 = or i8 %68, 16
  store i8 %69, ptr %arrayidx95, align 2
  br label %if.end109

sw.bb99:                                          ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cf, align 4
  %arrayidx101 = getelementptr %struct.can_frame, ptr %71, i32 0, i32 5, i32 2
  %72 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx101, align 2
  %74 = or i8 %73, 8
  store i8 %74, ptr %arrayidx101, align 2
  br label %if.end109

sw.bb105:                                         ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cf, align 4
  %arrayidx107 = getelementptr %struct.can_frame, ptr %76, i32 0, i32 5, i32 3
  %77 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 8, ptr %arrayidx107, align 1
  br label %if.end109

if.end109:                                        ; preds = %sw.bb105, %sw.bb99, %sw.bb93, %sw.bb87, %sw.bb, %if.else78.if.end109_crit_edge, %if.then75, %if.end61.if.end109_crit_edge, %if.end61.if.end109_crit_edge2
  %call110 = call i32 @netif_rx(ptr noundef nonnull %call8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %do.end7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc770_rx(ptr noundef %dev, i32 noundef %mo, i8 noundef zeroext %ctrl1) unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %stats1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #5
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !109
  %call2 = call ptr @alloc_can_skb(ptr noundef %dev, ptr noundef nonnull %cf) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_reg = getelementptr i8, ptr %dev, i32 2620
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %3 = shl i32 %mo, 4
  %4 = or i32 %3, 6
  %call3 = call zeroext i8 %2(ptr noundef %add.ptr.i, i32 noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ctrl1)
  %tobool4.not = icmp sgt i8 %ctrl1, -1
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %5 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1073741824, ptr %6, align 8
  %8 = and i8 %call3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then9

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %or = or i32 %12, -2147483648
  store i32 %or, ptr %10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then5.if.end11_crit_edge
  %13 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf, align 4
  %15 = getelementptr inbounds %struct.can_frame, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %15, align 4
  br label %if.end62

if.else:                                          ; preds = %if.end
  %17 = and i8 %call3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg, align 4
  %20 = or i32 %3, 2
  br i1 %tobool14.not, label %if.else34, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %21 = or i32 %3, 5
  %call17 = call zeroext i8 %19(ptr noundef %add.ptr.i, i32 noundef %21) #5
  %conv18 = zext i8 %call17 to i32
  %22 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_reg, align 4
  %24 = or i32 %3, 4
  %call20 = call zeroext i8 %23(ptr noundef %add.ptr.i, i32 noundef %24) #5
  %conv21 = zext i8 %call20 to i32
  %shl = shl nuw nsw i32 %conv21, 8
  %or22 = or i32 %shl, %conv18
  %25 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_reg, align 4
  %27 = or i32 %3, 3
  %call24 = call zeroext i8 %26(ptr noundef %add.ptr.i, i32 noundef %27) #5
  %conv25 = zext i8 %call24 to i32
  %shl26 = shl nuw nsw i32 %conv25, 16
  %or27 = or i32 %shl26, %or22
  %28 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_reg, align 4
  %call29 = call zeroext i8 %29(ptr noundef %add.ptr.i, i32 noundef %20) #5
  %conv30 = zext i8 %call29 to i32
  %shl31 = shl nuw i32 %conv30, 24
  %or32 = or i32 %shl31, %or27
  %shr = lshr i32 %or32, 3
  %or33 = or i32 %shr, -2147483648
  br label %if.end44

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %30 = or i32 %3, 3
  %call36 = call zeroext i8 %19(ptr noundef %add.ptr.i, i32 noundef %30) #5
  %conv37 = zext i8 %call36 to i32
  %31 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_reg, align 4
  %call39 = call zeroext i8 %32(ptr noundef %add.ptr.i, i32 noundef %20) #5
  %conv40 = zext i8 %call39 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %or42 = or i32 %shl41, %conv37
  %shr43 = lshr i32 %or42, 5
  br label %if.end44

if.end44:                                         ; preds = %if.else34, %if.then15
  %id.0 = phi i32 [ %or33, %if.then15 ], [ %shr43, %if.else34 ]
  %33 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cf, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %id.0, ptr %34, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call3)
  %cmp = icmp sgt i8 %call3, -1
  %36 = lshr i8 %call3, 4
  %cond = select i1 %cmp, i8 %36, i8 8
  %37 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cf, align 4
  %39 = getelementptr inbounds %struct.can_frame, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %cond, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond)
  %cmp57112.not = icmp eq i8 %cond, 0
  br i1 %cmp57112.not, label %if.end44.for.end_crit_edge, label %for.body.lr.ph

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end44
  %41 = or i32 %3, 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %42 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_reg, align 4
  %44 = add i32 %41, %i.0113
  %call60 = call zeroext i8 %43(ptr noundef %add.ptr.i, i32 noundef %44) #5
  %45 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %46, i32 0, i32 5, i32 %i.0113
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %call60, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0113, 1
  %48 = load ptr, ptr %cf, align 4
  %49 = getelementptr inbounds %struct.can_frame, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv56 = zext i8 %51 to i32
  %cmp57 = icmp ult i32 %inc, %conv56
  br i1 %cmp57, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast = zext i8 %51 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end44.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %if.end44.for.end_crit_edge ]
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %52 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %53, %.lcssa
  store i32 %add, ptr %rx_bytes, align 4
  br label %if.end62

if.end62:                                         ; preds = %for.end, %if.end11
  %54 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stats1, align 4
  %inc63 = add i32 %55, 1
  store i32 %inc63, ptr %stats1, align 4
  %call64 = call i32 @netif_rx(ptr noundef nonnull %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc770_tx(ptr noundef %dev, i32 noundef %mo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_skb = getelementptr i8, ptr %dev, i32 2664
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %and = lshr i32 %8, 27
  %9 = trunc i32 %and to i8
  %10 = and i8 %9, 8
  %write_reg = getelementptr i8, ptr %dev, i32 2624
  %11 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg, align 4
  %13 = shl i32 %mo, 4
  tail call void %12(ptr noundef %add.ptr.i, i32 noundef %13, i8 noundef zeroext 85) #5
  %14 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg, align 4
  %16 = or i32 %13, 1
  tail call void %15(ptr noundef %add.ptr.i, i32 noundef %16, i8 noundef zeroext 89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool4.not = icmp sgt i32 %8, -1
  %17 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg, align 4
  %19 = or i32 %13, 6
  %shl25 = shl i8 %6, 4
  %20 = or i8 %10, %shl25
  %or27 = xor i8 %20, 8
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or9 = or i8 %or27, 4
  tail call void %18(ptr noundef %add.ptr.i, i32 noundef %19, i8 noundef zeroext %or9) #5
  %21 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg, align 4
  %23 = or i32 %13, 2
  %24 = or i32 %13, 5
  %.tr96 = trunc i32 %8 to i8
  %conv13 = shl i8 %.tr96, 3
  tail call void %22(ptr noundef %add.ptr.i, i32 noundef %24, i8 noundef zeroext %conv13) #5
  %25 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg, align 4
  %27 = or i32 %13, 4
  %shr = lshr i32 %8, 5
  %conv15 = trunc i32 %shr to i8
  tail call void %26(ptr noundef %add.ptr.i, i32 noundef %27, i8 noundef zeroext %conv15) #5
  %28 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg, align 4
  %30 = or i32 %13, 3
  %shr17 = lshr i32 %8, 13
  %conv18 = trunc i32 %shr17 to i8
  tail call void %29(ptr noundef %add.ptr.i, i32 noundef %30, i8 noundef zeroext %conv18) #5
  %31 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg, align 4
  %and5 = lshr i32 %8, 21
  %conv21 = trunc i32 %and5 to i8
  tail call void %32(ptr noundef %add.ptr.i, i32 noundef %23, i8 noundef zeroext %conv21) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %18(ptr noundef %add.ptr.i, i32 noundef %19, i8 noundef zeroext %or27) #5
  %33 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg, align 4
  %35 = or i32 %13, 2
  %shr30 = lshr i32 %8, 3
  %conv31 = trunc i32 %shr30 to i8
  tail call void %34(ptr noundef %add.ptr.i, i32 noundef %35, i8 noundef zeroext %conv31) #5
  %36 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg, align 4
  %38 = or i32 %13, 3
  %.tr = trunc i32 %8 to i8
  %conv34 = shl i8 %.tr, 5
  tail call void %37(ptr noundef %add.ptr.i, i32 noundef %38, i8 noundef zeroext %conv34) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv35 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp97.not = icmp eq i8 %6, 0
  br i1 %cmp97.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %39 = or i32 %13, 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %40 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg, align 4
  %42 = add i32 %39, %i.098
  %arrayidx = getelementptr %struct.can_frame, ptr %3, i32 0, i32 5, i32 %i.098
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1
  tail call void %41(ptr noundef %add.ptr.i, i32 noundef %42, i8 noundef zeroext %44) #5
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %conv35
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %45 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_reg, align 4
  tail call void %46(ptr noundef %add.ptr.i, i32 noundef %16, i8 noundef zeroext -25) #5
  %47 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg, align 4
  tail call void %48(ptr noundef %add.ptr.i, i32 noundef %13, i8 noundef zeroext -85) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !51, !53, !55, !56, !57, !59, !60, !61, !62, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !92, !94, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__UNIQUE_ID_author463, !1, !"__UNIQUE_ID_author463", i1 false, i1 false}
!1 = !{!"../drivers/net/can/cc770/cc770.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_file464, !3, !"__UNIQUE_ID_file464", i1 false, i1 false}
!3 = !{!"../drivers/net/can/cc770/cc770.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_license465, !3, !"__UNIQUE_ID_license465", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description466, !6, !"__UNIQUE_ID_description466", i1 false, i1 false}
!6 = !{!"../drivers/net/can/cc770/cc770.c", i32 35, i32 1}
!7 = !{ptr @__param_msgobj15_eff, !8, !"__param_msgobj15_eff", i1 false, i1 false}
!8 = !{!"../drivers/net/can/cc770/cc770.c", i32 62, i32 1}
!9 = !{ptr @__UNIQUE_ID_msgobj15_efftype467, !8, !"__UNIQUE_ID_msgobj15_efftype467", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_msgobj15_eff468, !11, !"__UNIQUE_ID_msgobj15_eff468", i1 false, i1 false}
!11 = !{!"../drivers/net/can/cc770/cc770.c", i32 63, i32 1}
!12 = !{ptr @__param_i82527_compat, !13, !"__param_i82527_compat", i1 false, i1 false}
!13 = !{!"../drivers/net/can/cc770/cc770.c", i32 67, i32 1}
!14 = !{ptr @__UNIQUE_ID_i82527_compattype469, !13, !"__UNIQUE_ID_i82527_compattype469", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_i82527_compat470, !16, !"__UNIQUE_ID_i82527_compat470", i1 false, i1 false}
!16 = !{!"../drivers/net/can/cc770/cc770.c", i32 68, i32 1}
!17 = !{ptr @__ksymtab_alloc_cc770dev, !18, !"__ksymtab_alloc_cc770dev", i1 false, i1 false}
!18 = !{!"../drivers/net/can/cc770/cc770.c", i32 823, i32 1}
!19 = !{ptr @__ksymtab_free_cc770dev, !20, !"__ksymtab_free_cc770dev", i1 false, i1 false}
!20 = !{!"../drivers/net/can/cc770/cc770.c", i32 829, i32 1}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/cc770/cc770.c", i32 855, i32 3}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @register_cc770dev.__UNIQUE_ID_ddebug478, !22, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/cc770/cc770.c", i32 858, i32 3}
!29 = !{ptr @register_cc770dev.__UNIQUE_ID_ddebug479, !28, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!30 = !{ptr @__ksymtab_register_cc770dev, !31, !"__ksymtab_register_cc770dev", i1 false, i1 false}
!31 = !{!"../drivers/net/can/cc770/cc770.c", i32 866, i32 1}
!32 = !{ptr @__ksymtab_unregister_cc770dev, !33, !"__ksymtab_unregister_cc770dev", i1 false, i1 false}
!33 = !{!"../drivers/net/can/cc770/cc770.c", i32 873, i32 1}
!34 = !{ptr @__initcall__kmod_cc770__480_886_cc770_init6, !35, !"__initcall__kmod_cc770__480_886_cc770_init6", i1 false, i1 false}
!35 = !{!"../drivers/net/can/cc770/cc770.c", i32 886, i32 1}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/cc770/cc770.c", i32 890, i32 2}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cc770_exit._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cc770_exit._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__exitcall_cc770_exit, !42, !"__exitcall_cc770_exit", i1 false, i1 false}
!42 = !{!"../drivers/net/can/cc770/cc770.c", i32 892, i32 1}
!43 = !{ptr @msgobj15_eff, !44, !"msgobj15_eff", i1 false, i1 false}
!44 = !{!"../drivers/net/can/cc770/cc770.c", i32 61, i32 12}
!45 = !{ptr @i82527_compat, !46, !"i82527_compat", i1 false, i1 false}
!46 = !{!"../drivers/net/can/cc770/cc770.c", i32 66, i32 12}
!47 = !{ptr @__param_str_msgobj15_eff, !8, !"__param_str_msgobj15_eff", i1 false, i1 false}
!48 = !{ptr @__param_str_i82527_compat, !13, !"__param_str_i82527_compat", i1 false, i1 false}
!49 = !{ptr @cc770_bittiming_const, !50, !"cc770_bittiming_const", i1 false, i1 false}
!50 = !{!"../drivers/net/can/cc770/cc770.c", i32 85, i32 41}
!51 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/cc770/cc770.c", i32 366, i32 19}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/cc770/cc770.c", i32 124, i32 5}
!55 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @enable_all_objs.__UNIQUE_ID_ddebug471, !54, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/cc770/cc770.c", i32 127, i32 5}
!59 = !{ptr @enable_all_objs.__UNIQUE_ID_ddebug472, !58, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!60 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/cc770/cc770.c", i32 156, i32 4}
!66 = !{ptr @enable_all_objs.__UNIQUE_ID_ddebug473, !65, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!67 = !{ptr @cc770_obj_flags, !68, !"cc770_obj_flags", i1 false, i1 false}
!68 = !{!"../drivers/net/can/cc770/cc770.c", i32 76, i32 22}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/cc770/cc770.c", i32 303, i32 20}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/cc770/cc770.c", i32 315, i32 20}
!73 = !{ptr @cc770_netdev_ops, !74, !"cc770_netdev_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/can/cc770/cc770.c", i32 831, i32 36}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/cc770/cc770.c", i32 735, i32 21}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/cc770/cc770.c", i32 753, i32 3}
!79 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cc770_interrupt.__UNIQUE_ID_ddebug477, !78, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/cc770/cc770.c", i32 507, i32 2}
!83 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cc770_err.__UNIQUE_ID_ddebug476, !82, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/can/cc770/cc770.c", i32 677, i32 19}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/can/cc770/cc770.c", i32 438, i32 19}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!91 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/can/cc770/cc770.c", i32 882, i32 2}
!94 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @cc770_init._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @cc770_init._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148974485, i64 2148974490, i64 2148974503, i64 2148974547, i64 2148974581, i64 2148974602}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{!"branch_weights", i32 1, i32 2000}
!109 = !{!"auto-init"}
