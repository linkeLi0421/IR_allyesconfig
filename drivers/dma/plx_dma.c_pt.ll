; ModuleID = '/llk/IR_all_yes/drivers/dma/plx_dma.c_pt.bc'
source_filename = "../drivers/dma/plx_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.plx_dma_dev = type { %struct.dma_device, %struct.dma_chan, ptr, ptr, %struct.tasklet_struct, %struct.spinlock, i8, i32, i32, ptr, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.plx_dma_hw_std_desc = type { i32, i16, i16, i32, i32 }
%struct.plx_dma_desc = type { %struct.dma_async_tx_descriptor, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }

@__UNIQUE_ID_description238 = internal constant [62 x i8] c"plx_dma.description=PLX ExpressLane PEX PCI Switch DMA Engine\00", section ".modinfo", align 1
@__UNIQUE_ID_version239 = internal constant [20 x i8] c"plx_dma.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"plx_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file240 = internal constant [33 x i8] c"plx_dma.file=drivers/dma/plx_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [20 x i8] c"plx_dma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [31 x i8] c"plx_dma.author=Logan Gunthorpe\00", section ".modinfo", align 1
@__initcall__kmod_plx_dma__256_636_plx_dma_pci_driver_init6 = internal global ptr @plx_dma_pci_driver_init, section ".initcall6.init", align 4
@plx_dma_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @plx_dma_pci_tbl, ptr @plx_dma_probe, ptr @plx_dma_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_plx_dma_pci_driver_exit = internal global ptr @plx_dma_pci_driver_exit, section ".exitcall.exit", align 4
@plx_dma_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 34768, i32 -1, i32 -1, i32 557056, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@plx_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 586, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PLX DMA Channel Registered\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"plx_dma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/plx_dma.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@plx_dma_probe._entry_ptr = internal global ptr @plx_dma_probe._entry, section ".printk_index", align 4
@plx_dma_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&plxdev->ring_lock\00", [45 x i8] zeroinitializer }, align 32
@plx_dma_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 540, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register dma device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"plx_dma_create\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@plx_dma_create._entry_ptr = internal global ptr @plx_dma_create._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@plx_dma_alloc_chan_resources.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@plx_dma_free_chan_resources.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@plx_dma_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__plx_dma_stop._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 220, ptr @.str.11, ptr @.str.7 }, align 1
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Timeout waiting for graceful pause!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__plx_dma_stop\00", [17 x i8] zeroinitializer }, align 32
@__plx_dma_stop._entry_ptr = internal global ptr @__plx_dma_stop._entry, section ".printk_index", align 4
@plx_dma_issue_pending.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 18, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"plx_dma_pci_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 630, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"plx_dma_pci_tbl\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 617, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 586, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 513, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 540, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 424, i32 7 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 695, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 723, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [25 x i8] c"../drivers/dma/plx_dma.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 219, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_version239, ptr @__exitcall_plx_dma_pci_driver_exit, ptr @__initcall__kmod_plx_dma__256_636_plx_dma_pci_driver_init6, ptr @__modver_attr, ptr @__plx_dma_stop._entry, ptr @__plx_dma_stop._entry_ptr, ptr @plx_dma_create._entry, ptr @plx_dma_create._entry_ptr, ptr @plx_dma_pci_driver_exit, ptr @plx_dma_probe._entry, ptr @plx_dma_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @plx_dma_pci_driver, ptr @plx_dma_pci_tbl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @plx_dma_create.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_dma_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_dma_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_dma_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_dma_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @plx_dma_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @plx_dma_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @plx_dma_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @plx_dma_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plx_dma_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 281474976710655) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %call.i40 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i41 = icmp eq i32 %call.i40, 0
  br i1 %cmp.i41, label %if.then3.if.end9_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %.sink = phi i64 [ 281474976710655, %if.end.if.end9_crit_edge ], [ 4294967295, %if.then3.if.end9_crit_edge ]
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #9
  %call10 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call.i45 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i45)
  %cmp = icmp slt i32 %call.i45, 1
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  tail call void @pci_set_master(ptr noundef %pdev) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 528) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end16.err_free_irq_vectors_crit_edge, label %if.end.i

if.end16.err_free_irq_vectors_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_irq_vectors

if.end.i:                                         ; preds = %if.end16
  %call1.i46 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #9
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %call1.i46, ptr noundef nonnull @plx_dma_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.free_plx.i_crit_edge

if.end.i.free_plx.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_plx.i

do.body.i:                                        ; preds = %if.end.i
  %ring_lock.i = getelementptr inbounds %struct.plx_dma_dev, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %ring_lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @plx_dma_create.__key, i16 noundef signext 3) #9
  %desc_task.i = getelementptr inbounds %struct.plx_dma_dev, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @tasklet_setup(ptr noundef %desc_task.i, ptr noundef nonnull @plx_dma_desc_task) #9
  %pdev13.i = getelementptr inbounds %struct.plx_dma_dev, ptr %call7.i.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %pdev13.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pdev, ptr %pdev13.i, align 4
  %call20.i = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #9
  %2 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call20.i, align 4
  %bar.i = getelementptr inbounds %struct.plx_dma_dev, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %bar.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %bar.i, align 8
  %chancnt.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %chancnt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %chancnt.i, align 4
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %channels.i, ptr %channels.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %channels.i, ptr %prev.i.i, align 8
  %cap_mask.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask.i) #9
  %copy_align.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %copy_align.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %copy_align.i, align 4
  %call21.i = tail call ptr @get_device(ptr noundef %dev) #9
  %dev22.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %dev22.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21.i, ptr %dev22.i, align 8
  %device_alloc_chan_resources.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 27
  %10 = ptrtoint ptr %device_alloc_chan_resources.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @plx_dma_alloc_chan_resources, ptr %device_alloc_chan_resources.i, align 8
  %device_free_chan_resources.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 29
  %11 = ptrtoint ptr %device_free_chan_resources.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @plx_dma_free_chan_resources, ptr %device_free_chan_resources.i, align 8
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 30
  %12 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @plx_dma_prep_memcpy, ptr %device_prep_dma_memcpy.i, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 50
  %13 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @plx_dma_issue_pending, ptr %device_issue_pending.i, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 49
  %14 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @plx_dma_tx_status, ptr %device_tx_status.i, align 8
  %device_release.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i.i, i32 0, i32 51
  %15 = ptrtoint ptr %device_release.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @plx_dma_release, ptr %device_release.i, align 8
  %dma_chan.i = getelementptr inbounds %struct.plx_dma_dev, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %dma_chan.i, align 4
  %cookie.i.i = getelementptr inbounds %struct.plx_dma_dev, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %cookie.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.plx_dma_dev, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %completed_cookie.i.i, align 8
  %device_node.i = getelementptr inbounds %struct.plx_dma_dev, ptr %call7.i.i.i, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node.i, ptr noundef %20, ptr noundef %channels.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.i.list_add_tail.exit.i_crit_edge

do.body.i.list_add_tail.exit.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %device_node.i, ptr %prev.i.i, align 8
  %22 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %channels.i, ptr %device_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.plx_dma_dev, ptr %call7.i.i.i, i32 0, i32 1, i32 8, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %device_node.i, ptr %20, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.body.i.list_add_tail.exit.i_crit_edge
  %call24.i = tail call i32 @dma_async_device_register(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %do.end, label %do.end29.i

do.end29.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call24.i) #13
  tail call void @put_device(ptr noundef %dev) #9
  %call33.i = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #9
  %call34.i = tail call ptr @free_irq(i32 noundef %call33.i, ptr noundef nonnull %call7.i.i.i) #9
  br label %free_plx.i

free_plx.i:                                       ; preds = %do.end29.i, %if.end.i.free_plx.i_crit_edge
  %rc.0.i = phi i32 [ %call.i.i, %if.end.i.free_plx.i_crit_edge ], [ %call24.i, %do.end29.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %err_free_irq_vectors

do.end:                                           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  br label %cleanup

err_free_irq_vectors:                             ; preds = %free_plx.i, %if.end16.err_free_irq_vectors_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end16.err_free_irq_vectors_crit_edge ], [ %rc.0.i, %free_plx.i ]
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_irq_vectors, %do.end, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %err_free_irq_vectors ], [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call.i45, %if.end13.cleanup_crit_edge ], [ %call.i40, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_dma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #9
  %call2 = tail call ptr @free_irq(i32 noundef %call1, ptr noundef %1) #9
  %pdev6 = getelementptr inbounds %struct.plx_dma_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %pdev6, align 4
  tail call void @synchronize_rcu() #9
  %ring_lock = getelementptr inbounds %struct.plx_dma_dev, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %ring_lock) #9
  %ring_active = getelementptr inbounds %struct.plx_dma_dev, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ring_active to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ring_active, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ring_lock) #9
  tail call fastcc void @__plx_dma_stop(ptr noundef %1)
  tail call fastcc void @plx_dma_abort_desc(ptr noundef %1)
  %bar = getelementptr inbounds %struct.plx_dma_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bar, align 4
  tail call void @dma_async_device_unregister(ptr noundef %1) #9
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plx_dma_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bar = getelementptr inbounds %struct.plx_dma_dev, ptr %devid, i32 0, i32 3
  %0 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 574
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = and i16 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %ring_active = getelementptr inbounds %struct.plx_dma_dev, ptr %devid, i32 0, i32 6
  %4 = ptrtoint ptr %ring_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ring_active, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.do.body_crit_edge, label %if.then5

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then5:                                         ; preds = %land.lhs.true
  %state.i = getelementptr inbounds %struct.plx_dma_dev, ptr %devid, i32 0, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then5.do.body_crit_edge

if.then5.do.body_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %desc_task = getelementptr inbounds %struct.plx_dma_dev, ptr %devid, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %desc_task) #9
  br label %do.body

do.body:                                          ; preds = %if.then.i, %if.then5.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 574
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %2) #9, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_dma_desc_task(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -436
  tail call fastcc void @plx_dma_process_desc(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plx_dma_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr i8, ptr %chan, i32 148
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tail, align 4
  %head = getelementptr i8, ptr %chan, i32 144
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %head, align 4
  %dev = getelementptr i8, ptr %chan, i32 -292
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %hw_ring_dma = getelementptr i8, ptr %chan, i32 156
  %call.i84 = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 32768, ptr noundef %hw_ring_dma, i32 noundef 3264, i32 noundef 0) #9
  %hw_ring = getelementptr i8, ptr %chan, i32 152
  %4 = ptrtoint ptr %hw_ring to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i84, ptr %hw_ring, align 4
  %tobool.not = icmp eq ptr %call.i84, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8192) #12
  %desc_ring.i = getelementptr i8, ptr %chan, i32 160
  %6 = ptrtoint ptr %desc_ring.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i.i, ptr %desc_ring.i, align 4
  %tobool.not.i85 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i85, label %if.end.out_free_hw_ring_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.out_free_hw_ring_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_hw_ring

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %if.end5.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 108) #12
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %for.body.i.for.body11.i_crit_edge, label %if.end5.i

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

if.end5.i:                                        ; preds = %for.body.i
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #9
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @plx_dma_tx_submit, ptr %tx_submit.i, align 8
  %9 = ptrtoint ptr %hw_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ring, align 4
  %arrayidx.i = getelementptr %struct.plx_dma_hw_std_desc, ptr %10, i32 %i.035.i
  %hw.i = getelementptr inbounds %struct.plx_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.i, ptr %hw.i, align 4
  %12 = ptrtoint ptr %desc_ring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc_ring.i, align 4
  %arrayidx8.i = getelementptr ptr, ptr %13, i32 %i.035.i
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %arrayidx8.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2048
  br i1 %exitcond.not.i, label %if.end6, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %i.136.i = phi i32 [ %inc15.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %for.body.i.for.body11.i_crit_edge ]
  %15 = ptrtoint ptr %desc_ring.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_ring.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %16, i32 %i.136.i
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx13.i, align 4
  tail call void @kfree(ptr noundef %18) #9
  %inc15.i = add nuw nsw i32 %i.136.i, 1
  %exitcond37.not.i = icmp eq i32 %inc15.i, 2048
  br i1 %exitcond37.not.i, label %for.end16.i, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11.i

for.end16.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %desc_ring.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc_ring.i, align 4
  tail call void @kfree(ptr noundef %20) #9
  br label %out_free_hw_ring

if.end6:                                          ; preds = %if.end5.i
  %21 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %pdev = getelementptr i8, ptr %chan, i32 64
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %pdev, align 4
  %call8 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end17_crit_edge

rcu_read_lock.exit.do.end17_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b83 = load i1, ptr @plx_dma_alloc_chan_resources.__warned, align 1
  br i1 %.b83, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @plx_dma_alloc_chan_resources.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 424, ptr noundef nonnull @.str.12) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %rcu_read_lock.exit.do.end17_crit_edge
  %tobool19.not = icmp eq ptr %26, null
  br i1 %tobool19.not, label %if.then20, label %do.body22

if.then20:                                        ; preds = %do.end17
  %call.i86 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i86, label %if.then20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i89

if.then20.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i89:                                ; preds = %if.then20
  %call1.i87 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i91

land.lhs.true.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i91:                               ; preds = %land.lhs.true.i89
  %.b4.i90 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90, label %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, label %if.then.i92

land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i92:                                      ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i92, %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, %if.then20.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %27 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i93 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i93 to ptr
  %preempt_count.i.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i94, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i94, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %out_free_hw_ring

do.body22:                                        ; preds = %do.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %bar = getelementptr i8, ptr %chan, i32 68
  %31 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bar, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1507328) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %hw_ring_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_ring_dma, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bar, align 4
  %add.ptr30 = getelementptr i8, ptr %37, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %35) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bar, align 4
  %add.ptr37 = getelementptr i8, ptr %39, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %hw_ring_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_ring_dma, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bar, align 4
  %add.ptr44 = getelementptr i8, ptr %44, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %42) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bar, align 4
  %add.ptr49 = getelementptr i8, ptr %46, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 524288) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bar, align 4
  %add.ptr54 = getelementptr i8, ptr %48, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 134217728) #9, !srcloc !76
  %ring_active = getelementptr i8, ptr %chan, i32 140
  %49 = ptrtoint ptr %ring_active to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %ring_active, align 4
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i95, label %do.body22.rcu_read_unlock.exit105_crit_edge, label %land.lhs.true.i98

do.body22.rcu_read_unlock.exit105_crit_edge:      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit105

land.lhs.true.i98:                                ; preds = %do.body22
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit105

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit105

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_unlock.exit105

rcu_read_unlock.exit105:                          ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge, %do.body22.rcu_read_unlock.exit105_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %50 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i102 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i104 = add i32 %53, -1
  store volatile i32 %sub.i.i.i104, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

out_free_hw_ring:                                 ; preds = %rcu_read_unlock.exit, %for.end16.i, %if.end.out_free_hw_ring_crit_edge
  %rc.0 = phi i32 [ -19, %rcu_read_unlock.exit ], [ -12, %for.end16.i ], [ -12, %if.end.out_free_hw_ring_crit_edge ]
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %56 = ptrtoint ptr %hw_ring to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_ring, align 4
  %58 = ptrtoint ptr %hw_ring_dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hw_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %55, i32 noundef 32768, ptr noundef %57, i32 noundef %59, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free_hw_ring, %rcu_read_unlock.exit105, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_free_hw_ring ], [ 2048, %rcu_read_unlock.exit105 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_dma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -364
  %ring_lock = getelementptr i8, ptr %chan, i32 96
  tail call void @_raw_spin_lock_bh(ptr noundef %ring_lock) #9
  %ring_active = getelementptr i8, ptr %chan, i32 140
  %0 = ptrtoint ptr %ring_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ring_active, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ring_lock) #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %pdev.i = getelementptr i8, ptr %chan, i32 64
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pdev.i, align 4
  %call.i36 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i38:                                ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i38.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i38.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i38
  %.b13.i = load i1, ptr @plx_dma_stop.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i39

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

if.then.i39:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @plx_dma_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 234, ptr noundef nonnull @.str.12) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i39, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i38.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %6, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %do.end7.i
  %call.i14.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i14.i, label %if.then10.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i17.i

if.then10.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i17.i:                              ; preds = %if.then10.i
  %call1.i15.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call1.i15.i, 0
  br i1 %tobool.not.i16.i, label %land.lhs.true.i17.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i19.i

land.lhs.true.i17.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i19.i:                             ; preds = %land.lhs.true.i17.i
  %.b4.i18.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18.i, label %land.lhs.true2.i19.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i20.i

land.lhs.true2.i19.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i20.i:                                    ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i20.i, %land.lhs.true2.i19.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i17.i.rcu_read_unlock.exit.i_crit_edge, %if.then10.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  br label %plx_dma_stop.exit

if.end11.i:                                       ; preds = %do.end7.i
  tail call fastcc void @__plx_dma_stop(ptr noundef %add.ptr.i) #9
  %call.i23.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i23.i, label %if.end11.i.rcu_read_unlock.exit33.i_crit_edge, label %land.lhs.true.i26.i

if.end11.i.rcu_read_unlock.exit33.i_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit33.i

land.lhs.true.i26.i:                              ; preds = %if.end11.i
  %call1.i24.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call1.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i.rcu_read_unlock.exit33.i_crit_edge, label %land.lhs.true2.i28.i

land.lhs.true.i26.i.rcu_read_unlock.exit33.i_crit_edge: ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit33.i

land.lhs.true2.i28.i:                             ; preds = %land.lhs.true.i26.i
  %.b4.i27.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27.i, label %land.lhs.true2.i28.i.rcu_read_unlock.exit33.i_crit_edge, label %if.then.i29.i

land.lhs.true2.i28.i.rcu_read_unlock.exit33.i_crit_edge: ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit33.i

if.then.i29.i:                                    ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_unlock.exit33.i

rcu_read_unlock.exit33.i:                         ; preds = %if.then.i29.i, %land.lhs.true2.i28.i.rcu_read_unlock.exit33.i_crit_edge, %land.lhs.true.i26.i.rcu_read_unlock.exit33.i_crit_edge, %if.end11.i.rcu_read_unlock.exit33.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  br label %plx_dma_stop.exit

plx_dma_stop.exit:                                ; preds = %rcu_read_unlock.exit33.i, %rcu_read_unlock.exit.i
  %7 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i30.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i30.i to ptr
  %preempt_count.i.i.i.i31.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i31.i, align 4
  %sub.i.i.i32.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i32.i, ptr %preempt_count.i.i.i.i31.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %11 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %plx_dma_stop.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

plx_dma_stop.exit.rcu_read_lock.exit_crit_edge:   ; preds = %plx_dma_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %plx_dma_stop.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %plx_dma_stop.exit.rcu_read_lock.exit_crit_edge
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %pdev.i, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @plx_dma_free_chan_resources.__warned, align 1
  br i1 %.b35, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @plx_dma_free_chan_resources.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 467, ptr noundef nonnull @.str.12) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %do.end10.if.end15_crit_edge, label %if.then13

do.end10.if.end15_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @pci_irq_vector(ptr noundef nonnull %16, i32 noundef 0) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end10.if.end15_crit_edge
  %irq.0 = phi i32 [ %call14, %if.then13 ], [ -1, %do.end10.if.end15_crit_edge ]
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i40, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %if.end15
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i47 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0)
  %cmp = icmp sgt i32 %irq.0, 0
  br i1 %cmp, label %if.then16, label %rcu_read_unlock.exit.if.end17_crit_edge

rcu_read_unlock.exit.if.end17_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @synchronize_irq(i32 noundef %irq.0) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %rcu_read_unlock.exit.if.end17_crit_edge
  %desc_task = getelementptr i8, ptr %chan, i32 72
  tail call void @tasklet_kill(ptr noundef %desc_task) #9
  tail call fastcc void @plx_dma_abort_desc(ptr noundef %add.ptr.i)
  %desc_ring = getelementptr i8, ptr %chan, i32 160
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17
  %i.049 = phi i32 [ 0, %if.end17 ], [ %inc, %for.body.for.body_crit_edge ]
  %21 = ptrtoint ptr %desc_ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc_ring, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %i.049
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %24) #9
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %desc_ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc_ring, align 4
  tail call void @kfree(ptr noundef %26) #9
  %dev = getelementptr i8, ptr %chan, i32 -292
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %hw_ring = getelementptr i8, ptr %chan, i32 152
  %29 = ptrtoint ptr %hw_ring to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_ring, align 4
  %hw_ring_dma = getelementptr i8, ptr %chan, i32 156
  %31 = ptrtoint ptr %hw_ring_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %28, i32 noundef 32768, ptr noundef %30, i32 noundef %32, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @plx_dma_prep_memcpy(ptr noundef %c, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_lock = getelementptr i8, ptr %c, i32 96
  tail call void @_raw_spin_lock_bh(ptr noundef %ring_lock) #9
  %ring_active = getelementptr i8, ptr %c, i32 140
  %0 = ptrtoint ptr %ring_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ring_active, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.err_unlock_crit_edge, label %if.end

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end:                                           ; preds = %entry
  %tail = getelementptr i8, ptr %c, i32 148
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  %head = getelementptr i8, ptr %c, i32 144
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %add.neg = xor i32 %5, -1
  %sub = add i32 %3, %add.neg
  %and = and i32 %sub, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217727, i32 %len)
  %cmp = icmp ugt i32 %len, 134217727
  %or.cond = or i1 %cmp, %tobool1.not
  br i1 %or.cond, label %if.end.err_unlock_crit_edge, label %if.end5

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %desc_ring.i = getelementptr i8, ptr %c, i32 160
  %6 = ptrtoint ptr %desc_ring.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_ring.i, align 4
  %and.i = and i32 %5, 2047
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %inc = add i32 %5, 1
  %10 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %head, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %dma_dst)
  %hw = getelementptr inbounds %struct.plx_dma_desc, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %dst_addr_lo = getelementptr inbounds %struct.plx_dma_hw_std_desc, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dst_addr_lo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %dst_addr_lo, align 4
  %15 = load ptr, ptr %hw, align 4
  %dst_addr_hi = getelementptr inbounds %struct.plx_dma_hw_std_desc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dst_addr_hi to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %dst_addr_hi, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %dma_src)
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %src_addr_lo = getelementptr inbounds %struct.plx_dma_hw_std_desc, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %src_addr_lo to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %src_addr_lo, align 4
  %21 = load ptr, ptr %hw, align 4
  %src_addr_hi = getelementptr inbounds %struct.plx_dma_hw_std_desc, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %src_addr_hi to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %src_addr_hi, align 2
  %orig_size = getelementptr inbounds %struct.plx_dma_desc, ptr %9, i32 0, i32 2
  %23 = ptrtoint ptr %orig_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %len, ptr %orig_size, align 4
  %and18 = shl i32 %flags, 30
  %24 = and i32 %and18, 1073741824
  %25 = or i32 %24, %len
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %28, align 4
  %flags23 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 1
  %30 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %flags, ptr %flags23, align 4
  br label %cleanup

err_unlock:                                       ; preds = %if.end.err_unlock_crit_edge, %entry.err_unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ring_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.end5
  %retval.0 = phi ptr [ null, %err_unlock ], [ %9, %if.end5 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_dma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pdev = getelementptr i8, ptr %chan, i32 64
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pdev, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @plx_dma_issue_pending.__warned, align 1
  br i1 %.b20, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @plx_dma_issue_pending.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 342, ptr noundef nonnull @.str.12) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.then11, label %do.body13

if.then11:                                        ; preds = %do.end8
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i21, label %if.then11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

if.then11.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %if.then11
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %if.then11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  br label %cleanup

do.body13:                                        ; preds = %do.end8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %bar = getelementptr i8, ptr %chan, i32 68
  %6 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 568
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 19479) #9, !srcloc !72
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i30, label %do.body13.rcu_read_unlock.exit40_crit_edge, label %land.lhs.true.i33

do.body13.rcu_read_unlock.exit40_crit_edge:       ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit40

land.lhs.true.i33:                                ; preds = %do.body13
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.rcu_read_unlock.exit40_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.rcu_read_unlock.exit40_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit40

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.rcu_read_unlock.exit40_crit_edge, label %if.then.i36

land.lhs.true2.i35.rcu_read_unlock.exit40_crit_edge: ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit40

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_unlock.exit40

rcu_read_unlock.exit40:                           ; preds = %if.then.i36, %land.lhs.true2.i35.rcu_read_unlock.exit40_crit_edge, %land.lhs.true.i33.rcu_read_unlock.exit40_crit_edge, %do.body13.rcu_read_unlock.exit40_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit40, %rcu_read_unlock.exit
  %8 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i37 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i38, align 4
  %sub.i.i.i39 = add i32 %11, -1
  store volatile i32 %sub.i.i.i39, ptr %preempt_count.i.i.i.i38, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plx_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -364
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  tail call fastcc void @plx_dma_process_desc(ptr noundef %add.ptr.i)
  %8 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie1.i, align 4
  %10 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  br i1 %tobool.not.i, label %if.end.if.end.i19_crit_edge, label %if.then.i15

if.end.if.end.i19_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i19

if.then.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %txstate, align 4
  %used2.i12 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %13 = ptrtoint ptr %used2.i12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %used2.i12, align 4
  %residue.i13 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %14 = ptrtoint ptr %residue.i13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %residue.i13, align 4
  %in_flight_bytes.i14 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %15 = ptrtoint ptr %in_flight_bytes.i14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %in_flight_bytes.i14, align 4
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.then.i15, %if.end.if.end.i19_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.not.i.i16 = icmp sgt i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp4.not.i.i17 = icmp sge i32 %11, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cookie)
  %cmp5.i.i18 = icmp slt i32 %9, %cookie
  br i1 %cmp.not.i.i16, label %if.else.i.i23, label %if.then.i.i21

if.then.i.i21:                                    ; preds = %if.end.i19
  %or.cond.i.i20 = or i1 %cmp5.i.i18, %cmp4.not.i.i17
  br i1 %or.cond.i.i20, label %if.then.i.i21.cleanup_crit_edge, label %if.then.i.i21.if.end8.i.i24_crit_edge

if.then.i.i21.if.end8.i.i24_crit_edge:            ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i24

if.then.i.i21.cleanup_crit_edge:                  ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i23:                                    ; preds = %if.end.i19
  %or.cond16.i.i22 = and i1 %cmp5.i.i18, %cmp4.not.i.i17
  br i1 %or.cond16.i.i22, label %if.else.i.i23.cleanup_crit_edge, label %if.else.i.i23.if.end8.i.i24_crit_edge

if.else.i.i23.if.end8.i.i24_crit_edge:            ; preds = %if.else.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i24

if.else.i.i23.cleanup_crit_edge:                  ; preds = %if.else.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i24:                                    ; preds = %if.else.i.i23.if.end8.i.i24_crit_edge, %if.then.i.i21.if.end8.i.i24_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i.i24, %if.else.i.i23.cleanup_crit_edge, %if.then.i.i21.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8.i.i24 ], [ 0, %if.then.i.i21.cleanup_crit_edge ], [ 0, %if.else.i.i23.cleanup_crit_edge ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_dma_release(ptr noundef %dma_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dma_device, ptr %dma_dev, i32 0, i32 15
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @put_device(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %dma_dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @plx_dma_process_desc(ptr noundef %plxdev) unnamed_addr #2 align 64 {
entry:
  %res = alloca %struct.dmaengine_result, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !85
  %1 = getelementptr inbounds %struct.dmaengine_result, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !85
  %ring_lock = getelementptr inbounds %struct.plx_dma_dev, ptr %plxdev, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %ring_lock) #9
  %tail = getelementptr inbounds %struct.plx_dma_dev, ptr %plxdev, i32 0, i32 8
  %head = getelementptr inbounds %struct.plx_dma_dev, ptr %plxdev, i32 0, i32 7
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tail, align 4
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not35 = icmp eq i32 %4, %6
  br i1 %cmp.not35, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %desc_ring.i = getelementptr inbounds %struct.plx_dma_dev, ptr %plxdev, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %dmaengine_desc_get_callback_invoke.exit.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i32 [ %4, %while.body.lr.ph ], [ %inc, %dmaengine_desc_get_callback_invoke.exit.while.body_crit_edge ]
  %8 = ptrtoint ptr %desc_ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_ring.i, align 4
  %and.i = and i32 %7, 2047
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %hw = getelementptr inbounds %struct.plx_dma_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool.not = icmp sgt i32 %16, -1
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %orig_size = getelementptr inbounds %struct.plx_dma_desc, ptr %11, i32 0, i32 2
  %17 = ptrtoint ptr %orig_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig_size, align 4
  %and2 = and i32 %16, 134217727
  %sub = sub i32 %18, %and2
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %1, align 4
  %and3 = and i32 %16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %res, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %and6 = and i32 %16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %res, align 4
  br label %if.end13

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %res, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then8, %if.then5
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp slt i32 %24, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !86

do.body2.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.end13
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 3
  %25 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %completed_cookie.i, align 4
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %11, align 4
  %unmap.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 9
  %29 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %dma_cookie_complete.exit.dma_descriptor_unmap.exit_crit_edge, label %if.end.i

dma_cookie_complete.exit.dma_descriptor_unmap.exit_crit_edge: ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_descriptor_unmap.exit

if.end.i:                                         ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dmaengine_unmap_put(ptr noundef nonnull %30) #9
  %31 = ptrtoint ptr %unmap.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %unmap.i, align 4
  br label %dma_descriptor_unmap.exit

dma_descriptor_unmap.exit:                        ; preds = %if.end.i, %dma_cookie_complete.exit.dma_descriptor_unmap.exit_crit_edge
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 6
  %32 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 7
  %34 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 8
  %36 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %callback_param.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %dma_descriptor_unmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void %35(ptr noundef %37, ptr noundef nonnull %res) #9
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %dma_descriptor_unmap.exit
  %tobool4.not.i.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %33(ptr noundef %37) #9
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  %38 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %callback.i.i, align 4
  %39 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %callback_result.i.i, align 4
  %40 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %tail, align 4
  %42 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %head, align 4
  %cmp.not = icmp eq i32 %inc, %43
  br i1 %cmp.not, label %dmaengine_desc_get_callback_invoke.exit.while.end_crit_edge, label %dmaengine_desc_get_callback_invoke.exit.while.body_crit_edge

dmaengine_desc_get_callback_invoke.exit.while.body_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

dmaengine_desc_get_callback_invoke.exit.while.end_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %dmaengine_desc_get_callback_invoke.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ring_lock) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plx_dma_tx_submit(ptr nocapture noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %3, 1
  %4 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #9
  %5 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cookie2.i, align 4
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %desc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %hw = getelementptr inbounds %struct.plx_dma_desc, ptr %desc, i32 0, i32 1
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %or = or i32 %10, 128
  store i32 %or, ptr %8, align 4
  %ring_lock = getelementptr i8, ptr %1, i32 96
  tail call void @_raw_spin_unlock_bh(ptr noundef %ring_lock) #9
  ret i32 %4
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @plx_dma_abort_desc(ptr noundef %plxdev) unnamed_addr #2 align 64 {
entry:
  %res = alloca %struct.dmaengine_result, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !85
  %1 = getelementptr inbounds %struct.dmaengine_result, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !85
  tail call fastcc void @plx_dma_process_desc(ptr noundef %plxdev)
  %ring_lock = getelementptr inbounds %struct.plx_dma_dev, ptr %plxdev, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %ring_lock) #9
  %tail = getelementptr inbounds %struct.plx_dma_dev, ptr %plxdev, i32 0, i32 8
  %head = getelementptr inbounds %struct.plx_dma_dev, ptr %plxdev, i32 0, i32 7
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tail, align 4
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not20 = icmp eq i32 %4, %6
  br i1 %cmp.not20, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %desc_ring.i = getelementptr inbounds %struct.plx_dma_dev, ptr %plxdev, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %dmaengine_desc_get_callback_invoke.exit.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i32 [ %4, %while.body.lr.ph ], [ %inc, %dmaengine_desc_get_callback_invoke.exit.while.body_crit_edge ]
  %8 = ptrtoint ptr %desc_ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_ring.i, align 4
  %and.i = and i32 %7, 2047
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %orig_size = getelementptr inbounds %struct.plx_dma_desc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %orig_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_size, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %1, align 4
  %15 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %res, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp slt i32 %17, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !86

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

dma_cookie_complete.exit:                         ; preds = %while.body
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %completed_cookie.i, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %11, align 4
  %unmap.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 9
  %22 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %dma_cookie_complete.exit.dma_descriptor_unmap.exit_crit_edge, label %if.end.i

dma_cookie_complete.exit.dma_descriptor_unmap.exit_crit_edge: ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_descriptor_unmap.exit

if.end.i:                                         ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dmaengine_unmap_put(ptr noundef nonnull %23) #9
  %24 = ptrtoint ptr %unmap.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %unmap.i, align 4
  br label %dma_descriptor_unmap.exit

dma_descriptor_unmap.exit:                        ; preds = %if.end.i, %dma_cookie_complete.exit.dma_descriptor_unmap.exit_crit_edge
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 6
  %25 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 7
  %27 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 8
  %29 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %callback_param.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %dma_descriptor_unmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void %28(ptr noundef %30, ptr noundef nonnull %res) #9
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %dma_descriptor_unmap.exit
  %tobool4.not.i.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %26(ptr noundef %30) #9
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  %31 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %callback.i.i, align 4
  %32 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %callback_result.i.i, align 4
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tail, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %tail, align 4
  %35 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %head, align 4
  %cmp.not = icmp eq i32 %inc, %36
  br i1 %cmp.not, label %dmaengine_desc_get_callback_invoke.exit.while.end_crit_edge, label %dmaengine_desc_get_callback_invoke.exit.while.body_crit_edge

dmaengine_desc_get_callback_invoke.exit.while.body_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

dmaengine_desc_get_callback_invoke.exit.while.end_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %dmaengine_desc_get_callback_invoke.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ring_lock) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__plx_dma_stop(ptr nocapture noundef readonly %plxdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %bar = getelementptr inbounds %struct.plx_dma_dev, ptr %plxdev, i32 0, i32 3
  %1 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bar, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 568
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !89
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %tobool.not = icmp ult i32 %4, 2
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bar, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 18284544) #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub69 = sub i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub69)
  %cmp70 = icmp sgt i32 %sub69, -1
  br i1 %cmp70, label %do.body.while.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

while.body:                                       ; preds = %do.end20.while.body_crit_edge, %do.body.while.body_crit_edge
  %8 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 568
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !89
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %and12 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end20, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end20:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %12
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %do.end20.while.body_crit_edge, label %do.end20.while.end_crit_edge

do.end20.while.end_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end20.while.body_crit_edge:                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %do.end20.while.end_crit_edge, %while.body.while.end_crit_edge, %do.body.while.end_crit_edge
  %val.1 = phi i32 [ %4, %do.body.while.end_crit_edge ], [ %11, %while.body.while.end_crit_edge ], [ %11, %do.end20.while.end_crit_edge ]
  %and25 = and i32 %val.1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.end30, label %while.end.do.body32_crit_edge

while.end.do.body32_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

do.end30:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %plxdev, i32 0, i32 15
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.16) #13
  br label %do.body32

do.body32:                                        ; preds = %do.end30, %while.end.do.body32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bar, align 4
  %add.ptr36 = getelementptr i8, ptr %16, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 18284544) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bar, align 4
  %add.ptr41 = getelementptr i8, ptr %18, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bar, align 4
  %add.ptr46 = getelementptr i8, ptr %20, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 0) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bar, align 4
  %add.ptr51 = getelementptr i8, ptr %22, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 0) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bar, align 4
  %add.ptr56 = getelementptr i8, ptr %24, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #9, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !54, !55, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__UNIQUE_ID_description238, !1, !"__UNIQUE_ID_description238", i1 false, i1 false}
!1 = !{!"../drivers/dma/plx_dma.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_version239, !3, !"__UNIQUE_ID_version239", i1 false, i1 false}
!3 = !{!"../drivers/dma/plx_dma.c", i32 18, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file240, !9, !"__UNIQUE_ID_file240", i1 false, i1 false}
!9 = !{!"../drivers/dma/plx_dma.c", i32 19, i32 1}
!10 = !{ptr @__UNIQUE_ID_license241, !9, !"__UNIQUE_ID_license241", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author242, !12, !"__UNIQUE_ID_author242", i1 false, i1 false}
!12 = !{!"../drivers/dma/plx_dma.c", i32 20, i32 1}
!13 = !{ptr @__initcall__kmod_plx_dma__256_636_plx_dma_pci_driver_init6, !14, !"__initcall__kmod_plx_dma__256_636_plx_dma_pci_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/dma/plx_dma.c", i32 636, i32 1}
!15 = !{ptr @__exitcall_plx_dma_pci_driver_exit, !14, !"__exitcall_plx_dma_pci_driver_exit", i1 false, i1 false}
!16 = !{ptr @plx_dma_pci_driver, !17, !"plx_dma_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/dma/plx_dma.c", i32 630, i32 26}
!18 = !{ptr @plx_dma_pci_tbl, !19, !"plx_dma_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/dma/plx_dma.c", i32 617, i32 35}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/plx_dma.c", i32 586, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @plx_dma_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @plx_dma_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @plx_dma_create.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/dma/plx_dma.c", i32 513, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/plx_dma.c", i32 540, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @plx_dma_create._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @plx_dma_create._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../drivers/dma/plx_dma.c", i32 424, i32 7}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../drivers/dma/plx_dma.c", i32 467, i32 9}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../drivers/dma/plx_dma.c", i32 234, i32 7}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/plx_dma.c", i32 219, i32 3}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__plx_dma_stop._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @__plx_dma_stop._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../drivers/dma/plx_dma.c", i32 342, i32 7}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 6285783}
!69 = !{i64 2154591962}
!70 = !{i8 0, i8 2}
!71 = !{i64 2154592269}
!72 = !{i64 6285583}
!73 = !{i64 2149365913}
!74 = !{i64 2149366179}
!75 = !{i64 2154597923}
!76 = !{i64 6286203}
!77 = !{i64 2154598770}
!78 = !{i64 2154599385}
!79 = !{i64 2154600001}
!80 = !{i64 2154600532}
!81 = !{i64 2154600934}
!82 = !{i64 2154589508}
!83 = !{i64 2154590700}
!84 = !{i64 2153870720}
!85 = !{!"auto-init"}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 2153869220, i64 2153869707, i64 2153869257, i64 2153869313, i64 2153869347, i64 2153869371, i64 2153869412, i64 2153869433, i64 2153869461, i64 2153869495}
!88 = !{i64 2154585052}
!89 = !{i64 6286621}
!90 = !{i64 2154570697}
!91 = !{i64 2154571705}
!92 = !{i64 2154573178}
!93 = !{i64 2154573535}
!94 = !{i64 2154573377}
!95 = !{i64 2154576267}
!96 = !{i64 2154577114}
!97 = !{i64 2154577505}
!98 = !{i64 2154577896}
!99 = !{i64 2154578287}
