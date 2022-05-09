; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/wiznet/w5100.c_pt.bc'
source_filename = "../drivers/net/ethernet/wiznet/w5100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+w5100_ops_priv\22, \22a\22\09"
module asm "\09.weak\09__crc_w5100_ops_priv\09\09\09\09"
module asm "\09.long\09__crc_w5100_ops_priv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w5100_ops_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22w5100_ops_priv\22\09\09\09\09\09"
module asm "__kstrtabns_w5100_ops_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w5100_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_w5100_probe\09\09\09\09"
module asm "\09.long\09__crc_w5100_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w5100_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22w5100_probe\22\09\09\09\09\09"
module asm "__kstrtabns_w5100_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w5100_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_w5100_remove\09\09\09\09"
module asm "\09.long\09__crc_w5100_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w5100_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22w5100_remove\22\09\09\09\09\09"
module asm "__kstrtabns_w5100_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w5100_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_w5100_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_w5100_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w5100_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22w5100_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_w5100_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.w5100_ops = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.w5100_priv = type { ptr, i32, i32, i16, i32, i16, i32, i32, i32, %struct.napi_struct, ptr, i8, i32, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wiznet_platform_data = type { i32, [6 x i8] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID_description339 = internal constant [59 x i8] c"w5100.description=WIZnet W5100 Ethernet driver v2012-04-04\00", section ".modinfo", align 1
@__UNIQUE_ID_author340 = internal constant [50 x i8] c"w5100.author=Mike Sinkovsky <msink@permonline.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias341 = internal constant [27 x i8] c"w5100.alias=platform:w5100\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [45 x i8] c"w5100.file=drivers/net/ethernet/wiznet/w5100\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [18 x i8] c"w5100.license=GPL\00", section ".modinfo", align 1
@__kstrtab_w5100_ops_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_w5100_ops_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_w5100_ops_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w5100_ops_priv to i32), ptr @__kstrtab_w5100_ops_priv, ptr @__kstrtabns_w5100_ops_priv }, section "___ksymtab_gpl+w5100_ops_priv", align 4
@w5100_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @w5100_open, ptr @w5100_stop, ptr @w5100_start_tx, ptr null, ptr null, ptr null, ptr @w5100_set_rx_mode, ptr @w5100_set_macaddr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w5100_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@w5100_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @w5100_get_drvinfo, ptr @w5100_get_regs_len, ptr @w5100_get_regs, ptr null, ptr null, ptr @w5100_get_msglevel, ptr @w5100_set_msglevel, ptr null, ptr @w5100_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@w5100_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->rx_work)\00", [62 x i8] zeroinitializer }, align 32
@w5100_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->tx_work)\00", [62 x i8] zeroinitializer }, align 32
@w5100_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->setrx_work)\00", [59 x i8] zeroinitializer }, align 32
@w5100_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->restart_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-link\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_w5100_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_w5100_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_w5100_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w5100_probe to i32), ptr @__kstrtab_w5100_probe, ptr @__kstrtabns_w5100_probe }, section "___ksymtab_gpl+w5100_probe", align 4
@__kstrtab_w5100_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_w5100_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_w5100_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w5100_remove to i32), ptr @__kstrtab_w5100_remove, ptr @__kstrtabns_w5100_remove }, section "___ksymtab_gpl+w5100_remove", align 4
@w5100_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @w5100_suspend, ptr @w5100_resume, ptr @w5100_suspend, ptr @w5100_resume, ptr @w5100_suspend, ptr @w5100_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_w5100_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_w5100_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_w5100_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w5100_pm_ops to i32), ptr @__kstrtab_w5100_pm_ops, ptr @__kstrtabns_w5100_pm_ops }, section "___ksymtab_gpl+w5100_pm_ops", align 4
@__initcall__kmod_w5100__345_1278_w5100_mmio_driver_init6 = internal global ptr @w5100_mmio_driver_init, section ".initcall6.init", align 4
@w5100_mmio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @w5100_mmio_probe, ptr @w5100_mmio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w5100_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_w5100_mmio_driver_exit = internal global ptr @w5100_mmio_driver_exit, section ".exitcall.exit", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enabling\0A\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shutting down\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/wiznet/w5100.c\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"w5100\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2012-04-04\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@w5100_interrupt.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.15, ptr @.str.11, ptr @.str.16, i8 0, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"w5100_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx done\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"link is up\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link is down\0A\00", [18 x i8] zeroinitializer }, align 32
@w5100_mmio_indirect_ops = internal constant { %struct.w5100_ops, [56 x i8] } { %struct.w5100_ops { i8 0, i32 0, ptr @w5100_read_indirect, ptr @w5100_write_indirect, ptr @w5100_read16_indirect, ptr @w5100_write16_indirect, ptr @w5100_readbulk_indirect, ptr @w5100_writebulk_indirect, ptr @w5100_reset_indirect, ptr @w5100_mmio_init }, [56 x i8] zeroinitializer }, align 32
@w5100_mmio_direct_ops = internal constant { %struct.w5100_ops, [56 x i8] } { %struct.w5100_ops { i8 0, i32 0, ptr @w5100_read_direct, ptr @w5100_write_direct, ptr @w5100_read16_direct, ptr @w5100_write16_direct, ptr @w5100_readbulk_direct, ptr @w5100_writebulk_direct, ptr null, ptr @w5100_mmio_init }, [56 x i8] zeroinitializer }, align 32
@w5100_mmio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mmio_priv->reg_lock\00", [43 x i8] zeroinitializer }, align 32
@switch.table.w5100_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1024, i32 16384, i32 65536], [20 x i8] zeroinitializer }, align 32
@switch.table.w5100_probe.20 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16384, i32 32768, i32 131072], [20 x i8] zeroinitializer }, align 32
@switch.table.w5100_probe.21 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 8192, i16 16384, i16 16384], [26 x i8] zeroinitializer }, align 32
@switch.table.w5100_probe.22 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 24576, i32 49152, i32 196608], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"w5100_netdev_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1028, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"w5100_ethtool_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1019, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1147, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1154, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1155, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1156, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1157, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1192, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"w5100_pm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1267, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"w5100_mmio_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1270, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 997, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1011, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 833, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 722, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 723, i32 25 }
@___asan_gen_.81 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 4963, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 924, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 947, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 950, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"w5100_mmio_indirect_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 400, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"w5100_mmio_direct_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 277, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [39 x i8] c"../drivers/net/ethernet/wiznet/w5100.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 268, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [25 x i8] c"switch.table.w5100_probe\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"switch.table.w5100_probe.20\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [28 x i8] c"switch.table.w5100_probe.21\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"switch.table.w5100_probe.22\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias341, ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__exitcall_w5100_mmio_driver_exit, ptr @__initcall__kmod_w5100__345_1278_w5100_mmio_driver_init6, ptr @__ksymtab_w5100_ops_priv, ptr @__ksymtab_w5100_pm_ops, ptr @__ksymtab_w5100_probe, ptr @__ksymtab_w5100_remove, ptr @w5100_mmio_driver_exit, ptr @w5100_netdev_ops, ptr @w5100_ethtool_ops, ptr @.str, ptr @w5100_probe.__key, ptr @.str.1, ptr @w5100_probe.__key.2, ptr @.str.3, ptr @w5100_probe.__key.4, ptr @.str.5, ptr @w5100_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @w5100_pm_ops, ptr @w5100_mmio_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @w5100_mmio_indirect_ops, ptr @w5100_mmio_direct_ops, ptr @w5100_mmio_init.__key, ptr @.str.19, ptr @switch.table.w5100_probe, ptr @switch.table.w5100_probe.20, ptr @switch.table.w5100_probe.21, ptr @switch.table.w5100_probe.22], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_mmio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_mmio_indirect_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_mmio_direct_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w5100_mmio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.w5100_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.w5100_probe.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.w5100_probe.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.w5100_probe.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @w5100_ops_priv(ptr noundef readnone %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ndev, i32 2784
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w5100_probe(ptr noundef %dev, ptr noundef %ops, i32 noundef %sizeof_ops_priv, ptr noundef %mac_addr, i32 noundef %irq, i32 noundef %link_gpio) #1 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sizeof_ops_priv)
  %tobool.not = icmp eq i32 %sizeof_ops_priv, 0
  %add1.op = add i32 %sizeof_ops_priv, 511
  %add2 = select i1 %tobool.not, i32 495, i32 %add1.op
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef %add2, i32 noundef 1, i32 noundef 1) #13
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %entry.cleanup130_crit_edge, label %if.end5

entry.cleanup130_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup130

if.end5:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %chip_id = getelementptr inbounds %struct.w5100_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %if.end5.err_register_crit_edge

if.end5.err_register_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_register

switch.lookup:                                    ; preds = %if.end5
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.w5100_probe, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep258 = getelementptr inbounds [3 x i32], ptr @switch.table.w5100_probe.20, i32 0, i32 %3
  %6 = ptrtoint ptr %switch.gep258 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load259 = load i32, ptr %switch.gep258, align 4
  %switch.gep260 = getelementptr inbounds [3 x i16], ptr @switch.table.w5100_probe.21, i32 0, i32 %3
  %7 = ptrtoint ptr %switch.gep260 to i32
  call void @__asan_load2_noabort(i32 %7)
  %switch.load261 = load i16, ptr %switch.gep260, align 2
  %switch.gep262 = getelementptr inbounds [3 x i32], ptr @switch.table.w5100_probe.22, i32 0, i32 %3
  %8 = ptrtoint ptr %switch.gep262 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load263 = load i32, ptr %switch.gep262, align 4
  %s0_regs15 = getelementptr i8, ptr %call, i32 2308
  %9 = ptrtoint ptr %s0_regs15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load, ptr %s0_regs15, align 4
  %s0_tx_buf16 = getelementptr i8, ptr %call, i32 2312
  %10 = ptrtoint ptr %s0_tx_buf16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.load259, ptr %s0_tx_buf16, align 8
  %s0_tx_buf_size17 = getelementptr i8, ptr %call, i32 2316
  %11 = ptrtoint ptr %s0_tx_buf_size17 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %switch.load261, ptr %s0_tx_buf_size17, align 4
  %s0_rx_buf18 = getelementptr i8, ptr %call, i32 2320
  %12 = ptrtoint ptr %s0_rx_buf18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %switch.load263, ptr %s0_rx_buf18, align 8
  %s0_rx_buf_size19 = getelementptr i8, ptr %call, i32 2324
  %13 = ptrtoint ptr %s0_rx_buf_size19 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %switch.load261, ptr %s0_rx_buf_size19, align 4
  %ndev20 = getelementptr i8, ptr %call, i32 2568
  %14 = ptrtoint ptr %ndev20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %ndev20, align 8
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ops, ptr %add.ptr.i, align 8
  %irq22 = getelementptr i8, ptr %call, i32 2328
  %16 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %irq, ptr %irq22, align 8
  %link_gpio23 = getelementptr i8, ptr %call, i32 2336
  %17 = ptrtoint ptr %link_gpio23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %link_gpio, ptr %link_gpio23, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %18 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @w5100_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %19 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @w5100_ethtool_ops, ptr %ethtool_ops, align 16
  %napi = getelementptr i8, ptr %call, i32 2344
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @w5100_napi_poll, i32 noundef 16) #13
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %features, align 16
  %or = or i64 %21, 1024
  store i64 %or, ptr %features, align 16
  %call24 = tail call i32 @register_netdev(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %switch.lookup.err_register_crit_edge, label %if.end26

switch.lookup.err_register_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_register

if.end26:                                         ; preds = %switch.lookup
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end26.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.end26.netdev_name.exit_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @strchr(ptr noundef nonnull %call, i32 noundef 37) #13
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %call, ptr @.str.14
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.end26.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.14, %if.end26.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call28 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, ptr noundef %retval.0.i) #13
  %xfer_wq = getelementptr i8, ptr %call, i32 2580
  %24 = ptrtoint ptr %xfer_wq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call28, ptr %xfer_wq, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %netdev_name.exit.err_wq_crit_edge, label %do.body

netdev_name.exit.err_wq_crit_edge:                ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_wq

do.body:                                          ; preds = %netdev_name.exit
  %rx_work = getelementptr i8, ptr %call, i32 2584
  tail call void @__init_work(ptr noundef %rx_work, i32 noundef 0) #13
  %25 = ptrtoint ptr %rx_work to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %rx_work, align 8
  %lockdep_map = getelementptr i8, ptr %call, i32 2600
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @w5100_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry36 = getelementptr i8, ptr %call, i32 2588
  %26 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2592
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry36, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2596
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @w5100_rx_work, ptr %func, align 4
  %tx_work = getelementptr i8, ptr %call, i32 2632
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #13
  %29 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %tx_work, align 8
  %lockdep_map44 = getelementptr i8, ptr %call, i32 2648
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map44, ptr noundef nonnull @.str.3, ptr noundef nonnull @w5100_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry46 = getelementptr i8, ptr %call, i32 2636
  %30 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i224 = getelementptr i8, ptr %call, i32 2640
  %31 = ptrtoint ptr %prev.i224 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry46, ptr %prev.i224, align 4
  %func48 = getelementptr i8, ptr %call, i32 2644
  %32 = ptrtoint ptr %func48 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @w5100_tx_work, ptr %func48, align 4
  %setrx_work = getelementptr i8, ptr %call, i32 2676
  tail call void @__init_work(ptr noundef %setrx_work, i32 noundef 0) #13
  %33 = ptrtoint ptr %setrx_work to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %setrx_work, align 4
  %lockdep_map57 = getelementptr i8, ptr %call, i32 2692
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map57, ptr noundef nonnull @.str.5, ptr noundef nonnull @w5100_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry59 = getelementptr i8, ptr %call, i32 2680
  %34 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry59, ptr %entry59, align 4
  %prev.i225 = getelementptr i8, ptr %call, i32 2684
  %35 = ptrtoint ptr %prev.i225 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry59, ptr %prev.i225, align 4
  %func61 = getelementptr i8, ptr %call, i32 2688
  %36 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @w5100_setrx_work, ptr %func61, align 4
  %restart_work = getelementptr i8, ptr %call, i32 2720
  tail call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #13
  %37 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %restart_work, align 8
  %lockdep_map70 = getelementptr i8, ptr %call, i32 2736
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map70, ptr noundef nonnull @.str.7, ptr noundef nonnull @w5100_probe.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry72 = getelementptr i8, ptr %call, i32 2724
  %38 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i226 = getelementptr i8, ptr %call, i32 2728
  %39 = ptrtoint ptr %prev.i226 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry72, ptr %prev.i226, align 4
  %func74 = getelementptr i8, ptr %call, i32 2732
  %40 = ptrtoint ptr %func74 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @w5100_restart_work, ptr %func74, align 4
  %tobool77.not = icmp eq ptr %mac_addr, null
  br i1 %tobool77.not, label %if.else, label %if.then78

if.then78:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %mac_addr, i32 noundef 6) #13
  br label %if.end79

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #13
  %41 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #13
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr.i, align 1
  %44 = and i8 %43, -4
  %45 = or i8 %44, 2
  store i8 %45, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #13
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %46 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #13
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then78
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %init = getelementptr inbounds %struct.w5100_ops, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init, align 4
  %tobool81.not = icmp eq ptr %50, null
  br i1 %tobool81.not, label %if.end79.if.end90_crit_edge, label %if.then82

if.end79.if.end90_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then82:                                        ; preds = %if.end79
  %51 = ptrtoint ptr %ndev20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ndev20, align 8
  %call86 = call i32 %50(ptr noundef %52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then82.if.end90_crit_edge, label %if.then82.err_hw_crit_edge

if.then82.err_hw_crit_edge:                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_hw

if.then82.if.end90_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.end90:                                         ; preds = %if.then82.if.end90_crit_edge, %if.end79.if.end90_crit_edge
  %call91 = call fastcc i32 @w5100_hw_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.err_hw_crit_edge

if.end90.err_hw_crit_edge:                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_hw

if.end94:                                         ; preds = %if.end90
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ops, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool95.not = icmp eq i8 %54, 0
  %55 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq22, align 8
  %57 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %call, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i234 = icmp eq i8 %58, 0
  br i1 %tobool95.not, label %if.else100, label %if.then96

if.then96:                                        ; preds = %if.end94
  br i1 %tobool.not.i234, label %if.then96.netdev_name.exit233_crit_edge, label %lor.lhs.false.i231

if.then96.netdev_name.exit233_crit_edge:          ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit233

lor.lhs.false.i231:                               ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  %call.i228 = call ptr @strchr(ptr noundef nonnull %call, i32 noundef 37) #13
  %tobool2.not.i229 = icmp eq ptr %call.i228, null
  %spec.select.i230 = select i1 %tobool2.not.i229, ptr %call, ptr @.str.14
  br label %netdev_name.exit233

netdev_name.exit233:                              ; preds = %lor.lhs.false.i231, %if.then96.netdev_name.exit233_crit_edge
  %retval.0.i232 = phi ptr [ @.str.14, %if.then96.netdev_name.exit233_crit_edge ], [ %spec.select.i230, %lor.lhs.false.i231 ]
  %call99 = call i32 @request_threaded_irq(i32 noundef %56, ptr noundef null, ptr noundef nonnull @w5100_interrupt, i32 noundef 8200, ptr noundef %retval.0.i232, ptr noundef nonnull %call) #13
  br label %if.end104

if.else100:                                       ; preds = %if.end94
  br i1 %tobool.not.i234, label %if.else100.netdev_name.exit240_crit_edge, label %lor.lhs.false.i238

if.else100.netdev_name.exit240_crit_edge:         ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit240

lor.lhs.false.i238:                               ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #15
  %call.i235 = call ptr @strchr(ptr noundef nonnull %call, i32 noundef 37) #13
  %tobool2.not.i236 = icmp eq ptr %call.i235, null
  %spec.select.i237 = select i1 %tobool2.not.i236, ptr %call, ptr @.str.14
  br label %netdev_name.exit240

netdev_name.exit240:                              ; preds = %lor.lhs.false.i238, %if.else100.netdev_name.exit240_crit_edge
  %retval.0.i239 = phi ptr [ @.str.14, %if.else100.netdev_name.exit240_crit_edge ], [ %spec.select.i237, %lor.lhs.false.i238 ]
  %call.i241 = call i32 @request_threaded_irq(i32 noundef %56, ptr noundef nonnull @w5100_interrupt, ptr noundef null, i32 noundef 8, ptr noundef %retval.0.i239, ptr noundef nonnull %call) #13
  br label %if.end104

if.end104:                                        ; preds = %netdev_name.exit240, %netdev_name.exit233
  %err.0 = phi i32 [ %call99, %netdev_name.exit233 ], [ %call.i241, %netdev_name.exit240 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool105.not = icmp eq i32 %err.0, 0
  br i1 %tobool105.not, label %if.end107, label %if.end104.err_hw_crit_edge

if.end104.err_hw_crit_edge:                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_hw

if.end107:                                        ; preds = %if.end104
  %59 = ptrtoint ptr %link_gpio23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %link_gpio23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %60)
  %61 = icmp ult i32 %60, 2048
  br i1 %61, label %if.then110, label %if.end107.cleanup130_crit_edge

if.end107.cleanup130_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup130

if.then110:                                       ; preds = %if.end107
  %call.i242 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #13
  %tobool112.not = icmp eq ptr %call.i242, null
  br i1 %tobool112.not, label %err_gpio, label %if.end114

if.end114:                                        ; preds = %if.then110
  %62 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %call, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i243 = icmp eq i8 %63, 0
  br i1 %tobool.not.i243, label %if.end114.netdev_name.exit249_crit_edge, label %lor.lhs.false.i247

if.end114.netdev_name.exit249_crit_edge:          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit249

lor.lhs.false.i247:                               ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %call.i244 = call ptr @strchr(ptr noundef nonnull %call, i32 noundef 37) #13
  %tobool2.not.i245 = icmp eq ptr %call.i244, null
  %spec.select.i246 = select i1 %tobool2.not.i245, ptr %call, ptr @.str.14
  br label %netdev_name.exit249

netdev_name.exit249:                              ; preds = %lor.lhs.false.i247, %if.end114.netdev_name.exit249_crit_edge
  %retval.0.i248 = phi ptr [ @.str.14, %if.end114.netdev_name.exit249_crit_edge ], [ %spec.select.i246, %lor.lhs.false.i247 ]
  %call116 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i242, i32 noundef 16, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i248)
  %64 = ptrtoint ptr %link_gpio23 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %link_gpio23, align 8
  %call.i250 = call ptr @gpio_to_desc(i32 noundef %65) #13
  %call1.i = call i32 @gpiod_to_irq(ptr noundef %call.i250) #13
  %link_irq = getelementptr i8, ptr %call, i32 2332
  %66 = ptrtoint ptr %link_irq to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call1.i, ptr %link_irq, align 4
  %67 = ptrtoint ptr %ndev20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ndev20, align 8
  %call121 = call i32 @request_any_context_irq(i32 noundef %call1.i, ptr noundef nonnull @w5100_detect_link, i32 noundef 3, ptr noundef nonnull %call.i242, ptr noundef %68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then123, label %netdev_name.exit249.cleanup130_crit_edge

netdev_name.exit249.cleanup130_crit_edge:         ; preds = %netdev_name.exit249
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup130

if.then123:                                       ; preds = %netdev_name.exit249
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %link_gpio23 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -22, ptr %link_gpio23, align 8
  br label %cleanup130

err_gpio:                                         ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq22, align 8
  %call128 = call ptr @free_irq(i32 noundef %71, ptr noundef nonnull %call) #13
  br label %err_hw

err_hw:                                           ; preds = %err_gpio, %if.end104.err_hw_crit_edge, %if.end90.err_hw_crit_edge, %if.then82.err_hw_crit_edge
  %err.2 = phi i32 [ %call86, %if.then82.err_hw_crit_edge ], [ %call91, %if.end90.err_hw_crit_edge ], [ %err.0, %if.end104.err_hw_crit_edge ], [ -12, %err_gpio ]
  %72 = ptrtoint ptr %xfer_wq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xfer_wq, align 4
  call void @destroy_workqueue(ptr noundef %73) #13
  br label %err_wq

err_wq:                                           ; preds = %err_hw, %netdev_name.exit.err_wq_crit_edge
  %err.3 = phi i32 [ %err.2, %err_hw ], [ -12, %netdev_name.exit.err_wq_crit_edge ]
  call void @unregister_netdev(ptr noundef nonnull %call) #13
  br label %err_register

err_register:                                     ; preds = %err_wq, %switch.lookup.err_register_crit_edge, %if.end5.err_register_crit_edge
  %err.4 = phi i32 [ %call24, %switch.lookup.err_register_crit_edge ], [ %err.3, %err_wq ], [ -22, %if.end5.err_register_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call) #13
  br label %cleanup130

cleanup130:                                       ; preds = %err_register, %if.then123, %netdev_name.exit249.cleanup130_crit_edge, %if.end107.cleanup130_crit_edge, %entry.cleanup130_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_register ], [ -12, %entry.cleanup130_crit_edge ], [ 0, %if.end107.cleanup130_crit_edge ], [ 0, %if.then123 ], [ 0, %netdev_name.exit249.cleanup130_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_napi_poll(ptr noundef %napi, i32 noundef %budget) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp20 = icmp sgt i32 %budget, 0
  br i1 %cmp20, label %for.body.lr.ph, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.body.lr.ph:                                   ; preds = %entry
  %ndev = getelementptr i8, ptr %napi, i32 224
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rx_count.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %call = tail call fastcc ptr @w5100_rx_skb(ptr noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then3.critedge, label %for.inc

for.inc:                                          ; preds = %for.body
  %call1 = tail call i32 @netif_receive_skb(ptr noundef nonnull %call) #13
  %inc = add nuw nsw i32 %rx_count.021, 1
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %for.inc.if.end5_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3.critedge:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %rx_count.021) #13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %chip_id.i.i = getelementptr inbounds %struct.w5100_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 2
  %..i.i = select i1 %cmp.i.i, i32 24, i32 22
  %write.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i.i.i, align 4
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 8
  %call.i.i.i = tail call i32 %7(ptr noundef %9, i32 noundef %..i.i, i8 noundef zeroext 1) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3.critedge, %for.inc.if.end5_crit_edge, %entry.if.end5_crit_edge
  %rx_count.019 = phi i32 [ %rx_count.021, %if.then3.critedge ], [ 0, %entry.if.end5_crit_edge ], [ %budget, %for.inc.if.end5_crit_edge ]
  ret i32 %rx_count.019
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5100_rx_work(ptr nocapture noundef readonly %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %call3 = tail call fastcc ptr @w5100_rx_skb(ptr noundef %1)
  %tobool.not4 = icmp eq ptr %call3, null
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call5 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call3, %entry.while.body_crit_edge ]
  %call1 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call5) #13
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  %call = tail call fastcc ptr @w5100_rx_skb(ptr noundef %3)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -280
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %chip_id.i.i = getelementptr inbounds %struct.w5100_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 2
  %..i.i = select i1 %cmp.i.i, i32 24, i32 22
  %write.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i.i, align 4
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 8
  %call.i.i.i = tail call i32 %9(ptr noundef %11, i32 noundef %..i.i, i8 noundef zeroext 1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5100_tx_work(ptr nocapture noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  store ptr null, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !81

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 821, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr i8, ptr %work, i32 -64
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  tail call fastcc void @w5100_tx_skb(ptr noundef %3, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5100_setrx_work(ptr nocapture noundef readonly %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -372
  tail call fastcc void @w5100_hw_start(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5100_restart_work(ptr nocapture noundef readonly %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr i8, ptr %work, i32 -152
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #13
  %call1.i = tail call fastcc i32 @w5100_hw_reset(ptr noundef %add.ptr.i.i) #13
  tail call fastcc void @w5100_hw_start(ptr noundef %add.ptr.i.i) #13
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %4 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %6 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i.i.i, label %entry.w5100_restart.exit_crit_edge, label %do.body5.i.i.i

entry.w5100_restart.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_restart.exit

do.body5.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %trans_start.i.i.i, align 16
  br label %w5100_restart.exit

w5100_restart.exit:                               ; preds = %do.body5.i.i.i, %entry.w5100_restart.exit_crit_edge
  %12 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w5100_hw_reset(ptr noundef readonly %priv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %reset.i = getelementptr inbounds %struct.w5100_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ndev.i = getelementptr inbounds %struct.w5100_priv, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.i, align 8
  %call.i = tail call i32 %3(ptr noundef %5) #13
  br label %w5100_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %write.i.i = getelementptr inbounds %struct.w5100_ops, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i.i, align 4
  %ndev.i.i = getelementptr inbounds %struct.w5100_priv, ptr %priv, i32 0, i32 10
  %8 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev.i.i, align 8
  %call.i.i = tail call i32 %7(ptr noundef %9, i32 noundef 0, i8 noundef zeroext -128) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #13
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %write.i1.i = getelementptr inbounds %struct.w5100_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %write.i1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i1.i, align 4
  %19 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev.i.i, align 8
  %call.i3.i = tail call i32 %18(ptr noundef %20, i32 noundef 0, i8 noundef zeroext 16) #13
  br label %w5100_reset.exit

w5100_reset.exit:                                 ; preds = %if.end.i, %if.then.i
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %chip_id.i.i = getelementptr inbounds %struct.w5100_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 2
  %..i.i = select i1 %cmp.i.i, i32 24, i32 22
  %write.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i.i.i, align 4
  %ndev.i.i.i = getelementptr inbounds %struct.w5100_priv, ptr %priv, i32 0, i32 10
  %27 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i.i.i = tail call i32 %26(ptr noundef %28, i32 noundef %..i.i, i8 noundef zeroext 0) #13
  %29 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev.i.i.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr.i, align 64
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %writebulk.i.i = getelementptr inbounds %struct.w5100_ops, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %writebulk.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %writebulk.i.i, align 4
  %call.i.i11 = tail call i32 %36(ptr noundef %30, i32 noundef 9, ptr noundef %32, i32 noundef 6) #13
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %chip_id = getelementptr inbounds %struct.w5100_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip_id, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %w5100_reset.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

w5100_reset.exit.cleanup_crit_edge:               ; preds = %w5100_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %w5100_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  %write.i.i12 = getelementptr inbounds %struct.w5100_ops, ptr %38, i32 0, i32 3
  %42 = ptrtoint ptr %write.i.i12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i.i12, align 4
  %44 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i.i14 = tail call i32 %43(ptr noundef %45, i32 noundef 26, i8 noundef zeroext 3) #13
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %write.i3.i = getelementptr inbounds %struct.w5100_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %write.i3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write.i3.i, align 4
  %50 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i5.i = tail call i32 %49(ptr noundef %51, i32 noundef 27, i8 noundef zeroext 3) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %w5100_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  %write.i.i15 = getelementptr inbounds %struct.w5100_ops, ptr %38, i32 0, i32 3
  %52 = ptrtoint ptr %write.i.i15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write.i.i15, align 4
  %54 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i.i17 = tail call i32 %53(ptr noundef %55, i32 noundef 16414, i8 noundef zeroext 16) #13
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %write.i12.i = getelementptr inbounds %struct.w5100_ops, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %write.i12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i12.i, align 4
  %60 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i14.i = tail call i32 %59(ptr noundef %61, i32 noundef 16415, i8 noundef zeroext 16) #13
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %write.i15.i = getelementptr inbounds %struct.w5100_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %write.i15.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write.i15.i, align 4
  %66 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.i = tail call i32 %65(ptr noundef %67, i32 noundef 16670, i8 noundef zeroext 0) #13
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  %write.i18.i = getelementptr inbounds %struct.w5100_ops, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %write.i18.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write.i18.i, align 4
  %72 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.i = tail call i32 %71(ptr noundef %73, i32 noundef 16671, i8 noundef zeroext 0) #13
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv, align 8
  %write.i15.1.i = getelementptr inbounds %struct.w5100_ops, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %write.i15.1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write.i15.1.i, align 4
  %78 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.1.i = tail call i32 %77(ptr noundef %79, i32 noundef 16926, i8 noundef zeroext 0) #13
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 8
  %write.i18.1.i = getelementptr inbounds %struct.w5100_ops, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %write.i18.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write.i18.1.i, align 4
  %84 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.1.i = tail call i32 %83(ptr noundef %85, i32 noundef 16927, i8 noundef zeroext 0) #13
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 8
  %write.i15.2.i = getelementptr inbounds %struct.w5100_ops, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %write.i15.2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write.i15.2.i, align 4
  %90 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.2.i = tail call i32 %89(ptr noundef %91, i32 noundef 17182, i8 noundef zeroext 0) #13
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 8
  %write.i18.2.i = getelementptr inbounds %struct.w5100_ops, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %write.i18.2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write.i18.2.i, align 4
  %96 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.2.i = tail call i32 %95(ptr noundef %97, i32 noundef 17183, i8 noundef zeroext 0) #13
  %98 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv, align 8
  %write.i15.3.i = getelementptr inbounds %struct.w5100_ops, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %write.i15.3.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write.i15.3.i, align 4
  %102 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.3.i = tail call i32 %101(ptr noundef %103, i32 noundef 17438, i8 noundef zeroext 0) #13
  %104 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %priv, align 8
  %write.i18.3.i = getelementptr inbounds %struct.w5100_ops, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %write.i18.3.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write.i18.3.i, align 4
  %108 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.3.i = tail call i32 %107(ptr noundef %109, i32 noundef 17439, i8 noundef zeroext 0) #13
  %110 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %priv, align 8
  %write.i15.4.i = getelementptr inbounds %struct.w5100_ops, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %write.i15.4.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write.i15.4.i, align 4
  %114 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.4.i = tail call i32 %113(ptr noundef %115, i32 noundef 17694, i8 noundef zeroext 0) #13
  %116 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv, align 8
  %write.i18.4.i = getelementptr inbounds %struct.w5100_ops, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %write.i18.4.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write.i18.4.i, align 4
  %120 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.4.i = tail call i32 %119(ptr noundef %121, i32 noundef 17695, i8 noundef zeroext 0) #13
  %122 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv, align 8
  %write.i15.5.i = getelementptr inbounds %struct.w5100_ops, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %write.i15.5.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write.i15.5.i, align 4
  %126 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.5.i = tail call i32 %125(ptr noundef %127, i32 noundef 17950, i8 noundef zeroext 0) #13
  %128 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %priv, align 8
  %write.i18.5.i = getelementptr inbounds %struct.w5100_ops, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %write.i18.5.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write.i18.5.i, align 4
  %132 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.5.i = tail call i32 %131(ptr noundef %133, i32 noundef 17951, i8 noundef zeroext 0) #13
  %134 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %priv, align 8
  %write.i15.6.i = getelementptr inbounds %struct.w5100_ops, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %write.i15.6.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write.i15.6.i, align 4
  %138 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.6.i = tail call i32 %137(ptr noundef %139, i32 noundef 18206, i8 noundef zeroext 0) #13
  %140 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %priv, align 8
  %write.i18.6.i = getelementptr inbounds %struct.w5100_ops, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %write.i18.6.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write.i18.6.i, align 4
  %144 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.6.i = tail call i32 %143(ptr noundef %145, i32 noundef 18207, i8 noundef zeroext 0) #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %w5100_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  %write.i.i18 = getelementptr inbounds %struct.w5100_ops, ptr %38, i32 0, i32 3
  %146 = ptrtoint ptr %write.i.i18 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write.i.i18, align 4
  %148 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i.i20 = tail call i32 %147(ptr noundef %149, i32 noundef 65566, i8 noundef zeroext 16) #13
  %150 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv, align 8
  %write.i12.i21 = getelementptr inbounds %struct.w5100_ops, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %write.i12.i21 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write.i12.i21, align 4
  %154 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i14.i22 = tail call i32 %153(ptr noundef %155, i32 noundef 65567, i8 noundef zeroext 16) #13
  %156 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %priv, align 8
  %write.i15.i23 = getelementptr inbounds %struct.w5100_ops, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %write.i15.i23 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %write.i15.i23, align 4
  %160 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.i24 = tail call i32 %159(ptr noundef %161, i32 noundef 327710, i8 noundef zeroext 0) #13
  %162 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %priv, align 8
  %write.i18.i25 = getelementptr inbounds %struct.w5100_ops, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %write.i18.i25 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write.i18.i25, align 4
  %166 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.i26 = tail call i32 %165(ptr noundef %167, i32 noundef 327711, i8 noundef zeroext 0) #13
  %168 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %priv, align 8
  %write.i15.1.i27 = getelementptr inbounds %struct.w5100_ops, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %write.i15.1.i27 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write.i15.1.i27, align 4
  %172 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.1.i28 = tail call i32 %171(ptr noundef %173, i32 noundef 589854, i8 noundef zeroext 0) #13
  %174 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %priv, align 8
  %write.i18.1.i29 = getelementptr inbounds %struct.w5100_ops, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %write.i18.1.i29 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %write.i18.1.i29, align 4
  %178 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.1.i30 = tail call i32 %177(ptr noundef %179, i32 noundef 589855, i8 noundef zeroext 0) #13
  %180 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %priv, align 8
  %write.i15.2.i31 = getelementptr inbounds %struct.w5100_ops, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %write.i15.2.i31 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write.i15.2.i31, align 4
  %184 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.2.i32 = tail call i32 %183(ptr noundef %185, i32 noundef 851998, i8 noundef zeroext 0) #13
  %186 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %priv, align 8
  %write.i18.2.i33 = getelementptr inbounds %struct.w5100_ops, ptr %187, i32 0, i32 3
  %188 = ptrtoint ptr %write.i18.2.i33 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %write.i18.2.i33, align 4
  %190 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.2.i34 = tail call i32 %189(ptr noundef %191, i32 noundef 851999, i8 noundef zeroext 0) #13
  %192 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %priv, align 8
  %write.i15.3.i35 = getelementptr inbounds %struct.w5100_ops, ptr %193, i32 0, i32 3
  %194 = ptrtoint ptr %write.i15.3.i35 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write.i15.3.i35, align 4
  %196 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.3.i36 = tail call i32 %195(ptr noundef %197, i32 noundef 1114142, i8 noundef zeroext 0) #13
  %198 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %priv, align 8
  %write.i18.3.i37 = getelementptr inbounds %struct.w5100_ops, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %write.i18.3.i37 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write.i18.3.i37, align 4
  %202 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.3.i38 = tail call i32 %201(ptr noundef %203, i32 noundef 1114143, i8 noundef zeroext 0) #13
  %204 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %priv, align 8
  %write.i15.4.i39 = getelementptr inbounds %struct.w5100_ops, ptr %205, i32 0, i32 3
  %206 = ptrtoint ptr %write.i15.4.i39 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %write.i15.4.i39, align 4
  %208 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.4.i40 = tail call i32 %207(ptr noundef %209, i32 noundef 1376286, i8 noundef zeroext 0) #13
  %210 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %priv, align 8
  %write.i18.4.i41 = getelementptr inbounds %struct.w5100_ops, ptr %211, i32 0, i32 3
  %212 = ptrtoint ptr %write.i18.4.i41 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %write.i18.4.i41, align 4
  %214 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.4.i42 = tail call i32 %213(ptr noundef %215, i32 noundef 1376287, i8 noundef zeroext 0) #13
  %216 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %priv, align 8
  %write.i15.5.i43 = getelementptr inbounds %struct.w5100_ops, ptr %217, i32 0, i32 3
  %218 = ptrtoint ptr %write.i15.5.i43 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write.i15.5.i43, align 4
  %220 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.5.i44 = tail call i32 %219(ptr noundef %221, i32 noundef 1638430, i8 noundef zeroext 0) #13
  %222 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %priv, align 8
  %write.i18.5.i45 = getelementptr inbounds %struct.w5100_ops, ptr %223, i32 0, i32 3
  %224 = ptrtoint ptr %write.i18.5.i45 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write.i18.5.i45, align 4
  %226 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.5.i46 = tail call i32 %225(ptr noundef %227, i32 noundef 1638431, i8 noundef zeroext 0) #13
  %228 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %priv, align 8
  %write.i15.6.i47 = getelementptr inbounds %struct.w5100_ops, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %write.i15.6.i47 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write.i15.6.i47, align 4
  %232 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i17.6.i48 = tail call i32 %231(ptr noundef %233, i32 noundef 1900574, i8 noundef zeroext 0) #13
  %234 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %priv, align 8
  %write.i18.6.i49 = getelementptr inbounds %struct.w5100_ops, ptr %235, i32 0, i32 3
  %236 = ptrtoint ptr %write.i18.6.i49 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write.i18.6.i49, align 4
  %238 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i20.6.i50 = tail call i32 %237(ptr noundef %239, i32 noundef 1900575, i8 noundef zeroext 0) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %rtr.0 = phi i32 [ 25, %sw.bb2 ], [ 23, %sw.bb1 ], [ 23, %sw.bb ]
  %240 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %priv, align 8
  %read16.i = getelementptr inbounds %struct.w5100_ops, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %read16.i, align 4
  %244 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ndev.i.i.i, align 8
  %call.i52 = tail call i32 %243(ptr noundef %245, i32 noundef %rtr.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %call.i52)
  %cmp.not = icmp eq i32 %call.i52, 2000
  %. = select i1 %cmp.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %w5100_reset.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %w5100_reset.exit.cleanup_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_interrupt(i32 noundef %irq, ptr noundef %ndev_instance) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev_instance, i32 2304
  %s0_regs = getelementptr i8, ptr %ndev_instance, i32 2308
  %0 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s0_regs, align 4
  %add = add i32 %1, 2
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %read.i = getelementptr inbounds %struct.w5100_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %ndev.i = getelementptr i8, ptr %ndev_instance, i32 2568
  %6 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev.i, align 8
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef %add) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s0_regs, align 4
  %add3 = add i32 %9, 2
  %conv = trunc i32 %call.i to i8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %write.i = getelementptr inbounds %struct.w5100_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %14 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev.i, align 8
  %call.i51 = tail call i32 %13(ptr noundef %15, i32 noundef %add3, i8 noundef zeroext %conv) #13
  %and = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end20_crit_edge, label %do.body

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %ndev_instance, i32 2576
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and7 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body.do.end19_crit_edge, label %do.body10

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w5100_interrupt.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w5100_interrupt, %if.then15)) #13
          to label %do.end19 [label %if.then15], !srcloc !82

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @w5100_interrupt.__UNIQUE_ID_ddebug344, ptr noundef %ndev_instance, ptr noundef nonnull @.str.16) #13
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body10, %do.body.do.end19_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev_instance, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %19) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end.if.end20_crit_edge
  %and21 = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.then23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %chip_id.i.i = getelementptr inbounds %struct.w5100_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 2
  %..i.i = select i1 %cmp.i.i, i32 24, i32 22
  %write.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i.i.i, align 4
  %26 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev.i, align 8
  %call.i.i.i = tail call i32 %25(ptr noundef %27, i32 noundef %..i.i, i8 noundef zeroext 0) #13
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool24.not = icmp eq i8 %31, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %xfer_wq = getelementptr i8, ptr %ndev_instance, i32 2580
  %32 = ptrtoint ptr %xfer_wq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xfer_wq, align 4
  %rx_work = getelementptr i8, ptr %ndev_instance, i32 2584
  %call.i52 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %rx_work) #13
  br label %cleanup

if.else:                                          ; preds = %if.then23
  %napi = getelementptr i8, ptr %ndev_instance, i32 2344
  %call27 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #13
  br i1 %call27, label %if.then28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %napi) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.else.cleanup_crit_edge, %if.then25, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then25 ], [ 1, %if.then28 ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_any_context_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_detect_link(i32 noundef %irq, ptr noundef %ndev_instance) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then:                                          ; preds = %entry
  %link_gpio = getelementptr i8, ptr %ndev_instance, i32 2336
  %2 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_gpio, align 8
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #13
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 0
  %msg_enable6 = getelementptr i8, ptr %ndev_instance, i32 2576
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev_instance, ptr noundef nonnull @.str.17) #16
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body.do.end_crit_edge
  tail call void @netif_carrier_on(ptr noundef %ndev_instance) #13
  br label %if.end14

do.body5:                                         ; preds = %if.then
  br i1 %tobool8.not, label %do.body5.do.end12_crit_edge, label %if.then9

do.body5.do.end12_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev_instance, ptr noundef nonnull @.str.18) #16
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body5.do.end12_crit_edge
  tail call void @netif_carrier_off(ptr noundef %ndev_instance) #13
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %do.end, %entry.if.end14_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w5100_remove(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call fastcc i32 @w5100_hw_reset(ptr noundef %add.ptr.i)
  %irq = getelementptr i8, ptr %1, i32 2328
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %call3 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #13
  %link_gpio = getelementptr i8, ptr %1, i32 2336
  %4 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_gpio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %link_irq = getelementptr i8, ptr %1, i32 2332
  %7 = ptrtoint ptr %link_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %setrx_work = getelementptr i8, ptr %1, i32 2676
  %call6 = tail call zeroext i1 @flush_work(ptr noundef %setrx_work) #13
  %restart_work = getelementptr i8, ptr %1, i32 2720
  %call7 = tail call zeroext i1 @flush_work(ptr noundef %restart_work) #13
  %xfer_wq = getelementptr i8, ptr %1, i32 2580
  %9 = ptrtoint ptr %xfer_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %10) #13
  tail call void @unregister_netdev(ptr noundef %1) #13
  tail call void @free_netdev(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef %1) #13
  tail call void @netif_device_detach(ptr noundef %1) #13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %chip_id.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chip_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i.i = icmp eq i32 %7, 2
  %..i.i.i = select i1 %cmp.i.i.i, i32 24, i32 22
  %write.i.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i.i.i, align 4
  %ndev.i.i.i.i = getelementptr i8, ptr %1, i32 2568
  %10 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 %9(ptr noundef %11, i32 noundef %..i.i.i, i8 noundef zeroext 0) #13
  %s0_regs.i.i = getelementptr i8, ptr %1, i32 2308
  %12 = ptrtoint ptr %s0_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s0_regs.i.i, align 4
  %add.i.i = add i32 %13, 1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i.i, align 4
  %18 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev.i.i.i.i, align 8
  %call.i.i.i = tail call i32 %17(ptr noundef %19, i32 noundef %add.i.i, i8 noundef zeroext 16) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add2.i.i = add i32 %20, 10
  %21 = ptrtoint ptr %s0_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s0_regs.i.i, align 4
  %add43.i.i = add i32 %22, 1
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %read.i4.i.i = getelementptr inbounds %struct.w5100_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i4.i.i, align 4
  %27 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev.i.i.i.i, align 8
  %call.i25.i.i = tail call i32 %26(ptr noundef %28, i32 noundef %add43.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i.i)
  %cmp.not6.i.i = icmp eq i32 %call.i25.i.i, 0
  br i1 %cmp.not6.i.i, label %if.then.if.end_crit_edge, label %if.then.while.body.i.i_crit_edge

if.then.while.body.i.i_crit_edge:                 ; preds = %if.then
  br label %while.body.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %if.then.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add2.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp7.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp7.i.i, label %while.body.i.i.if.end_crit_edge, label %do.end.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end.i.i:                                       ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !84
  %30 = ptrtoint ptr %s0_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s0_regs.i.i, align 4
  %add4.i.i = add i32 %31, 1
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %read.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i.i.i, align 4
  %36 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev.i.i.i.i, align 8
  %call.i2.i.i = tail call i32 %35(ptr noundef %37, i32 noundef %add4.i.i) #13
  %cmp.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.if.end_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

do.end.i.i.if.end_crit_edge:                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %do.end.i.i.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call3 = tail call fastcc i32 @w5100_hw_reset(ptr noundef %add.ptr.i)
  tail call fastcc void @w5100_hw_start(ptr noundef %add.ptr.i)
  tail call void @netif_device_attach(ptr noundef %1) #13
  %link_gpio = getelementptr i8, ptr %1, i32 2336
  %4 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_gpio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %lor.lhs.false, label %if.then.if.then7_crit_edge

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.then
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %5) #13
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end8_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.then.if.then7_crit_edge
  tail call void @netif_carrier_on(ptr noundef %1) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_mmio_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @w5100_mmio_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w5100_mmio_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @w5100_mmio_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_open(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %msg_enable = getelementptr i8, ptr %ndev, i32 2576
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.9) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call fastcc void @w5100_hw_start(ptr noundef %add.ptr.i)
  %napi = getelementptr i8, ptr %ndev, i32 2344
  tail call void @napi_enable(ptr noundef %napi) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %link_gpio = getelementptr i8, ptr %ndev, i32 2336
  %4 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_gpio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %lor.lhs.false, label %do.end.if.then4_crit_edge

do.end.if.then4_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.end
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %5) #13
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end5_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %do.end.if.then4_crit_edge
  tail call void @netif_carrier_on(ptr noundef %ndev) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_stop(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %msg_enable = getelementptr i8, ptr %ndev, i32 2576
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.10) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %chip_id.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i.i = icmp eq i32 %5, 2
  %..i.i.i = select i1 %cmp.i.i.i, i32 24, i32 22
  %write.i.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i.i.i.i, align 4
  %ndev.i.i.i.i = getelementptr i8, ptr %ndev, i32 2568
  %8 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 %7(ptr noundef %9, i32 noundef %..i.i.i, i8 noundef zeroext 0) #13
  %s0_regs.i.i = getelementptr i8, ptr %ndev, i32 2308
  %10 = ptrtoint ptr %s0_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s0_regs.i.i, align 4
  %add.i.i = add i32 %11, 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i.i.i, align 4
  %16 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev.i.i.i.i, align 8
  %call.i.i.i = tail call i32 %15(ptr noundef %17, i32 noundef %add.i.i, i8 noundef zeroext 16) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add2.i.i = add i32 %18, 10
  %19 = ptrtoint ptr %s0_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s0_regs.i.i, align 4
  %add43.i.i = add i32 %20, 1
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %read.i4.i.i = getelementptr inbounds %struct.w5100_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i4.i.i, align 4
  %25 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev.i.i.i.i, align 8
  %call.i25.i.i = tail call i32 %24(ptr noundef %26, i32 noundef %add43.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i.i)
  %cmp.not6.i.i = icmp eq i32 %call.i25.i.i, 0
  br i1 %cmp.not6.i.i, label %do.end.w5100_hw_close.exit_crit_edge, label %do.end.while.body.i.i_crit_edge

do.end.while.body.i.i_crit_edge:                  ; preds = %do.end
  br label %while.body.i.i

do.end.w5100_hw_close.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_hw_close.exit

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %do.end.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add2.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp7.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp7.i.i, label %while.body.i.i.w5100_hw_close.exit_crit_edge, label %do.end.i.i

while.body.i.i.w5100_hw_close.exit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_hw_close.exit

do.end.i.i:                                       ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !84
  %28 = ptrtoint ptr %s0_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s0_regs.i.i, align 4
  %add4.i.i = add i32 %29, 1
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %read.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i.i.i, align 4
  %34 = ptrtoint ptr %ndev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev.i.i.i.i, align 8
  %call.i2.i.i = tail call i32 %33(ptr noundef %35, i32 noundef %add4.i.i) #13
  %cmp.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.w5100_hw_close.exit_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

do.end.i.i.w5100_hw_close.exit_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_hw_close.exit

w5100_hw_close.exit:                              ; preds = %do.end.i.i.w5100_hw_close.exit_crit_edge, %while.body.i.i.w5100_hw_close.exit_crit_edge, %do.end.w5100_hw_close.exit_crit_edge
  tail call void @netif_carrier_off(ptr noundef %ndev) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %napi = getelementptr i8, ptr %ndev, i32 2344
  tail call void @napi_disable(ptr noundef %napi) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_start_tx(ptr noundef %skb, ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tx_skb = getelementptr i8, ptr %ndev, i32 2628
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_skb, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.end, !prof !85

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 833, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %tx_skb, align 4
  %xfer_wq = getelementptr i8, ptr %ndev, i32 2580
  %9 = ptrtoint ptr %xfer_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_wq, align 4
  %tx_work = getelementptr i8, ptr %ndev, i32 2632
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %tx_work) #13
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @w5100_tx_skb(ptr noundef %ndev, ptr noundef %skb)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5100_set_rx_mode(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %promisc = getelementptr i8, ptr %ndev, i32 2572
  %2 = ptrtoint ptr %promisc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %promisc, align 4, !range !80
  %4 = zext i8 %3 to i32
  %and = lshr i32 %1, 8
  %and.lobit18 = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit18, i32 %4)
  %cmp3.not = icmp eq i32 %and.lobit18, %4
  br i1 %cmp3.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then:                                          ; preds = %entry
  %5 = trunc i32 %and.lobit18 to i8
  %6 = ptrtoint ptr %promisc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %promisc, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %setrx_work = getelementptr i8, ptr %ndev, i32 2676
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %setrx_work) #13
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @w5100_hw_start(ptr noundef %add.ptr.i)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_set_macaddr(ptr noundef %ndev, ptr noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #13
  %ndev1.i = getelementptr i8, ptr %ndev, i32 2568
  %5 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev1.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr.i, align 64
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %writebulk.i.i = getelementptr inbounds %struct.w5100_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %writebulk.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %writebulk.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %6, i32 noundef 9, ptr noundef %8, i32 noundef 6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5100_tx_timeout(ptr noundef %ndev, i32 noundef %txqueue) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %restart_work = getelementptr i8, ptr %ndev, i32 2720
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %restart_work) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #13
  %call1.i = tail call fastcc i32 @w5100_hw_reset(ptr noundef %add.ptr.i) #13
  tail call fastcc void @w5100_hw_start(ptr noundef %add.ptr.i) #13
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %7 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %9 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 12
  %12 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i.i.i = icmp eq i32 %13, %11
  br i1 %cmp.not.i.i.i, label %if.else.w5100_restart.exit_crit_edge, label %do.body5.i.i.i

if.else.w5100_restart.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_restart.exit

do.body5.i.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %11, ptr %trans_start.i.i.i, align 16
  br label %w5100_restart.exit

w5100_restart.exit:                               ; preds = %do.body5.i.i.i, %if.else.w5100_restart.exit_crit_edge
  %15 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %16) #13
  br label %if.end

if.end:                                           ; preds = %w5100_restart.exit, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w5100_hw_start(ptr nocapture noundef readonly %priv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %promisc = getelementptr inbounds %struct.w5100_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %promisc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %promisc, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %chip_id = getelementptr inbounds %struct.w5100_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %. = select i1 %cmp, i8 -124, i8 68
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %mode.0 = phi i8 [ 4, %entry.if.end6_crit_edge ], [ %., %if.then ]
  %s0_regs = getelementptr inbounds %struct.w5100_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s0_regs, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %write.i = getelementptr inbounds %struct.w5100_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %ndev.i = getelementptr inbounds %struct.w5100_priv, ptr %priv, i32 0, i32 10
  %12 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev.i, align 8
  %call.i = tail call i32 %11(ptr noundef %13, i32 noundef %7, i8 noundef zeroext %mode.0) #13
  %14 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s0_regs, align 4
  %add.i = add i32 %15, 1
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %write.i.i = getelementptr inbounds %struct.w5100_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i, align 4
  %20 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev.i, align 8
  %call.i.i = tail call i32 %19(ptr noundef %21, i32 noundef %add.i, i8 noundef zeroext 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add2.i = add i32 %22, 10
  %23 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s0_regs, align 4
  %add43.i = add i32 %24, 1
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %read.i4.i = getelementptr inbounds %struct.w5100_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %read.i4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read.i4.i, align 4
  %29 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev.i, align 8
  %call.i25.i = tail call i32 %28(ptr noundef %30, i32 noundef %add43.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp.not6.i = icmp eq i32 %call.i25.i, 0
  br i1 %cmp.not6.i, label %if.end6.w5100_command.exit_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.w5100_command.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_command.exit

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add2.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp7.i = icmp slt i32 %sub.i, 0
  br i1 %cmp7.i, label %while.body.i.w5100_command.exit_crit_edge, label %do.end.i

while.body.i.w5100_command.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_command.exit

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !84
  %32 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s0_regs, align 4
  %add4.i = add i32 %33, 1
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %read.i.i = getelementptr inbounds %struct.w5100_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i.i, align 4
  %38 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev.i, align 8
  %call.i2.i = tail call i32 %37(ptr noundef %39, i32 noundef %add4.i) #13
  %cmp.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %cmp.not.i, label %do.end.i.w5100_command.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.end.i.w5100_command.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_command.exit

w5100_command.exit:                               ; preds = %do.end.i.w5100_command.exit_crit_edge, %while.body.i.w5100_command.exit_crit_edge, %if.end6.w5100_command.exit_crit_edge
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %chip_id.i.i = getelementptr inbounds %struct.w5100_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp.i.i = icmp eq i32 %43, 2
  %..i.i = select i1 %cmp.i.i, i32 24, i32 22
  %write.i.i.i = getelementptr inbounds %struct.w5100_ops, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write.i.i.i, align 4
  %46 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev.i, align 8
  %call.i.i.i = tail call i32 %45(ptr noundef %47, i32 noundef %..i.i, i8 noundef zeroext 1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w5100_command(ptr nocapture noundef readonly %priv, i16 noundef zeroext %cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s0_regs = getelementptr inbounds %struct.w5100_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s0_regs, align 4
  %add = add i32 %1, 1
  %conv = trunc i16 %cmd to i8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %write.i = getelementptr inbounds %struct.w5100_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  %ndev.i = getelementptr inbounds %struct.w5100_priv, ptr %priv, i32 0, i32 10
  %6 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev.i, align 8
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef %add, i8 noundef zeroext %conv) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add2 = add i32 %8, 10
  %9 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s0_regs, align 4
  %add43 = add i32 %10, 1
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %read.i4 = getelementptr inbounds %struct.w5100_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i4, align 4
  %15 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev.i, align 8
  %call.i25 = tail call i32 %14(ptr noundef %16, i32 noundef %add43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.not6 = icmp eq i32 %call.i25, 0
  br i1 %cmp.not6, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %do.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add2, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7 = icmp slt i32 %sub, 0
  br i1 %cmp7, label %while.body.cleanup_crit_edge, label %do.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !84
  %18 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s0_regs, align 4
  %add4 = add i32 %19, 1
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %read.i = getelementptr inbounds %struct.w5100_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i, align 4
  %24 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev.i, align 8
  %call.i2 = tail call i32 %23(ptr noundef %25, i32 noundef %add4) #13
  %cmp.not = icmp eq i32 %call.i2, 0
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w5100_tx_skb(ptr nocapture noundef %ndev, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %s0_regs = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s0_regs, align 4
  %add = add i32 %1, 36
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %read16.i = getelementptr inbounds %struct.w5100_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read16.i, align 4
  %ndev.i = getelementptr i8, ptr %ndev, i32 2568
  %6 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev.i, align 8
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef %add) #13
  %conv = trunc i32 %call.i to i16
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %s0_tx_buf.i = getelementptr i8, ptr %ndev, i32 2312
  %12 = ptrtoint ptr %s0_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s0_tx_buf.i, align 8
  %s0_tx_buf_size.i = getelementptr i8, ptr %ndev, i32 2316
  %14 = ptrtoint ptr %s0_tx_buf_size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s0_tx_buf_size.i, align 4
  %conv.i = zext i16 %15 to i32
  %16 = urem i16 %conv, %15
  %conv3.i = zext i16 %16 to i32
  %add.i = add i32 %13, %conv3.i
  %add5.i = add i32 %11, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %conv.i)
  %cmp.i = icmp sgt i32 %add5.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rem11.i = srem i32 %add5.i, %conv.i
  %sub.i = sub nsw i32 %conv.i, %conv3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub.i, %if.then.i ], [ %11, %entry.if.end.i_crit_edge ]
  %remain.0.i = phi i32 [ %rem11.i, %if.then.i ], [ 0, %entry.if.end.i_crit_edge ]
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %writebulk.i.i = getelementptr inbounds %struct.w5100_ops, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %writebulk.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %writebulk.i.i, align 4
  %21 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev.i, align 8
  %call.i.i = tail call i32 %20(ptr noundef %22, i32 noundef %add.i, ptr noundef %9, i32 noundef %len.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp ne i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.0.i)
  %tobool14.not.i = icmp eq i32 %remain.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond.i, label %if.end.i.w5100_writebuf.exit_crit_edge, label %if.end16.i

if.end.i.w5100_writebuf.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_writebuf.exit

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i26 = getelementptr i8, ptr %9, i32 %len.addr.0.i
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %writebulk.i1.i = getelementptr inbounds %struct.w5100_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %writebulk.i1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %writebulk.i1.i, align 4
  %27 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev.i, align 8
  %call.i3.i = tail call i32 %26(ptr noundef %28, i32 noundef %13, ptr noundef %add.ptr.i26, i32 noundef %remain.0.i) #13
  br label %w5100_writebuf.exit

w5100_writebuf.exit:                              ; preds = %if.end16.i, %if.end.i.w5100_writebuf.exit_crit_edge
  %29 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s0_regs, align 4
  %add4 = add i32 %30, 36
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %add7 = add i32 %32, %call.i
  %conv8 = trunc i32 %add7 to i16
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %write16.i = getelementptr inbounds %struct.w5100_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write16.i, align 4
  %37 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev.i, align 8
  %call.i28 = tail call i32 %36(ptr noundef %38, i32 noundef %add4, i16 noundef zeroext %conv8) #13
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %41 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_bytes, align 4
  %add11 = add i32 %42, %40
  store i32 %add11, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %43 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %tx_packets, align 4
  tail call void @consume_skb(ptr noundef %skb) #13
  %45 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s0_regs, align 4
  %add.i29 = add i32 %46, 1
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %write.i.i = getelementptr inbounds %struct.w5100_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write.i.i, align 4
  %51 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ndev.i, align 8
  %call.i.i31 = tail call i32 %50(ptr noundef %52, i32 noundef %add.i29, i8 noundef zeroext 32) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add2.i = add i32 %53, 10
  %54 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s0_regs, align 4
  %add43.i = add i32 %55, 1
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %read.i4.i = getelementptr inbounds %struct.w5100_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %read.i4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read.i4.i, align 4
  %60 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev.i, align 8
  %call.i25.i = tail call i32 %59(ptr noundef %61, i32 noundef %add43.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp.not6.i = icmp eq i32 %call.i25.i, 0
  br i1 %cmp.not6.i, label %w5100_writebuf.exit.w5100_command.exit_crit_edge, label %w5100_writebuf.exit.while.body.i_crit_edge

w5100_writebuf.exit.while.body.i_crit_edge:       ; preds = %w5100_writebuf.exit
  br label %while.body.i

w5100_writebuf.exit.w5100_command.exit_crit_edge: ; preds = %w5100_writebuf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_command.exit

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %w5100_writebuf.exit.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub.i32 = sub i32 %add2.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i32)
  %cmp7.i = icmp slt i32 %sub.i32, 0
  br i1 %cmp7.i, label %while.body.i.w5100_command.exit_crit_edge, label %do.end.i

while.body.i.w5100_command.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_command.exit

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !84
  %63 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s0_regs, align 4
  %add4.i = add i32 %64, 1
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %read.i.i = getelementptr inbounds %struct.w5100_ops, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read.i.i, align 4
  %69 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ndev.i, align 8
  %call.i2.i = tail call i32 %68(ptr noundef %70, i32 noundef %add4.i) #13
  %cmp.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %cmp.not.i, label %do.end.i.w5100_command.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.end.i.w5100_command.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_command.exit

w5100_command.exit:                               ; preds = %do.end.i.w5100_command.exit_crit_edge, %while.body.i.w5100_command.exit_crit_edge, %w5100_writebuf.exit.w5100_command.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5100_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.12, i32 noundef 32) #13
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.13, i32 noundef 32) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w5100_get_regs_len(ptr nocapture noundef readnone %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w5100_get_regs(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %regs, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %version, align 4
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %readbulk.i = getelementptr inbounds %struct.w5100_ops, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %readbulk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %readbulk.i, align 4
  %ndev.i = getelementptr i8, ptr %ndev, i32 2568
  %5 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev.i, align 8
  %call.i = tail call i32 %4(ptr noundef %6, i32 noundef 0, ptr noundef %buf, i32 noundef 64) #13
  %add.ptr = getelementptr i8, ptr %buf, i32 64
  %s0_regs = getelementptr i8, ptr %ndev, i32 2308
  %7 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s0_regs, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %readbulk.i7 = getelementptr inbounds %struct.w5100_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %readbulk.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %readbulk.i7, align 4
  %13 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev.i, align 8
  %call.i9 = tail call i32 %12(ptr noundef %14, i32 noundef %8, ptr noundef %add.ptr, i32 noundef 64) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w5100_get_msglevel(ptr nocapture noundef readonly %ndev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2576
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @w5100_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %value) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2576
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_get_link(ptr nocapture noundef readonly %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %link_gpio = getelementptr i8, ptr %ndev, i32 2336
  %0 = ptrtoint ptr %link_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_gpio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #13
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool = icmp ne i32 %call1.i, 0
  %lnot.ext = zext i1 %tobool to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @w5100_rx_skb(ptr noundef %ndev) unnamed_addr #1 align 64 {
entry:
  %header = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %header) #13
  %0 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %header, align 2, !annotation !86
  %1 = getelementptr inbounds [2 x i8], ptr %header, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !86
  %s0_regs = getelementptr i8, ptr %ndev, i32 2308
  %3 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s0_regs, align 4
  %add = add i32 %4, 38
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %read16.i = getelementptr inbounds %struct.w5100_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read16.i, align 4
  %ndev.i = getelementptr i8, ptr %ndev, i32 2568
  %9 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev.i, align 8
  %call.i = tail call i32 %8(ptr noundef %10, i32 noundef %add) #13
  %conv2 = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp = icmp eq i32 %conv2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s0_regs, align 4
  %add5 = add i32 %12, 40
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %read16.i84 = getelementptr inbounds %struct.w5100_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %read16.i84 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read16.i84, align 4
  %17 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev.i, align 8
  %call.i86 = tail call i32 %16(ptr noundef %18, i32 noundef %add5) #13
  %conv7 = trunc i32 %call.i86 to i16
  %s0_rx_buf.i = getelementptr i8, ptr %ndev, i32 2320
  %19 = ptrtoint ptr %s0_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s0_rx_buf.i, align 8
  %s0_rx_buf_size.i = getelementptr i8, ptr %ndev, i32 2324
  %21 = ptrtoint ptr %s0_rx_buf_size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %s0_rx_buf_size.i, align 4
  %conv.i = zext i16 %22 to i32
  %23 = urem i16 %conv7, %22
  %conv3.i = zext i16 %23 to i32
  %add.i = add i32 %20, %conv3.i
  %add5.i = add nuw nsw i32 %conv3.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %conv.i)
  %cmp.i = icmp ugt i32 %add5.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %rem11.i122 = urem i32 %add5.i, %conv.i
  %sub.i = sub nsw i32 %conv.i, %conv3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub.i, %if.then.i ], [ 2, %if.end.if.end.i_crit_edge ]
  %remain.0.i = phi i32 [ %rem11.i122, %if.then.i ], [ 0, %if.end.if.end.i_crit_edge ]
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %readbulk.i.i = getelementptr inbounds %struct.w5100_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %readbulk.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %readbulk.i.i, align 4
  %28 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev.i, align 8
  %call.i.i = call i32 %27(ptr noundef %29, i32 noundef %add.i, ptr noundef nonnull %header, i32 noundef %len.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp ne i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.0.i)
  %tobool14.not.i = icmp eq i32 %remain.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond.i, label %if.end.i.w5100_readbuf.exit_crit_edge, label %if.end16.i

if.end.i.w5100_readbuf.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_readbuf.exit

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i87 = getelementptr i8, ptr %header, i32 %len.addr.0.i
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %readbulk.i1.i = getelementptr inbounds %struct.w5100_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %readbulk.i1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %readbulk.i1.i, align 4
  %34 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev.i, align 8
  %call.i3.i = call i32 %33(ptr noundef %35, i32 noundef %20, ptr noundef %add.ptr.i87, i32 noundef %remain.0.i) #13
  br label %w5100_readbuf.exit

w5100_readbuf.exit:                               ; preds = %if.end16.i, %if.end.i.w5100_readbuf.exit_crit_edge
  %36 = ptrtoint ptr %header to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %header, align 2
  %sub = add i16 %37, -2
  %conv13 = zext i16 %sub to i32
  %add.i.i = add nuw nsw i32 %conv13, 2
  %call.i.i88 = call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef %add.i.i, i32 noundef 2592) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i88, null
  br i1 %tobool.not.i.i, label %if.then18, label %if.end27

if.then18:                                        ; preds = %w5100_readbuf.exit
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s0_regs, align 4
  %add20 = add i32 %39, 40
  %add23 = add i32 %call.i86, %call.i
  %conv24 = trunc i32 %add23 to i16
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  %write16.i = getelementptr inbounds %struct.w5100_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write16.i, align 4
  %44 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev.i, align 8
  %call.i90 = call i32 %43(ptr noundef %45, i32 noundef %add20, i16 noundef zeroext %conv24) #13
  call fastcc void @w5100_command(ptr noundef %add.ptr.i, i16 noundef zeroext 64)
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  br label %cleanup.sink.split

if.end27:                                         ; preds = %w5100_readbuf.exit
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i88, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i88, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %49, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call29 = call ptr @skb_put(ptr noundef nonnull %call.i.i88, i32 noundef %conv13) #13
  %conv32 = add i16 %conv7, 2
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 4
  %52 = ptrtoint ptr %s0_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s0_rx_buf.i, align 8
  %54 = ptrtoint ptr %s0_rx_buf_size.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %s0_rx_buf_size.i, align 4
  %conv.i93 = zext i16 %55 to i32
  %56 = urem i16 %conv32, %55
  %conv3.i94 = zext i16 %56 to i32
  %add.i95 = add i32 %53, %conv3.i94
  %add5.i96 = add nuw nsw i32 %conv3.i94, %conv13
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i96, i32 %conv.i93)
  %cmp.i97 = icmp ugt i32 %add5.i96, %conv.i93
  br i1 %cmp.i97, label %if.then.i100, label %if.end27.if.end.i109_crit_edge

if.end27.if.end.i109_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i109

if.then.i100:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %rem11.i98123 = urem i32 %add5.i96, %conv.i93
  %sub.i99 = sub nsw i32 %conv.i93, %conv3.i94
  br label %if.end.i109

if.end.i109:                                      ; preds = %if.then.i100, %if.end27.if.end.i109_crit_edge
  %len.addr.0.i101 = phi i32 [ %sub.i99, %if.then.i100 ], [ %conv13, %if.end27.if.end.i109_crit_edge ]
  %remain.0.i102 = phi i32 [ %rem11.i98123, %if.then.i100 ], [ 0, %if.end27.if.end.i109_crit_edge ]
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 8
  %readbulk.i.i103 = getelementptr inbounds %struct.w5100_ops, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %readbulk.i.i103 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %readbulk.i.i103, align 4
  %61 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ndev.i, align 8
  %call.i.i105 = call i32 %60(ptr noundef %62, i32 noundef %add.i95, ptr noundef %51, i32 noundef %len.addr.0.i101) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %tobool.not.i106 = icmp ne i32 %call.i.i105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.0.i102)
  %tobool14.not.i107 = icmp eq i32 %remain.0.i102, 0
  %or.cond.i108 = select i1 %tobool.not.i106, i1 true, i1 %tobool14.not.i107
  br i1 %or.cond.i108, label %if.end.i109.w5100_readbuf.exit114_crit_edge, label %if.end16.i113

if.end.i109.w5100_readbuf.exit114_crit_edge:      ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_readbuf.exit114

if.end16.i113:                                    ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i110 = getelementptr i8, ptr %51, i32 %len.addr.0.i101
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %readbulk.i1.i111 = getelementptr inbounds %struct.w5100_ops, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %readbulk.i1.i111 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %readbulk.i1.i111, align 4
  %67 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ndev.i, align 8
  %call.i3.i112 = call i32 %66(ptr noundef %68, i32 noundef %53, ptr noundef %add.ptr.i110, i32 noundef %remain.0.i102) #13
  br label %w5100_readbuf.exit114

w5100_readbuf.exit114:                            ; preds = %if.end16.i113, %if.end.i109.w5100_readbuf.exit114_crit_edge
  %69 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s0_regs, align 4
  %add36 = add i32 %70, 40
  %conv41 = add i16 %37, %conv7
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 8
  %write16.i115 = getelementptr inbounds %struct.w5100_ops, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %write16.i115 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write16.i115, align 4
  %75 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ndev.i, align 8
  %call.i117 = call i32 %74(ptr noundef %76, i32 noundef %add36, i16 noundef zeroext %conv41) #13
  %77 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s0_regs, align 4
  %add.i118 = add i32 %78, 1
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %write.i.i = getelementptr inbounds %struct.w5100_ops, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write.i.i, align 4
  %83 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ndev.i, align 8
  %call.i.i120 = call i32 %82(ptr noundef %84, i32 noundef %add.i118, i8 noundef zeroext 64) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %add2.i = add i32 %85, 10
  %86 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %s0_regs, align 4
  %add43.i = add i32 %87, 1
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 8
  %read.i4.i = getelementptr inbounds %struct.w5100_ops, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %read.i4.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read.i4.i, align 4
  %92 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ndev.i, align 8
  %call.i25.i = call i32 %91(ptr noundef %93, i32 noundef %add43.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp.not6.i = icmp eq i32 %call.i25.i, 0
  br i1 %cmp.not6.i, label %w5100_readbuf.exit114.w5100_command.exit_crit_edge, label %w5100_readbuf.exit114.while.body.i_crit_edge

w5100_readbuf.exit114.while.body.i_crit_edge:     ; preds = %w5100_readbuf.exit114
  br label %while.body.i

w5100_readbuf.exit114.w5100_command.exit_crit_edge: ; preds = %w5100_readbuf.exit114
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_command.exit

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %w5100_readbuf.exit114.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %sub.i121 = sub i32 %add2.i, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i121)
  %cmp7.i = icmp slt i32 %sub.i121, 0
  br i1 %cmp7.i, label %while.body.i.w5100_command.exit_crit_edge, label %do.end.i

while.body.i.w5100_command.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_command.exit

do.end.i:                                         ; preds = %while.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !84
  %95 = ptrtoint ptr %s0_regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s0_regs, align 4
  %add4.i = add i32 %96, 1
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i, align 8
  %read.i.i = getelementptr inbounds %struct.w5100_ops, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read.i.i, align 4
  %101 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ndev.i, align 8
  %call.i2.i = call i32 %100(ptr noundef %102, i32 noundef %add4.i) #13
  %cmp.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %cmp.not.i, label %do.end.i.w5100_command.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.end.i.w5100_command.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w5100_command.exit

w5100_command.exit:                               ; preds = %do.end.i.w5100_command.exit_crit_edge, %while.body.i.w5100_command.exit_crit_edge, %w5100_readbuf.exit114.w5100_command.exit_crit_edge
  %call44 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i88, ptr noundef %ndev) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i88, i32 0, i32 15, i32 0, i32 18
  %103 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %call44, ptr %protocol, align 8
  %stats45 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  %104 = ptrtoint ptr %stats45 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stats45, align 8
  %inc46 = add i32 %105, 1
  store i32 %inc46, ptr %stats45, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %w5100_command.exit, %if.then18
  %rx_bytes.sink124 = phi ptr [ %rx_bytes, %w5100_command.exit ], [ %rx_dropped, %if.then18 ]
  %conv13.sink = phi i32 [ %conv13, %w5100_command.exit ], [ 1, %if.then18 ]
  %retval.0.ph = phi ptr [ %call.i.i88, %w5100_command.exit ], [ null, %if.then18 ]
  %106 = ptrtoint ptr %rx_bytes.sink124 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rx_bytes.sink124, align 8
  %add49 = add i32 %107, %conv13.sink
  store i32 %add49, ptr %rx_bytes.sink124, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %header) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_mmio_probe(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mac_addr1 = getelementptr inbounds %struct.wiznet_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mac_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr1, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

is_valid_ether_addr.exit:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr %struct.wiznet_platform_data, ptr %1, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  %spec.select = select i1 %cmp.i.i.not, ptr null, ptr %mac_addr1
  br label %if.end

if.end:                                           ; preds = %is_valid_ether_addr.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mac_addr.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ null, %land.lhs.true.if.end_crit_edge ], [ %spec.select, %is_valid_ether_addr.exit ]
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %9 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call5, align 4
  %sub.i = add i32 %8, 1
  %add.i = sub i32 %sub.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add.i)
  %cmp = icmp ult i32 %add.i, 32768
  %w5100_mmio_indirect_ops.w5100_mmio_direct_ops = select i1 %cmp, ptr @w5100_mmio_indirect_ops, ptr @w5100_mmio_direct_ops
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  br i1 %tobool.not, label %if.end15.cond.end_crit_edge, label %cond.true

if.end15.cond.end_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end15.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.true ], [ -22, %if.end15.cond.end_crit_edge ]
  %call18 = tail call i32 @w5100_probe(ptr noundef %dev, ptr noundef nonnull %w5100_mmio_indirect_ops.w5100_mmio_direct_ops, i32 noundef 48, ptr noundef %mac_addr.0, i32 noundef %call12, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %cond.end ], [ -22, %if.end.cleanup_crit_edge ], [ %call12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_mmio_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @w5100_remove(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_read_indirect(ptr noundef %ndev, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2784
  %reg_lock = getelementptr i8, ptr %ndev, i32 2788
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %0 = lshr i32 %addr, 8
  %conv1.i = trunc i32 %0 to i8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i15, i8 %conv1.i) #13, !srcloc !88
  %conv2.i = trunc i32 %addr to i8
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %4, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %conv2.i) #13, !srcloc !88
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 3
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %conv.i = zext i8 %7 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #13
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_write_indirect(ptr noundef %ndev, i32 noundef %addr, i8 noundef zeroext %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2784
  %reg_lock = getelementptr i8, ptr %ndev, i32 2788
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %0 = lshr i32 %addr, 8
  %conv1.i = trunc i32 %0 to i8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i13, i8 %conv1.i) #13, !srcloc !88
  %conv2.i = trunc i32 %addr to i8
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %4, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %conv2.i) #13, !srcloc !88
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %6, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i15, i8 %data) #13, !srcloc !88
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_read16_indirect(ptr noundef %ndev, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2784
  %reg_lock = getelementptr i8, ptr %ndev, i32 2788
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %0 = lshr i32 %addr, 8
  %conv1.i = trunc i32 %0 to i8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i20, i8 %conv1.i) #13, !srcloc !88
  %conv2.i = trunc i32 %addr to i8
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %4, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %conv2.i) #13, !srcloc !88
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 3
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %conv.i = zext i8 %7 to i32
  %conv9 = shl nuw nsw i32 %conv.i, 8
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %9, i32 3
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i22) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %conv.i23 = zext i8 %10 to i32
  %or = or i32 %conv9, %conv.i23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #13
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_write16_indirect(ptr noundef %ndev, i32 noundef %addr, i16 noundef zeroext %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2784
  %reg_lock = getelementptr i8, ptr %ndev, i32 2788
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %0 = lshr i32 %addr, 8
  %conv1.i = trunc i32 %0 to i8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i19, i8 %conv1.i) #13, !srcloc !88
  %conv2.i = trunc i32 %addr to i8
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %4, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %conv2.i) #13, !srcloc !88
  %5 = lshr i16 %data, 8
  %conv9 = trunc i16 %5 to i8
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv9) #13, !srcloc !88
  %conv11 = trunc i16 %data to i8
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %9, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i21, i8 %conv11) #13, !srcloc !88
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_readbulk_indirect(ptr noundef %ndev, i32 noundef %addr, ptr nocapture noundef writeonly %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2784
  %reg_lock = getelementptr i8, ptr %ndev, i32 2788
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %0 = lshr i32 %addr, 8
  %conv1.i = trunc i32 %0 to i8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i17, i8 %conv1.i) #13, !srcloc !88
  %conv2.i = trunc i32 %addr to i8
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %4, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %conv2.i) #13, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp818 = icmp sgt i32 %len, 0
  br i1 %cmp818, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %buf.addr.020 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 3
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %incdec.ptr = getelementptr i8, ptr %buf.addr.020, i32 1
  %8 = ptrtoint ptr %buf.addr.020 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %buf.addr.020, align 1
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_writebulk_indirect(ptr noundef %ndev, i32 noundef %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2784
  %reg_lock = getelementptr i8, ptr %ndev, i32 2788
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %0 = lshr i32 %addr, 8
  %conv1.i = trunc i32 %0 to i8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i16, i8 %conv1.i) #13, !srcloc !88
  %conv2.i = trunc i32 %addr to i8
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %4, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %conv2.i) #13, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp817 = icmp sgt i32 %len, 0
  br i1 %cmp817, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %buf.addr.019 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %buf.addr.019, i32 1
  %5 = ptrtoint ptr %buf.addr.019 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf.addr.019, align 1
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %6) #13, !srcloc !88
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_reset_indirect(ptr nocapture noundef readonly %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %ndev, i32 2784
  %0 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 -128) #13, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #13
  %7 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 19) #13, !srcloc !88
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_mmio_init(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2784
  %reg_lock = getelementptr i8, ptr %ndev, i32 2788
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @w5100_mmio_init.__key, i16 noundef signext 3) #13
  %call2 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0, ptr noundef null) #13
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %add.ptr.i.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call2 to i32
  %spec.select = select i1 %cmp.i, i32 %3, i32 0
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_write16_direct(ptr nocapture noundef readonly %ndev, i32 noundef %addr, i16 noundef zeroext %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %data, 8
  %conv1 = trunc i16 %0 to i8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ndev, i32 2784
  %1 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv1) #13, !srcloc !88
  %add = add i32 %addr, 1
  %conv2 = trunc i16 %data to i8
  %3 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8, i8 %conv2) #13, !srcloc !88
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_read_direct(ptr nocapture noundef readonly %ndev, i32 noundef %addr) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i = getelementptr i8, ptr %ndev, i32 2784
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_write_direct(ptr nocapture noundef readonly %ndev, i32 noundef %addr, i8 noundef zeroext %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ndev, i32 2784
  %0 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %data) #13, !srcloc !88
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_read16_direct(ptr nocapture noundef readonly %ndev, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ndev, i32 2784
  %0 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %conv.i = zext i8 %2 to i32
  %conv = shl nuw nsw i32 %conv.i, 8
  %add = add i32 %addr, 1
  %3 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 %add
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i9) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %conv.i10 = zext i8 %5 to i32
  %or = or i32 %conv, %conv.i10
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_readbulk_direct(ptr nocapture noundef readonly %ndev, i32 noundef %addr, ptr nocapture noundef writeonly %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4 = icmp sgt i32 %len, 0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ndev, i32 2784
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %addr.addr.06 = phi i32 [ %addr, %for.body.lr.ph ], [ %inc1, %for.body.for.body_crit_edge ]
  %buf.addr.05 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %addr.addr.06
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %incdec.ptr = getelementptr i8, ptr %buf.addr.05, i32 1
  %3 = ptrtoint ptr %buf.addr.05 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %buf.addr.05, align 1
  %inc = add nuw nsw i32 %i.07, 1
  %inc1 = add i32 %addr.addr.06, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w5100_writebulk_direct(ptr nocapture noundef readonly %ndev, i32 noundef %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4 = icmp sgt i32 %len, 0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ndev, i32 2784
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %addr.addr.06 = phi i32 [ %addr, %for.body.lr.ph ], [ %inc1, %for.body.for.body_crit_edge ]
  %buf.addr.05 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %buf.addr.05, i32 1
  %0 = ptrtoint ptr %buf.addr.05 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf.addr.05, align 1
  %2 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %addr.addr.06
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !87
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %1) #13, !srcloc !88
  %inc = add nuw nsw i32 %i.07, 1
  %inc1 = add i32 %addr.addr.06, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !62, !64, !66, !68, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__UNIQUE_ID_description339, !1, !"__UNIQUE_ID_description339", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_author340, !3, !"__UNIQUE_ID_author340", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias341, !5, !"__UNIQUE_ID_alias341", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_file342, !7, !"__UNIQUE_ID_file342", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 36, i32 1}
!8 = !{ptr @__UNIQUE_ID_license343, !7, !"__UNIQUE_ID_license343", i1 false, i1 false}
!9 = !{ptr @__ksymtab_w5100_ops_priv, !10, !"__ksymtab_w5100_ops_priv", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1077, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1147, i32 34}
!13 = !{ptr @w5100_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1154, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @w5100_probe.__key.2, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1155, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @w5100_probe.__key.4, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1156, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @w5100_probe.__key.6, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1157, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1192, i32 27}
!27 = !{ptr @__ksymtab_w5100_probe, !28, !"__ksymtab_w5100_probe", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1213, i32 1}
!29 = !{ptr @__ksymtab_w5100_remove, !30, !"__ksymtab_w5100_remove", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1232, i32 1}
!31 = !{ptr @w5100_pm_ops, !32, !"w5100_pm_ops", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1267, i32 1}
!33 = !{ptr @__ksymtab_w5100_pm_ops, !34, !"__ksymtab_w5100_pm_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1268, i32 1}
!35 = !{ptr @__initcall__kmod_w5100__345_1278_w5100_mmio_driver_init6, !36, !"__initcall__kmod_w5100__345_1278_w5100_mmio_driver_init6", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1278, i32 1}
!37 = !{ptr @__exitcall_w5100_mmio_driver_exit, !36, !"__exitcall_w5100_mmio_driver_exit", i1 false, i1 false}
!38 = !{ptr @w5100_netdev_ops, !39, !"w5100_netdev_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1028, i32 36}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 997, i32 2}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1011, i32 2}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 833, i32 3}
!46 = !{ptr @w5100_ethtool_ops, !47, !"w5100_ethtool_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1019, i32 33}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 722, i32 24}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 723, i32 25}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 924, i32 3}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @w5100_interrupt.__UNIQUE_ID_ddebug344, !55, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 947, i32 4}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 950, i32 4}
!62 = !{ptr @w5100_mmio_driver, !63, !"w5100_mmio_driver", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 1270, i32 31}
!64 = !{ptr @w5100_mmio_indirect_ops, !65, !"w5100_mmio_indirect_ops", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 400, i32 31}
!66 = !{ptr @w5100_mmio_init.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 268, i32 2}
!68 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @w5100_mmio_direct_ops, !70, !"w5100_mmio_direct_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/wiznet/w5100.c", i32 277, i32 31}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2148721108, i64 2148721113, i64 2148721126, i64 2148721170, i64 2148721204, i64 2148721225}
!83 = !{i64 2156397718}
!84 = !{i64 2156397560}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!"auto-init"}
!87 = !{i64 2154279927}
!88 = !{i64 6738582}
!89 = !{i64 6738977}
!90 = !{i64 2154278322}
