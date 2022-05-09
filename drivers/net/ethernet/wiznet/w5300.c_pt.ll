; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/wiznet/w5300.c_pt.bc'
source_filename = "../drivers/net/ethernet/wiznet/w5300.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wiznet_platform_data = type { i32, [6 x i8] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.w5300_priv = type { ptr, %struct.spinlock, i8, ptr, ptr, i32, i32, i32, %struct.napi_struct, ptr, i8, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_description339 = internal constant [59 x i8] c"w5300.description=WIZnet W5300 Ethernet driver v2012-04-04\00", section ".modinfo", align 1
@__UNIQUE_ID_author340 = internal constant [50 x i8] c"w5300.author=Mike Sinkovsky <msink@permonline.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias341 = internal constant [27 x i8] c"w5300.alias=platform:w5300\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [45 x i8] c"w5300.file=drivers/net/ethernet/wiznet/w5300\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [18 x i8] c"w5300.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_w5300__346_689_w5300_driver_init6 = internal global ptr @w5300_driver_init, section ".initcall6.init", align 4
@w5300_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @w5300_probe, ptr @w5300_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w5300_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_w5300_driver_exit = internal global ptr @w5300_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"w5300\00", [26 x i8] zeroinitializer }, align 32
@w5300_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @w5300_suspend, ptr @w5300_resume, ptr @w5300_suspend, ptr @w5300_resume, ptr @w5300_suspend, ptr @w5300_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@w5300_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @w5300_open, ptr @w5300_stop, ptr @w5300_start_tx, ptr null, ptr null, ptr null, ptr @w5300_set_rx_mode, ptr @w5300_set_macaddr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w5300_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@w5300_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @w5300_get_drvinfo, ptr @w5300_get_regs_len, ptr @w5300_get_regs, ptr null, ptr null, ptr @w5300_get_msglevel, ptr @w5300_set_msglevel, ptr null, ptr @w5300_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enabling\0A\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shutting down\0A\00", [17 x i8] zeroinitializer }, align 32
@w5300_start_tx.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"w5300_start_tx\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/wiznet/w5300.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx queued\0A\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2012-04-04\00", [21 x i8] zeroinitializer }, align 32
@w5300_hw_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-link\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at 0x%llx irq %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@w5300_interrupt.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"w5300_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx done\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"link is up\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link is down\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 558, i64 560]
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"w5300_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 680, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 682, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"w5300_pm_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 678, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"w5300_netdev_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 515, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"w5300_ethtool_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 506, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 484, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 498, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 366, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 286, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 549, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 577, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 585, i32 20 }
@___asan_gen_.61 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 4963, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 425, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 446, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [39 x i8] c"../drivers/net/ethernet/wiznet/w5300.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 449, i32 4 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias341, ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__exitcall_w5300_driver_exit, ptr @__initcall__kmod_w5300__346_689_w5300_driver_init6, ptr @w5300_driver_exit, ptr @w5300_driver, ptr @.str, ptr @w5300_pm_ops, ptr @w5300_netdev_ops, ptr @w5300_ethtool_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @w5300_hw_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5300_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5300_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5300_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5300_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5300_hw_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @w5300_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w5300_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @w5300_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 312, i32 noundef 1, i32 noundef 1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  %ndev3 = getelementptr i8, ptr %call, i32 2600
  %2 = ptrtoint ptr %ndev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ndev3, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @w5300_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %4 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @w5300_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %5 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call, i32 2376
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @w5300_napi_poll, i32 noundef 16) #14
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features, align 16
  %or = or i64 %7, 1024
  store i64 %or, ptr %features, align 16
  %call4 = tail call i32 @register_netdev(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.err_register_crit_edge, label %if.end6

if.end.err_register_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_register

if.end6:                                          ; preds = %if.end
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i.i, align 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 2304
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end6.netdev_name.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end6.netdev_name.exit.i_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_name.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #14
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %spec.select.i.i = select i1 %tobool2.not.i.i, ptr %11, ptr @.str.10
  br label %netdev_name.exit.i

netdev_name.exit.i:                               ; preds = %lor.lhs.false.i.i, %if.end6.netdev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.10, %if.end6.netdev_name.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %netdev_name.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

netdev_name.exit.i.if.else.i_crit_edge:           ; preds = %netdev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %netdev_name.exit.i
  %mac_addr.i = getelementptr inbounds %struct.wiznet_platform_data, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_addr.i, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

is_valid_ether_addr.exit.i:                       ; preds = %land.lhs.true.i
  %add.ptr.i.i.i = getelementptr %struct.wiznet_platform_data, ptr %9, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %18 to i32
  %or.i.i.i = or i32 %15, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.else.i_crit_edge, label %if.then.i

is_valid_ether_addr.exit.i.if.else.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then.i:                                        ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_addr_mod(ptr noundef %11, i32 noundef 0, ptr noundef %mac_addr.i, i32 noundef 6) #14
  br label %if.end.i

if.else.i:                                        ; preds = %is_valid_ether_addr.exit.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %netdev_name.exit.i.if.else.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #14
  %19 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #14
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr.i.i, align 1
  %22 = and i8 %21, -4
  %23 = or i8 %22, 2
  store i8 %23, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #14
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 55
  %24 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call7.i = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #14
  %call9.i = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call7.i) #14
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i, ptr %add.ptr.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %w5300_hw_probe.exit, label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call7.i, i32 0, i32 1
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i.i, align 4
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call7.i, align 4
  %sub.i.i = add i32 %27, 1
  %add.i.i = sub i32 %sub.i.i, %29
  %reg_lock.i = getelementptr i8, ptr %11, i32 2308
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @w5300_hw_probe.__key, i16 noundef signext 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i)
  %cmp.i = icmp slt i32 %add.i.i, 1024
  %indirect.i = getelementptr i8, ptr %11, i32 2352
  %frombool.i = zext i1 %cmp.i to i8
  %30 = ptrtoint ptr %indirect.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool.i, ptr %indirect.i, align 8
  %spec.select.i = select i1 %cmp.i, ptr @w5300_read_indirect, ptr @w5300_read_direct
  %spec.select124.i = select i1 %cmp.i, ptr @w5300_write_indirect, ptr @w5300_write_direct
  %31 = getelementptr i8, ptr %11, i32 2356
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spec.select.i, ptr %31, align 4
  %33 = getelementptr i8, ptr %11, i32 2360
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %spec.select124.i, ptr %33, align 8
  call fastcc void @w5300_hw_reset(ptr noundef %add.ptr.i.i) #14
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %31, align 4
  %call26.i = call zeroext i16 %36(ptr noundef %add.ptr.i.i, i16 noundef zeroext 254) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 21248, i16 %call26.i)
  %cmp27.not.i = icmp eq i16 %call26.i, 21248
  br i1 %cmp27.not.i, label %if.end30.i, label %if.end15.i.err_hw_probe_crit_edge

if.end15.i.err_hw_probe_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hw_probe

if.end30.i:                                       ; preds = %if.end15.i
  %call31.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end30.i.err_hw_probe_crit_edge, label %if.end35.i

if.end30.i.err_hw_probe_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hw_probe

if.end35.i:                                       ; preds = %if.end30.i
  %call.i119.i = call i32 @request_threaded_irq(i32 noundef %call31.i, ptr noundef nonnull @w5300_interrupt, ptr noundef null, i32 noundef 8, ptr noundef %retval.0.i.i, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i)
  %cmp37.i = icmp slt i32 %call.i119.i, 0
  br i1 %cmp37.i, label %if.end35.i.err_hw_probe_crit_edge, label %if.end40.i

if.end35.i.err_hw_probe_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hw_probe

if.end40.i:                                       ; preds = %if.end35.i
  %irq41.i = getelementptr i8, ptr %11, i32 2364
  %37 = ptrtoint ptr %irq41.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call31.i, ptr %irq41.i, align 4
  br i1 %tobool.not.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  %link_gpio43123.i = getelementptr i8, ptr %11, i32 2372
  br label %if.end63.sink.split.i

cond.end.i:                                       ; preds = %if.end40.i
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %9, align 4
  %link_gpio43.i = getelementptr i8, ptr %11, i32 2372
  %40 = ptrtoint ptr %link_gpio43.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %link_gpio43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %39)
  %41 = icmp ult i32 %39, 2048
  br i1 %41, label %if.then46.i, label %cond.end.i.w5300_hw_probe.exit.thread33_crit_edge

cond.end.i.w5300_hw_probe.exit.thread33_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_probe.exit.thread33

if.then46.i:                                      ; preds = %cond.end.i
  %call.i120.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #14
  %tobool49.not.i = icmp eq ptr %call.i120.i, null
  br i1 %tobool49.not.i, label %if.then46.i.err_hw_probe_crit_edge, label %if.end51.i

if.then46.i.err_hw_probe_crit_edge:               ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hw_probe

if.end51.i:                                       ; preds = %if.then46.i
  %call52.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i120.i, i32 noundef 16, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i) #14
  %42 = ptrtoint ptr %link_gpio43.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %link_gpio43.i, align 4
  %call.i121.i = call ptr @gpio_to_desc(i32 noundef %43) #14
  %call1.i.i = call i32 @gpiod_to_irq(ptr noundef %call.i121.i) #14
  %link_irq.i = getelementptr i8, ptr %11, i32 2368
  %44 = ptrtoint ptr %link_irq.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call1.i.i, ptr %link_irq.i, align 8
  %ndev56.i = getelementptr i8, ptr %11, i32 2600
  %45 = ptrtoint ptr %ndev56.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev56.i, align 8
  %call57.i = call i32 @request_any_context_irq(i32 noundef %call1.i.i, ptr noundef nonnull @w5300_detect_link, i32 noundef 3, ptr noundef nonnull %call.i120.i, ptr noundef %46) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %if.end51.i.if.end63.sink.split.i_crit_edge, label %if.end51.i.w5300_hw_probe.exit.thread33_crit_edge

if.end51.i.w5300_hw_probe.exit.thread33_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_probe.exit.thread33

if.end51.i.if.end63.sink.split.i_crit_edge:       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.sink.split.i

if.end63.sink.split.i:                            ; preds = %if.end51.i.if.end63.sink.split.i_crit_edge, %cond.end.thread.i
  %link_gpio43123.sink.i = phi ptr [ %link_gpio43123.i, %cond.end.thread.i ], [ %link_gpio43.i, %if.end51.i.if.end63.sink.split.i_crit_edge ]
  %47 = ptrtoint ptr %link_gpio43123.sink.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -22, ptr %link_gpio43123.sink.i, align 4
  br label %w5300_hw_probe.exit.thread33

w5300_hw_probe.exit.thread33:                     ; preds = %if.end63.sink.split.i, %if.end51.i.w5300_hw_probe.exit.thread33_crit_edge, %cond.end.i.w5300_hw_probe.exit.thread33_crit_edge
  %48 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call7.i, align 4
  %conv64.i = zext i32 %49 to i64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.9, i64 noundef %conv64.i, i32 noundef %call31.i) #17
  br label %cleanup

w5300_hw_probe.exit:                              ; preds = %if.end.i
  %50 = ptrtoint ptr %call9.i to i32
  %cmp8 = icmp slt ptr %call9.i, null
  br i1 %cmp8, label %w5300_hw_probe.exit.err_hw_probe_crit_edge, label %w5300_hw_probe.exit.cleanup_crit_edge

w5300_hw_probe.exit.cleanup_crit_edge:            ; preds = %w5300_hw_probe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

w5300_hw_probe.exit.err_hw_probe_crit_edge:       ; preds = %w5300_hw_probe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hw_probe

err_hw_probe:                                     ; preds = %w5300_hw_probe.exit.err_hw_probe_crit_edge, %if.then46.i.err_hw_probe_crit_edge, %if.end35.i.err_hw_probe_crit_edge, %if.end30.i.err_hw_probe_crit_edge, %if.end15.i.err_hw_probe_crit_edge
  %retval.1.i32 = phi i32 [ %50, %w5300_hw_probe.exit.err_hw_probe_crit_edge ], [ -12, %if.then46.i.err_hw_probe_crit_edge ], [ %call.i119.i, %if.end35.i.err_hw_probe_crit_edge ], [ %call31.i, %if.end30.i.err_hw_probe_crit_edge ], [ -19, %if.end15.i.err_hw_probe_crit_edge ]
  call void @unregister_netdev(ptr noundef nonnull %call) #14
  br label %err_register

err_register:                                     ; preds = %err_hw_probe, %if.end.err_register_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.err_register_crit_edge ], [ %retval.1.i32, %err_hw_probe ]
  call void @free_netdev(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %err_register, %w5300_hw_probe.exit.cleanup_crit_edge, %w5300_hw_probe.exit.thread33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_register ], [ -12, %entry.cleanup_crit_edge ], [ 0, %w5300_hw_probe.exit.cleanup_crit_edge ], [ 0, %w5300_hw_probe.exit.thread33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call fastcc void @w5300_hw_reset(ptr noundef %add.ptr.i)
  %irq = getelementptr i8, ptr %1, i32 2364
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #14
  %link_gpio = getelementptr i8, ptr %1, i32 2372
  %4 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %link_irq = getelementptr i8, ptr %1, i32 2368
  %7 = ptrtoint ptr %link_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_irq, align 8
  %call4 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @unregister_netdev(ptr noundef %1) #14
  tail call void @free_netdev(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_napi_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -72
  %ndev1 = getelementptr i8, ptr %napi, i32 224
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp80 = icmp sgt i32 %budget, 0
  br i1 %cmp80, label %for.body.lr.ph, label %entry.cleanup36_crit_edge

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

for.body.lr.ph:                                   ; preds = %entry
  %read.i = getelementptr i8, ptr %napi, i32 -20
  %stats23 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %rx_count.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i16 %3(ptr noundef %add.ptr, i16 noundef zeroext 552) #14
  %conv.i = zext i16 %call.i to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call4.i = tail call zeroext i16 %5(ptr noundef %add.ptr, i16 noundef zeroext 554) #14
  %conv5.i = zext i16 %call4.i to i32
  %or.i = or i32 %shl.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp2 = icmp eq i32 %or.i, 0
  br i1 %cmp2, label %if.then33, label %if.end

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %call3 = tail call zeroext i16 %7(ptr noundef %add.ptr, i16 noundef zeroext 560) #14
  %conv = zext i16 %call3 to i32
  %add = add nuw nsw i32 %conv, 1
  %div71 = and i32 %add, 131070
  %add.i.i = add nuw nsw i32 %div71, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 2592) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.for.body13_crit_edge, label %if.end17

if.end.for.body13_crit_edge:                      ; preds = %if.end
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %if.end.for.body13_crit_edge
  %i.082 = phi i32 [ %add16, %for.body13.for.body13_crit_edge ], [ 0, %if.end.for.body13_crit_edge ]
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %call15 = tail call zeroext i16 %9(ptr noundef %add.ptr, i16 noundef zeroext 560) #14
  %add16 = add i32 %i.082, 2
  %cmp11 = icmp ult i32 %add16, %or.i
  br i1 %cmp11, label %for.body13.for.body13_crit_edge, label %cleanup.thread

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body13

cleanup.thread:                                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %10 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup36

if.end17:                                         ; preds = %if.end
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %15, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call19 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3)
  %cmp16.i.not = icmp eq i16 %call3, 0
  br i1 %cmp16.i.not, label %if.end17.for.inc28_crit_edge, label %for.body.i.preheader

if.end17.for.inc28_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc28

for.body.i.preheader:                             ; preds = %if.end17
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.018.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %buf.addr.017.i = phi ptr [ %incdec.ptr3.i, %for.body.i.for.body.i_crit_edge ], [ %17, %for.body.i.preheader ]
  %18 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i, align 4
  %call.i73 = tail call zeroext i16 %19(ptr noundef %add.ptr, i16 noundef zeroext 560) #14
  %20 = lshr i16 %call.i73, 8
  %conv1.i = trunc i16 %20 to i8
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.017.i, i32 1
  %21 = ptrtoint ptr %buf.addr.017.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv1.i, ptr %buf.addr.017.i, align 1
  %conv2.i = trunc i16 %call.i73 to i8
  %incdec.ptr3.i = getelementptr i8, ptr %buf.addr.017.i, i32 2
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv2.i, ptr %incdec.ptr.i, align 1
  %add.i = add nuw nsw i32 %i.018.i, 2
  %cmp.i = icmp ult i32 %add.i, %conv
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.inc28_crit_edge

for.body.i.for.inc28_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc28

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc28:                                        ; preds = %for.body.i.for.inc28_crit_edge, %if.end17.for.inc28_crit_edge
  %23 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i, align 4
  %call5.i = tail call zeroext i16 %24(ptr noundef %add.ptr, i16 noundef zeroext 560) #14
  %25 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i, align 4
  %call7.i = tail call zeroext i16 %26(ptr noundef %add.ptr, i16 noundef zeroext 560) #14
  %call21 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %1) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %call21, ptr %protocol, align 8
  %call22 = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i) #14
  %28 = ptrtoint ptr %stats23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stats23, align 8
  %inc24 = add i32 %29, 1
  store i32 %inc24, ptr %stats23, align 8
  %30 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_bytes, align 8
  %add27 = add i32 %31, %conv
  store i32 %add27, ptr %rx_bytes, align 8
  %inc29 = add nuw nsw i32 %rx_count.081, 1
  %exitcond.not = icmp eq i32 %inc29, %budget
  br i1 %exitcond.not, label %for.inc28.cleanup36_crit_edge, label %for.inc28.for.body_crit_edge

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc28.cleanup36_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call34 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %rx_count.081) #14
  %write = getelementptr i8, ptr %napi, i32 -16
  %32 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write, align 8
  tail call void %33(ptr noundef %add.ptr, i16 noundef zeroext 4, i16 noundef zeroext 1) #14
  br label %cleanup36

cleanup36:                                        ; preds = %if.then33, %for.inc28.cleanup36_crit_edge, %cleanup.thread, %entry.cleanup36_crit_edge
  %retval.2 = phi i32 [ %rx_count.081, %if.then33 ], [ -12, %cleanup.thread ], [ 0, %entry.cleanup36_crit_edge ], [ %budget, %for.inc28.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %msg_enable = getelementptr i8, ptr %ndev, i32 2608
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.1) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %write.i = getelementptr i8, ptr %ndev, i32 2360
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 8
  %promisc.i = getelementptr i8, ptr %ndev, i32 2604
  %4 = ptrtoint ptr %promisc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %promisc.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %conv.i = select i1 %tobool.not.i, i16 68, i16 4
  tail call void %3(ptr noundef %add.ptr.i, i16 noundef zeroext 512, i16 noundef zeroext %conv.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %6, 10
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 8
  tail call void %8(ptr noundef %add.ptr.i, i16 noundef zeroext 514, i16 noundef zeroext 1) #14
  %read.i.i = getelementptr i8, ptr %ndev, i32 2356
  %9 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i.i, align 4
  %call11.i.i = tail call zeroext i16 %10(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call11.i.i)
  %cmp.not2.i.i = icmp eq i16 %call11.i.i, 0
  br i1 %cmp.not2.i.i, label %do.end.w5300_hw_start.exit_crit_edge, label %do.end.while.body.i.i_crit_edge

do.end.while.body.i.i_crit_edge:                  ; preds = %do.end
  br label %while.body.i.i

do.end.w5300_hw_start.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %do.end.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.w5300_hw_start.exit_crit_edge, label %do.end.i.i

while.body.i.i.w5300_hw_start.exit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

do.end.i.i:                                       ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !61
  %12 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i, align 4
  %call1.i.i = tail call zeroext i16 %13(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  %cmp.not.i.i = icmp eq i16 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.w5300_hw_start.exit_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

do.end.i.i.w5300_hw_start.exit_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

w5300_hw_start.exit:                              ; preds = %do.end.i.i.w5300_hw_start.exit_crit_edge, %while.body.i.i.w5300_hw_start.exit_crit_edge, %do.end.w5300_hw_start.exit_crit_edge
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i, align 8
  tail call void %15(ptr noundef %add.ptr.i, i16 noundef zeroext 516, i16 noundef zeroext 20) #14
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 8
  tail call void %17(ptr noundef %add.ptr.i, i16 noundef zeroext 4, i16 noundef zeroext 1) #14
  %napi = getelementptr i8, ptr %ndev, i32 2376
  tail call void @napi_enable(ptr noundef %napi) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %link_gpio = getelementptr i8, ptr %ndev, i32 2372
  %20 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %21)
  %22 = icmp ult i32 %21, 2048
  br i1 %22, label %lor.lhs.false, label %w5300_hw_start.exit.if.then4_crit_edge

w5300_hw_start.exit.if.then4_crit_edge:           ; preds = %w5300_hw_start.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

lor.lhs.false:                                    ; preds = %w5300_hw_start.exit
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %21) #14
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end5_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %w5300_hw_start.exit.if.then4_crit_edge
  tail call void @netif_carrier_on(ptr noundef %ndev) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %msg_enable = getelementptr i8, ptr %ndev, i32 2608
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.2) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %write.i = getelementptr i8, ptr %ndev, i32 2360
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 8
  tail call void %3(ptr noundef %add.ptr.i, i16 noundef zeroext 4, i16 noundef zeroext 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %4, 10
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i, align 8
  tail call void %6(ptr noundef %add.ptr.i, i16 noundef zeroext 514, i16 noundef zeroext 16) #14
  %read.i.i = getelementptr i8, ptr %ndev, i32 2356
  %7 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i.i, align 4
  %call11.i.i = tail call zeroext i16 %8(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call11.i.i)
  %cmp.not2.i.i = icmp eq i16 %call11.i.i, 0
  br i1 %cmp.not2.i.i, label %do.end.w5300_hw_close.exit_crit_edge, label %do.end.while.body.i.i_crit_edge

do.end.while.body.i.i_crit_edge:                  ; preds = %do.end
  br label %while.body.i.i

do.end.w5300_hw_close.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_close.exit

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %do.end.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.w5300_hw_close.exit_crit_edge, label %do.end.i.i

while.body.i.i.w5300_hw_close.exit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_close.exit

do.end.i.i:                                       ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !61
  %10 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i, align 4
  %call1.i.i = tail call zeroext i16 %11(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  %cmp.not.i.i = icmp eq i16 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.w5300_hw_close.exit_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

do.end.i.i.w5300_hw_close.exit_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_close.exit

w5300_hw_close.exit:                              ; preds = %do.end.i.i.w5300_hw_close.exit_crit_edge, %while.body.i.i.w5300_hw_close.exit_crit_edge, %do.end.w5300_hw_close.exit_crit_edge
  tail call void @netif_carrier_off(ptr noundef %ndev) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %napi = getelementptr i8, ptr %ndev, i32 2376
  tail call void @napi_disable(ptr noundef %napi) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_start_tx(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.i = icmp sgt i32 %3, 0
  br i1 %cmp12.i, label %for.body.lr.ph.i, label %entry.w5300_write_frame.exit_crit_edge

entry.w5300_write_frame.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_write_frame.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %write.i = getelementptr i8, ptr %ndev, i32 2360
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %buf.addr.013.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %incdec.ptr2.i, %for.body.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.013.i, i32 1
  %6 = ptrtoint ptr %buf.addr.013.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.addr.013.i, align 1
  %conv.i = zext i8 %7 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %incdec.ptr2.i = getelementptr i8, ptr %buf.addr.013.i, i32 2
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i, align 1
  %conv3.i = zext i8 %9 to i16
  %or.i = or i16 %shl.i, %conv3.i
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 8
  tail call void %11(ptr noundef %add.ptr.i, i16 noundef zeroext 558, i16 noundef zeroext %or.i) #14
  %add.i = add i32 %i.014.i, 2
  %cmp.i = icmp slt i32 %add.i, %3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.w5300_write_frame.exit_crit_edge

for.body.i.w5300_write_frame.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_write_frame.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

w5300_write_frame.exit:                           ; preds = %for.body.i.w5300_write_frame.exit_crit_edge, %entry.w5300_write_frame.exit_crit_edge
  %write.i.i = getelementptr i8, ptr %ndev, i32 2360
  %12 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i.i, align 8
  %shr.i.i = lshr i32 %3, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  tail call void %13(ptr noundef %add.ptr.i, i16 noundef zeroext 544, i16 noundef zeroext %conv.i.i) #14
  %14 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i.i, align 8
  %conv4.i.i = trunc i32 %3 to i16
  tail call void %15(ptr noundef %add.ptr.i, i16 noundef zeroext 546, i16 noundef zeroext %conv4.i.i) #14
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %16 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %tx_packets, align 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %20 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %21, %19
  store i32 %add, ptr %tx_bytes, align 4
  tail call void @consume_skb(ptr noundef %skb) #14
  %msg_enable = getelementptr i8, ptr %ndev, i32 2608
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %w5300_write_frame.exit.do.end11_crit_edge, label %do.body3

w5300_write_frame.exit.do.end11_crit_edge:        ; preds = %w5300_write_frame.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

do.body3:                                         ; preds = %w5300_write_frame.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w5300_start_tx.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w5300_start_tx, %if.then8)) #14
          to label %do.end11 [label %if.then8], !srcloc !62

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @w5300_start_tx.__UNIQUE_ID_ddebug344, ptr noundef %ndev, ptr noundef nonnull @.str.5) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3, %w5300_write_frame.exit.do.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i22 = add i32 %24, 10
  %25 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i.i, align 8
  tail call void %26(ptr noundef %add.ptr.i, i16 noundef zeroext 514, i16 noundef zeroext 32) #14
  %read.i = getelementptr i8, ptr %ndev, i32 2356
  %27 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read.i, align 4
  %call11.i = tail call zeroext i16 %28(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call11.i)
  %cmp.not2.i = icmp eq i16 %call11.i, 0
  br i1 %cmp.not2.i, label %do.end11.w5300_command.exit_crit_edge, label %do.end11.while.body.i_crit_edge

do.end11.while.body.i_crit_edge:                  ; preds = %do.end11
  br label %while.body.i

do.end11.w5300_command.exit_crit_edge:            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_command.exit

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %do.end11.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i22, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %while.body.i.w5300_command.exit_crit_edge, label %do.end.i

while.body.i.w5300_command.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_command.exit

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !61
  %30 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i, align 4
  %call1.i = tail call zeroext i16 %31(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  %cmp.not.i = icmp eq i16 %call1.i, 0
  br i1 %cmp.not.i, label %do.end.i.w5300_command.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

do.end.i.w5300_command.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_command.exit

w5300_command.exit:                               ; preds = %do.end.i.w5300_command.exit_crit_edge, %while.body.i.w5300_command.exit_crit_edge, %do.end11.w5300_command.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5300_set_rx_mode(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %promisc = getelementptr i8, ptr %ndev, i32 2604
  %2 = ptrtoint ptr %promisc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %promisc, align 4, !range !59
  %4 = zext i8 %3 to i32
  %and = lshr i32 %1, 8
  %and.lobit12 = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit12, i32 %4)
  %cmp3.not = icmp eq i32 %and.lobit12, %4
  br i1 %cmp3.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = trunc i32 %and.lobit12 to i8
  %6 = ptrtoint ptr %promisc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %promisc, align 4
  %write.i = getelementptr i8, ptr %ndev, i32 2360
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %conv.i = select i1 %tobool.not.i, i16 68, i16 4
  tail call void %8(ptr noundef %add.ptr.i, i16 noundef zeroext 512, i16 noundef zeroext %conv.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %9, 10
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 8
  tail call void %11(ptr noundef %add.ptr.i, i16 noundef zeroext 514, i16 noundef zeroext 1) #14
  %read.i.i = getelementptr i8, ptr %ndev, i32 2356
  %12 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i, align 4
  %call11.i.i = tail call zeroext i16 %13(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call11.i.i)
  %cmp.not2.i.i = icmp eq i16 %call11.i.i, 0
  br i1 %cmp.not2.i.i, label %if.then.w5300_hw_start.exit_crit_edge, label %if.then.while.body.i.i_crit_edge

if.then.while.body.i.i_crit_edge:                 ; preds = %if.then
  br label %while.body.i.i

if.then.w5300_hw_start.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %if.then.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.w5300_hw_start.exit_crit_edge, label %do.end.i.i

while.body.i.i.w5300_hw_start.exit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

do.end.i.i:                                       ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !61
  %15 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i.i, align 4
  %call1.i.i = tail call zeroext i16 %16(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  %cmp.not.i.i = icmp eq i16 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.w5300_hw_start.exit_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

do.end.i.i.w5300_hw_start.exit_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

w5300_hw_start.exit:                              ; preds = %do.end.i.i.w5300_hw_start.exit_crit_edge, %while.body.i.i.w5300_hw_start.exit_crit_edge, %if.then.w5300_hw_start.exit_crit_edge
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 8
  tail call void %18(ptr noundef %add.ptr.i, i16 noundef zeroext 516, i16 noundef zeroext 20) #14
  %19 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i, align 8
  tail call void %20(ptr noundef %add.ptr.i, i16 noundef zeroext 4, i16 noundef zeroext 1) #14
  br label %if.end

if.end:                                           ; preds = %w5300_hw_start.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_set_macaddr(ptr noundef %ndev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #14
  %ndev1.i = getelementptr i8, ptr %ndev, i32 2600
  %5 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev1.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr.i, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %arrayidx3.i = getelementptr i8, ptr %8, i32 1
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %12 to i16
  %or.i = or i16 %shl.i, %conv4.i
  %arrayidx7.i = getelementptr i8, ptr %8, i32 2
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %14 to i16
  %shl9.i = shl nuw i16 %conv8.i, 8
  %arrayidx12.i = getelementptr i8, ptr %8, i32 3
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %16 to i16
  %or14.i = or i16 %shl9.i, %conv13.i
  %write.i.i = getelementptr i8, ptr %ndev, i32 2360
  %17 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i, align 8
  tail call void %18(ptr noundef %add.ptr.i, i16 noundef zeroext 8, i16 noundef zeroext %or.i) #14
  %19 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i.i, align 8
  tail call void %20(ptr noundef %add.ptr.i, i16 noundef zeroext 10, i16 noundef zeroext %or14.i) #14
  %21 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i.i, align 8
  %23 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx16.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %26 to i16
  %shl18.i = shl nuw i16 %conv17.i, 8
  %arrayidx20.i = getelementptr i8, ptr %24, i32 5
  %27 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %28 to i16
  %or22.i = or i16 %shl18.i, %conv21.i
  tail call void %22(ptr noundef %add.ptr.i, i16 noundef zeroext 12, i16 noundef zeroext %or22.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5300_tx_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  tail call fastcc void @w5300_hw_reset(ptr noundef %add.ptr.i)
  %write.i = getelementptr i8, ptr %ndev, i32 2360
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 8
  %promisc.i = getelementptr i8, ptr %ndev, i32 2604
  %4 = ptrtoint ptr %promisc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %promisc.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %conv.i = select i1 %tobool.not.i, i16 68, i16 4
  tail call void %3(ptr noundef %add.ptr.i, i16 noundef zeroext 512, i16 noundef zeroext %conv.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %6, 10
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 8
  tail call void %8(ptr noundef %add.ptr.i, i16 noundef zeroext 514, i16 noundef zeroext 1) #14
  %read.i.i = getelementptr i8, ptr %ndev, i32 2356
  %9 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i.i, align 4
  %call11.i.i = tail call zeroext i16 %10(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call11.i.i)
  %cmp.not2.i.i = icmp eq i16 %call11.i.i, 0
  br i1 %cmp.not2.i.i, label %entry.w5300_hw_start.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.w5300_hw_start.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.w5300_hw_start.exit_crit_edge, label %do.end.i.i

while.body.i.i.w5300_hw_start.exit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

do.end.i.i:                                       ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !61
  %12 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i, align 4
  %call1.i.i = tail call zeroext i16 %13(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  %cmp.not.i.i = icmp eq i16 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.w5300_hw_start.exit_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

do.end.i.i.w5300_hw_start.exit_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

w5300_hw_start.exit:                              ; preds = %do.end.i.i.w5300_hw_start.exit_crit_edge, %while.body.i.i.w5300_hw_start.exit_crit_edge, %entry.w5300_hw_start.exit_crit_edge
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i, align 8
  tail call void %15(ptr noundef %add.ptr.i, i16 noundef zeroext 516, i16 noundef zeroext 20) #14
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 8
  tail call void %17(ptr noundef %add.ptr.i, i16 noundef zeroext 4, i16 noundef zeroext 1) #14
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %18 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %tx_errors, align 4
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 12
  %23 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp.not.i.i7 = icmp eq i32 %24, %22
  br i1 %cmp.not.i.i7, label %w5300_hw_start.exit.netif_trans_update.exit_crit_edge, label %do.body5.i.i

w5300_hw_start.exit.netif_trans_update.exit_crit_edge: ; preds = %w5300_hw_start.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %w5300_hw_start.exit
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %22, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %w5300_hw_start.exit.netif_trans_update.exit_crit_edge
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %27) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w5300_hw_reset(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 -32768) #14, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #14
  %indirect = getelementptr inbounds %struct.w5300_priv, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %indirect to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %indirect, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  %conv = select i1 %tobool1.not, i16 14352, i16 14353
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @arm_heavy_mb() #14
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 %11) #14, !srcloc !64
  %write = getelementptr inbounds %struct.w5300_priv, ptr %priv, i32 0, i32 4
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 8
  tail call void %13(ptr noundef %priv, i16 noundef zeroext 4, i16 noundef zeroext 0) #14
  %ndev1.i = getelementptr inbounds %struct.w5300_priv, ptr %priv, i32 0, i32 9
  %14 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev1.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr.i, align 64
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv.i = zext i8 %19 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %arrayidx3.i = getelementptr i8, ptr %17, i32 1
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %21 to i16
  %or.i = or i16 %shl.i, %conv4.i
  %arrayidx7.i = getelementptr i8, ptr %17, i32 2
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %23 to i16
  %shl9.i = shl nuw i16 %conv8.i, 8
  %arrayidx12.i = getelementptr i8, ptr %17, i32 3
  %24 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %25 to i16
  %or14.i = or i16 %shl9.i, %conv13.i
  %26 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write, align 8
  tail call void %27(ptr noundef %priv, i16 noundef zeroext 8, i16 noundef zeroext %or.i) #14
  %28 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write, align 8
  tail call void %29(ptr noundef %priv, i16 noundef zeroext 10, i16 noundef zeroext %or14.i) #14
  %30 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write, align 8
  %32 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx16.i = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %35 to i16
  %shl18.i = shl nuw i16 %conv17.i, 8
  %arrayidx20.i = getelementptr i8, ptr %33, i32 5
  %36 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %37 to i16
  %or22.i = or i16 %shl18.i, %conv21.i
  tail call void %31(ptr noundef %priv, i16 noundef zeroext 12, i16 noundef zeroext %or22.i) #14
  %38 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write, align 8
  tail call void %39(ptr noundef %priv, i16 noundef zeroext 40, i16 noundef zeroext 16384) #14
  %40 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write, align 8
  tail call void %41(ptr noundef %priv, i16 noundef zeroext 42, i16 noundef zeroext 0) #14
  %42 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write, align 8
  tail call void %43(ptr noundef %priv, i16 noundef zeroext 44, i16 noundef zeroext 0) #14
  %44 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write, align 8
  tail call void %45(ptr noundef %priv, i16 noundef zeroext 46, i16 noundef zeroext 0) #14
  %46 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write, align 8
  tail call void %47(ptr noundef %priv, i16 noundef zeroext 32, i16 noundef zeroext 16384) #14
  %48 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write, align 8
  tail call void %49(ptr noundef %priv, i16 noundef zeroext 34, i16 noundef zeroext 0) #14
  %50 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write, align 8
  tail call void %51(ptr noundef %priv, i16 noundef zeroext 36, i16 noundef zeroext 0) #14
  %52 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write, align 8
  tail call void %53(ptr noundef %priv, i16 noundef zeroext 38, i16 noundef zeroext 0) #14
  %54 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write, align 8
  tail call void %55(ptr noundef %priv, i16 noundef zeroext 48, i16 noundef zeroext 255) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5300_write_direct(ptr nocapture noundef readonly %priv, i16 noundef zeroext %addr, i16 noundef zeroext %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i16 %addr to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @arm_heavy_mb() #14
  %2 = tail call i16 @llvm.bswap.i16(i16 %data) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #14, !srcloc !64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5300_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.6, i32 noundef 32) #14
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w5300_get_regs_len(ptr nocapture noundef readnone %ndev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1024
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5300_get_regs(ptr noundef %ndev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %version, align 4
  %read = getelementptr i8, ptr %ndev, i32 2356
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry
  %addr.018 = phi i16 [ 0, %entry ], [ %add, %sw.epilog.for.body_crit_edge ]
  %buf.017 = phi ptr [ %_buf, %entry ], [ %incdec.ptr7, %sw.epilog.for.body_crit_edge ]
  %1 = and i16 %addr.018, 574
  %and = zext i16 %1 to i32
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 558, label %for.body.sw.epilog_crit_edge
    i32 560, label %for.body.sw.epilog_crit_edge19
  ]

for.body.sw.epilog_crit_edge19:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %call3 = tail call zeroext i16 %4(ptr noundef %add.ptr.i, i16 noundef zeroext %addr.018) #14
  %extract.t = trunc i16 %call3 to i8
  %extract = lshr i16 %call3, 8
  %extract.t16 = trunc i16 %extract to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.body.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge19
  %data.0.off0 = phi i8 [ %extract.t, %sw.default ], [ -1, %for.body.sw.epilog_crit_edge ], [ -1, %for.body.sw.epilog_crit_edge19 ]
  %data.0.off8 = phi i8 [ %extract.t16, %sw.default ], [ -1, %for.body.sw.epilog_crit_edge ], [ -1, %for.body.sw.epilog_crit_edge19 ]
  %incdec.ptr = getelementptr i8, ptr %buf.017, i32 1
  %5 = ptrtoint ptr %buf.017 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %data.0.off8, ptr %buf.017, align 1
  %incdec.ptr7 = getelementptr i8, ptr %buf.017, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %data.0.off0, ptr %incdec.ptr, align 1
  %add = add nuw nsw i16 %addr.018, 2
  %cmp = icmp ult i16 %addr.018, 1022
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w5300_get_msglevel(ptr nocapture noundef readonly %ndev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2608
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @w5300_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %value) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2608
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_get_link(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %link_gpio = getelementptr i8, ptr %ndev, i32 2372
  %0 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #14
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool = icmp ne i32 %call1.i, 0
  %lnot.ext = zext i1 %tobool to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @w5300_read_indirect(ptr noundef %priv, i16 noundef zeroext %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.w5300_priv, ptr %priv, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #14
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @arm_heavy_mb() #14
  %2 = tail call i16 @llvm.bswap.i16(i16 %addr) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %2) #14, !srcloc !64
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %add.ptr.i10 = getelementptr i8, ptr %4, i32 4
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10) #14, !srcloc !65
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !66
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #14
  ret i16 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5300_write_indirect(ptr noundef %priv, i16 noundef zeroext %addr, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.w5300_priv, ptr %priv, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #14
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @arm_heavy_mb() #14
  %2 = tail call i16 @llvm.bswap.i16(i16 %addr) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %2) #14, !srcloc !64
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @arm_heavy_mb() #14
  %5 = tail call i16 @llvm.bswap.i16(i16 %data) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9, i16 %5) #14, !srcloc !64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @w5300_read_direct(ptr nocapture noundef readonly %priv, i16 noundef zeroext %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i16 %addr to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #14, !srcloc !65
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !66
  ret i16 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_interrupt(i32 noundef %irq, ptr noundef %ndev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev_instance, i32 2304
  %read = getelementptr i8, ptr %ndev_instance, i32 2356
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %call1 = tail call zeroext i16 %1(ptr noundef %add.ptr.i, i16 noundef zeroext 518) #14
  %conv = zext i16 %call1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool.not = icmp eq i16 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %write = getelementptr i8, ptr %ndev_instance, i32 2360
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 8
  tail call void %3(ptr noundef %add.ptr.i, i16 noundef zeroext 518, i16 noundef zeroext %call1) #14
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end18_crit_edge, label %do.body

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %ndev_instance, i32 2608
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and5 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body.do.end17_crit_edge, label %do.body8

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w5300_interrupt.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w5300_interrupt, %if.then13)) #14
          to label %do.end17 [label %if.then13], !srcloc !62

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @w5300_interrupt.__UNIQUE_ID_ddebug345, ptr noundef %ndev_instance, ptr noundef nonnull @.str.12) #14
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body8, %do.body.do.end17_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev_instance, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %7) #14
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end.if.end18_crit_edge
  %and19 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  %napi = getelementptr i8, ptr %ndev_instance, i32 2376
  %call22 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call22, label %if.then23, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 8
  tail call void %9(ptr noundef %add.ptr.i, i16 noundef zeroext 4, i16 noundef zeroext 0) #14
  tail call void @__napi_schedule(ptr noundef %napi) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.then21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then21.cleanup_crit_edge ], [ 1, %if.then23 ], [ 1, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_any_context_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_detect_link(i32 noundef %irq, ptr noundef %ndev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev_instance, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then:                                          ; preds = %entry
  %link_gpio = getelementptr i8, ptr %ndev_instance, i32 2372
  %2 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_gpio, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #14
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 0
  %msg_enable6 = getelementptr i8, ptr %ndev_instance, i32 2608
  %4 = ptrtoint ptr %msg_enable6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable6, align 8
  %and7 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %cmp.not, label %do.body5, label %do.body

do.body:                                          ; preds = %if.then
  br i1 %tobool8.not, label %do.body.do.end_crit_edge, label %if.then4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev_instance, ptr noundef nonnull @.str.13) #17
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body.do.end_crit_edge
  tail call void @netif_carrier_on(ptr noundef %ndev_instance) #14
  br label %if.end14

do.body5:                                         ; preds = %if.then
  br i1 %tobool8.not, label %do.body5.do.end12_crit_edge, label %if.then9

do.body5.do.end12_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev_instance, ptr noundef nonnull @.str.14) #17
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body5.do.end12_crit_edge
  tail call void @netif_carrier_off(ptr noundef %ndev_instance) #14
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %do.end, %entry.if.end14_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef %1) #14
  tail call void @netif_device_detach(ptr noundef %1) #14
  %write.i = getelementptr i8, ptr %1, i32 2360
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 8
  tail call void %5(ptr noundef %add.ptr.i, i16 noundef zeroext 4, i16 noundef zeroext 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %6, 10
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 8
  tail call void %8(ptr noundef %add.ptr.i, i16 noundef zeroext 514, i16 noundef zeroext 16) #14
  %read.i.i = getelementptr i8, ptr %1, i32 2356
  %9 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i.i, align 4
  %call11.i.i = tail call zeroext i16 %10(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call11.i.i)
  %cmp.not2.i.i = icmp eq i16 %call11.i.i, 0
  br i1 %cmp.not2.i.i, label %if.then.if.end_crit_edge, label %if.then.while.body.i.i_crit_edge

if.then.while.body.i.i_crit_edge:                 ; preds = %if.then
  br label %while.body.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %if.then.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.if.end_crit_edge, label %do.end.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end.i.i:                                       ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !61
  %12 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i, align 4
  %call1.i.i = tail call zeroext i16 %13(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  %cmp.not.i.i = icmp eq i16 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.if.end_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

do.end.i.i.if.end_crit_edge:                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.end.i.i.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5300_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %entry
  tail call fastcc void @w5300_hw_reset(ptr noundef %add.ptr.i)
  %write.i = getelementptr i8, ptr %1, i32 2360
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 8
  %promisc.i = getelementptr i8, ptr %1, i32 2604
  %6 = ptrtoint ptr %promisc.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %promisc.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %conv.i = select i1 %tobool.not.i, i16 68, i16 4
  tail call void %5(ptr noundef %add.ptr.i, i16 noundef zeroext 512, i16 noundef zeroext %conv.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %8, 10
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i, align 8
  tail call void %10(ptr noundef %add.ptr.i, i16 noundef zeroext 514, i16 noundef zeroext 1) #14
  %read.i.i = getelementptr i8, ptr %1, i32 2356
  %11 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i.i, align 4
  %call11.i.i = tail call zeroext i16 %12(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call11.i.i)
  %cmp.not2.i.i = icmp eq i16 %call11.i.i, 0
  br i1 %cmp.not2.i.i, label %if.then.w5300_hw_start.exit_crit_edge, label %if.then.while.body.i.i_crit_edge

if.then.while.body.i.i_crit_edge:                 ; preds = %if.then
  br label %while.body.i.i

if.then.w5300_hw_start.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %if.then.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.w5300_hw_start.exit_crit_edge, label %do.end.i.i

while.body.i.i.w5300_hw_start.exit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

do.end.i.i:                                       ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !61
  %14 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read.i.i, align 4
  %call1.i.i = tail call zeroext i16 %15(ptr noundef %add.ptr.i, i16 noundef zeroext 514) #14
  %cmp.not.i.i = icmp eq i16 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.w5300_hw_start.exit_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

do.end.i.i.w5300_hw_start.exit_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w5300_hw_start.exit

w5300_hw_start.exit:                              ; preds = %do.end.i.i.w5300_hw_start.exit_crit_edge, %while.body.i.i.w5300_hw_start.exit_crit_edge, %if.then.w5300_hw_start.exit_crit_edge
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 8
  tail call void %17(ptr noundef %add.ptr.i, i16 noundef zeroext 516, i16 noundef zeroext 20) #14
  %18 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i, align 8
  tail call void %19(ptr noundef %add.ptr.i, i16 noundef zeroext 4, i16 noundef zeroext 1) #14
  tail call void @netif_device_attach(ptr noundef %1) #14
  %link_gpio = getelementptr i8, ptr %1, i32 2372
  %20 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %21)
  %22 = icmp ult i32 %21, 2048
  br i1 %22, label %lor.lhs.false, label %w5300_hw_start.exit.if.then6_crit_edge

w5300_hw_start.exit.if.then6_crit_edge:           ; preds = %w5300_hw_start.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

lor.lhs.false:                                    ; preds = %w5300_hw_start.exit
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %21) #14
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %w5300_hw_start.exit.if.then6_crit_edge
  tail call void @netif_carrier_on(ptr noundef %1) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !33, !34, !36, !38, !40, !42, !43, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__UNIQUE_ID_description339, !1, !"__UNIQUE_ID_description339", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_author340, !3, !"__UNIQUE_ID_author340", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 33, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias341, !5, !"__UNIQUE_ID_alias341", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 34, i32 1}
!6 = !{ptr @__UNIQUE_ID_file342, !7, !"__UNIQUE_ID_file342", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 35, i32 1}
!8 = !{ptr @__UNIQUE_ID_license343, !7, !"__UNIQUE_ID_license343", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_w5300__346_689_w5300_driver_init6, !10, !"__initcall__kmod_w5300__346_689_w5300_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 689, i32 1}
!11 = !{ptr @__exitcall_w5300_driver_exit, !10, !"__exitcall_w5300_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 682, i32 11}
!14 = !{ptr @w5300_driver, !15, !"w5300_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 680, i32 31}
!16 = !{ptr @w5300_netdev_ops, !17, !"w5300_netdev_ops", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 515, i32 36}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 484, i32 2}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 498, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 366, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @w5300_start_tx.__UNIQUE_ID_ddebug344, !23, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!27 = !{ptr @w5300_ethtool_ops, !28, !"w5300_ethtool_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 506, i32 33}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 286, i32 25}
!31 = !{ptr @w5300_hw_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 549, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 577, i32 27}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 585, i32 20}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 425, i32 3}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @w5300_interrupt.__UNIQUE_ID_ddebug345, !41, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 446, i32 4}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 449, i32 4}
!48 = !{ptr @w5300_pm_ops, !49, !"w5300_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/wiznet/w5300.c", i32 678, i32 8}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i8 0, i8 2}
!60 = !{i64 2156376861}
!61 = !{i64 2156376703}
!62 = !{i64 2148707667, i64 2148707672, i64 2148707685, i64 2148707729, i64 2148707763, i64 2148707784}
!63 = !{i64 2154266910}
!64 = !{i64 6724718}
!65 = !{i64 6724918}
!66 = !{i64 2154265493}
