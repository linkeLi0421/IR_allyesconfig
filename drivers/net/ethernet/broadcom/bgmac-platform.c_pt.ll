; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bgmac-platform.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bgmac-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.bgmac = type { %union.anon.121, ptr, ptr, i32, ptr, %struct.napi_struct, ptr, [4 x %struct.bgmac_dma_ring], [1 x %struct.bgmac_dma_ring], i8, [43 x i32], [31 x i32], i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bgmac_dma_ring = type { i32, i32, ptr, i32, i32, i16, i8, [512 x %struct.bgmac_slot_info] }
%struct.bgmac_slot_info = type { %union.anon.130, i32 }
%union.anon.130 = type { ptr }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@__initcall__kmod_bgmac_platform__351_302_bgmac_enet_driver_init6 = internal global ptr @bgmac_enet_driver_init, section ".initcall6.init", align 4
@bgmac_enet_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bgmac_probe, ptr @bgmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bgmac_of_enet_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bgmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bgmac_enet_driver_exit = internal global ptr @bgmac_enet_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file352 = internal constant [65 x i8] c"bgmac_platform.file=drivers/net/ethernet/broadcom/bgmac-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [27 x i8] c"bgmac_platform.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bgmac-enet\00", [21 x i8] zeroinitializer }, align 32
@bgmac_of_enet_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,amac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-amac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-amac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@bgmac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bgmac_suspend, ptr @bgmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bgmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MAC address not present in device tree\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bgmac_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/broadcom/bgmac-platform.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bgmac_probe._entry_ptr = internal global ptr @bgmac_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"amac_base\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idm_base\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nicpm_base\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@platform_phy_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 164, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PHY connection failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"platform_phy_connect\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@platform_phy_connect._entry_ptr = internal global ptr @platform_phy_connect._entry, section ".printk_index", align 4
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unsupported speed. Defaulting to 1000Mb\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"bgmac_enet_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 292, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 294, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"bgmac_of_enet_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 283, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"bgmac_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 273, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 200, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 208, i32 47 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 213, i32 60 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 222, i32 60 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 239, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 164, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [50 x i8] c"../drivers/net/ethernet/broadcom/bgmac-platform.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 133, i32 23 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_bgmac_enet_driver_exit, ptr @__initcall__kmod_bgmac_platform__351_302_bgmac_enet_driver_init6, ptr @bgmac_enet_driver_exit, ptr @bgmac_probe._entry, ptr @bgmac_probe._entry_ptr, ptr @platform_phy_connect._entry, ptr @platform_phy_connect._entry_ptr, ptr @bgmac_enet_driver, ptr @.str, ptr @bgmac_of_enet_match, ptr @bgmac_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_enet_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_of_enet_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_phy_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bgmac_enet_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bgmac_enet_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bgmac_enet_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bgmac_enet_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @bgmac_alloc(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %feature_flags = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %feature_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %feature_flags, align 4
  %or11 = or i32 %4, 1085451
  store i32 %or11, ptr %feature_flags, align 4
  %dev13 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev13, align 4
  %dma_dev = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dma_dev, align 8
  %net_dev = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 8
  %call15 = tail call i32 @of_get_ethdev_address(ptr noundef %1, ptr noundef %8) #6
  %9 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15, label %do.end [
    i32 -517, label %if.end.cleanup_crit_edge
    i32 0, label %if.end.if.end21_crit_edge
  ]

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end.if.end21_crit_edge
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 12
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call22, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp24 = icmp slt i32 %call22, 0
  br i1 %cmp24, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call28 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #6
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call28, ptr %call, align 8
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %call35 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #6
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.if.end47_crit_edge, label %if.then37

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then37:                                        ; preds = %if.end34
  %call39 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call35) #6
  %idm_base = getelementptr inbounds %struct.anon.122, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %idm_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call39, ptr %idm_base, align 4
  %cmp.i124 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %feature_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %feature_flags, align 4
  %and = and i32 %16, -1048577
  store i32 %and, ptr %feature_flags, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.end34.if.end47_crit_edge
  %call48 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.8) #6
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.if.end59_crit_edge, label %if.then50

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then50:                                        ; preds = %if.end47
  %call52 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call48) #6
  %nicpm_base = getelementptr inbounds %struct.anon.122, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %nicpm_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call52, ptr %nicpm_base, align 8
  %cmp.i125 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then55, label %if.then50.if.end59_crit_edge

if.then50.if.end59_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call52 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.then50.if.end59_crit_edge, %if.end47.if.end59_crit_edge
  %read = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 19
  %19 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @platform_bgmac_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 20
  %20 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @platform_bgmac_write, ptr %write, align 8
  %idm_read = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 21
  %21 = ptrtoint ptr %idm_read to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @platform_bgmac_idm_read, ptr %idm_read, align 4
  %idm_write = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 22
  %22 = ptrtoint ptr %idm_write to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @platform_bgmac_idm_write, ptr %idm_write, align 8
  %clk_enabled = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 23
  %23 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @platform_bgmac_clk_enabled, ptr %clk_enabled, align 4
  %clk_enable = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 24
  %24 = ptrtoint ptr %clk_enable to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @platform_bgmac_clk_enable, ptr %clk_enable, align 8
  %cco_ctl_maskset = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 25
  %25 = ptrtoint ptr %cco_ctl_maskset to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @platform_bgmac_cco_ctl_maskset, ptr %cco_ctl_maskset, align 4
  %get_bus_clock = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 26
  %26 = ptrtoint ptr %get_bus_clock to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @platform_bgmac_get_bus_clock, ptr %get_bus_clock, align 8
  %cmn_maskset32 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 27
  %27 = ptrtoint ptr %cmn_maskset32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @platform_bgmac_cmn_maskset32, ptr %cmn_maskset32, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %28 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %if.else

of_parse_phandle.exit:                            ; preds = %if.end59
  %29 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool61.not = icmp eq ptr %30, null
  br i1 %tobool61.not, label %of_parse_phandle.exit.if.else_crit_edge, label %if.then62

of_parse_phandle.exit.if.else_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then62:                                        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %phy_connect = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 28
  %31 = ptrtoint ptr %phy_connect to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @platform_phy_connect, ptr %phy_connect, align 8
  br label %if.end66

if.else:                                          ; preds = %of_parse_phandle.exit.if.else_crit_edge, %of_parse_phandle.exit.thread
  %phy_connect63 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 28
  %32 = ptrtoint ptr %phy_connect63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bgmac_phy_connect_direct, ptr %phy_connect63, align 8
  %33 = ptrtoint ptr %feature_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %feature_flags, align 4
  %or65 = or i32 %34, 16384
  store i32 %or65, ptr %feature_flags, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then62
  %call67 = call i32 @bgmac_enet_probe(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then55, %if.then42, %if.then31, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then31 ], [ %14, %if.then42 ], [ %18, %if.then55 ], [ %call67, %if.end66 ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.end.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgmac_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @bgmac_enet_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bgmac_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_bgmac_read(ptr nocapture noundef readonly %bgmac, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !47
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @platform_bgmac_write(ptr nocapture noundef readonly %bgmac, i16 noundef zeroext %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %1 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bgmac, align 8
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %2, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_bgmac_idm_read(ptr nocapture noundef readonly %bgmac, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idm_base = getelementptr inbounds %struct.anon.122, ptr %bgmac, i32 0, i32 1
  %0 = ptrtoint ptr %idm_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idm_base, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !47
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @platform_bgmac_idm_write(ptr nocapture noundef readonly %bgmac, i16 noundef zeroext %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %idm_base = getelementptr inbounds %struct.anon.122, ptr %bgmac, i32 0, i32 1
  %1 = ptrtoint ptr %idm_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %idm_base, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %2, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @platform_bgmac_clk_enabled(ptr noundef %bgmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idm_base = getelementptr inbounds %struct.anon.122, ptr %bgmac, i32 0, i32 1
  %0 = ptrtoint ptr %idm_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idm_base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %idm_read.i = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 21
  %2 = ptrtoint ptr %idm_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idm_read.i, align 4
  %call.i = tail call i32 %3(ptr noundef %bgmac, i16 noundef zeroext 1032) #6
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.not = icmp eq i32 %and, 0
  br i1 %cmp.not.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %idm_read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idm_read.i, align 4
  %call.i11 = tail call i32 %5(ptr noundef %bgmac, i16 noundef zeroext 2048) #6
  %and4 = and i32 %call.i11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %tobool5.not, %if.end2 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @platform_bgmac_clk_enable(ptr noundef %bgmac, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idm_base = getelementptr inbounds %struct.anon.122, ptr %bgmac, i32 0, i32 1
  %0 = ptrtoint ptr %idm_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idm_base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %idm_read.i = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 21
  %2 = ptrtoint ptr %idm_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idm_read.i, align 4
  %call.i = tail call i32 %3(ptr noundef %bgmac, i16 noundef zeroext 2048) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %idm_write.i = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 22
  %4 = ptrtoint ptr %idm_write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idm_write.i, align 8
  tail call void %5(ptr noundef %bgmac, i16 noundef zeroext 2048, i32 noundef 0) #6
  %6 = ptrtoint ptr %idm_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %idm_read.i, align 4
  %call.i18 = tail call i32 %7(ptr noundef %bgmac, i16 noundef zeroext 2048) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %9 = ptrtoint ptr %idm_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %idm_read.i, align 4
  %call.i20 = tail call i32 %10(ptr noundef %bgmac, i16 noundef zeroext 1032) #6
  %and = and i32 %flags, 63614
  %or = or i32 %and, %call.i20
  %or6 = or i32 %or, 1
  %idm_write.i21 = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 22
  %11 = ptrtoint ptr %idm_write.i21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %idm_write.i21, align 8
  tail call void %12(ptr noundef %bgmac, i16 noundef zeroext 1032, i32 noundef %or6) #6
  %13 = ptrtoint ptr %idm_read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idm_read.i, align 4
  %call.i23 = tail call i32 %14(ptr noundef %bgmac, i16 noundef zeroext 1032) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @platform_bgmac_cco_ctl_maskset(ptr nocapture noundef readnone %bgmac, i32 noundef %offset, i32 noundef %mask, i32 noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 100, i32 noundef 9, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_bgmac_get_bus_clock(ptr nocapture noundef readnone %bgmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 106, i32 noundef 9, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @platform_bgmac_cmn_maskset32(ptr nocapture noundef readnone %bgmac, i16 noundef zeroext %offset, i32 noundef %mask, i32 noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 115, i32 noundef 9, ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_phy_connect(ptr nocapture noundef readonly %bgmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nicpm_base = getelementptr inbounds %struct.anon.122, ptr %bgmac, i32 0, i32 2
  %0 = ptrtoint ptr %nicpm_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nicpm_base, align 8
  %tobool.not = icmp eq ptr %1, null
  %net_dev1 = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 4
  %2 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev1, align 8
  %dev2 = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %of_node3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node3, align 8
  %bgmac_adjust_link.bgmac_nicpm_speed_set = select i1 %tobool.not, ptr @bgmac_adjust_link, ptr @bgmac_nicpm_speed_set
  %call4 = tail call ptr @of_phy_get_and_connect(ptr noundef %3, ptr noundef %7, ptr noundef nonnull %bgmac_adjust_link.bgmac_nicpm_speed_set) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 1
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_phy_connect_direct(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_enet_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgmac_nicpm_speed_set(ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nicpm_base = getelementptr i8, ptr %net_dev, i32 2312
  %0 = ptrtoint ptr %nicpm_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nicpm_base, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %nicpm_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nicpm_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 116) #6, !srcloc !50
  %net_dev2 = getelementptr i8, ptr %net_dev, i32 2328
  %4 = ptrtoint ptr %net_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev2, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %speed = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %9, label %sw.default [
    i32 1000, label %do.body.do.body7_crit_edge
    i32 100, label %sw.bb3
    i32 10, label %sw.bb5
  ]

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

sw.default:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net_dev, ptr noundef nonnull @.str.13) #9
  br label %do.body7

sw.bb3:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

sw.bb5:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

do.body7:                                         ; preds = %sw.bb5, %sw.bb3, %sw.default, %do.body.do.body7_crit_edge
  %val.0 = phi i32 [ 831971328, %sw.bb5 ], [ 831972352, %sw.bb3 ], [ 831973376, %do.body.do.body7_crit_edge ], [ 831973376, %sw.default ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %12 = ptrtoint ptr %nicpm_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nicpm_base, align 8
  %add.ptr11 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %11) #6, !srcloc !50
  %14 = ptrtoint ptr %net_dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev2, align 8
  tail call void @bgmac_adjust_link(ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bgmac_adjust_link(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bgmac_enet_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgmac_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @bgmac_enet_suspend(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgmac_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @bgmac_enet_resume(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_enet_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_enet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_bgmac_platform__351_302_bgmac_enet_driver_init6, !1, !"__initcall__kmod_bgmac_platform__351_302_bgmac_enet_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 302, i32 1}
!2 = !{ptr @__exitcall_bgmac_enet_driver_exit, !1, !"__exitcall_bgmac_enet_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file352, !4, !"__UNIQUE_ID_file352", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 303, i32 1}
!5 = !{ptr @__UNIQUE_ID_license353, !4, !"__UNIQUE_ID_license353", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 294, i32 12}
!8 = !{ptr @bgmac_enet_driver, !9, !"bgmac_enet_driver", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 292, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 200, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @bgmac_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @bgmac_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 208, i32 47}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 213, i32 60}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 222, i32 60}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 239, i32 27}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 164, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @platform_phy_connect._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @platform_phy_connect._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 133, i32 23}
!34 = !{ptr @bgmac_of_enet_match, !35, !"bgmac_of_enet_match", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 283, i32 34}
!36 = !{ptr @bgmac_pm_ops, !37, !"bgmac_pm_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/bgmac-platform.c", i32 273, i32 32}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 5001712}
!48 = !{i64 2157202930}
!49 = !{i64 2157203154}
!50 = !{i64 5001294}
!51 = !{i64 2157203877}
!52 = !{i64 2157204105}
!53 = !{i64 2157211583}
!54 = !{i64 2157212111}
