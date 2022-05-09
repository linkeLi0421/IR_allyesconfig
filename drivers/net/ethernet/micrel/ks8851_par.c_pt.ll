; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/micrel/ks8851_par.c_pt.bc'
source_filename = "../drivers/net/ethernet/micrel/ks8851_par.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ks8851_net_par = type { %struct.ks8851_net, %struct.spinlock, ptr, ptr, i16, [74 x i8] }
%struct.ks8851_net = type { ptr, %struct.spinlock, [80 x i8], %union.ks8851_tx_hdr, [8 x i8], [8 x i8], [106 x i8], i32, i16, i8, i16, i16, i16, %struct.mii_if_info, %struct.ks8851_rxctrl, %struct.work_struct, %struct.sk_buff_head, %struct.eeprom_93cx6, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [20 x i8] }
%union.ks8851_tx_hdr = type { [3 x i16] }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ks8851_rxctrl = type { [4 x i16], i16, i16 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
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

@__initcall__kmod_ks8851_par__352_352_ks8851_driver_init6 = internal global ptr @ks8851_driver_init, section ".initcall6.init", align 4
@ks8851_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ks8851_probe_par, ptr @ks8851_remove_par, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ks8851_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ks8851_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ks8851_driver_exit = internal global ptr @ks8851_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description353 = internal constant [45 x i8] c"ks8851_par.description=KS8851 Network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author354 = internal constant [47 x i8] c"ks8851_par.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [55 x i8] c"ks8851_par.file=drivers/net/ethernet/micrel/ks8851_par\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [23 x i8] c"ks8851_par.license=GPL\00", section ".modinfo", align 1
@__param_str_message = internal constant [19 x i8] c"ks8851_par.message\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_message = internal constant %struct.kernel_param { ptr @__param_str_message, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @msg_enable } }, section "__param", align 4
@__UNIQUE_ID_messagetype357 = internal constant [32 x i8] c"ks8851_par.parmtype=message:int\00", section ".modinfo", align 1
@__UNIQUE_ID_message358 = internal constant [65 x i8] c"ks8851_par.parm=message:Message verbosity level (0=none, 31=all)\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ks8851\00", [25 x i8] zeroinitializer }, align 32
@ks8851_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"micrel,ks8851-mll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ks8851_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ks8851_suspend, ptr @ks8851_resume, ptr @ks8851_suspend, ptr @ks8851_resume, ptr @ks8851_suspend, ptr @ks8851_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ks8851_probe_par.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ksp->lock\00", [21 x i8] zeroinitializer }, align 32
@ks8851_rdfifo_par.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ks8851_par\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ks8851_rdfifo_par\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/micrel/ks8851_par.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %d@%p\0A\00", [21 x i8] zeroinitializer }, align 32
@ks8851_wrfifo_par.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str.4, ptr @.str.7, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ks8851_wrfifo_par\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: skb %p, %d@%p, irq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ks8851_start_xmit_par.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ks8851_start_xmit_par\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: skb %p, %d@%p\0A\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"incorrect EESK endian strap setting\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"ks8851_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 343, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"msg_enable\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 25, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 345, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"ks8851_match_table\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 337, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"ks8851_pm_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [40 x i8] c"../drivers/net/ethernet/micrel/ks8851.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 434, i32 23 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 309, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 174, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 198, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 251, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [44 x i8] c"../drivers/net/ethernet/micrel/ks8851_par.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 122, i32 25 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__UNIQUE_ID_message358, ptr @__UNIQUE_ID_messagetype357, ptr @__exitcall_ks8851_driver_exit, ptr @__initcall__kmod_ks8851_par__352_352_ks8851_driver_init6, ptr @__param_message, ptr @ks8851_driver_exit, ptr @ks8851_driver, ptr @msg_enable, ptr @.str, ptr @ks8851_match_table, ptr @ks8851_pm_ops, ptr @ks8851_probe_par.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_par.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ks8851_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ks8851_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_probe_par(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev1, i32 noundef 640, i32 noundef 1, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %lock = getelementptr i8, ptr %call, i32 2760
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ks8851_lock_par, ptr %lock, align 8
  %unlock = getelementptr i8, ptr %call, i32 2764
  %1 = ptrtoint ptr %unlock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ks8851_unlock_par, ptr %unlock, align 4
  %rdreg16 = getelementptr i8, ptr %call, i32 2768
  %2 = ptrtoint ptr %rdreg16 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ks8851_rdreg16_par, ptr %rdreg16, align 16
  %wrreg16 = getelementptr i8, ptr %call, i32 2772
  %3 = ptrtoint ptr %wrreg16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ks8851_wrreg16_par, ptr %wrreg16, align 4
  %rdfifo = getelementptr i8, ptr %call, i32 2776
  %4 = ptrtoint ptr %rdfifo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ks8851_rdfifo_par, ptr %rdfifo, align 8
  %wrfifo = getelementptr i8, ptr %call, i32 2780
  %5 = ptrtoint ptr %wrfifo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ks8851_wrfifo_par, ptr %wrfifo, align 4
  %start_xmit = getelementptr i8, ptr %call, i32 2784
  %6 = ptrtoint ptr %start_xmit to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ks8851_start_xmit_par, ptr %start_xmit, align 32
  %rx_skb = getelementptr i8, ptr %call, i32 2788
  %7 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ks8851_rx_skb_par, ptr %rx_skb, align 4
  %rc_ier = getelementptr i8, ptr %call, i32 2568
  %8 = ptrtoint ptr %rc_ier to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -24320, ptr %rc_ier, align 8
  %lock3 = getelementptr i8, ptr %call, i32 2816
  tail call void @__raw_spin_lock_init(ptr noundef %lock3, ptr noundef nonnull @.str.1, ptr noundef nonnull @ks8851_probe_par.__key, i16 noundef signext 3) #5
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %hw_addr = getelementptr i8, ptr %call, i32 2860
  %9 = ptrtoint ptr %hw_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %hw_addr, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #5
  %hw_addr_cmd = getelementptr i8, ptr %call, i32 2864
  %11 = ptrtoint ptr %hw_addr_cmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call12, ptr %hw_addr_cmd, align 16
  %cmp.i59 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %call12, i16 -16192) #5, !srcloc !55
  %13 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr, align 4
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i, label %if.end22, label %ks_check_endian.exit

ks_check_endian.exit:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call23, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %19 = load i32, ptr @msg_enable, align 4
  %call28 = tail call i32 @ks8851_probe_common(ptr noundef nonnull %call, ptr noundef %dev1, i32 noundef %19) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22.cleanup_crit_edge, %ks_check_endian.exit, %if.then15, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then8 ], [ %12, %if.then15 ], [ %call28, %if.end27 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %ks_check_endian.exit ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_remove_par(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @ks8851_remove_common(ptr noundef %dev) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_lock_par(ptr noundef %ks, ptr nocapture noundef writeonly %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call3, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_unlock_par(ptr noundef %ks, ptr nocapture noundef readonly %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_rdreg16_par(ptr nocapture noundef %ks, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, 2
  %shl = shl nuw nsw i32 12288, %and
  %or = or i32 %shl, %reg
  %conv2 = trunc i32 %or to i16
  %cmd_reg_cache = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 4
  %0 = ptrtoint ptr %cmd_reg_cache to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv2, ptr %cmd_reg_cache, align 4
  %hw_addr_cmd = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 3
  %1 = ptrtoint ptr %hw_addr_cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr_cmd, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv2) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %2, i16 %3) #5, !srcloc !55
  %hw_addr = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 2
  %4 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #5, !srcloc !56
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %conv4 = zext i16 %7 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_wrreg16_par(ptr nocapture noundef %ks, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, 2
  %shl = shl nuw nsw i32 12288, %and
  %or = or i32 %shl, %reg
  %conv2 = trunc i32 %or to i16
  %cmd_reg_cache = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 4
  %0 = ptrtoint ptr %cmd_reg_cache to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv2, ptr %cmd_reg_cache, align 4
  %hw_addr_cmd = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 3
  %1 = ptrtoint ptr %hw_addr_cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr_cmd, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv2) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %2, i16 %3) #5, !srcloc !55
  %conv4 = trunc i32 %val to i16
  %hw_addr = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 2
  %4 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv4) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %6) #5, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_rdfifo_par(ptr nocapture noundef readonly %ks, ptr noundef %buff, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 7
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_rdfifo_par.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_rdfifo_par, %if.then6)) #5
          to label %do.end9 [label %if.then6], !srcloc !58

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ks, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_rdfifo_par.__UNIQUE_ID_ddebug349, ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %len, ptr noundef %buff) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %hw_addr = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 2
  %4 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr, align 4
  %add.ptr10 = getelementptr i16, ptr %buff, i32 1
  %div15 = lshr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef %5, ptr noundef %add.ptr10, i32 noundef %div15) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_wrfifo_par(ptr nocapture noundef %ks, ptr noundef %txp, i1 noundef zeroext %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %msg_enable = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 7
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 128
  %and2 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_wrfifo_par.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_wrfifo_par, %if.then9)) #5
          to label %do.end14 [label %if.then9], !srcloc !58

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ks, align 128
  %6 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %conv = zext i1 %irq to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_wrfifo_par.__UNIQUE_ID_ddebug350, ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %txp, i32 noundef %7, ptr noundef %9, i32 noundef %conv) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body3, %entry.do.end14_crit_edge
  %fid15 = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 9
  %10 = ptrtoint ptr %fid15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fid15, align 2
  %inc = add i8 %11, 1
  store i8 %inc, ptr %fid15, align 2
  %12 = and i8 %11, 63
  %and17 = zext i8 %12 to i32
  %or = or i32 %and17, 32768
  %spec.select = select i1 %irq, i32 %or, i32 %and17
  %add = add i32 %1, 3
  %conv21 = trunc i32 %spec.select to i16
  %hw_addr = getelementptr inbounds %struct.ks8851_net_par, ptr %ks, i32 0, i32 2
  %13 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv21) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %15) #5, !srcloc !55
  %16 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1, align 4
  %conv23 = trunc i32 %17 to i16
  %18 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv23) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %20) #5, !srcloc !55
  %21 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr, align 4
  %data26 = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 19
  %23 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data26, align 4
  %and = lshr i32 %add, 1
  %div40 = and i32 %and, 2147483646
  tail call void @__raw_writesw(ptr noundef %22, ptr noundef %24, i32 noundef %div40) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_start_xmit_par(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %msg_enable = getelementptr i8, ptr %dev, i32 2560
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_start_xmit_par.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_start_xmit_par, %if.then6)) #5
          to label %do.end9 [label %if.then6], !srcloc !58

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_start_xmit_par.__UNIQUE_ID_ddebug351, ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef %skb, i32 noundef %5, ptr noundef %7) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %lock.i = getelementptr i8, ptr %dev, i32 2816
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %cmd_reg_cache.i = getelementptr i8, ptr %dev, i32 2868
  %8 = ptrtoint ptr %cmd_reg_cache.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 12408, ptr %cmd_reg_cache.i, align 4
  %hw_addr_cmd.i = getelementptr i8, ptr %dev, i32 2864
  %9 = ptrtoint ptr %hw_addr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr_cmd.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 30768) #5, !srcloc !55
  %hw_addr.i = getelementptr i8, ptr %dev, i32 2860
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i, align 4
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %14 = and i16 %13, -225
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  %len13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len13, align 4
  %add = add i32 %17, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp.not = icmp ugt i32 %add, %conv
  br i1 %cmp.not, label %do.end9.if.end56_crit_edge, label %if.then21, !prof !59

do.end9.if.end56_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then21:                                        ; preds = %do.end9
  %rc_rxqcr = getelementptr i8, ptr %dev, i32 2570
  %18 = ptrtoint ptr %rc_rxqcr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rc_rxqcr, align 2
  %20 = or i16 %19, 8
  %21 = ptrtoint ptr %cmd_reg_cache.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -16254, ptr %cmd_reg_cache.i, align 4
  %22 = ptrtoint ptr %hw_addr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr_cmd.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 -32064) #5, !srcloc !55
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %26 = tail call i16 @llvm.bswap.i16(i16 %20) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %26) #5, !srcloc !55
  tail call void @ks8851_wrfifo_par(ptr noundef %add.ptr.i, ptr noundef %skb, i1 noundef zeroext false)
  %27 = ptrtoint ptr %rc_rxqcr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rc_rxqcr, align 2
  %29 = ptrtoint ptr %cmd_reg_cache.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -16254, ptr %cmd_reg_cache.i, align 4
  %30 = ptrtoint ptr %hw_addr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr_cmd.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 -32064) #5, !srcloc !55
  %32 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %34 = tail call i16 @llvm.bswap.i16(i16 %28) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %34) #5, !srcloc !55
  %35 = ptrtoint ptr %cmd_reg_cache.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 12416, ptr %cmd_reg_cache.i, align 4
  %36 = ptrtoint ptr %hw_addr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr_cmd.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 -32720) #5, !srcloc !55
  %38 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 256) #5, !srcloc !55
  %call25 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call25, 1000000000
  br label %for.cond

for.cond:                                         ; preds = %cond.false, %if.then21
  %40 = ptrtoint ptr %cmd_reg_cache.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 12416, ptr %cmd_reg_cache.i, align 4
  %41 = ptrtoint ptr %hw_addr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr_cmd.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 -32720) #5, !srcloc !55
  %43 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr.i, align 4
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %44) #5, !srcloc !56
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %conv4.i.i = zext i16 %46 to i32
  %and28 = and i32 %conv4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %for.cond.for.end_crit_edge, label %land.lhs.true

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call33 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %if.then37, label %cond.false

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %cmd_reg_cache.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 12416, ptr %cmd_reg_cache.i, align 4
  %48 = ptrtoint ptr %hw_addr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr_cmd.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %49, i16 -32720) #5, !srcloc !55
  %50 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_addr.i, align 4
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %51) #5, !srcloc !56
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %conv4.i.i94 = zext i16 %53 to i32
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 1073740) #5
  br label %for.cond

for.end:                                          ; preds = %if.then37, %for.cond.for.end_crit_edge
  %txqcr.0 = phi i32 [ %conv4.i.i94, %if.then37 ], [ %conv4.i.i, %for.cond.for.end_crit_edge ]
  %and49 = shl nuw nsw i32 %txqcr.0, 4
  %55 = and i32 %and49, 16
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 128
  %58 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len13, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 36, i32 3
  %60 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_bytes.i, align 4
  %add.i95 = add i32 %61, %59
  store i32 %add.i95, ptr %tx_bytes.i, align 4
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 36, i32 1
  %62 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %63, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  tail call void @consume_skb(ptr noundef %skb) #5
  br label %if.end56

if.end56:                                         ; preds = %for.end, %do.end9.if.end56_crit_edge
  %ret.1 = phi i32 [ %55, %for.end ], [ 16, %do.end9.if.end56_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_rx_skb_par(ptr nocapture noundef readnone %ks, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netif_rx(ptr noundef %skb) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks8851_probe_common(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ks8851_remove_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks8851_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks8851_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_ks8851_par__352_352_ks8851_driver_init6, !1, !"__initcall__kmod_ks8851_par__352_352_ks8851_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 352, i32 1}
!2 = !{ptr @__exitcall_ks8851_driver_exit, !1, !"__exitcall_ks8851_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description353, !4, !"__UNIQUE_ID_description353", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 354, i32 1}
!5 = !{ptr @__UNIQUE_ID_author354, !6, !"__UNIQUE_ID_author354", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 355, i32 1}
!7 = !{ptr @__UNIQUE_ID_file355, !8, !"__UNIQUE_ID_file355", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 356, i32 1}
!9 = !{ptr @__UNIQUE_ID_license356, !8, !"__UNIQUE_ID_license356", i1 false, i1 false}
!10 = !{ptr @__param_message, !11, !"__param_message", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 358, i32 1}
!12 = !{ptr @__UNIQUE_ID_messagetype357, !11, !"__UNIQUE_ID_messagetype357", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_message358, !14, !"__UNIQUE_ID_message358", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 359, i32 1}
!15 = !{ptr @msg_enable, !16, !"msg_enable", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 25, i32 12}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 345, i32 11}
!19 = !{ptr @ks8851_driver, !20, !"ks8851_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 343, i32 31}
!21 = !{ptr @ks8851_probe_par.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 309, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 174, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ks8851_rdfifo_par.__UNIQUE_ID_ddebug349, !25, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 198, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ks8851_wrfifo_par.__UNIQUE_ID_ddebug350, !31, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 251, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ks8851_start_xmit_par.__UNIQUE_ID_ddebug351, !35, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 122, i32 25}
!40 = !{ptr @ks8851_match_table, !41, !"ks8851_match_table", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/micrel/ks8851_par.c", i32 337, i32 34}
!42 = !{ptr @ks8851_pm_ops, !43, !"ks8851_pm_ops", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/micrel/ks8851.h", i32 434, i32 23}
!44 = !{ptr @__param_str_message, !11, !"__param_str_message", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2151747707}
!55 = !{i64 4205515}
!56 = !{i64 4205715}
!57 = !{i64 2151746290}
!58 = !{i64 2148725327, i64 2148725332, i64 2148725345, i64 2148725389, i64 2148725423, i64 2148725444}
!59 = !{!"branch_weights", i32 1, i32 2000}
