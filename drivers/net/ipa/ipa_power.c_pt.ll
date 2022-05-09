; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_power.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.atomic_t = type { i32 }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.ipa_power = type { ptr, ptr, ptr, %struct.spinlock, [1 x i32], i32, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipa_power_data = type { i32, i32, ptr }
%struct.ipa_interconnect_data = type { ptr, i32, i32 }
%struct.ipa_interconnect = type { ptr, i32, i32 }

@ipa_power_retention.fmt = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"{ class: bcm, res: ipa_pc, val: %c }\00", [59 x i8] zeroinitializer }, align 32
@ipa_power_retention._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 427, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d sending QMP %sable request\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipa_power_retention\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/ipa/ipa_power.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_power_retention._entry_ptr = internal global ptr @ipa_power_retention._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error getting core clock\0A\00", [38 x i8] zeroinitializer }, align 32
@ipa_power_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 468, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error %d setting core clock rate to %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipa_power_init\00", [17 x i8] zeroinitializer }, align 32
@ipa_power_init._entry_ptr = internal global ptr @ipa_power_init._entry, section ".printk_index", align 4
@ipa_power_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&power->spinlock\00", [47 x i8] zeroinitializer }, align 32
@ipa_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ipa_suspend, ptr @ipa_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipa_runtime_suspend, ptr @ipa_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error getting %s interconnect\0A\00", [33 x i8] zeroinitializer }, align 32
@ipa_interconnect_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error %d disabling %s interconnect\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipa_interconnect_disable\00", [39 x i8] zeroinitializer }, align 32
@ipa_interconnect_disable._entry_ptr = internal global ptr @ipa_interconnect_disable._entry, section ".printk_index", align 4
@ipa_power_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error %d enabling core clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipa_power_enable\00", [47 x i8] zeroinitializer }, align 32
@ipa_power_enable._entry_ptr = internal global ptr @ipa_power_enable._entry, section ".printk_index", align 4
@ipa_interconnect_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error %d enabling %s interconnect\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipa_interconnect_enable\00", [40 x i8] zeroinitializer }, align 32
@ipa_interconnect_enable._entry_ptr = internal global ptr @ipa_interconnect_enable._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 414, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 426, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 458, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 460, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 467, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 479, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"ipa_pm_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 520, i32 25 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 95, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 205, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 227, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [31 x i8] c"../drivers/net/ipa/ipa_power.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 172, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @ipa_interconnect_disable._entry, ptr @ipa_interconnect_disable._entry_ptr, ptr @ipa_interconnect_enable._entry, ptr @ipa_interconnect_enable._entry_ptr, ptr @ipa_power_enable._entry, ptr @ipa_power_enable._entry_ptr, ptr @ipa_power_init._entry, ptr @ipa_power_init._entry_ptr, ptr @ipa_power_retention._entry, ptr @ipa_power_retention._entry_ptr, ptr @ipa_power_retention.fmt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ipa_power_init.__key, ptr @.str.11, ptr @ipa_pm_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_power_retention.fmt to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_power_retention._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_power_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_power_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_interconnect_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_power_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_interconnect_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_core_clock_rate(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 7
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %core = getelementptr inbounds %struct.ipa_power, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %3) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_power_modem_queue_stop(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %power1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 7
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power1, align 4
  %spinlock = getelementptr inbounds %struct.ipa_power, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #8
  %flags6 = getelementptr inbounds %struct.ipa_power, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags6, align 4
  %and.i = and i32 %3, -9
  store i32 %and.i, ptr %flags6, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %modem_netdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 38
  %5 = ptrtoint ptr %modem_netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %modem_netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %9 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags6, align 4
  %or.i = or i32 %10, 4
  store i32 %or.i, ptr %flags6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_power_modem_queue_wake(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %power1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 7
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power1, align 4
  %spinlock = getelementptr inbounds %struct.ipa_power, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #8
  %flags6 = getelementptr inbounds %struct.ipa_power, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags6, align 4
  %and.i = and i32 %3, -5
  store i32 %and.i, ptr %flags6, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %and.i, 8
  %5 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %flags6, align 4
  %modem_netdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 38
  %6 = ptrtoint ptr %modem_netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %modem_netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_power_modem_queue_active(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 7
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power, align 4
  %flags = getelementptr inbounds %struct.ipa_power, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_power_retention(ptr nocapture noundef readonly %ipa, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %power1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 7
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 36)
  %qmp = getelementptr inbounds %struct.ipa_power, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qmp, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond = select i1 %enable, i32 49, i32 48
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 36, ptr noundef nonnull @ipa_power_retention.fmt, i32 noundef %cond)
  %5 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qmp, align 4
  %call5 = call i32 @qmp_send(ptr noundef %6, ptr noundef nonnull %buf, i32 noundef 36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %cond9 = select i1 %enable, ptr @.str.5, ptr @.str.6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %call5, ptr noundef nonnull %cond9) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmp_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_power_setup(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 10
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_add(ptr noundef %1, i32 noundef 14, ptr noundef nonnull @ipa_suspend_handler) #8
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_remove(ptr noundef %5, i32 noundef 14) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_interrupt_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_suspend_handler(ptr nocapture noundef readonly %ipa, i32 noundef %irq_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 7
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power, align 4
  %flags = getelementptr inbounds %struct.ipa_power, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or.i = or i32 %3, 1
  store i32 %or.i, ptr %flags, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power, align 4
  %flags2 = getelementptr inbounds %struct.ipa_power, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags2, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void @pm_wakeup_dev_event(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext true) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %interrupt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 10
  %11 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_suspend_clear_all(ptr noundef %12) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_interrupt_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_power_teardown(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #8
  %interrupt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 10
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_remove(ptr noundef %3, i32 noundef 14) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipa_power_init(ptr noundef %dev, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %0, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %call5 = tail call i32 @clk_set_rate(ptr noundef %call, i32 noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call5, i32 noundef %4) #11
  br label %err_clk_put

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #12
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.err_clk_put_crit_edge, label %if.end12

if.end8.err_clk_put_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_put

if.end12:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call7.i.i, align 8
  %core = getelementptr inbounds %struct.ipa_power, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %core, align 4
  %spinlock = getelementptr inbounds %struct.ipa_power, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ipa_power_init.__key, i16 noundef signext 3) #8
  %interconnect_count = getelementptr inbounds %struct.ipa_power_data, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %interconnect_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %interconnect_count, align 4
  %interconnect_count18 = getelementptr inbounds %struct.ipa_power, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %interconnect_count18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %interconnect_count18, align 4
  %interconnect_data = getelementptr inbounds %struct.ipa_power_data, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %interconnect_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interconnect_data, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 12) #8
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.end12.err_kfree_crit_edge, label %if.end7.i.i.i, !prof !52

if.end12.err_kfree_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end7.i.i.i:                                    ; preds = %if.end12
  %15 = extractvalue { i32, i1 } %13, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.err_kfree_crit_edge, label %if.end.i

if.end7.i.i.i.err_kfree_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end.i:                                         ; preds = %if.end7.i.i.i
  %interconnect1.i = getelementptr inbounds %struct.ipa_power, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %interconnect1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i.i, ptr %interconnect1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not39.i = icmp eq i32 %9, 0
  br i1 %tobool2.not39.i, label %if.end.i.if.end22_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

while.body.i:                                     ; preds = %ipa_interconnect_init_one.exit.thread.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %dec42.in.i = phi i32 [ %dec42.i, %ipa_interconnect_init_one.exit.thread.i.while.body.i_crit_edge ], [ %9, %if.end.i.while.body.i_crit_edge ]
  %interconnect.041.i = phi ptr [ %incdec.ptr7.i, %ipa_interconnect_init_one.exit.thread.i.while.body.i_crit_edge ], [ %call8.i.i.i, %if.end.i.while.body.i_crit_edge ]
  %data.addr.040.i = phi ptr [ %incdec.ptr.i, %ipa_interconnect_init_one.exit.thread.i.while.body.i_crit_edge ], [ %12, %if.end.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %data.addr.040.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.addr.040.i, align 4
  %call.i.i = tail call ptr @of_icc_get(ptr noundef %dev, ptr noundef %18) #8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %ipa_interconnect_init_one.exit.i, label %ipa_interconnect_init_one.exit.thread.i

ipa_interconnect_init_one.exit.thread.i:          ; preds = %while.body.i
  %dec42.i = add i32 %dec42.in.i, -1
  %19 = ptrtoint ptr %interconnect.041.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %interconnect.041.i, align 4
  %average_bandwidth.i.i = getelementptr inbounds %struct.ipa_interconnect_data, ptr %data.addr.040.i, i32 0, i32 2
  %20 = ptrtoint ptr %average_bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %average_bandwidth.i.i, align 4
  %average_bandwidth6.i.i = getelementptr inbounds %struct.ipa_interconnect, ptr %interconnect.041.i, i32 0, i32 1
  %22 = ptrtoint ptr %average_bandwidth6.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %average_bandwidth6.i.i, align 4
  %peak_bandwidth.i.i = getelementptr inbounds %struct.ipa_interconnect_data, ptr %data.addr.040.i, i32 0, i32 1
  %23 = ptrtoint ptr %peak_bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %peak_bandwidth.i.i, align 4
  %peak_bandwidth7.i.i = getelementptr inbounds %struct.ipa_interconnect, ptr %interconnect.041.i, i32 0, i32 2
  %25 = ptrtoint ptr %peak_bandwidth7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %peak_bandwidth7.i.i, align 4
  %incdec.ptr.i = getelementptr %struct.ipa_interconnect_data, ptr %data.addr.040.i, i32 1
  %incdec.ptr7.i = getelementptr %struct.ipa_interconnect, ptr %interconnect.041.i, i32 1
  %tobool2.not.i = icmp eq i32 %dec42.i, 0
  br i1 %tobool2.not.i, label %ipa_interconnect_init_one.exit.thread.i.if.end22_crit_edge, label %ipa_interconnect_init_one.exit.thread.i.while.body.i_crit_edge

ipa_interconnect_init_one.exit.thread.i.while.body.i_crit_edge: ; preds = %ipa_interconnect_init_one.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

ipa_interconnect_init_one.exit.thread.i.if.end22_crit_edge: ; preds = %ipa_interconnect_init_one.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

ipa_interconnect_init_one.exit.i:                 ; preds = %while.body.i
  %26 = ptrtoint ptr %call.i.i to i32
  %27 = ptrtoint ptr %data.addr.040.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.addr.040.i, align 4
  %call4.i.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %26, ptr noundef nonnull @.str.12, ptr noundef %28) #8
  %29 = ptrtoint ptr %interconnect1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interconnect1.i, align 8
  %cmp43.i = icmp ugt ptr %interconnect.041.i, %30
  br i1 %cmp43.i, label %ipa_interconnect_init_one.exit.i.while.body11.i_crit_edge, label %ipa_interconnect_init_one.exit.i.err_kfree.sink.split_crit_edge

ipa_interconnect_init_one.exit.i.err_kfree.sink.split_crit_edge: ; preds = %ipa_interconnect_init_one.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree.sink.split

ipa_interconnect_init_one.exit.i.while.body11.i_crit_edge: ; preds = %ipa_interconnect_init_one.exit.i
  br label %while.body11.i

while.body11.i:                                   ; preds = %while.body11.i.while.body11.i_crit_edge, %ipa_interconnect_init_one.exit.i.while.body11.i_crit_edge
  %interconnect.144.i = phi ptr [ %incdec.ptr9.i, %while.body11.i.while.body11.i_crit_edge ], [ %interconnect.041.i, %ipa_interconnect_init_one.exit.i.while.body11.i_crit_edge ]
  %incdec.ptr9.i = getelementptr %struct.ipa_interconnect, ptr %interconnect.144.i, i32 -1
  %31 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %incdec.ptr9.i, align 4
  tail call void @icc_put(ptr noundef %32) #8
  %33 = call ptr @memset(ptr %incdec.ptr9.i, i32 0, i32 12)
  %34 = ptrtoint ptr %interconnect1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %interconnect1.i, align 8
  %cmp.i58 = icmp ugt ptr %incdec.ptr9.i, %35
  br i1 %cmp.i58, label %while.body11.i.while.body11.i_crit_edge, label %while.body11.i.err_kfree.sink.split_crit_edge

while.body11.i.err_kfree.sink.split_crit_edge:    ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree.sink.split

while.body11.i.while.body11.i_crit_edge:          ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body11.i

if.end22:                                         ; preds = %ipa_interconnect_init_one.exit.thread.i.if.end22_crit_edge, %if.end.i.if.end22_crit_edge
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %call.i = tail call ptr @qmp_get(ptr noundef %37) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then.i:                                        ; preds = %if.end22
  %cmp.i59 = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i59, label %err_interconnect_exit, label %if.then.i.if.end26_crit_edge

if.then.i.if.end26_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %if.then.i.if.end26_crit_edge, %if.end22.if.end26_crit_edge
  %qmp.0.i = phi ptr [ %call.i, %if.end22.if.end26_crit_edge ], [ null, %if.then.i.if.end26_crit_edge ]
  %qmp5.i = getelementptr inbounds %struct.ipa_power, ptr %call7.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %qmp5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %qmp.0.i, ptr %qmp5.i, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 500) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  br label %cleanup

err_interconnect_exit:                            ; preds = %if.then.i
  %39 = ptrtoint ptr %interconnect1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %interconnect1.i, align 8
  %41 = ptrtoint ptr %interconnect_count18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %interconnect_count18, align 4
  %add.ptr.i = getelementptr %struct.ipa_interconnect, ptr %40, i32 %42
  %cmp10.i = icmp ugt ptr %add.ptr.i, %40
  br i1 %cmp10.i, label %err_interconnect_exit.while.body.i65_crit_edge, label %err_interconnect_exit.err_kfree.sink.split_crit_edge

err_interconnect_exit.err_kfree.sink.split_crit_edge: ; preds = %err_interconnect_exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree.sink.split

err_interconnect_exit.while.body.i65_crit_edge:   ; preds = %err_interconnect_exit
  br label %while.body.i65

while.body.i65:                                   ; preds = %while.body.i65.while.body.i65_crit_edge, %err_interconnect_exit.while.body.i65_crit_edge
  %interconnect.011.i = phi ptr [ %incdec.ptr.i63, %while.body.i65.while.body.i65_crit_edge ], [ %add.ptr.i, %err_interconnect_exit.while.body.i65_crit_edge ]
  %incdec.ptr.i63 = getelementptr %struct.ipa_interconnect, ptr %interconnect.011.i, i32 -1
  %43 = ptrtoint ptr %incdec.ptr.i63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %incdec.ptr.i63, align 4
  tail call void @icc_put(ptr noundef %44) #8
  %45 = call ptr @memset(ptr %incdec.ptr.i63, i32 0, i32 12)
  %46 = ptrtoint ptr %interconnect1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %interconnect1.i, align 8
  %cmp.i64 = icmp ugt ptr %incdec.ptr.i63, %47
  br i1 %cmp.i64, label %while.body.i65.while.body.i65_crit_edge, label %while.body.i65.err_kfree.sink.split_crit_edge

while.body.i65.err_kfree.sink.split_crit_edge:    ; preds = %while.body.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree.sink.split

while.body.i65.while.body.i65_crit_edge:          ; preds = %while.body.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i65

err_kfree.sink.split:                             ; preds = %while.body.i65.err_kfree.sink.split_crit_edge, %err_interconnect_exit.err_kfree.sink.split_crit_edge, %while.body11.i.err_kfree.sink.split_crit_edge, %ipa_interconnect_init_one.exit.i.err_kfree.sink.split_crit_edge
  %.lcssa.i.sink = phi ptr [ %30, %ipa_interconnect_init_one.exit.i.err_kfree.sink.split_crit_edge ], [ %40, %err_interconnect_exit.err_kfree.sink.split_crit_edge ], [ %47, %while.body.i65.err_kfree.sink.split_crit_edge ], [ %35, %while.body11.i.err_kfree.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %26, %ipa_interconnect_init_one.exit.i.err_kfree.sink.split_crit_edge ], [ -517, %err_interconnect_exit.err_kfree.sink.split_crit_edge ], [ -517, %while.body.i65.err_kfree.sink.split_crit_edge ], [ %26, %while.body11.i.err_kfree.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa.i.sink) #8
  %48 = ptrtoint ptr %interconnect1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %interconnect1.i, align 8
  br label %err_kfree

err_kfree:                                        ; preds = %err_kfree.sink.split, %if.end7.i.i.i.err_kfree_crit_edge, %if.end12.err_kfree_crit_edge
  %ret.0 = phi i32 [ -12, %if.end7.i.i.i.err_kfree_crit_edge ], [ -12, %if.end12.err_kfree_crit_edge ], [ %ret.0.ph, %err_kfree.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %err_clk_put

err_clk_put:                                      ; preds = %err_kfree, %if.end8.err_clk_put_crit_edge, %do.end
  %ret.1 = phi i32 [ %call5, %do.end ], [ %ret.0, %err_kfree ], [ -12, %if.end8.err_clk_put_crit_edge ]
  tail call void @clk_put(ptr noundef %call) #8
  %49 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_clk_put, %if.end26, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %49, %err_clk_put ], [ %call7.i.i, %if.end26 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_power_exit(ptr noundef %power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power, align 4
  %core = getelementptr inbounds %struct.ipa_power, ptr %power, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %1, i1 noundef zeroext false) #8
  %qmp.i = getelementptr inbounds %struct.ipa_power, ptr %power, i32 0, i32 2
  %4 = ptrtoint ptr %qmp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qmp.i, align 4
  tail call void @qmp_put(ptr noundef %5) #8
  %6 = ptrtoint ptr %qmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %qmp.i, align 4
  %interconnect1.i = getelementptr inbounds %struct.ipa_power, ptr %power, i32 0, i32 6
  %7 = ptrtoint ptr %interconnect1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interconnect1.i, align 4
  %interconnect_count.i = getelementptr inbounds %struct.ipa_power, ptr %power, i32 0, i32 5
  %9 = ptrtoint ptr %interconnect_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interconnect_count.i, align 4
  %add.ptr.i = getelementptr %struct.ipa_interconnect, ptr %8, i32 %10
  %cmp10.i = icmp ugt ptr %add.ptr.i, %8
  br i1 %cmp10.i, label %entry.while.body.i_crit_edge, label %entry.ipa_interconnect_exit.exit_crit_edge

entry.ipa_interconnect_exit.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipa_interconnect_exit.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %interconnect.011.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %entry.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.ipa_interconnect, ptr %interconnect.011.i, i32 -1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %incdec.ptr.i, align 4
  tail call void @icc_put(ptr noundef %12) #8
  %13 = call ptr @memset(ptr %incdec.ptr.i, i32 0, i32 12)
  %14 = ptrtoint ptr %interconnect1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interconnect1.i, align 4
  %cmp.i = icmp ugt ptr %incdec.ptr.i, %15
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.ipa_interconnect_exit.exit_crit_edge

while.body.i.ipa_interconnect_exit.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipa_interconnect_exit.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

ipa_interconnect_exit.exit:                       ; preds = %while.body.i.ipa_interconnect_exit.exit_crit_edge, %entry.ipa_interconnect_exit.exit_crit_edge
  %.lcssa.i = phi ptr [ %8, %entry.ipa_interconnect_exit.exit_crit_edge ], [ %15, %while.body.i.ipa_interconnect_exit.exit_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa.i) #8
  %16 = ptrtoint ptr %interconnect1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %interconnect1.i, align 4
  tail call void @kfree(ptr noundef %power) #8
  tail call void @clk_put(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power, align 4
  %flags = getelementptr inbounds %struct.ipa_power, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or.i = or i32 %5, 2
  store i32 %or.i, ptr %flags, align 4
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  %power = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power, align 4
  %flags = getelementptr inbounds %struct.ipa_power, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and.i = and i32 %5, -3
  store i32 %and.i, ptr %flags, align 4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %setup_complete = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %setup_complete to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setup_complete, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %power = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power, align 4
  %flags = getelementptr inbounds %struct.ipa_power, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and.i = and i32 %7, -2
  store i32 %and.i, ptr %flags, align 4
  tail call void @ipa_endpoint_suspend(ptr noundef %1) #8
  tail call void @gsi_suspend(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %power.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power.i, align 4
  %core.i = getelementptr inbounds %struct.ipa_power, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  %12 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %power.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i.i, align 4
  %dev2.i.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %interconnect_count.i.i = getelementptr inbounds %struct.ipa_power, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %interconnect_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interconnect_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not19.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not19.i.i, label %if.end.ipa_power_disable.exit_crit_edge, label %while.body.preheader.i.i

if.end.ipa_power_disable.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipa_power_disable.exit

while.body.preheader.i.i:                         ; preds = %if.end
  %interconnect3.i.i = getelementptr inbounds %struct.ipa_power, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %interconnect3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interconnect3.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.ipa_interconnect, ptr %19, i32 %17
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end9.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %dec22.in.i.i = phi i32 [ %dec22.i.i, %if.end9.i.i.while.body.i.i_crit_edge ], [ %17, %while.body.preheader.i.i ]
  %result.021.i.i = phi i32 [ %result.1.i.i, %if.end9.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %interconnect.020.i.i = phi ptr [ %incdec.ptr.i.i, %if.end9.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i, %while.body.preheader.i.i ]
  %dec22.i.i = add i32 %dec22.in.i.i, -1
  %incdec.ptr.i.i = getelementptr %struct.ipa_interconnect, ptr %interconnect.020.i.i, i32 -1
  %20 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %incdec.ptr.i.i, align 4
  %call.i.i = tail call i32 @icc_set_bw(ptr noundef %21, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %while.body.i.i.if.end9.i.i_crit_edge, label %do.end.i.i

while.body.i.i.if.end9.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %incdec.ptr.i.i, align 4
  %call6.i.i = tail call ptr @icc_get_name(ptr noundef %23) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i, ptr noundef %call6.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.021.i.i)
  %tobool7.not.i.i = icmp eq i32 %result.021.i.i, 0
  %spec.select.i.i = select i1 %tobool7.not.i.i, i32 %call.i.i, i32 %result.021.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %do.end.i.i, %while.body.i.i.if.end9.i.i_crit_edge
  %result.1.i.i = phi i32 [ %result.021.i.i, %while.body.i.i.if.end9.i.i_crit_edge ], [ %spec.select.i.i, %do.end.i.i ]
  %tobool.not.i.i = icmp eq i32 %dec22.i.i, 0
  br i1 %tobool.not.i.i, label %if.end9.i.i.ipa_power_disable.exit_crit_edge, label %if.end9.i.i.while.body.i.i_crit_edge

if.end9.i.i.while.body.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end9.i.i.ipa_power_disable.exit_crit_edge:     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipa_power_disable.exit

ipa_power_disable.exit:                           ; preds = %if.end9.i.i.ipa_power_disable.exit_crit_edge, %if.end.ipa_power_disable.exit_crit_edge
  %result.0.lcssa.i.i = phi i32 [ 0, %if.end.ipa_power_disable.exit_crit_edge ], [ %result.1.i.i, %if.end9.i.i.ipa_power_disable.exit_crit_edge ]
  ret i32 %result.0.lcssa.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power1.i.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power1.i.i, align 4
  %interconnect2.i.i = getelementptr inbounds %struct.ipa_power, ptr %3, i32 0, i32 6
  %interconnect_count.i.i = getelementptr inbounds %struct.ipa_power, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %interconnect_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interconnect_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp27.not.i.i, label %entry.if.end.i_crit_edge, label %for.body.preheader.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.preheader.i.i:                           ; preds = %entry
  %6 = ptrtoint ptr %interconnect2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interconnect2.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.029.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %interconnect.028.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %7, %for.body.preheader.i.i ]
  %8 = ptrtoint ptr %interconnect.028.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interconnect.028.i.i, align 4
  %average_bandwidth.i.i = getelementptr inbounds %struct.ipa_interconnect, ptr %interconnect.028.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %average_bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %average_bandwidth.i.i, align 4
  %peak_bandwidth.i.i = getelementptr inbounds %struct.ipa_interconnect, ptr %interconnect.028.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %peak_bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %peak_bandwidth.i.i, align 4
  %call.i.i = tail call i32 @icc_set_bw(ptr noundef %9, i32 noundef %11, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  %pdev.i.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %interconnect.028.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interconnect.028.i.i, align 4
  %call4.i.i = tail call ptr @icc_get_name(ptr noundef %17) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef %call.i.i, ptr noundef %call4.i.i) #11
  %18 = ptrtoint ptr %interconnect2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interconnect2.i.i, align 4
  %cmp730.i.i = icmp ugt ptr %interconnect.028.i.i, %19
  br i1 %cmp730.i.i, label %do.end.i.i.while.body.i.i_crit_edge, label %do.end.i.i.ipa_power_enable.exit_crit_edge

do.end.i.i.ipa_power_enable.exit_crit_edge:       ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipa_power_enable.exit

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %while.body.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.ipa_interconnect, ptr %interconnect.028.i.i, i32 1
  %inc.i.i = add nuw i32 %i.029.i.i, 1
  %20 = ptrtoint ptr %interconnect_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interconnect_count.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %21
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end.i.i.while.body.i.i_crit_edge
  %interconnect.131.i.i = phi ptr [ %incdec.ptr5.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %interconnect.028.i.i, %do.end.i.i.while.body.i.i_crit_edge ]
  %incdec.ptr5.i.i = getelementptr %struct.ipa_interconnect, ptr %interconnect.131.i.i, i32 -1
  %22 = ptrtoint ptr %incdec.ptr5.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %incdec.ptr5.i.i, align 4
  %call9.i.i = tail call i32 @icc_set_bw(ptr noundef %23, i32 noundef 0, i32 noundef 0) #8
  %24 = ptrtoint ptr %interconnect2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %interconnect2.i.i, align 4
  %cmp7.i.i = icmp ugt ptr %incdec.ptr5.i.i, %25
  br i1 %cmp7.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.ipa_power_enable.exit_crit_edge

while.body.i.i.ipa_power_enable.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipa_power_enable.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %26 = ptrtoint ptr %power1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %power1.i.i, align 4
  %core.i = getelementptr inbounds %struct.ipa_power, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core.i, align 4
  %call.i13.i = tail call i32 @clk_prepare(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool.not.i14.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool.not.i14.i, label %if.end.i15.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i15.i:                                     ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i15.i.if.end22_crit_edge, label %if.then3.i.i

if.end.i15.i.if.end22_crit_edge:                  ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then3.i.i:                                     ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %29) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end.i.do.end.i_crit_edge
  %retval.0.i16.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i13.i, %if.end.i.do.end.i_crit_edge ]
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i16.ph.i) #11
  %32 = ptrtoint ptr %power1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %power1.i.i, align 4
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 4
  %dev2.i.i = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %interconnect_count.i19.i = getelementptr inbounds %struct.ipa_power, ptr %33, i32 0, i32 5
  %36 = ptrtoint ptr %interconnect_count.i19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %interconnect_count.i19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not19.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not19.i.i, label %do.end.i.ipa_power_enable.exit_crit_edge, label %while.body.preheader.i.i

do.end.i.ipa_power_enable.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipa_power_enable.exit

while.body.preheader.i.i:                         ; preds = %do.end.i
  %interconnect3.i.i = getelementptr inbounds %struct.ipa_power, ptr %33, i32 0, i32 6
  %38 = ptrtoint ptr %interconnect3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %interconnect3.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.ipa_interconnect, ptr %39, i32 %37
  br label %while.body.i22.i

while.body.i22.i:                                 ; preds = %if.end9.i.i.while.body.i22.i_crit_edge, %while.body.preheader.i.i
  %dec22.in.i.i = phi i32 [ %dec22.i.i, %if.end9.i.i.while.body.i22.i_crit_edge ], [ %37, %while.body.preheader.i.i ]
  %interconnect.020.i.i = phi ptr [ %incdec.ptr.i20.i, %if.end9.i.i.while.body.i22.i_crit_edge ], [ %add.ptr.i.i, %while.body.preheader.i.i ]
  %dec22.i.i = add i32 %dec22.in.i.i, -1
  %incdec.ptr.i20.i = getelementptr %struct.ipa_interconnect, ptr %interconnect.020.i.i, i32 -1
  %40 = ptrtoint ptr %incdec.ptr.i20.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %incdec.ptr.i20.i, align 4
  %call.i21.i = tail call i32 @icc_set_bw(ptr noundef %41, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool4.not.i.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool4.not.i.i, label %while.body.i22.i.if.end9.i.i_crit_edge, label %do.end.i23.i

while.body.i22.i.if.end9.i.i_crit_edge:           ; preds = %while.body.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

do.end.i23.i:                                     ; preds = %while.body.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %incdec.ptr.i20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %incdec.ptr.i20.i, align 4
  %call6.i.i = tail call ptr @icc_get_name(ptr noundef %43) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.13, i32 noundef %call.i21.i, ptr noundef %call6.i.i) #11
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %do.end.i23.i, %while.body.i22.i.if.end9.i.i_crit_edge
  %tobool.not.i24.i = icmp eq i32 %dec22.i.i, 0
  br i1 %tobool.not.i24.i, label %if.end9.i.i.ipa_power_enable.exit_crit_edge, label %if.end9.i.i.while.body.i22.i_crit_edge

if.end9.i.i.while.body.i22.i_crit_edge:           ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i22.i

if.end9.i.i.ipa_power_enable.exit_crit_edge:      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipa_power_enable.exit

ipa_power_enable.exit:                            ; preds = %if.end9.i.i.ipa_power_enable.exit_crit_edge, %do.end.i.ipa_power_enable.exit_crit_edge, %while.body.i.i.ipa_power_enable.exit_crit_edge, %do.end.i.i.ipa_power_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i16.ph.i, %do.end.i.ipa_power_enable.exit_crit_edge ], [ %call.i.i, %do.end.i.i.ipa_power_enable.exit_crit_edge ], [ %retval.0.i16.ph.i, %if.end9.i.i.ipa_power_enable.exit_crit_edge ], [ %call.i.i, %while.body.i.i.ipa_power_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %ipa_power_enable.exit.if.end22_crit_edge, !prof !52

ipa_power_enable.exit.if.end22_crit_edge:         ; preds = %ipa_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %ipa_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 262, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %ipa_power_enable.exit.if.end22_crit_edge, %if.end.i15.i.if.end22_crit_edge
  %setup_complete = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 36
  %44 = ptrtoint ptr %setup_complete to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %setup_complete, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool23.not = icmp eq i8 %45, 0
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gsi_resume(ptr noundef %1) #8
  tail call void @ipa_endpoint_resume(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %if.then24 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_interrupt_suspend_clear_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qmp_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @ipa_power_retention.fmt, !1, !"fmt", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_power.c", i32 414, i32 20}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/ipa_power.c", i32 426, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ipa_power_retention._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ipa_power_retention._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ipa/ipa_power.c", i32 458, i32 21}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ipa/ipa_power.c", i32 460, i32 36}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ipa/ipa_power.c", i32 467, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ipa_power_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ipa_power_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @ipa_power_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ipa/ipa_power.c", i32 479, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ipa_pm_ops, !25, !"ipa_pm_ops", i1 false, i1 false}
!25 = !{!"../drivers/net/ipa/ipa_power.c", i32 520, i32 25}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ipa/ipa_power.c", i32 95, i32 27}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ipa/ipa_power.c", i32 205, i32 4}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ipa_interconnect_disable._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ipa_interconnect_disable._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ipa/ipa_power.c", i32 227, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ipa_power_enable._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ipa_power_enable._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ipa/ipa_power.c", i32 172, i32 4}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ipa_interconnect_enable._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ipa_interconnect_enable._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i8 0, i8 2}
