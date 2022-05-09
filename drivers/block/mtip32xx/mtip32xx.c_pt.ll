; ModuleID = '/llk/IR_all_yes/drivers/block/mtip32xx/mtip32xx.c_pt.bc'
source_filename = "../drivers/block/mtip32xx/mtip32xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.atomic_t = type { i32 }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.85 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.driver_data = type { ptr, i32, i32, ptr, ptr, ptr, %struct.blk_mq_tag_set, ptr, i32, i32, i32, i32, ptr, ptr, i8, i32, [32 x i8], ptr, %struct.atomic_t, [100 x i8], [8 x %struct.mtip_work], i32, %struct.list_head, %struct.list_head, i32, [104 x i8] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.mtip_work = type { %struct.work_struct, ptr, i32, i32, [72 x i8] }
%struct.mtip_port = type { ptr, i32, ptr, [8 x ptr], [8 x ptr], [8 x ptr], ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [8 x i32], %struct.wait_queue_head, i32, i32, %struct.atomic_t, [8 x %struct.spinlock] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.host_to_dev_fis = type { i8, i8, i8, i8, %union.anon.96, %union.anon.97, %union.anon.98, %union.anon.99, %union.anon.100, %union.anon.101, %union.anon.102, i8, i8, i8, i8, i8, i32 }
%union.anon.96 = type { i8 }
%union.anon.97 = type { i8 }
%union.anon.98 = type { i8 }
%union.anon.99 = type { i8 }
%union.anon.100 = type { i8 }
%union.anon.101 = type { i8 }
%union.anon.102 = type { i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.blk_mq_hw_ctx = type { %struct.anon.90, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.90 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.41, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.42, %union.anon.43, %union.anon.44, %union.anon.49, ptr, ptr }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%union.anon.43 = type { %struct.rb_node }
%union.anon.44 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, %struct.list_head, ptr }
%union.anon.49 = type { i64, [8 x i8] }
%struct.mtip_cmd_hdr = type { i32, %union.anon.95, i32, i32, [4 x i32] }
%union.anon.95 = type { i32 }
%struct.mtip_int_cmd = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mtip_cmd_sg = type { i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.ide_task_request_s = type { [8 x i8], [8 x i8], %union.ide_reg_valid_s, %union.ide_reg_valid_s, i32, i32, i32, i32 }
%union.ide_reg_valid_s = type { %struct.anon.103 }
%struct.anon.103 = type { i16, [2 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.82, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.82 = type { %struct.atomic_t }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@mtip_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtip32xx\00", [23 x i8] zeroinitializer }, align 32
@mtip_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mtip_pci_tbl, ptr @mtip_pci_probe, ptr @mtip_pci_remove, ptr null, ptr null, ptr @mtip_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtip_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@dfs_parent = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author321 = internal constant [39 x i8] c"mtip32xx.author=Micron Technology, Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [54 x i8] c"mtip32xx.description=Micron RealSSD PCIe Block Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [46 x i8] c"mtip32xx.file=drivers/block/mtip32xx/mtip32xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [21 x i8] c"mtip32xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version325 = internal constant [23 x i8] c"mtip32xx.version=1.3.1\00", section ".modinfo", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.3.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_mtip32xx__326_4302_mtip_init6 = internal global ptr @mtip_init, section ".initcall6.init", align 4
@__exitcall_mtip_exit = internal global ptr @mtip_exit, section ".exitcall.exit", align 4
@mtip_pci_tbl = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 4932, i32 20816, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4932, i32 20817, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4932, i32 20818, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4932, i32 20819, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4932, i32 20832, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4932, i32 20833, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4932, i32 20835, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@mtip_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtip_pci_suspend, ptr @mtip_pci_resume, ptr @mtip_pci_suspend, ptr @mtip_pci_resume, ptr @mtip_pci_suspend, ptr @mtip_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 3919, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Kernel not reporting proximity, choosing a node\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtip_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/block/mtip32xx/mtip32xx.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr = internal global ptr @mtip_pci_probe._entry, section ".printk_index", align 4
@mtip_pci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 3924, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NUMA node %d (closest: %d,%d, probe on %d:%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.10 = internal global ptr @mtip_pci_probe._entry.8, section ".printk_index", align 4
@mtip_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 3935, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to enable device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.14 = internal global ptr @mtip_pci_probe._entry.11, section ".printk_index", align 4
@mtip_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 3942, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to map regions\0A\00", [41 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.17 = internal global ptr @mtip_pci_probe._entry.15, section ".printk_index", align 4
@mtip_pci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 3948, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"64-bit DMA enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.21 = internal global ptr @mtip_pci_probe._entry.18, section ".printk_index", align 4
@instance = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtipq%d\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 3966, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't create wq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.26 = internal global ptr @mtip_pci_probe._entry.24, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 3985, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Node %d on package %d has %d cpu(s): %s\0A\00", [55 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.30 = internal global ptr @mtip_pci_probe._entry.28, section ".printk_index", align 4
@cpu_topology = external dso_local local_unnamed_addr global [4 x %struct.cpu_topology], align 4
@mtip_pci_probe.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.31, i8 3, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtip32xx: node_mask empty\0A\00", [37 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 3991, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Initial IRQ binding node:cpu %d:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.34 = internal global ptr @mtip_pci_probe._entry.32, section ".printk_index", align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@mtip_pci_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 4013, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CPU %d: WQs %s\0A\00", [16 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.37 = internal global ptr @mtip_pci_probe._entry.35, section ".printk_index", align 4
@mtip_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dd->work[0].work)\00", [59 x i8] zeroinitializer }, align 32
@mtip_pci_probe.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dd->work[1].work)\00", [59 x i8] zeroinitializer }, align 32
@mtip_pci_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dd->work[2].work)\00", [59 x i8] zeroinitializer }, align 32
@mtip_pci_probe.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dd->work[3].work)\00", [59 x i8] zeroinitializer }, align 32
@mtip_pci_probe.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dd->work[4].work)\00", [59 x i8] zeroinitializer }, align 32
@mtip_pci_probe.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dd->work[5].work)\00", [59 x i8] zeroinitializer }, align 32
@mtip_pci_probe.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dd->work[6].work)\00", [59 x i8] zeroinitializer }, align 32
@mtip_pci_probe.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dd->work[7].work)\00", [59 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.4, ptr @.str.5, i32 4029, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to enable MSI interrupt.\0A\00", [63 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.55 = internal global ptr @mtip_pci_probe._entry.53, section ".printk_index", align 4
@mtip_pci_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.4, ptr @.str.5, i32 4039, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to initialize block layer\0A\00", [62 x i8] zeroinitializer }, align 32
@mtip_pci_probe._entry_ptr.58 = internal global ptr @mtip_pci_probe._entry.56, section ".printk_index", align 4
@dev_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.260, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@online_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @online_list, ptr @online_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_use = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@mtip_workq_sdbfx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mtip_disable_link_opts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 3857, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Disabling ERO/No-Snoop on bridge device %04x:%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtip_disable_link_opts\00", [41 x i8] zeroinitializer }, align 32
@mtip_disable_link_opts._entry_ptr = internal global ptr @mtip_disable_link_opts._entry, section ".printk_index", align 4
@mtip_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @mtip_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtip_cmd_timeout, ptr null, ptr @mtip_softirq_done_fn, ptr null, ptr null, ptr @mtip_init_cmd, ptr @mtip_free_cmd, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mtip_block_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 3564, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to allocate request queue\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtip_block_initialize\00", [42 x i8] zeroinitializer }, align 32
@mtip_block_initialize._entry_ptr = internal global ptr @mtip_block_initialize._entry, section ".printk_index", align 4
@mtip_block_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mtip_block_initialize._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 3571, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mtip_block_initialize._entry_ptr.64 = internal global ptr @mtip_block_initialize._entry.63, section ".printk_index", align 4
@rssd_index_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.110, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rssd\00", [27 x i8] zeroinitializer }, align 32
@mtip_block_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @mtip_block_open, ptr @mtip_block_release, ptr null, ptr @mtip_block_ioctl, ptr null, ptr null, ptr null, ptr @mtip_block_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtip_block_initialize._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.5, i32 3603, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Protocol layer initialization failed\0A\00", [58 x i8] zeroinitializer }, align 32
@mtip_block_initialize._entry_ptr.68 = internal global ptr @mtip_block_initialize._entry.66, section ".printk_index", align 4
@mtip_block_initialize._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.5, i32 3628, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not read drive capacity\0A\00", [33 x i8] zeroinitializer }, align 32
@mtip_block_initialize._entry_ptr.71 = internal global ptr @mtip_block_initialize._entry.69, section ".printk_index", align 4
@mtip_disk_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mtip_disk_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtip_svc_thd_%02d\00", [46 x i8] zeroinitializer }, align 32
@mtip_block_initialize._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.62, ptr @.str.5, i32 3650, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"service thread failed to start\0A\00", [32 x i8] zeroinitializer }, align 32
@mtip_block_initialize._entry_ptr.75 = internal global ptr @mtip_block_initialize._entry.73, section ".printk_index", align 4
@mtip_hw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&dd->port->cmd_issue_lock[i]\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtip_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 2897, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Surprise removal detected at %u ms\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtip_hw_init\00", [19 x i8] zeroinitializer }, align 32
@mtip_hw_init._entry_ptr = internal global ptr @mtip_hw_init._entry, section ".printk_index", align 4
@mtip_hw_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.5, i32 2905, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Removal detected at %u ms\0A\00", [37 x i8] zeroinitializer }, align 32
@mtip_hw_init._entry_ptr.81 = internal global ptr @mtip_hw_init._entry.79, section ".printk_index", align 4
@mtip_hw_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.5, i32 2914, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Card did not reset within timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@mtip_hw_init._entry_ptr.84 = internal global ptr @mtip_hw_init._entry.82, section ".printk_index", align 4
@mtip_hw_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.5, i32 2932, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to allocate IRQ %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtip_hw_init._entry_ptr.87 = internal global ptr @mtip_hw_init._entry.85, section ".printk_index", align 4
@mtip_hw_init.__key.88 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dd->port->svc_wait\00", [44 x i8] zeroinitializer }, align 32
@mtip_detect_product._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.5, i32 2477, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ASIC-FPGA design, HS rev 0x%x, %i slot groups [%i slots]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtip_detect_product\00", [44 x i8] zeroinitializer }, align 32
@mtip_detect_product._entry_ptr = internal global ptr @mtip_detect_product._entry, section ".printk_index", align 4
@mtip_detect_product._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.5, i32 2482, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Warning: driver only supports %i slot groups.\0A\00", [49 x i8] zeroinitializer }, align 32
@mtip_detect_product._entry_ptr.94 = internal global ptr @mtip_detect_product._entry.92, section ".printk_index", align 4
@mtip_detect_product._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.5, i32 2489, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unrecognized product id\0A\00", [39 x i8] zeroinitializer }, align 32
@mtip_detect_product._entry_ptr.97 = internal global ptr @mtip_detect_product._entry.95, section ".printk_index", align 4
@mtip_check_surprise_removal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 154, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: dd->queue is NULL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtip_check_surprise_removal\00", [36 x i8] zeroinitializer }, align 32
@mtip_check_surprise_removal._entry_ptr = internal global ptr @mtip_check_surprise_removal._entry, section ".printk_index", align 4
@mtip_handle_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mtip_process_errors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.5, i32 715, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Clearing PxSERR.DIAG.x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtip_process_errors\00", [44 x i8] zeroinitializer }, align 32
@mtip_process_errors._entry_ptr = internal global ptr @mtip_process_errors._entry, section ".printk_index", align 4
@mtip_process_errors._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.5, i32 721, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Clearing PxSERR.DIAG.n\0A\00", [40 x i8] zeroinitializer }, align 32
@mtip_process_errors._entry_ptr.104 = internal global ptr @mtip_process_errors._entry.102, section ".printk_index", align 4
@mtip_process_errors._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.5, i32 728, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Port stat errors %x unhandled\0A\00", [33 x i8] zeroinitializer }, align 32
@mtip_process_errors._entry_ptr.107 = internal global ptr @mtip_process_errors._entry.105, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@fill_command_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 1472, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA segment length truncated\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fill_command_sg\00", [16 x i8] zeroinitializer }, align 32
@fill_command_sg._entry_ptr = internal global ptr @fill_command_sg._entry, section ".printk_index", align 4
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rssd_index_ida.xa_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@exec_drive_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.5, i32 1577, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Memory allocation failed (%d bytes)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exec_drive_command\00", [45 x i8] zeroinitializer }, align 32
@exec_drive_command._entry_ptr = internal global ptr @exec_drive_command._entry, section ".printk_index", align 4
@mtip_exec_internal_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 978, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SG buffer is not 8 byte aligned\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtip_exec_internal_command\00", [37 x i8] zeroinitializer }, align 32
@mtip_exec_internal_command._entry_ptr = internal global ptr @mtip_exec_internal_command._entry, section ".printk_index", align 4
@mtip_exec_internal_command._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.5, i32 1001, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to quiesce IO\0A\00", [42 x i8] zeroinitializer }, align 32
@mtip_exec_internal_command._entry_ptr.120 = internal global ptr @mtip_exec_internal_command._entry.118, section ".printk_index", align 4
@mtip_exec_internal_command._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.5, i32 1021, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Internal command [%02X] failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mtip_exec_internal_command._entry_ptr.123 = internal global ptr @mtip_exec_internal_command._entry.121, section ".printk_index", align 4
@mtip_exec_internal_command._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.117, ptr @.str.5, i32 1029, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Internal command [%02X] wait returned due to SR\0A\00", [47 x i8] zeroinitializer }, align 32
@mtip_exec_internal_command._entry_ptr.126 = internal global ptr @mtip_exec_internal_command._entry.124, section ".printk_index", align 4
@mtip_restart_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.5, i32 397, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PxCMD.CR not clear, escalating reset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtip_restart_port\00", [46 x i8] zeroinitializer }, align 32
@mtip_restart_port._entry_ptr = internal global ptr @mtip_restart_port._entry, section ".printk_index", align 4
@mtip_restart_port._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.5, i32 401, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HBA reset escalation failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@mtip_restart_port._entry_ptr.131 = internal global ptr @mtip_restart_port._entry.129, section ".printk_index", align 4
@mtip_restart_port._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.128, ptr @.str.5, i32 407, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Issuing COM reset\0A\00", [45 x i8] zeroinitializer }, align 32
@mtip_restart_port._entry_ptr.134 = internal global ptr @mtip_restart_port._entry.132, section ".printk_index", align 4
@mtip_restart_port._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.128, ptr @.str.5, i32 438, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"COM reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@mtip_restart_port._entry_ptr.137 = internal global ptr @mtip_restart_port._entry.135, section ".printk_index", align 4
@exec_drive_taskfile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.5, i32 1816, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"data movement but sect_count is 0\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exec_drive_taskfile\00", [44 x i8] zeroinitializer }, align 32
@exec_drive_taskfile._entry_ptr = internal global ptr @exec_drive_taskfile._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mtip_block_getgeo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.5, i32 3292, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not get drive capacity.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtip_block_getgeo\00", [46 x i8] zeroinitializer }, align 32
@mtip_block_getgeo._entry_ptr = internal global ptr @mtip_block_getgeo._entry, section ".printk_index", align 4
@mtip_hw_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.5, i32 2399, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error creating node %s under debugfs\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtip_hw_debugfs_init\00", [43 x i8] zeroinitializer }, align 32
@mtip_hw_debugfs_init._entry_ptr = internal global ptr @mtip_hw_debugfs_init._entry, section ".printk_index", align 4
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@mtip_flags_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @mtip_hw_read_flags, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@mtip_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @mtip_hw_read_registers, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flag-port : [ %08lX ]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flag-dd   : [ %08lX ]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"H/ S ACTive      : [ 0x\00", [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08X \00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"H/ Command Issue : [ 0x\00", [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"H/ Completed     : [ 0x\00", [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"H/ PORT IRQ STAT : [ 0x%08X ]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"H/ HOST IRQ STAT : [ 0x%08X ]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"L/ Commands in Q : [ 0x\00", [40 x i8] zeroinitializer }, align 32
@mtip_hw_get_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.5, i32 2789, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error in READ LOG EXT (10h) command\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtip_hw_get_identify\00", [43 x i8] zeroinitializer }, align 32
@mtip_hw_get_identify._entry_ptr = internal global ptr @mtip_hw_get_identify._entry, section ".printk_index", align 4
@mtip_hw_get_identify._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.5, i32 2795, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Write protect bit is set.\0A\00", [37 x i8] zeroinitializer }, align 32
@mtip_hw_get_identify._entry_ptr.163 = internal global ptr @mtip_hw_get_identify._entry.161, section ".printk_index", align 4
@mtip_hw_get_identify._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.5, i32 2800, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Exceeded Tmax, drive in thermal shutdown.\0A\00", [53 x i8] zeroinitializer }, align 32
@mtip_hw_get_identify._entry_ptr.166 = internal global ptr @mtip_hw_get_identify._entry.164, section ".printk_index", align 4
@mtip_hw_get_identify._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.160, ptr @.str.5, i32 2805, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Drive indicates rebuild has failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@mtip_hw_get_identify._entry_ptr.169 = internal global ptr @mtip_hw_get_identify._entry.167, section ".printk_index", align 4
@mtip_hw_get_identify._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.160, ptr @.str.5, i32 2814, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to check write protect progress\0A\00", [56 x i8] zeroinitializer }, align 32
@mtip_hw_get_identify._entry_ptr.172 = internal global ptr @mtip_hw_get_identify._entry.170, section ".printk_index", align 4
@mtip_hw_get_identify._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.160, ptr @.str.5, i32 2818, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Write protect progress: %u%% (%u blocks)\0A\00", [54 x i8] zeroinitializer }, align 32
@mtip_hw_get_identify._entry_ptr.175 = internal global ptr @mtip_hw_get_identify._entry.173, section ".printk_index", align 4
@mtip_dump_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.5, i32 1413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial No.: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtip_dump_identify\00", [45 x i8] zeroinitializer }, align 32
@mtip_dump_identify._entry_ptr = internal global ptr @mtip_dump_identify._entry, section ".printk_index", align 4
@mtip_dump_identify._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.5, i32 1417, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware Ver.: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@mtip_dump_identify._entry_ptr.180 = internal global ptr @mtip_dump_identify._entry.178, section ".printk_index", align 4
@mtip_dump_identify._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.177, ptr @.str.5, i32 1420, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Model: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@mtip_dump_identify._entry_ptr.183 = internal global ptr @mtip_dump_identify._entry.181, section ".printk_index", align 4
@mtip_dump_identify._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.177, ptr @.str.5, i32 1424, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Security: %04x %s\0A\00", [45 x i8] zeroinitializer }, align 32
@mtip_dump_identify._entry_ptr.186 = internal global ptr @mtip_dump_identify._entry.184, section ".printk_index", align 4
@.str.187 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(LOCKED)\00", [23 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mtip_dump_identify._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.177, ptr @.str.5, i32 1430, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Capacity: %llu sectors (%llu MB)\0A\00", [62 x i8] zeroinitializer }, align 32
@mtip_dump_identify._entry_ptr.191 = internal global ptr @mtip_dump_identify._entry.189, section ".printk_index", align 4
@.str.192 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A0\00", [29 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A2\00", [29 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@mtip_dump_identify._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.177, ptr @.str.5, i32 1445, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Card Type: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@mtip_dump_identify._entry_ptr.197 = internal global ptr @mtip_dump_identify._entry.195, section ".printk_index", align 4
@mtip_get_smart_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.5, i32 1336, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IDENTIFY DATA not valid\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtip_get_smart_attr\00", [44 x i8] zeroinitializer }, align 32
@mtip_get_smart_attr._entry_ptr = internal global ptr @mtip_get_smart_attr._entry, section ".printk_index", align 4
@mtip_get_smart_attr._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.5, i32 1340, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SMART not supported\0A\00", [43 x i8] zeroinitializer }, align 32
@mtip_get_smart_attr._entry_ptr.202 = internal global ptr @mtip_get_smart_attr._entry.200, section ".printk_index", align 4
@mtip_get_smart_attr._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.199, ptr @.str.5, i32 1344, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SMART not enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@mtip_get_smart_attr._entry_ptr.205 = internal global ptr @mtip_get_smart_attr._entry.203, section ".printk_index", align 4
@mtip_get_smart_attr._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.199, ptr @.str.5, i32 1351, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to ge SMART data\0A\00", [39 x i8] zeroinitializer }, align 32
@mtip_get_smart_attr._entry_ptr.208 = internal global ptr @mtip_get_smart_attr._entry.206, section ".printk_index", align 4
@mtip_get_smart_attr._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.199, ptr @.str.5, i32 1364, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Query for invalid SMART attribute ID\0A\00", [58 x i8] zeroinitializer }, align 32
@mtip_get_smart_attr._entry_ptr.211 = internal global ptr @mtip_get_smart_attr._entry.209, section ".printk_index", align 4
@mtip_disk_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mtip_disk_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtip_disk_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_status, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.212, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mtip_hw_show_status, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"thermal_shutdown\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_protect\0A\00", [17 x i8] zeroinitializer }, align 32
@mtip_service_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.5, i32 2643, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Completion workers still active!\00", [63 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtip_service_thread\00", [44 x i8] zeroinitializer }, align 32
@mtip_service_thread._entry_ptr = internal global ptr @mtip_service_thread._entry, section ".printk_index", align 4
@mtip_handle_tfe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.5, i32 519, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Taskfile error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtip_handle_tfe\00", [16 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry_ptr = internal global ptr @mtip_handle_tfe._entry, section ".printk_index", align 4
@mtip_handle_tfe._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.219, ptr @.str.5, i32 537, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"g=%u, comp=%x\0A\00", [17 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry_ptr.222 = internal global ptr @mtip_handle_tfe._entry.220, section ".printk_index", align 4
@.str.223 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"completed (TFE)\00", [16 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.219, ptr @.str.5, i32 571, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry_ptr.225 = internal global ptr @mtip_handle_tfe._entry.224, section ".printk_index", align 4
@mtip_handle_tfe._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.219, ptr @.str.5, i32 577, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry_ptr.227 = internal global ptr @mtip_handle_tfe._entry.226, section ".printk_index", align 4
@.str.228 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write protect\00", [18 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.219, ptr @.str.5, i32 584, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry_ptr.230 = internal global ptr @mtip_handle_tfe._entry.229, section ".printk_index", align 4
@.str.231 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"thermal shutdown\00", [47 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.219, ptr @.str.5, i32 592, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Drive indicates rebuild has failed. Secure erase required.\0A\00", [36 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry_ptr.234 = internal global ptr @mtip_handle_tfe._entry.232, section ".printk_index", align 4
@.str.235 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rebuild failed\00", [17 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.219, ptr @.str.5, i32 624, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  Fail: %s w/tag %d [%s].\0A\00", [37 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry_ptr.238 = internal global ptr @mtip_handle_tfe._entry.236, section ".printk_index", align 4
@.str.239 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.219, ptr @.str.5, i32 646, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"retiring tag %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mtip_handle_tfe._entry_ptr.244 = internal global ptr @mtip_handle_tfe._entry.242, section ".printk_index", align 4
@.str.245 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reissued (TFE)\00", [17 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%016lX \00", [24 x i8] zeroinitializer }, align 32
@print_tags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str.5, i32 481, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d command(s) %s: tagmap [%s]\00", [34 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"print_tags\00", [21 x i8] zeroinitializer }, align 32
@print_tags._entry_ptr = internal global ptr @print_tags._entry, section ".printk_index", align 4
@mtip_ftl_rebuild_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.250, ptr @.str.5, i32 2506, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"FTL rebuild in progress. Polling for completion.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtip_ftl_rebuild_poll\00", [42 x i8] zeroinitializer }, align 32
@mtip_ftl_rebuild_poll._entry_ptr = internal global ptr @mtip_ftl_rebuild_poll._entry, section ".printk_index", align 4
@mtip_ftl_rebuild_poll._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.250, ptr @.str.5, i32 2528, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FTL rebuild in progress (%d secs).\0A\00", [60 x i8] zeroinitializer }, align 32
@mtip_ftl_rebuild_poll._entry_ptr.253 = internal global ptr @mtip_ftl_rebuild_poll._entry.251, section ".printk_index", align 4
@mtip_ftl_rebuild_poll._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.250, ptr @.str.5, i32 2534, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FTL rebuild complete (%d secs).\0A\00", [63 x i8] zeroinitializer }, align 32
@mtip_ftl_rebuild_poll._entry_ptr.256 = internal global ptr @mtip_ftl_rebuild_poll._entry.254, section ".printk_index", align 4
@mtip_ftl_rebuild_poll._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.250, ptr @.str.5, i32 2543, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Timed out waiting for FTL rebuild to complete (%d secs).\0A\00", [38 x i8] zeroinitializer }, align 32
@mtip_ftl_rebuild_poll._entry_ptr.259 = internal global ptr @mtip_ftl_rebuild_poll._entry.257, section ".printk_index", align 4
@.str.260 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_lock\00", [23 x i8] zeroinitializer }, align 32
@removing_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @removing_list, ptr @removing_list }, [24 x i8] zeroinitializer }, align 32
@mtip_pci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.5, i32 4112, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Completion workers still active!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtip_pci_remove\00", [16 x i8] zeroinitializer }, align 32
@mtip_pci_remove._entry_ptr = internal global ptr @mtip_pci_remove._entry, section ".printk_index", align 4
@mtip_block_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.264, ptr @.str.5, i32 3718, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device %s surprise removal\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtip_block_remove\00", [46 x i8] zeroinitializer }, align 32
@mtip_block_remove._entry_ptr = internal global ptr @mtip_block_remove._entry, section ".printk_index", align 4
@mtip_standby_drive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.266, ptr @.str.5, i32 2986, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"STANDBY IMMEDIATE failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtip_standby_drive\00", [45 x i8] zeroinitializer }, align 32
@mtip_standby_drive._entry_ptr = internal global ptr @mtip_standby_drive._entry, section ".printk_index", align 4
@mtip_standby_immediate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.268, ptr @.str.5, i32 1238, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"STANDBY IMMEDIATE command failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtip_standby_immediate\00", [41 x i8] zeroinitializer }, align 32
@mtip_standby_immediate._entry_ptr = internal global ptr @mtip_standby_immediate._entry, section ".printk_index", align 4
@mtip_block_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str.5, i32 3764, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Shutting down %s ...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtip_block_shutdown\00", [44 x i8] zeroinitializer }, align 32
@mtip_block_shutdown._entry_ptr = internal global ptr @mtip_block_shutdown._entry, section ".printk_index", align 4
@mtip_pci_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.272, ptr @.str.5, i32 4157, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to suspend controller\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtip_pci_suspend\00", [47 x i8] zeroinitializer }, align 32
@mtip_pci_suspend._entry_ptr = internal global ptr @mtip_pci_suspend._entry, section ".printk_index", align 4
@mtip_block_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.274, ptr @.str.5, i32 3784, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Suspending %s ...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtip_block_suspend\00", [45 x i8] zeroinitializer }, align 32
@mtip_block_suspend._entry_ptr = internal global ptr @mtip_block_suspend._entry, section ".printk_index", align 4
@mtip_hw_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.276, ptr @.str.5, i32 3067, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed standby-immediate command\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtip_hw_suspend\00", [16 x i8] zeroinitializer }, align 32
@mtip_hw_suspend._entry_ptr = internal global ptr @mtip_hw_suspend._entry, section ".printk_index", align 4
@mtip_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.278, ptr @.str.5, i32 4180, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unable to resume\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtip_pci_resume\00", [16 x i8] zeroinitializer }, align 32
@mtip_pci_resume._entry_ptr = internal global ptr @mtip_pci_resume._entry, section ".printk_index", align 4
@mtip_block_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.280, ptr @.str.5, i32 3792, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Resuming %s ...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtip_block_resume\00", [46 x i8] zeroinitializer }, align 32
@mtip_block_resume._entry_ptr = internal global ptr @mtip_block_resume._entry, section ".printk_index", align 4
@mtip_hw_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.282, ptr @.str.5, i32 3099, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to reset the HBA\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtip_hw_resume\00", [17 x i8] zeroinitializer }, align 32
@mtip_hw_resume._entry_ptr = internal global ptr @mtip_hw_resume._entry, section ".printk_index", align 4
@mtip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.284, ptr @.str.5, i32 4240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016mtip32xx Version 1.3.1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtip_init\00", [22 x i8] zeroinitializer }, align 32
@mtip_init._entry_ptr = internal global ptr @mtip_init._entry, section ".printk_index", align 4
@mtip_init._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.284, ptr @.str.5, i32 4246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to register block device (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@mtip_init._entry_ptr.287 = internal global ptr @mtip_init._entry.285, section ".printk_index", align 4
@mtip_init._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.284, ptr @.str.5, i32 4253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Error creating debugfs parent\0A\00", [63 x i8] zeroinitializer }, align 32
@mtip_init._entry_ptr.290 = internal global ptr @mtip_init._entry.288, section ".printk_index", align 4
@.str.291 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device_status\00", [18 x i8] zeroinitializer }, align 32
@mtip_device_status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @mtip_hw_read_device_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dfs_device_status = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtip_init._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.284, ptr @.str.5, i32 4261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Error creating device_status node\0A\00", [59 x i8] zeroinitializer }, align 32
@mtip_init._entry_ptr.294 = internal global ptr @mtip_init._entry.292, section ".printk_index", align 4
@.str.295 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Devices Present:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" device %s %s (ftl rebuild %d %%)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" device %s %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Devices Being Removed:\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.299 = internal global [6 x i64] [i64 4, i64 32, i64 781, i64 797, i64 798, i64 799]
@__sancov_gen_cov_switch_values.300 = internal global [9 x i64] [i64 7, i64 8, i64 146, i64 176, i64 224, i64 244, i64 247, i64 250, i64 252]
@__sancov_gen_cov_switch_values.301 = internal global [9 x i64] [i64 7, i64 8, i64 146, i64 176, i64 224, i64 244, i64 247, i64 250, i64 252]
@__sancov_gen_cov_switch_values.302 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.303 = internal global [13 x i64] [i64 11, i64 8, i64 176, i64 177, i64 228, i64 232, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 249]
@__sancov_gen_cov_switch_values.304 = internal global [9 x i64] [i64 7, i64 8, i64 146, i64 176, i64 224, i64 244, i64 247, i64 250, i64 252]
@__sancov_gen_cov_switch_values.305 = internal global [6 x i64] [i64 4, i64 8, i64 146, i64 243, i64 244, i64 252]
@__sancov_gen_cov_switch_values.306 = internal global [6 x i64] [i64 4, i64 8, i64 38, i64 39, i64 98, i64 114]
@___asan_gen_.307 = private unnamed_addr constant [11 x i8] c"mtip_major\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 106, i32 12 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4289, i32 32 }
@___asan_gen_.313 = private unnamed_addr constant [16 x i8] c"mtip_pci_driver\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4215, i32 26 }
@___asan_gen_.316 = private unnamed_addr constant [11 x i8] c"dfs_parent\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 107, i32 23 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4300, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant [13 x i8] c"mtip_pci_tbl\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4201, i32 35 }
@___asan_gen_.328 = private unnamed_addr constant [16 x i8] c"mtip_pci_pm_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4212, i32 8 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3919, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3922, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3935, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3942, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3948, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 96, i32 12 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3962, i32 31 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3964, i32 18 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3966, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3977, i32 36 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3981, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3987, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3990, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4013, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4016, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4017, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4018, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4019, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4020, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4021, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4022, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4023, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4028, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4038, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant [9 x i8] c"dev_lock\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [12 x i8] c"online_list\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 98, i32 8 }
@___asan_gen_.484 = private unnamed_addr constant [8 x i8] c"cpu_use\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 110, i32 12 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3855, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant [12 x i8] c"mtip_mq_ops\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3517, i32 32 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3563, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3568, i32 13 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3570, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant [15 x i8] c"rssd_index_ida\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3582, i32 29 }
@___asan_gen_.520 = private unnamed_addr constant [15 x i8] c"mtip_block_ops\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3331, i32 45 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3602, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3627, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant [22 x i8] c"mtip_disk_attr_groups\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2171, i32 38 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3647, i32 7 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3650, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2866, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2895, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2903, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2913, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2931, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2941, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2472, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2480, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2489, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 153, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 714, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 720, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 726, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1471, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 112, i32 8 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 230, i32 6 }
@___asan_gen_.653 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 214, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 174, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1575, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 978, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1001, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1020, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1027, i32 4 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 396, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 400, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 407, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 437, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1814, i32 5 }
@___asan_gen_.734 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 326, i32 6 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3291, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2397, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2404, i32 22 }
@___asan_gen_.757 = private unnamed_addr constant [16 x i8] c"mtip_flags_fops\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2383, i32 37 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2405, i32 22 }
@___asan_gen_.763 = private unnamed_addr constant [15 x i8] c"mtip_regs_fops\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2376, i32 37 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2355, i32 30 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2357, i32 30 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2292, i32 30 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2295, i32 31 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2298, i32 30 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2299, i32 30 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2306, i32 30 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2313, i32 30 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2315, i32 30 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2319, i32 30 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2788, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2794, i32 4 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2799, i32 4 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2804, i32 4 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2813, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2816, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1412, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1416, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1420, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1422, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1427, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1435, i32 17 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1438, i32 17 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1441, i32 17 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1444, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1336, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1340, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1344, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1351, i32 3 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1363, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant [21 x i8] c"mtip_disk_attr_group\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2167, i32 37 }
@___asan_gen_.925 = private unnamed_addr constant [16 x i8] c"mtip_disk_attrs\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2162, i32 26 }
@___asan_gen_.928 = private unnamed_addr constant [16 x i8] c"dev_attr_status\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2160, i32 8 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2151, i32 30 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2153, i32 30 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2642, i32 5 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 519, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 537, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 559, i32 17 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 570, i32 3 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 576, i32 4 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 580, i32 18 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 583, i32 4 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 587, i32 18 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 591, i32 4 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 594, i32 18 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 618, i32 6 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 645, i32 4 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 651, i32 17 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 478, i32 46 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 480, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2505, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2526, i32 5 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2532, i32 4 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2541, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 100, i32 8 }
@___asan_gen_.1057 = private unnamed_addr constant [14 x i8] c"removing_list\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 99, i32 8 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4111, i32 3 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3717, i32 3 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2985, i32 4 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 1237, i32 3 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3763, i32 3 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4157, i32 3 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3783, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3066, i32 3 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4180, i32 3 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3791, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 3098, i32 3 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4240, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4245, i32 3 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4253, i32 3 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4257, i32 43 }
@___asan_gen_.1183 = private unnamed_addr constant [24 x i8] c"mtip_device_status_fops\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2369, i32 37 }
@___asan_gen_.1186 = private unnamed_addr constant [18 x i8] c"dfs_device_status\00", align 1
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 108, i32 23 }
@___asan_gen_.1189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 4261, i32 4 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2187, i32 30 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2204, i32 6 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2210, i32 6 }
@___asan_gen_.1204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1205 = private constant [37 x i8] c"../drivers/block/mtip32xx/mtip32xx.c\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1205, i32 2217, i32 30 }
@llvm.compiler.used = appending global [396 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__UNIQUE_ID_version325, ptr @__exitcall_mtip_exit, ptr @__initcall__kmod_mtip32xx__326_4302_mtip_init6, ptr @__modver_attr, ptr @exec_drive_command._entry, ptr @exec_drive_command._entry_ptr, ptr @exec_drive_taskfile._entry, ptr @exec_drive_taskfile._entry_ptr, ptr @fill_command_sg._entry, ptr @fill_command_sg._entry_ptr, ptr @mtip_block_getgeo._entry, ptr @mtip_block_getgeo._entry_ptr, ptr @mtip_block_initialize._entry, ptr @mtip_block_initialize._entry.63, ptr @mtip_block_initialize._entry.66, ptr @mtip_block_initialize._entry.69, ptr @mtip_block_initialize._entry.73, ptr @mtip_block_initialize._entry_ptr, ptr @mtip_block_initialize._entry_ptr.64, ptr @mtip_block_initialize._entry_ptr.68, ptr @mtip_block_initialize._entry_ptr.71, ptr @mtip_block_initialize._entry_ptr.75, ptr @mtip_block_remove._entry, ptr @mtip_block_remove._entry_ptr, ptr @mtip_block_resume._entry, ptr @mtip_block_resume._entry_ptr, ptr @mtip_block_shutdown._entry, ptr @mtip_block_shutdown._entry_ptr, ptr @mtip_block_suspend._entry, ptr @mtip_block_suspend._entry_ptr, ptr @mtip_check_surprise_removal._entry, ptr @mtip_check_surprise_removal._entry_ptr, ptr @mtip_detect_product._entry, ptr @mtip_detect_product._entry.92, ptr @mtip_detect_product._entry.95, ptr @mtip_detect_product._entry_ptr, ptr @mtip_detect_product._entry_ptr.94, ptr @mtip_detect_product._entry_ptr.97, ptr @mtip_disable_link_opts._entry, ptr @mtip_disable_link_opts._entry_ptr, ptr @mtip_dump_identify._entry, ptr @mtip_dump_identify._entry.178, ptr @mtip_dump_identify._entry.181, ptr @mtip_dump_identify._entry.184, ptr @mtip_dump_identify._entry.189, ptr @mtip_dump_identify._entry.195, ptr @mtip_dump_identify._entry_ptr, ptr @mtip_dump_identify._entry_ptr.180, ptr @mtip_dump_identify._entry_ptr.183, ptr @mtip_dump_identify._entry_ptr.186, ptr @mtip_dump_identify._entry_ptr.191, ptr @mtip_dump_identify._entry_ptr.197, ptr @mtip_exec_internal_command._entry, ptr @mtip_exec_internal_command._entry.118, ptr @mtip_exec_internal_command._entry.121, ptr @mtip_exec_internal_command._entry.124, ptr @mtip_exec_internal_command._entry_ptr, ptr @mtip_exec_internal_command._entry_ptr.120, ptr @mtip_exec_internal_command._entry_ptr.123, ptr @mtip_exec_internal_command._entry_ptr.126, ptr @mtip_exit, ptr @mtip_ftl_rebuild_poll._entry, ptr @mtip_ftl_rebuild_poll._entry.251, ptr @mtip_ftl_rebuild_poll._entry.254, ptr @mtip_ftl_rebuild_poll._entry.257, ptr @mtip_ftl_rebuild_poll._entry_ptr, ptr @mtip_ftl_rebuild_poll._entry_ptr.253, ptr @mtip_ftl_rebuild_poll._entry_ptr.256, ptr @mtip_ftl_rebuild_poll._entry_ptr.259, ptr @mtip_get_smart_attr._entry, ptr @mtip_get_smart_attr._entry.200, ptr @mtip_get_smart_attr._entry.203, ptr @mtip_get_smart_attr._entry.206, ptr @mtip_get_smart_attr._entry.209, ptr @mtip_get_smart_attr._entry_ptr, ptr @mtip_get_smart_attr._entry_ptr.202, ptr @mtip_get_smart_attr._entry_ptr.205, ptr @mtip_get_smart_attr._entry_ptr.208, ptr @mtip_get_smart_attr._entry_ptr.211, ptr @mtip_handle_tfe._entry, ptr @mtip_handle_tfe._entry.220, ptr @mtip_handle_tfe._entry.224, ptr @mtip_handle_tfe._entry.226, ptr @mtip_handle_tfe._entry.229, ptr @mtip_handle_tfe._entry.232, ptr @mtip_handle_tfe._entry.236, ptr @mtip_handle_tfe._entry.242, ptr @mtip_handle_tfe._entry_ptr, ptr @mtip_handle_tfe._entry_ptr.222, ptr @mtip_handle_tfe._entry_ptr.225, ptr @mtip_handle_tfe._entry_ptr.227, ptr @mtip_handle_tfe._entry_ptr.230, ptr @mtip_handle_tfe._entry_ptr.234, ptr @mtip_handle_tfe._entry_ptr.238, ptr @mtip_handle_tfe._entry_ptr.244, ptr @mtip_hw_debugfs_init._entry, ptr @mtip_hw_debugfs_init._entry_ptr, ptr @mtip_hw_get_identify._entry, ptr @mtip_hw_get_identify._entry.161, ptr @mtip_hw_get_identify._entry.164, ptr @mtip_hw_get_identify._entry.167, ptr @mtip_hw_get_identify._entry.170, ptr @mtip_hw_get_identify._entry.173, ptr @mtip_hw_get_identify._entry_ptr, ptr @mtip_hw_get_identify._entry_ptr.163, ptr @mtip_hw_get_identify._entry_ptr.166, ptr @mtip_hw_get_identify._entry_ptr.169, ptr @mtip_hw_get_identify._entry_ptr.172, ptr @mtip_hw_get_identify._entry_ptr.175, ptr @mtip_hw_init._entry, ptr @mtip_hw_init._entry.79, ptr @mtip_hw_init._entry.82, ptr @mtip_hw_init._entry.85, ptr @mtip_hw_init._entry_ptr, ptr @mtip_hw_init._entry_ptr.81, ptr @mtip_hw_init._entry_ptr.84, ptr @mtip_hw_init._entry_ptr.87, ptr @mtip_hw_resume._entry, ptr @mtip_hw_resume._entry_ptr, ptr @mtip_hw_suspend._entry, ptr @mtip_hw_suspend._entry_ptr, ptr @mtip_init._entry, ptr @mtip_init._entry.285, ptr @mtip_init._entry.288, ptr @mtip_init._entry.292, ptr @mtip_init._entry_ptr, ptr @mtip_init._entry_ptr.287, ptr @mtip_init._entry_ptr.290, ptr @mtip_init._entry_ptr.294, ptr @mtip_pci_probe._entry, ptr @mtip_pci_probe._entry.11, ptr @mtip_pci_probe._entry.15, ptr @mtip_pci_probe._entry.18, ptr @mtip_pci_probe._entry.24, ptr @mtip_pci_probe._entry.28, ptr @mtip_pci_probe._entry.32, ptr @mtip_pci_probe._entry.35, ptr @mtip_pci_probe._entry.53, ptr @mtip_pci_probe._entry.56, ptr @mtip_pci_probe._entry.8, ptr @mtip_pci_probe._entry_ptr, ptr @mtip_pci_probe._entry_ptr.10, ptr @mtip_pci_probe._entry_ptr.14, ptr @mtip_pci_probe._entry_ptr.17, ptr @mtip_pci_probe._entry_ptr.21, ptr @mtip_pci_probe._entry_ptr.26, ptr @mtip_pci_probe._entry_ptr.30, ptr @mtip_pci_probe._entry_ptr.34, ptr @mtip_pci_probe._entry_ptr.37, ptr @mtip_pci_probe._entry_ptr.55, ptr @mtip_pci_probe._entry_ptr.58, ptr @mtip_pci_remove._entry, ptr @mtip_pci_remove._entry_ptr, ptr @mtip_pci_resume._entry, ptr @mtip_pci_resume._entry_ptr, ptr @mtip_pci_suspend._entry, ptr @mtip_pci_suspend._entry_ptr, ptr @mtip_process_errors._entry, ptr @mtip_process_errors._entry.102, ptr @mtip_process_errors._entry.105, ptr @mtip_process_errors._entry_ptr, ptr @mtip_process_errors._entry_ptr.104, ptr @mtip_process_errors._entry_ptr.107, ptr @mtip_restart_port._entry, ptr @mtip_restart_port._entry.129, ptr @mtip_restart_port._entry.132, ptr @mtip_restart_port._entry.135, ptr @mtip_restart_port._entry_ptr, ptr @mtip_restart_port._entry_ptr.131, ptr @mtip_restart_port._entry_ptr.134, ptr @mtip_restart_port._entry_ptr.137, ptr @mtip_service_thread._entry, ptr @mtip_service_thread._entry_ptr, ptr @mtip_standby_drive._entry, ptr @mtip_standby_drive._entry_ptr, ptr @mtip_standby_immediate._entry, ptr @mtip_standby_immediate._entry_ptr, ptr @print_tags._entry, ptr @print_tags._entry_ptr, ptr @mtip_major, ptr @.str, ptr @mtip_pci_driver, ptr @dfs_parent, ptr @.str.1, ptr @.str.2, ptr @mtip_pci_tbl, ptr @mtip_pci_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @instance, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @mtip_pci_probe.__key, ptr @.str.38, ptr @mtip_pci_probe.__key.39, ptr @.str.40, ptr @mtip_pci_probe.__key.41, ptr @.str.42, ptr @mtip_pci_probe.__key.43, ptr @.str.44, ptr @mtip_pci_probe.__key.45, ptr @.str.46, ptr @mtip_pci_probe.__key.47, ptr @.str.48, ptr @mtip_pci_probe.__key.49, ptr @.str.50, ptr @mtip_pci_probe.__key.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @dev_lock, ptr @online_list, ptr @cpu_use, ptr @.str.59, ptr @.str.60, ptr @mtip_mq_ops, ptr @.str.61, ptr @.str.62, ptr @mtip_block_initialize.__key, ptr @rssd_index_ida, ptr @.str.65, ptr @mtip_block_ops, ptr @.str.67, ptr @.str.70, ptr @mtip_disk_attr_groups, ptr @.str.72, ptr @.str.74, ptr @mtip_hw_init.__key, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @mtip_hw_init.__key.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @mtip_flags_fops, ptr @.str.147, ptr @mtip_regs_fops, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @mtip_disk_attr_group, ptr @mtip_disk_attrs, ptr @dev_attr_status, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.221, ptr @.str.223, ptr @.str.228, ptr @.str.231, ptr @.str.233, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.243, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @.str.260, ptr @removing_list, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.286, ptr @.str.289, ptr @.str.291, ptr @mtip_device_status_fops, ptr @dfs_device_status, ptr @.str.293, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298], section "llvm.metadata"
@0 = internal global [300 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_parent to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @online_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_use to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_disable_link_opts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_initialize._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rssd_index_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_initialize._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_initialize._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_disk_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_initialize._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_init.__key.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_detect_product._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_detect_product._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_detect_product._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_check_surprise_removal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_process_errors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_process_errors._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_process_errors._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_command_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exec_drive_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_exec_internal_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_exec_internal_command._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_exec_internal_command._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_exec_internal_command._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_restart_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_restart_port._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_restart_port._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_restart_port._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exec_drive_taskfile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_getgeo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_flags_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_get_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_get_identify._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_get_identify._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_get_identify._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_get_identify._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_get_identify._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_dump_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_dump_identify._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_dump_identify._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_dump_identify._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_dump_identify._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_dump_identify._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_get_smart_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_get_smart_attr._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_get_smart_attr._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_get_smart_attr._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_get_smart_attr._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_disk_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_disk_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_service_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_handle_tfe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_handle_tfe._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_handle_tfe._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_handle_tfe._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_handle_tfe._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_handle_tfe._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_handle_tfe._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_handle_tfe._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_tags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_ftl_rebuild_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_ftl_rebuild_poll._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_ftl_rebuild_poll._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_ftl_rebuild_poll._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @removing_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_standby_drive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_standby_immediate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_block_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_hw_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_init._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_init._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_device_status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_device_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtip_init._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtip_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = load i32, ptr @mtip_major, align 4
  tail call void @unregister_blkdev(i32 noundef %0, ptr noundef nonnull @.str) #17
  tail call void @pci_unregister_driver(ptr noundef nonnull @mtip_pci_driver) #17
  %1 = load ptr, ptr @dfs_parent, align 4
  tail call void @debugfs_remove(ptr noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283) #20
  %call1 = tail call i32 @__register_blkdev(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, i32 noundef %call1) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 %call1, ptr @mtip_major, align 4
  %call7 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.65, ptr noundef null) #17
  store ptr %call7, ptr @dfs_parent, align 4
  %tobool.not.i = icmp eq ptr %call7, null
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end15.thread, label %if.then16

if.end15.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289) #20
  store ptr null, ptr @dfs_parent, align 4
  br label %if.end26

if.then16:                                        ; preds = %if.end
  %call17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.291, i16 noundef zeroext 292, ptr noundef nonnull %call7, ptr noundef null, ptr noundef nonnull @mtip_device_status_fops) #17
  store ptr %call17, ptr @dfs_device_status, align 4
  %tobool.not.i35 = icmp eq ptr %call17, null
  %cmp.i36 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %spec.select.i37 = or i1 %tobool.not.i35, %cmp.i36
  br i1 %spec.select.i37, label %do.end22, label %if.then16.if.end26_crit_edge

if.then16.if.end26_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293) #20
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.then16.if.end26_crit_edge, %if.end15.thread
  %call27 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mtip_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.then29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %0 = load ptr, ptr @dfs_parent, align 4
  tail call void @debugfs_remove(ptr noundef %0) #17
  %1 = load i32, ptr @mtip_major, align 4
  tail call void @unregister_blkdev(i32 noundef %1, ptr noundef nonnull @.str) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end26.cleanup_crit_edge, %do.end4
  %retval.0 = phi i32 [ -16, %do.end4 ], [ %call27, %if.then29 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %cpu_list = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cpu_list) #17
  %0 = call ptr @memset(ptr %cpu_list, i32 255, i32 256)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #20
  %1 = tail call i32 @llvm.read_register.i32(metadata !572) #17
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu13 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu13, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef %4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1536) #21
  %tobool17.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool17.not, label %entry.cleanup_crit_edge, label %if.end19

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19:                                         ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i.i, ptr %driver_data.i.i, align 4
  %call20 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #20
  br label %iomap_err

if.end27:                                         ; preds = %if.end19
  %call28 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull @.str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #20
  br label %iomap_err

if.end35:                                         ; preds = %if.end27
  %call37 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #20
  br label %setmask_err

if.end44:                                         ; preds = %if.end35
  %7 = load i32, ptr @mtip_major, align 4
  %major = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %major, align 4
  %9 = load i32, ptr @instance, align 4
  %instance = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %instance, align 8
  %pdev45 = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %pdev45 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pdev, ptr %pdev45, align 16
  %numa_node = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 15
  %12 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %numa_node, align 16
  %online_list = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 22
  %13 = ptrtoint ptr %online_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %online_list, ptr %online_list, align 4
  %prev.i = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %online_list, ptr %prev.i, align 8
  %remove_list = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 23
  %15 = ptrtoint ptr %remove_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %remove_list, ptr %remove_list, align 4
  %prev.i552 = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 23, i32 1
  %16 = ptrtoint ptr %prev.i552 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %remove_list, ptr %prev.i552, align 8
  %workq_name = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 16
  %17 = call ptr @memset(ptr %workq_name, i32 0, i32 32)
  %call49 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %workq_name, i32 noundef 31, ptr noundef nonnull @.str.22, i32 noundef %9)
  %call52 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.23, i32 noundef 262152, i32 noundef 1, ptr noundef %workq_name) #17
  %isr_workq = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 17
  %18 = ptrtoint ptr %isr_workq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call52, ptr %isr_workq, align 4
  %tobool54.not = icmp eq ptr %call52, null
  br i1 %tobool54.not, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %instance, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %20) #20
  br label %setmask_err

if.end61:                                         ; preds = %if.end44
  %21 = call ptr @memset(ptr %cpu_list, i32 0, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %22) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %22)
  %cmp4.i.i = icmp eq i32 %call.i.i, %22
  br i1 %cmp4.i.i, label %do.body82, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end61
  %call66576 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call66576, i32 %23)
  %cmp67577 = icmp ult i32 %call66576, %23
  br i1 %cmp67577, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.end73_crit_edge

for.cond.preheader.do.end73_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end73

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call66579 = phi i32 [ %call66, %for.body.for.body_crit_edge ], [ %call66576, %for.cond.preheader.for.body_crit_edge ]
  %j.0578 = phi i32 [ %call70, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x i8], ptr %cpu_list, i32 0, i32 %j.0578
  %sub = sub i32 256, %j.0578
  %call68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.27, i32 noundef %call66579)
  %call70 = call i32 @strlen(ptr noundef nonnull %cpu_list) #23
  %call66 = tail call i32 @cpumask_next(i32 noundef %call66579, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp67 = icmp ult i32 %call66, %24
  br i1 %cmp67, label %for.body.for.body_crit_edge, label %for.body.do.end73_crit_edge

for.body.do.end73_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end73

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.end73:                                         ; preds = %for.body.do.end73_crit_edge, %for.cond.preheader.do.end73_crit_edge
  %.lcssa = phi i32 [ %23, %for.cond.preheader.do.end73_crit_edge ], [ %24, %for.body.do.end73_crit_edge ]
  %25 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %numa_node, align 16
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %.lcssa) #17
  %package_id = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call.i, i32 3
  %27 = ptrtoint ptr %package_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %package_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_online_mask, i32 noundef %29) #17
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %26, i32 noundef %28, i32 noundef %call4.i.i, ptr noundef nonnull %cpu_list) #20
  br label %if.end92

do.body82:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtip_pci_probe.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtip_pci_probe, %if.then87)) #17
          to label %if.end92 [label %if.then87], !srcloc !582

if.then87:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtip_pci_probe.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.31) #17
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %do.body82, %do.end73
  %call94 = call fastcc i32 @get_least_used_cpu_on_node()
  %isr_binding = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 21
  %30 = ptrtoint ptr %isr_binding to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call94, ptr %isr_binding, align 128
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %call94) #20
  %31 = ptrtoint ptr %isr_binding to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %isr_binding, align 128
  %work = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20
  %cpu_binding = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 0, i32 2
  %33 = ptrtoint ptr %cpu_binding to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cpu_binding, align 16
  %call104 = call fastcc i32 @get_least_used_cpu_on_node()
  %arrayidx106 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 1
  %cpu_binding107 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 1, i32 2
  %34 = ptrtoint ptr %cpu_binding107 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call104, ptr %cpu_binding107, align 16
  %call109 = call fastcc i32 @get_least_used_cpu_on_node()
  %arrayidx111 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 2
  %cpu_binding112 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 2, i32 2
  %35 = ptrtoint ptr %cpu_binding112 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call109, ptr %cpu_binding112, align 16
  %36 = ptrtoint ptr %cpu_binding to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu_binding, align 16
  %arrayidx117 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 3
  %cpu_binding118 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 3, i32 2
  %38 = ptrtoint ptr %cpu_binding118 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cpu_binding118, align 16
  %39 = ptrtoint ptr %cpu_binding107 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu_binding107, align 16
  %arrayidx123 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 4
  %cpu_binding124 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 4, i32 2
  %41 = ptrtoint ptr %cpu_binding124 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %cpu_binding124, align 16
  %arrayidx129 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 5
  %cpu_binding130 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 5, i32 2
  %42 = ptrtoint ptr %cpu_binding130 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call109, ptr %cpu_binding130, align 16
  %arrayidx135 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 6
  %cpu_binding136 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 6, i32 2
  %43 = ptrtoint ptr %cpu_binding136 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call109, ptr %cpu_binding136, align 16
  %arrayidx141 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 7
  %cpu_binding142 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 7, i32 2
  %44 = ptrtoint ptr %cpu_binding142 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %40, ptr %cpu_binding142, align 16
  %call144583 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call144583, i32 %45)
  %cmp145584 = icmp ult i32 %call144583, %45
  br i1 %cmp145584, label %if.end92.for.body146_crit_edge, label %if.end92.do.body172_crit_edge

if.end92.do.body172_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body172

if.end92.for.body146_crit_edge:                   ; preds = %if.end92
  br label %for.body146

for.body146:                                      ; preds = %if.end170.for.body146_crit_edge, %if.end92.for.body146_crit_edge
  %call144585 = phi i32 [ %call144, %if.end170.for.body146_crit_edge ], [ %call144583, %if.end92.for.body146_crit_edge ]
  %46 = call ptr @memset(ptr %cpu_list, i32 0, i32 256)
  %47 = ptrtoint ptr %cpu_binding to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu_binding, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %call144585)
  %cmp154 = icmp eq i32 %48, %call144585
  br i1 %cmp154, label %if.then155, label %for.body146.for.inc_crit_edge

for.body146.for.inc_crit_edge:                    ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then155:                                       ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #19
  %call158 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %cpu_list, i32 noundef 256, ptr noundef nonnull @.str.27, i32 noundef 0)
  %call160 = call i32 @strlen(ptr noundef nonnull %cpu_list) #23
  br label %for.inc

for.inc:                                          ; preds = %if.then155, %for.body146.for.inc_crit_edge
  %j.2 = phi i32 [ %call160, %if.then155 ], [ 0, %for.body146.for.inc_crit_edge ]
  %49 = ptrtoint ptr %cpu_binding107 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu_binding107, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %call144585)
  %cmp154.1 = icmp eq i32 %50, %call144585
  br i1 %cmp154.1, label %if.then155.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then155.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx156.1 = getelementptr [256 x i8], ptr %cpu_list, i32 0, i32 %j.2
  %sub157.1 = sub i32 256, %j.2
  %call158.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx156.1, i32 noundef %sub157.1, ptr noundef nonnull @.str.27, i32 noundef 1)
  %call160.1 = call i32 @strlen(ptr noundef nonnull %cpu_list) #23
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then155.1, %for.inc.for.inc.1_crit_edge
  %j.2.1 = phi i32 [ %call160.1, %if.then155.1 ], [ %j.2, %for.inc.for.inc.1_crit_edge ]
  %51 = ptrtoint ptr %cpu_binding112 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu_binding112, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %call144585)
  %cmp154.2 = icmp eq i32 %52, %call144585
  br i1 %cmp154.2, label %if.then155.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

if.then155.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx156.2 = getelementptr [256 x i8], ptr %cpu_list, i32 0, i32 %j.2.1
  %sub157.2 = sub i32 256, %j.2.1
  %call158.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx156.2, i32 noundef %sub157.2, ptr noundef nonnull @.str.27, i32 noundef 2)
  %call160.2 = call i32 @strlen(ptr noundef nonnull %cpu_list) #23
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then155.2, %for.inc.1.for.inc.2_crit_edge
  %j.2.2 = phi i32 [ %call160.2, %if.then155.2 ], [ %j.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %53 = ptrtoint ptr %cpu_binding118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu_binding118, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %call144585)
  %cmp154.3 = icmp eq i32 %54, %call144585
  br i1 %cmp154.3, label %if.then155.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

if.then155.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx156.3 = getelementptr [256 x i8], ptr %cpu_list, i32 0, i32 %j.2.2
  %sub157.3 = sub i32 256, %j.2.2
  %call158.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx156.3, i32 noundef %sub157.3, ptr noundef nonnull @.str.27, i32 noundef 3)
  %call160.3 = call i32 @strlen(ptr noundef nonnull %cpu_list) #23
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then155.3, %for.inc.2.for.inc.3_crit_edge
  %j.2.3 = phi i32 [ %call160.3, %if.then155.3 ], [ %j.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %55 = ptrtoint ptr %cpu_binding124 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu_binding124, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %call144585)
  %cmp154.4 = icmp eq i32 %56, %call144585
  br i1 %cmp154.4, label %if.then155.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

if.then155.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx156.4 = getelementptr [256 x i8], ptr %cpu_list, i32 0, i32 %j.2.3
  %sub157.4 = sub i32 256, %j.2.3
  %call158.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx156.4, i32 noundef %sub157.4, ptr noundef nonnull @.str.27, i32 noundef 4)
  %call160.4 = call i32 @strlen(ptr noundef nonnull %cpu_list) #23
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then155.4, %for.inc.3.for.inc.4_crit_edge
  %j.2.4 = phi i32 [ %call160.4, %if.then155.4 ], [ %j.2.3, %for.inc.3.for.inc.4_crit_edge ]
  %57 = ptrtoint ptr %cpu_binding130 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu_binding130, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %call144585)
  %cmp154.5 = icmp eq i32 %58, %call144585
  br i1 %cmp154.5, label %if.then155.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

if.then155.5:                                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx156.5 = getelementptr [256 x i8], ptr %cpu_list, i32 0, i32 %j.2.4
  %sub157.5 = sub i32 256, %j.2.4
  %call158.5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx156.5, i32 noundef %sub157.5, ptr noundef nonnull @.str.27, i32 noundef 5)
  %call160.5 = call i32 @strlen(ptr noundef nonnull %cpu_list) #23
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then155.5, %for.inc.4.for.inc.5_crit_edge
  %j.2.5 = phi i32 [ %call160.5, %if.then155.5 ], [ %j.2.4, %for.inc.4.for.inc.5_crit_edge ]
  %59 = ptrtoint ptr %cpu_binding136 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu_binding136, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %call144585)
  %cmp154.6 = icmp eq i32 %60, %call144585
  br i1 %cmp154.6, label %if.then155.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

if.then155.6:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx156.6 = getelementptr [256 x i8], ptr %cpu_list, i32 0, i32 %j.2.5
  %sub157.6 = sub i32 256, %j.2.5
  %call158.6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx156.6, i32 noundef %sub157.6, ptr noundef nonnull @.str.27, i32 noundef 6)
  %call160.6 = call i32 @strlen(ptr noundef nonnull %cpu_list) #23
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then155.6, %for.inc.5.for.inc.6_crit_edge
  %j.2.6 = phi i32 [ %call160.6, %if.then155.6 ], [ %j.2.5, %for.inc.5.for.inc.6_crit_edge ]
  %61 = ptrtoint ptr %cpu_binding142 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu_binding142, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %call144585)
  %cmp154.7 = icmp eq i32 %62, %call144585
  br i1 %cmp154.7, label %if.then155.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

if.then155.7:                                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx156.7 = getelementptr [256 x i8], ptr %cpu_list, i32 0, i32 %j.2.6
  %sub157.7 = sub i32 256, %j.2.6
  %call158.7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx156.7, i32 noundef %sub157.7, ptr noundef nonnull @.str.27, i32 noundef 7)
  %call160.7 = call i32 @strlen(ptr noundef nonnull %cpu_list) #23
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then155.7, %for.inc.6.for.inc.7_crit_edge
  %j.2.7 = phi i32 [ %call160.7, %if.then155.7 ], [ %j.2.6, %for.inc.6.for.inc.7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.2.7)
  %tobool163.not = icmp eq i32 %j.2.7, 0
  br i1 %tobool163.not, label %for.inc.7.if.end170_crit_edge, label %do.end167

for.inc.7.if.end170_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end170

do.end167:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call144585, ptr noundef nonnull %cpu_list) #20
  br label %if.end170

if.end170:                                        ; preds = %do.end167, %for.inc.7.if.end170_crit_edge
  %call144 = call i32 @cpumask_next(i32 noundef %call144585, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %cmp145 = icmp ult i32 %call144, %63
  br i1 %cmp145, label %if.end170.for.body146_crit_edge, label %if.end170.do.body172_crit_edge

if.end170.do.body172_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body172

if.end170.for.body146_crit_edge:                  ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body146

do.body172:                                       ; preds = %if.end170.do.body172_crit_edge, %if.end92.do.body172_crit_edge
  call void @__init_work(ptr noundef %work, i32 noundef 0) #17
  %64 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %work, align 128
  %lockdep_map = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 0, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @mtip_pci_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry185 = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %entry185 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry185, ptr %entry185, align 4
  %prev.i560 = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 0, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i560 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry185, ptr %prev.i560, align 8
  %func = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 0, i32 0, i32 2
  %67 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @mtip_workq_sdbf0, ptr %func, align 4
  call void @__init_work(ptr noundef %arrayidx106, i32 noundef 0) #17
  %68 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -64, ptr %arrayidx106, align 128
  %lockdep_map204 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 1, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map204, ptr noundef nonnull @.str.40, ptr noundef nonnull @mtip_pci_probe.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry208 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 1, i32 0, i32 1
  %69 = ptrtoint ptr %entry208 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %entry208, ptr %entry208, align 4
  %prev.i561 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 1, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i561 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %entry208, ptr %prev.i561, align 8
  %func212 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 1, i32 0, i32 2
  %71 = ptrtoint ptr %func212 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @mtip_workq_sdbf1, ptr %func212, align 4
  call void @__init_work(ptr noundef %arrayidx111, i32 noundef 0) #17
  %72 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -64, ptr %arrayidx111, align 128
  %lockdep_map228 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 2, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map228, ptr noundef nonnull @.str.42, ptr noundef nonnull @mtip_pci_probe.__key.41, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry232 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 2, i32 0, i32 1
  %73 = ptrtoint ptr %entry232 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %entry232, ptr %entry232, align 4
  %prev.i562 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 2, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %prev.i562 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %entry232, ptr %prev.i562, align 8
  %func236 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 2, i32 0, i32 2
  %75 = ptrtoint ptr %func236 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @mtip_workq_sdbf2, ptr %func236, align 4
  call void @__init_work(ptr noundef %arrayidx117, i32 noundef 0) #17
  %76 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -64, ptr %arrayidx117, align 128
  %lockdep_map252 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 3, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map252, ptr noundef nonnull @.str.44, ptr noundef nonnull @mtip_pci_probe.__key.43, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry256 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 3, i32 0, i32 1
  %77 = ptrtoint ptr %entry256 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %entry256, ptr %entry256, align 4
  %prev.i563 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 3, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i563 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %entry256, ptr %prev.i563, align 8
  %func260 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 3, i32 0, i32 2
  %79 = ptrtoint ptr %func260 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @mtip_workq_sdbf3, ptr %func260, align 4
  call void @__init_work(ptr noundef %arrayidx123, i32 noundef 0) #17
  %80 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -64, ptr %arrayidx123, align 128
  %lockdep_map276 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map276, ptr noundef nonnull @.str.46, ptr noundef nonnull @mtip_pci_probe.__key.45, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry280 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 4, i32 0, i32 1
  %81 = ptrtoint ptr %entry280 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry280, ptr %entry280, align 4
  %prev.i564 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 4, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i564 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry280, ptr %prev.i564, align 8
  %func284 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 4, i32 0, i32 2
  %83 = ptrtoint ptr %func284 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @mtip_workq_sdbf4, ptr %func284, align 4
  call void @__init_work(ptr noundef %arrayidx129, i32 noundef 0) #17
  %84 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -64, ptr %arrayidx129, align 128
  %lockdep_map300 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map300, ptr noundef nonnull @.str.48, ptr noundef nonnull @mtip_pci_probe.__key.47, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry304 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 5, i32 0, i32 1
  %85 = ptrtoint ptr %entry304 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %entry304, ptr %entry304, align 4
  %prev.i565 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 5, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %prev.i565 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %entry304, ptr %prev.i565, align 8
  %func308 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 5, i32 0, i32 2
  %87 = ptrtoint ptr %func308 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @mtip_workq_sdbf5, ptr %func308, align 4
  call void @__init_work(ptr noundef %arrayidx135, i32 noundef 0) #17
  %88 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -64, ptr %arrayidx135, align 128
  %lockdep_map324 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 6, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map324, ptr noundef nonnull @.str.50, ptr noundef nonnull @mtip_pci_probe.__key.49, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry328 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 6, i32 0, i32 1
  %89 = ptrtoint ptr %entry328 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %entry328, ptr %entry328, align 4
  %prev.i566 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 6, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %prev.i566 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %entry328, ptr %prev.i566, align 8
  %func332 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 6, i32 0, i32 2
  %91 = ptrtoint ptr %func332 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @mtip_workq_sdbf6, ptr %func332, align 4
  call void @__init_work(ptr noundef %arrayidx141, i32 noundef 0) #17
  %92 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -64, ptr %arrayidx141, align 128
  %lockdep_map348 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 7, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map348, ptr noundef nonnull @.str.52, ptr noundef nonnull @mtip_pci_probe.__key.51, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry352 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 7, i32 0, i32 1
  %93 = ptrtoint ptr %entry352 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %entry352, ptr %entry352, align 4
  %prev.i567 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 7, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %prev.i567 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %entry352, ptr %prev.i567, align 8
  %func356 = getelementptr %struct.driver_data, ptr %call.i.i.i, i32 0, i32 20, i32 7, i32 0, i32 2
  %95 = ptrtoint ptr %func356 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @mtip_workq_sdbf7, ptr %func356, align 4
  call void @pci_set_master(ptr noundef %pdev) #17
  %call359 = call i32 @pci_enable_msi(ptr noundef %pdev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %if.end366, label %do.end364

do.end364:                                        ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.54) #20
  br label %msi_initialize_err

if.end366:                                        ; preds = %do.body172
  call fastcc void @mtip_fix_ero_nosnoop(ptr noundef %call.i.i.i, ptr noundef %pdev)
  %call367 = call fastcc i32 @mtip_block_initialize(ptr noundef %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %cmp368 = icmp slt i32 %call367, 0
  br i1 %cmp368, label %do.end372, label %if.end374

do.end372:                                        ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #20
  call void @pci_disable_msi(ptr noundef %pdev) #17
  br label %msi_initialize_err

if.end374:                                        ; preds = %if.end366
  %96 = load i32, ptr @instance, align 4
  %inc375 = add i32 %96, 1
  store i32 %inc375, ptr @instance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60753, i32 %call367)
  %cmp376.not = icmp eq i32 %call367, 60753
  br i1 %cmp376.not, label %if.end374.do.body381_crit_edge, label %if.then377

if.end374.do.body381_crit_edge:                   ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body381

if.then377:                                       ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #19
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %call.i.i.i, i32 0, i32 11
  call void @_set_bit(i32 noundef 7, ptr noundef %dd_flag) #17
  br label %do.body381

do.body381:                                       ; preds = %if.then377, %if.end374.do.body381_crit_edge
  %rv.0 = phi i32 [ %call367, %if.then377 ], [ 0, %if.end374.do.body381_crit_edge ]
  %call385 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dev_lock) #17
  %97 = load ptr, ptr @online_list, align 4
  %call.i.i568 = call zeroext i1 @__list_add_valid(ptr noundef %online_list, ptr noundef nonnull @online_list, ptr noundef %97) #17
  br i1 %call.i.i568, label %if.end.i.i569, label %do.body381.list_add.exit_crit_edge

do.body381.list_add.exit_crit_edge:               ; preds = %do.body381
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add.exit

if.end.i.i569:                                    ; preds = %do.body381
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %online_list, ptr %prev1.i.i, align 4
  %99 = ptrtoint ptr %online_list to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %97, ptr %online_list, align 4
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @online_list, ptr %prev.i, align 8
  store volatile ptr %online_list, ptr @online_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i569, %do.body381.list_add.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dev_lock, i32 noundef %call385) #17
  br label %cleanup

msi_initialize_err:                               ; preds = %do.end372, %do.end364
  %rv.1 = phi i32 [ %call359, %do.end364 ], [ %call367, %do.end372 ]
  %101 = ptrtoint ptr %isr_workq to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %isr_workq, align 4
  %tobool392.not = icmp eq ptr %102, null
  br i1 %tobool392.not, label %msi_initialize_err.setmask_err_crit_edge, label %if.then393

msi_initialize_err.setmask_err_crit_edge:         ; preds = %msi_initialize_err
  call void @__sanitizer_cov_trace_pc() #19
  br label %setmask_err

if.then393:                                       ; preds = %msi_initialize_err
  call void @__sanitizer_cov_trace_pc() #19
  call void @destroy_workqueue(ptr noundef nonnull %102) #17
  %103 = ptrtoint ptr %cpu_binding to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cpu_binding, align 16
  %arrayidx.i = getelementptr [4 x i32], ptr @cpu_use, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %106, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  %107 = ptrtoint ptr %cpu_binding107 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu_binding107, align 16
  %arrayidx.i570 = getelementptr [4 x i32], ptr @cpu_use, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx.i570 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i570, align 4
  %dec.i571 = add i32 %110, -1
  store i32 %dec.i571, ptr %arrayidx.i570, align 4
  %111 = ptrtoint ptr %cpu_binding112 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cpu_binding112, align 16
  %arrayidx.i572 = getelementptr [4 x i32], ptr @cpu_use, i32 0, i32 %112
  %113 = ptrtoint ptr %arrayidx.i572 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i572, align 4
  %dec.i573 = add i32 %114, -1
  store i32 %dec.i573, ptr %arrayidx.i572, align 4
  br label %setmask_err

setmask_err:                                      ; preds = %if.then393, %msi_initialize_err.setmask_err_crit_edge, %do.end58, %do.end42
  %rv.2 = phi i32 [ %call37, %do.end42 ], [ %rv.1, %if.then393 ], [ %rv.1, %msi_initialize_err.setmask_err_crit_edge ], [ -12, %do.end58 ]
  call void @pcim_iounmap_regions(ptr noundef %pdev, i32 noundef 32) #17
  br label %iomap_err

iomap_err:                                        ; preds = %setmask_err, %do.end33, %do.end25
  %rv.3 = phi i32 [ %call20, %do.end25 ], [ %call28, %do.end33 ], [ %rv.2, %setmask_err ]
  call void @kfree(ptr noundef nonnull %call.i.i.i) #17
  %115 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %iomap_err, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.3, %iomap_err ], [ %rv.0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cpu_list) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  %vendor_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %dd_flag) #17
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dev_lock) #17
  %online_list = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 22
  %call.i.i72 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %online_list) #17
  br i1 %call.i.i72, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %online_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %online_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %online_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %online_list, ptr %online_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 22, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %online_list, ptr %prev.i3.i, align 4
  %remove_list = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 23
  %10 = load ptr, ptr @removing_list, align 4
  %call.i.i73 = tail call zeroext i1 @__list_add_valid(ptr noundef %remove_list, ptr noundef nonnull @removing_list, ptr noundef %10) #17
  br i1 %call.i.i73, label %if.end.i.i74, label %list_del_init.exit.list_add.exit_crit_edge

list_del_init.exit.list_add.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add.exit

if.end.i.i74:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %remove_list, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %remove_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %remove_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @removing_list, ptr %prev3.i.i, align 4
  store volatile ptr %remove_list, ptr @removing_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i74, %list_del_init.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dev_lock, i32 noundef %call3) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %14 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %vendor_id.i, align 2
  %sr.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sr.i, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end.i, label %list_add.exit.mtip_check_surprise_removal.exit_crit_edge

list_add.exit.mtip_check_surprise_removal.exit_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_check_surprise_removal.exit

if.end.i:                                         ; preds = %list_add.exit
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 16
  %call.i = call i32 @pci_read_config_word(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %vendor_id.i) #17
  %19 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vendor_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp.i = icmp eq i16 %20, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.mtip_check_surprise_removal.exit_crit_edge

if.end.i.mtip_check_surprise_removal.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_check_surprise_removal.exit

if.then2.i:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %sr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %sr.i, align 4
  %queue.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue.i, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %23) #17
  br label %mtip_check_surprise_removal.exit

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %mtip_check_surprise_removal.exit

mtip_check_surprise_removal.exit:                 ; preds = %do.end.i, %if.then5.i, %if.end.i.mtip_check_surprise_removal.exit_crit_edge, %list_add.exit.mtip_check_surprise_removal.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %pdev7 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev7, align 16
  %irq = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  call void @synchronize_irq(i32 noundef %29) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %irq_workers_active = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 18
  %add.neg = sub i32 -400, %30
  br label %do.body9

do.body9:                                         ; preds = %land.rhs.do.body9_crit_edge, %mtip_check_surprise_removal.exit
  call void @msleep(i32 noundef 20) #17
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %irq_workers_active, i32 noundef 4) #17
  %31 = ptrtoint ptr %irq_workers_active to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %irq_workers_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp12.not = icmp eq i32 %32, 0
  br i1 %cmp12.not, label %do.body9.do.end16_crit_edge, label %land.rhs

do.body9.do.end16_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16

land.rhs:                                         ; preds = %do.body9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %33
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %land.rhs.do.body9_crit_edge, label %land.rhs.do.end16_crit_edge

land.rhs.do.end16_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16

land.rhs.do.body9_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body9

do.end16:                                         ; preds = %land.rhs.do.end16_crit_edge, %do.body9.do.end16_crit_edge
  %call.i.i71 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_workers_active, i32 noundef 4) #17
  %34 = ptrtoint ptr %irq_workers_active to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %irq_workers_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp19.not = icmp eq i32 %35, 0
  br i1 %cmp19.not, label %do.end16.if.end_crit_edge, label %do.end23

do.end16.if.end_crit_edge:                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end23:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev7, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.261) #20
  br label %if.end

if.end:                                           ; preds = %do.end23, %do.end16.if.end_crit_edge
  %disk = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %disk, align 4
  call void @blk_mark_disk_dead(ptr noundef %39) #17
  call void @_set_bit(i32 noundef 1, ptr noundef %dd_flag) #17
  %dfs_node.i.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %dfs_node.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dfs_node.i.i, align 8
  call void @debugfs_remove(ptr noundef %41) #17
  %mtip_svc_handler.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 12
  %42 = ptrtoint ptr %mtip_svc_handler.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mtip_svc_handler.i, align 4
  %tobool.not.i75 = icmp eq ptr %43, null
  br i1 %tobool.not.i75, label %if.end.if.end.i78_crit_edge, label %if.then.i

if.end.if.end.i78_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i78

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %port.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port.i, align 16
  %flags.i = getelementptr inbounds %struct.mtip_port, ptr %45, i32 0, i32 22
  call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #17
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port.i, align 16
  %svc_wait.i = getelementptr inbounds %struct.mtip_port, ptr %47, i32 0, i32 21
  call void @__wake_up(ptr noundef %svc_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #17
  %48 = ptrtoint ptr %mtip_svc_handler.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mtip_svc_handler.i, align 4
  %call.i76 = call i32 @kthread_stop(ptr noundef %49) #17
  br label %if.end.i78

if.end.i78:                                       ; preds = %if.then.i, %if.end.if.end.i78_crit_edge
  %50 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sr.i, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool3.not.i = icmp eq i8 %51, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %do.end.i81

if.then4.i:                                       ; preds = %if.end.i78
  %port5.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port5.i, align 16
  %call6.i = call fastcc i32 @mtip_quiesce_io(ptr noundef %53) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.then4.i.if.end11.i_crit_edge

if.then4.i.if.end11.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  %call9.i = call fastcc i32 @mtip_standby_drive(ptr noundef %1) #17
  br label %if.end11.i

do.end.i81:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev7, align 16
  %dev.i80 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %56 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %disk, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %57, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i80, ptr noundef nonnull @.str.263, ptr noundef %disk_name.i) #20
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i81, %if.then8.i, %if.then4.i.if.end11.i_crit_edge
  %queue.i82 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %queue.i82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %queue.i82, align 4
  call void @blk_freeze_queue_start(ptr noundef %59) #17
  %60 = ptrtoint ptr %queue.i82 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %queue.i82, align 4
  call void @blk_mq_quiesce_queue(ptr noundef %61) #17
  %tags.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 6
  call void @blk_mq_tagset_busy_iter(ptr noundef %tags.i, ptr noundef nonnull @mtip_no_dev_cleanup, ptr noundef %1) #17
  %62 = ptrtoint ptr %queue.i82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %queue.i82, align 4
  call void @blk_mq_unquiesce_queue(ptr noundef %63) #17
  %64 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %disk, align 4
  %tobool15.not.i = icmp eq ptr %65, null
  br i1 %tobool15.not.i, label %if.end11.i.mtip_block_remove.exit_crit_edge, label %if.then16.i

if.end11.i.mtip_block_remove.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_block_remove.exit

if.then16.i:                                      ; preds = %if.end11.i
  %66 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %dd_flag, align 4
  %68 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool18.not.i = icmp eq i32 %68, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.end21.i_crit_edge, label %if.then19.i

if.then16.i.if.end21.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @del_gendisk(ptr noundef nonnull %65) #17
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.then16.i.if.end21.i_crit_edge
  %69 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %disk, align 4
  %queue23.i = getelementptr inbounds %struct.gendisk, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %queue23.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queue23.i, align 4
  %tobool24.not.i = icmp eq ptr %72, null
  br i1 %tobool24.not.i, label %if.end21.i.if.end29.i_crit_edge, label %if.then25.i

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  %73 = ptrtoint ptr %queue.i82 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %queue.i82, align 4
  call void @blk_cleanup_queue(ptr noundef %74) #17
  call void @blk_mq_free_tag_set(ptr noundef %tags.i) #17
  %75 = ptrtoint ptr %queue.i82 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %queue.i82, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end21.i.if.end29.i_crit_edge
  %76 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %disk, align 4
  call void @put_disk(ptr noundef %77) #17
  br label %mtip_block_remove.exit

mtip_block_remove.exit:                           ; preds = %if.end29.i, %if.end11.i.mtip_block_remove.exit_crit_edge
  %78 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %disk, align 4
  %index.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 10
  %79 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index.i, align 4
  call void @ida_free(ptr noundef nonnull @rssd_index_ida, i32 noundef %80) #17
  call fastcc void @mtip_hw_exit(ptr noundef %1) #17
  %isr_workq = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 17
  %81 = ptrtoint ptr %isr_workq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %isr_workq, align 4
  %tobool.not = icmp eq ptr %82, null
  br i1 %tobool.not, label %mtip_block_remove.exit.if.end35_crit_edge, label %if.then27

mtip_block_remove.exit.if.end35_crit_edge:        ; preds = %mtip_block_remove.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then27:                                        ; preds = %mtip_block_remove.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @destroy_workqueue(ptr noundef nonnull %82) #17
  %cpu_binding = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 20, i32 0, i32 2
  %83 = ptrtoint ptr %cpu_binding to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu_binding, align 16
  %arrayidx.i = getelementptr [4 x i32], ptr @cpu_use, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %86, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  %cpu_binding31 = getelementptr %struct.driver_data, ptr %1, i32 0, i32 20, i32 1, i32 2
  %87 = ptrtoint ptr %cpu_binding31 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cpu_binding31, align 16
  %arrayidx.i83 = getelementptr [4 x i32], ptr @cpu_use, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i83, align 4
  %dec.i84 = add i32 %90, -1
  store i32 %dec.i84, ptr %arrayidx.i83, align 4
  %cpu_binding34 = getelementptr %struct.driver_data, ptr %1, i32 0, i32 20, i32 2, i32 2
  %91 = ptrtoint ptr %cpu_binding34 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cpu_binding34, align 16
  %arrayidx.i85 = getelementptr [4 x i32], ptr @cpu_use, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i85, align 4
  %dec.i86 = add i32 %94, -1
  store i32 %dec.i86, ptr %arrayidx.i85, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %mtip_block_remove.exit.if.end35_crit_edge
  call void @pci_disable_msi(ptr noundef %pdev) #17
  %call44 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dev_lock) #17
  %call.i.i87 = call zeroext i1 @__list_del_entry_valid(ptr noundef %remove_list) #17
  br i1 %call.i.i87, label %if.end.i.i90, label %if.end35.list_del_init.exit92_crit_edge

if.end35.list_del_init.exit92_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit92

if.end.i.i90:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i88 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 23, i32 1
  %95 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i88, align 4
  %97 = ptrtoint ptr %remove_list to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %remove_list, align 4
  %prev1.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i89, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %list_del_init.exit92

list_del_init.exit92:                             ; preds = %if.end.i.i90, %if.end35.list_del_init.exit92_crit_edge
  %101 = ptrtoint ptr %remove_list to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %remove_list, ptr %remove_list, align 4
  %prev.i3.i91 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 23, i32 1
  %102 = ptrtoint ptr %prev.i3.i91 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %remove_list, ptr %prev.i3.i91, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dev_lock, i32 noundef %call44) #17
  call void @kfree(ptr noundef %1) #17
  call void @pcim_iounmap_regions(ptr noundef %pdev, i32 noundef 32) #17
  %103 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_pci_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call fastcc i32 @mtip_standby_drive(ptr noundef nonnull %1) #17
  %disk.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.mtip_block_shutdown.exit_crit_edge, label %do.end.i

if.then.mtip_block_shutdown.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_block_shutdown.exit

do.end.i:                                         ; preds = %if.then
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.269, ptr noundef %disk_name.i) #20
  %dd_flag.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %dd_flag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dd_flag.i, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %do.end.i.if.end.i_crit_edge, label %if.then4.i

do.end.i.if.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk.i, align 4
  tail call void @del_gendisk(ptr noundef %10) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %do.end.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disk.i, align 4
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue.i, align 4
  %tobool7.not.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then8.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %queue9.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %queue9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue9.i, align 4
  tail call void @blk_cleanup_queue(ptr noundef %16) #17
  %tags.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 6
  tail call void @blk_mq_free_tag_set(ptr noundef %tags.i) #17
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i.if.end10.i_crit_edge
  %17 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disk.i, align 4
  tail call void @put_disk(ptr noundef %18) #17
  %19 = ptrtoint ptr %disk.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %disk.i, align 4
  %queue13.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %queue13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %queue13.i, align 4
  br label %mtip_block_shutdown.exit

mtip_block_shutdown.exit:                         ; preds = %if.end10.i, %if.then.mtip_block_shutdown.exit_crit_edge
  %index.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  tail call void @ida_free(ptr noundef nonnull @rssd_index_ida, i32 noundef %22) #17
  br label %if.end

if.end:                                           ; preds = %mtip_block_shutdown.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_least_used_cpu_on_node() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %0) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %1)
  %cmp4 = icmp ult i32 %call12, %1
  br i1 %cmp4, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @cpu_use, i32 0, i32 %call.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %call17 = phi i32 [ %call1, %for.body.for.body_crit_edge ], [ %call12, %for.body.preheader ]
  %least_cnt.06 = phi i32 [ %6, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %least_used_cpu.05 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ %call.i, %for.body.preheader ]
  %arrayidx2 = getelementptr [4 x i32], ptr @cpu_use, i32 0, i32 %call17
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %least_cnt.06)
  %cmp3 = icmp ult i32 %5, %least_cnt.06
  %spec.select = select i1 %cmp3, i32 %call17, i32 %least_used_cpu.05
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %least_cnt.06)
  %call1 = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_online_mask) #22
  %cmp = icmp ult i32 %call1, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %least_used_cpu.0.lcssa = phi i32 [ %call.i, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %arrayidx5 = getelementptr [4 x i32], ptr @cpu_use, i32 0, i32 %least_used_cpu.0.lcssa
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %arrayidx5, align 4
  ret i32 %least_used_cpu.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_workq_sdbf0(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %completed = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed, align 4
  tail call fastcc void @mtip_workq_sdbfx(ptr noundef %1, i32 noundef 0, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_workq_sdbf1(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %completed = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed, align 4
  tail call fastcc void @mtip_workq_sdbfx(ptr noundef %1, i32 noundef 1, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_workq_sdbf2(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %completed = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed, align 4
  tail call fastcc void @mtip_workq_sdbfx(ptr noundef %1, i32 noundef 2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_workq_sdbf3(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %completed = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed, align 4
  tail call fastcc void @mtip_workq_sdbfx(ptr noundef %1, i32 noundef 3, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_workq_sdbf4(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %completed = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed, align 4
  tail call fastcc void @mtip_workq_sdbfx(ptr noundef %1, i32 noundef 4, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_workq_sdbf5(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %completed = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed, align 4
  tail call fastcc void @mtip_workq_sdbfx(ptr noundef %1, i32 noundef 5, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_workq_sdbf6(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %completed = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed, align 4
  tail call fastcc void @mtip_workq_sdbfx(ptr noundef %1, i32 noundef 6, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_workq_sdbf7(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %completed = getelementptr inbounds %struct.mtip_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed, align 4
  tail call fastcc void @mtip_workq_sdbfx(ptr noundef %1, i32 noundef 7, i32 noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtip_fix_ero_nosnoop(ptr nocapture noundef readonly %dd, ptr nocapture noundef readonly %pdev) unnamed_addr #2 align 64 {
entry:
  %pcie_dev_ctrl.i65 = alloca i16, align 2
  %pcie_dev_ctrl.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %land.lhs.true

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

land.lhs.true:                                    ; preds = %entry
  %self = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end49_crit_edge, label %if.then

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then:                                          ; preds = %land.lhs.true
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %5)
  %cmp = icmp eq i16 %5, 4098
  br i1 %cmp, label %land.lhs.true6, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true6:                                   ; preds = %if.then
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %8 = and i16 %7, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 23040, i16 %8)
  %cmp10 = icmp eq i16 %8, 23040
  br i1 %cmp10, label %if.then12, label %land.lhs.true6.if.else_crit_edge

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcie_dev_ctrl.i) #17
  %9 = ptrtoint ptr %pcie_dev_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %pcie_dev_ctrl.i, align 2, !annotation !584
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.not.i = icmp eq i8 %11, 0
  br i1 %tobool.i.not.i, label %if.then12.mtip_disable_link_opts.exit_crit_edge, label %if.then.i

if.then12.mtip_disable_link_opts.exit_crit_edge:  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_disable_link_opts.exit

if.then.i:                                        ; preds = %if.then12
  %call1.i = call i32 @pcie_capability_read_word(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %pcie_dev_ctrl.i) #17
  %12 = ptrtoint ptr %pcie_dev_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pcie_dev_ctrl.i, align 2
  %14 = and i16 %13, 2064
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %if.then.i.mtip_disable_link_opts.exit_crit_edge, label %do.end.i

if.then.i.mtip_disable_link_opts.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_disable_link_opts.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev6.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %16 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev6.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor, align 8
  %conv7.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device, align 2
  %conv8.i = zext i16 %21 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.59, i32 noundef %conv7.i, i32 noundef %conv8.i) #20
  %22 = ptrtoint ptr %pcie_dev_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pcie_dev_ctrl.i, align 2
  %24 = and i16 %23, -2065
  store i16 %24, ptr %pcie_dev_ctrl.i, align 2
  %call12.i = call i32 @pcie_capability_write_word(ptr noundef nonnull %3, i32 noundef 8, i16 noundef zeroext %24) #17
  br label %mtip_disable_link_opts.exit

mtip_disable_link_opts.exit:                      ; preds = %do.end.i, %if.then.i.mtip_disable_link_opts.exit_crit_edge, %if.then12.mtip_disable_link_opts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcie_dev_ctrl.i) #17
  br label %if.end49

if.else:                                          ; preds = %land.lhs.true6.if.else_crit_edge, %if.then.if.else_crit_edge
  %bus17 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %bus17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus17, align 8
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %if.else.if.end49_crit_edge, label %land.lhs.true19

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

land.lhs.true19:                                  ; preds = %if.else
  %parent = getelementptr inbounds %struct.pci_bus, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %land.lhs.true19.if.end49_crit_edge, label %land.lhs.true22

land.lhs.true19.if.end49_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %self25 = getelementptr inbounds %struct.pci_bus, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %self25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %self25, align 4
  %tobool26.not = icmp eq ptr %30, null
  br i1 %tobool26.not, label %land.lhs.true22.if.end49_crit_edge, label %land.lhs.true27

land.lhs.true22.if.end49_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %vendor31 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %vendor31 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vendor31, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %32)
  %cmp33 = icmp eq i16 %32, 4098
  br i1 %cmp33, label %land.lhs.true35, label %land.lhs.true27.if.end49_crit_edge

land.lhs.true27.if.end49_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

land.lhs.true35:                                  ; preds = %land.lhs.true27
  %device39 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 8
  %33 = ptrtoint ptr %device39 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device39, align 2
  %35 = and i16 %34, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 23040, i16 %35)
  %cmp42 = icmp eq i16 %35, 23040
  br i1 %cmp42, label %if.then44, label %land.lhs.true35.if.end49_crit_edge

land.lhs.true35.if.end49_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then44:                                        ; preds = %land.lhs.true35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcie_dev_ctrl.i65) #17
  %36 = ptrtoint ptr %pcie_dev_ctrl.i65 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %pcie_dev_ctrl.i65, align 2, !annotation !584
  %pcie_cap.i.i.i66 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 19
  %37 = ptrtoint ptr %pcie_cap.i.i.i66 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pcie_cap.i.i.i66, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.not.i67 = icmp eq i8 %38, 0
  br i1 %tobool.i.not.i67, label %if.then44.mtip_disable_link_opts.exit78_crit_edge, label %if.then.i69

if.then44.mtip_disable_link_opts.exit78_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_disable_link_opts.exit78

if.then.i69:                                      ; preds = %if.then44
  %call1.i68 = call i32 @pcie_capability_read_word(ptr noundef nonnull %30, i32 noundef 8, ptr noundef nonnull %pcie_dev_ctrl.i65) #17
  %39 = ptrtoint ptr %pcie_dev_ctrl.i65 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pcie_dev_ctrl.i65, align 2
  %41 = and i16 %40, 2064
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %if.then.i69.mtip_disable_link_opts.exit78_crit_edge, label %do.end.i77

if.then.i69.mtip_disable_link_opts.exit78_crit_edge: ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_disable_link_opts.exit78

do.end.i77:                                       ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #19
  %pdev6.i70 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %43 = ptrtoint ptr %pdev6.i70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev6.i70, align 16
  %dev.i71 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %vendor31 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vendor31, align 8
  %conv7.i73 = zext i16 %46 to i32
  %47 = ptrtoint ptr %device39 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %device39, align 2
  %conv8.i75 = zext i16 %48 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i71, ptr noundef nonnull @.str.59, i32 noundef %conv7.i73, i32 noundef %conv8.i75) #20
  %49 = ptrtoint ptr %pcie_dev_ctrl.i65 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pcie_dev_ctrl.i65, align 2
  %51 = and i16 %50, -2065
  store i16 %51, ptr %pcie_dev_ctrl.i65, align 2
  %call12.i76 = call i32 @pcie_capability_write_word(ptr noundef nonnull %30, i32 noundef 8, i16 noundef zeroext %51) #17
  br label %mtip_disable_link_opts.exit78

mtip_disable_link_opts.exit78:                    ; preds = %do.end.i77, %if.then.i69.mtip_disable_link_opts.exit78_crit_edge, %if.then44.mtip_disable_link_opts.exit78_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcie_dev_ctrl.i65) #17
  br label %if.end49

if.end49:                                         ; preds = %mtip_disable_link_opts.exit78, %land.lhs.true35.if.end49_crit_edge, %land.lhs.true27.if.end49_crit_edge, %land.lhs.true22.if.end49_crit_edge, %land.lhs.true19.if.end49_crit_edge, %if.else.if.end49_crit_edge, %mtip_disable_link_opts.exit, %land.lhs.true.if.end49_crit_edge, %entry.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtip_block_initialize(ptr noundef %dd) unnamed_addr #2 align 64 {
entry:
  %fis.i.i.i = alloca %struct.host_to_dev_fis, align 4
  %fis.i.i = alloca %struct.host_to_dev_fis, align 4
  %revid.i.i = alloca i16, align 2
  %cbuf.i.i = alloca [42 x i8], align 1
  %vendor_id.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 3
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.skip_create_disk_crit_edge

entry.skip_create_disk_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_create_disk

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 16
  %call.i = tail call ptr @pcim_iomap_table(ptr noundef %3) #17
  %arrayidx.i = getelementptr ptr, ptr %call.i, i32 5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %dd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dd, align 128
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 252
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !585
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !586
  %product_type.i.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 8
  %9 = ptrtoint ptr %product_type.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %product_type.i.i, align 4
  %slot_groups.i.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 9
  %10 = ptrtoint ptr %slot_groups.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %slot_groups.i.i, align 8
  %and.i.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end15.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %product_type.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 17, ptr %product_type.i.i, align 4
  %and3.i.i = lshr i32 %8, 8
  %shr.i278.i = and i32 %and3.i.i, 255
  %and4.i.i = and i32 %8, 7
  %add.i.i = add nuw nsw i32 %and4.i.i, 1
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %mul.i.i = shl nuw nsw i32 %add.i.i, 5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.90, i32 noundef %shr.i278.i, i32 noundef %add.i.i, i32 noundef %mul.i.i) #20
  %14 = ptrtoint ptr %slot_groups.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i.i, ptr %slot_groups.i.i, align 8
  br label %mtip_detect_product.exit.i

do.end15.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 16
  %dev17.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17.i.i, ptr noundef nonnull @.str.96) #20
  br label %mtip_detect_product.exit.i

mtip_detect_product.exit.i:                       ; preds = %do.end15.i.i, %if.then.i.i
  %17 = ptrtoint ptr %product_type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %product_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  br i1 %cmp.i, label %mtip_detect_product.exit.i.out1.i_crit_edge, label %if.end.i

mtip_detect_product.exit.i.out1.i_crit_edge:      ; preds = %mtip_detect_product.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out1.i

if.end.i:                                         ; preds = %mtip_detect_product.exit.i
  %19 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dd, align 128
  %add.ptr.i279.i = getelementptr i8, ptr %20, i32 252
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i279.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !587
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !588
  tail call void @arm_heavy_mb() #17
  %22 = or i32 %21, 257
  %23 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dd, align 128
  %add.ptr4.i.i = getelementptr i8, ptr %24, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %22) #17, !srcloc !589
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 612) #21
  %port.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 7
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i.i, ptr %port.i, align 16
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i
  %port8.i = getelementptr %struct.driver_data, ptr %dd, i32 0, i32 20, i32 0, i32 1
  %27 = ptrtoint ptr %port8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.i.i, ptr %port8.i, align 4
  %port8.1.i = getelementptr %struct.driver_data, ptr %dd, i32 0, i32 20, i32 1, i32 1
  %28 = ptrtoint ptr %port8.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i.i.i, ptr %port8.1.i, align 4
  %port8.2.i = getelementptr %struct.driver_data, ptr %dd, i32 0, i32 20, i32 2, i32 1
  %29 = ptrtoint ptr %port8.2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i.i.i, ptr %port8.2.i, align 4
  %port8.3.i = getelementptr %struct.driver_data, ptr %dd, i32 0, i32 20, i32 3, i32 1
  %30 = ptrtoint ptr %port8.3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i.i.i, ptr %port8.3.i, align 4
  %port8.4.i = getelementptr %struct.driver_data, ptr %dd, i32 0, i32 20, i32 4, i32 1
  %31 = ptrtoint ptr %port8.4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i.i, ptr %port8.4.i, align 4
  %port8.5.i = getelementptr %struct.driver_data, ptr %dd, i32 0, i32 20, i32 5, i32 1
  %32 = ptrtoint ptr %port8.5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i.i, ptr %port8.5.i, align 4
  %port8.6.i = getelementptr %struct.driver_data, ptr %dd, i32 0, i32 20, i32 6, i32 1
  %33 = ptrtoint ptr %port8.6.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i.i.i, ptr %port8.6.i, align 4
  %port8.7.i = getelementptr %struct.driver_data, ptr %dd, i32 0, i32 20, i32 7, i32 1
  %34 = ptrtoint ptr %port8.7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i.i.i, ptr %port8.7.i, align 4
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 16
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20833, i16 %38)
  %cmp.i.not.i = icmp eq i16 %38, 20833
  %spec.select.i = select i1 %cmp.i.not.i, i32 2, i32 0
  %39 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 24
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select.i, ptr %39, align 4
  %cmd_slot_unal.i = getelementptr inbounds %struct.mtip_port, ptr %call.i.i.i.i, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_slot_unal.i, i32 noundef 4) #17
  %41 = ptrtoint ptr %cmd_slot_unal.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %spec.select.i, ptr %cmd_slot_unal.i, align 8
  %42 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port.i, align 16
  %arrayidx20.i = getelementptr %struct.mtip_port, ptr %43, i32 0, i32 25, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx20.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @mtip_hw_init.__key, i16 noundef signext 3) #17
  %44 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port.i, align 16
  %arrayidx20.1.i = getelementptr %struct.mtip_port, ptr %45, i32 0, i32 25, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx20.1.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @mtip_hw_init.__key, i16 noundef signext 3) #17
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port.i, align 16
  %arrayidx20.2.i = getelementptr %struct.mtip_port, ptr %47, i32 0, i32 25, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx20.2.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @mtip_hw_init.__key, i16 noundef signext 3) #17
  %48 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port.i, align 16
  %arrayidx20.3.i = getelementptr %struct.mtip_port, ptr %49, i32 0, i32 25, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx20.3.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @mtip_hw_init.__key, i16 noundef signext 3) #17
  %50 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port.i, align 16
  %arrayidx20.4.i = getelementptr %struct.mtip_port, ptr %51, i32 0, i32 25, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx20.4.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @mtip_hw_init.__key, i16 noundef signext 3) #17
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port.i, align 16
  %arrayidx20.5.i = getelementptr %struct.mtip_port, ptr %53, i32 0, i32 25, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx20.5.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @mtip_hw_init.__key, i16 noundef signext 3) #17
  %54 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port.i, align 16
  %arrayidx20.6.i = getelementptr %struct.mtip_port, ptr %55, i32 0, i32 25, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx20.6.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @mtip_hw_init.__key, i16 noundef signext 3) #17
  %56 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port.i, align 16
  %arrayidx20.7.i = getelementptr %struct.mtip_port, ptr %57, i32 0, i32 25, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx20.7.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @mtip_hw_init.__key, i16 noundef signext 3) #17
  %58 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dd, align 128
  %add.ptr.i = getelementptr i8, ptr %59, i32 256
  %60 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port.i, align 16
  %mmio27.i = getelementptr inbounds %struct.mtip_port, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %mmio27.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr.i, ptr %mmio27.i, align 4
  %63 = load ptr, ptr %port.i, align 16
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dd, ptr %63, align 4
  %65 = load ptr, ptr %port.i, align 16
  %66 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev.i, align 16
  %dev.i282.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %block1_dma.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 11
  %call.i.i283.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i282.i, i32 noundef 4096, ptr noundef %block1_dma.i.i, i32 noundef 3264, i32 noundef 0) #17
  %block1.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 10
  %68 = ptrtoint ptr %block1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i.i283.i, ptr %block1.i.i, align 4
  %tobool.not.i284.i = icmp eq ptr %call.i.i283.i, null
  br i1 %tobool.not.i284.i, label %for.body.preheader.i.out1.i_crit_edge, label %if.end.i.i

for.body.preheader.i.out1.i_crit_edge:            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out1.i

if.end.i.i:                                       ; preds = %for.body.preheader.i
  %69 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev.i, align 16
  %dev4.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %command_list_dma.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 7
  %call.i58.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev4.i.i, i32 noundef 8192, ptr noundef %command_list_dma.i.i, i32 noundef 3264, i32 noundef 0) #17
  %command_list.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 6
  %71 = ptrtoint ptr %command_list.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i58.i.i, ptr %command_list.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %call.i58.i.i, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %mtip_dma_alloc.exit.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %72 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev.i, align 16
  %dev10.i.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %block1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %block1.i.i, align 4
  %76 = ptrtoint ptr %block1_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %block1_dma.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10.i.i, i32 noundef 4096, ptr noundef %75, i32 noundef %77, i32 noundef 0) #17
  %78 = ptrtoint ptr %block1.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %block1.i.i, align 4
  %79 = ptrtoint ptr %block1_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %block1_dma.i.i, align 4
  br label %out1.i

mtip_dma_alloc.exit.i:                            ; preds = %if.end.i.i
  %80 = ptrtoint ptr %block1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %block1.i.i, align 4
  %rxfis.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 8
  %82 = ptrtoint ptr %rxfis.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %rxfis.i.i, align 4
  %83 = ptrtoint ptr %block1_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %block1_dma.i.i, align 4
  %rxfis_dma.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 9
  %85 = ptrtoint ptr %rxfis_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %rxfis_dma.i.i, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %81, i32 1024
  %identify.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 12
  %86 = ptrtoint ptr %identify.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr19.i.i, ptr %identify.i.i, align 4
  %add21.i.i = add i32 %84, 1024
  %identify_dma.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 13
  %87 = ptrtoint ptr %identify_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add21.i.i, ptr %identify_dma.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %81, i32 2048
  %log_buf.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 16
  %88 = ptrtoint ptr %log_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr23.i.i, ptr %log_buf.i.i, align 4
  %add25.i.i = add i32 %84, 2048
  %log_buf_dma.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 17
  %89 = ptrtoint ptr %log_buf_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add25.i.i, ptr %log_buf_dma.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %81, i32 3072
  %smart_buf.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 18
  %90 = ptrtoint ptr %smart_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr27.i.i, ptr %smart_buf.i.i, align 4
  %add29.i.i = add i32 %84, 3072
  %smart_buf_dma.i.i = getelementptr inbounds %struct.mtip_port, ptr %65, i32 0, i32 19
  %91 = ptrtoint ptr %smart_buf_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add29.i.i, ptr %smart_buf_dma.i.i, align 4
  %92 = ptrtoint ptr %slot_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %slot_groups.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp35314.not.i = icmp eq i32 %93, 0
  br i1 %cmp35314.not.i, label %mtip_dma_alloc.exit.i.for.end59.i_crit_edge, label %mtip_dma_alloc.exit.i.for.body36.i_crit_edge

mtip_dma_alloc.exit.i.for.body36.i_crit_edge:     ; preds = %mtip_dma_alloc.exit.i
  br label %for.body36.i

mtip_dma_alloc.exit.i.for.end59.i_crit_edge:      ; preds = %mtip_dma_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end59.i

for.body36.i:                                     ; preds = %for.body36.i.for.body36.i_crit_edge, %mtip_dma_alloc.exit.i.for.body36.i_crit_edge
  %i.2315.i = phi i32 [ %inc58.i, %for.body36.i.for.body36.i_crit_edge ], [ 0, %mtip_dma_alloc.exit.i.for.body36.i_crit_edge ]
  %94 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %port.i, align 16
  %mmio38.i = getelementptr inbounds %struct.mtip_port, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %mmio38.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio38.i, align 4
  %mul.i = shl i32 %i.2315.i, 7
  %add.ptr39.i = getelementptr i8, ptr %97, i32 52
  %add.ptr40.i = getelementptr i8, ptr %add.ptr39.i, i32 %mul.i
  %arrayidx42.i = getelementptr %struct.mtip_port, ptr %95, i32 0, i32 3, i32 %i.2315.i
  %98 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr40.i, ptr %arrayidx42.i, align 4
  %99 = load ptr, ptr %port.i, align 16
  %mmio44.i = getelementptr inbounds %struct.mtip_port, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %mmio44.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio44.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %101, i32 56
  %add.ptr47.i = getelementptr i8, ptr %add.ptr46.i, i32 %mul.i
  %arrayidx49.i = getelementptr %struct.mtip_port, ptr %99, i32 0, i32 5, i32 %i.2315.i
  %102 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr47.i, ptr %arrayidx49.i, align 4
  %103 = load ptr, ptr %port.i, align 16
  %mmio51.i = getelementptr inbounds %struct.mtip_port, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %mmio51.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio51.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %105, i32 124
  %add.ptr54.i = getelementptr i8, ptr %add.ptr53.i, i32 %mul.i
  %arrayidx56.i = getelementptr %struct.mtip_port, ptr %103, i32 0, i32 4, i32 %i.2315.i
  %106 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr54.i, ptr %arrayidx56.i, align 4
  %inc58.i = add nuw i32 %i.2315.i, 1
  %107 = ptrtoint ptr %slot_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %slot_groups.i.i, align 8
  %cmp35.i = icmp ult i32 %inc58.i, %108
  br i1 %cmp35.i, label %for.body36.i.for.body36.i_crit_edge, label %for.body36.i.for.end59.i_crit_edge

for.body36.i.for.end59.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end59.i

for.body36.i.for.body36.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body36.i

for.end59.i:                                      ; preds = %for.body36.i.for.end59.i_crit_edge, %mtip_dma_alloc.exit.i.for.end59.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %110 = load volatile i32, ptr @jiffies, align 128
  %111 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %port.i, align 16
  %mmio62317.i = getelementptr inbounds %struct.mtip_port, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %mmio62317.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio62317.i, align 4
  %add.ptr63318.i = getelementptr i8, ptr %114, i32 40
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63318.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !590
  %116 = and i32 %115, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %116)
  %cmp66.not319.i = icmp eq i32 %116, 50331648
  br i1 %cmp66.not319.i, label %for.end59.i.while.end71.i_crit_edge, label %land.rhs.lr.ph.i

for.end59.i.while.end71.i_crit_edge:              ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end71.i

land.rhs.lr.ph.i:                                 ; preds = %for.end59.i
  %add.neg.i = sub i32 -3000, %110
  br label %land.rhs.i

while.cond.loopexit.i:                            ; preds = %while.body70.i
  %117 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %port.i, align 16
  %mmio62.i = getelementptr inbounds %struct.mtip_port, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %mmio62.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmio62.i, align 4
  %add.ptr63.i = getelementptr i8, ptr %120, i32 40
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !590
  %122 = and i32 %121, 251658240
  %cmp66.not.i = icmp eq i32 %122, 50331648
  br i1 %cmp66.not.i, label %while.cond.loopexit.i.while.end71.i_crit_edge, label %while.cond.loopexit.i.land.rhs.i_crit_edge

while.cond.loopexit.i.land.rhs.i_crit_edge:       ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

while.cond.loopexit.i.while.end71.i_crit_edge:    ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end71.i

land.rhs.i:                                       ; preds = %while.cond.loopexit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp67.i = icmp slt i32 %sub.i, 0
  br i1 %cmp67.i, label %land.rhs.i.while.body70.i_crit_edge, label %land.rhs.i.while.end71.i_crit_edge

land.rhs.i.while.end71.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end71.i

land.rhs.i.while.body70.i_crit_edge:              ; preds = %land.rhs.i
  br label %while.body70.i

while.body70.i:                                   ; preds = %while.body70.i.while.body70.i_crit_edge, %land.rhs.i.while.body70.i_crit_edge
  %__ms.0316.i = phi i32 [ %dec.i, %while.body70.i.while.body70.i_crit_edge ], [ 100, %land.rhs.i.while.body70.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.0316.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748000) #17
  %tobool69.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool69.not.i, label %while.cond.loopexit.i, label %while.body70.i.while.body70.i_crit_edge

while.body70.i.while.body70.i_crit_edge:          ; preds = %while.body70.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body70.i

while.end71.i:                                    ; preds = %land.rhs.i.while.end71.i_crit_edge, %while.cond.loopexit.i.while.end71.i_crit_edge, %for.end59.i.while.end71.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i.i) #17
  %125 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %vendor_id.i.i, align 2
  %sr.i.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 14
  %126 = ptrtoint ptr %sr.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %sr.i.i, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i285.i = icmp eq i8 %127, 0
  br i1 %tobool.not.i285.i, label %if.end.i288.i, label %while.end71.i.if.then75.i_crit_edge, !prof !591

while.end71.i.if.then75.i_crit_edge:              ; preds = %while.end71.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then75.i

if.end.i288.i:                                    ; preds = %while.end71.i
  %128 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdev.i, align 16
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %129, i32 noundef 0, ptr noundef nonnull %vendor_id.i.i) #17
  %130 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %vendor_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %131)
  %cmp.i287.i = icmp eq i16 %131, -1
  br i1 %cmp.i287.i, label %if.then2.i.i, label %if.end82.i

if.then2.i.i:                                     ; preds = %if.end.i288.i
  %132 = ptrtoint ptr %sr.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %sr.i.i, align 4
  %queue.i.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 5
  %133 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %queue.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %134, null
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %if.then5.i.i, !prof !592

if.then5.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %134) #17
  br label %if.then75.i

do.end.i.i:                                       ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %135 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev.i, align 16
  %dev.i289.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i289.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %if.then75.i

if.then75.i:                                      ; preds = %do.end.i.i, %if.then5.i.i, %while.end71.i.if.then75.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i.i) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %sub76.i = sub i32 %137, %109
  %138 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  %call81.i = call i32 @jiffies_to_msecs(i32 noundef %sub76.i) #17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.77, i32 noundef %call81.i) #20
  br label %out2.i

if.end82.i:                                       ; preds = %if.end.i288.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i.i) #17
  %dd_flag.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 11
  %140 = ptrtoint ptr %dd_flag.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %dd_flag.i, align 4
  %142 = and i32 %141, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool84.not.i = icmp eq i32 %142, 0
  br i1 %tobool84.not.i, label %if.end99.i, label %if.then91.i, !prof !593

if.then91.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %143 = load volatile i32, ptr @jiffies, align 128
  %sub92.i = sub i32 %143, %109
  %144 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pdev.i, align 16
  %dev97.i = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  %call98.i = call i32 @jiffies_to_msecs(i32 noundef %sub92.i) #17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev97.i, ptr noundef nonnull @.str.80, i32 noundef %call98.i) #20
  br label %out2.i

if.end99.i:                                       ; preds = %if.end82.i
  %146 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dd, align 128
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !594
  %149 = and i32 %148, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool108.not.i = icmp eq i32 %149, 0
  br i1 %tobool108.not.i, label %if.then109.i, label %do.body120.i

if.then109.i:                                     ; preds = %if.end99.i
  %call110.i = call fastcc i32 @mtip_hba_reset(ptr noundef %dd) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %cmp111.i = icmp slt i32 %call110.i, 0
  br i1 %cmp111.i, label %do.end115.i, label %if.then109.i.if.end132.i_crit_edge

if.then109.i.if.end132.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end132.i

do.end115.i:                                      ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #19
  %150 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pdev.i, align 16
  %dev117.i = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117.i, ptr noundef nonnull @.str.83) #20
  br label %out2.i

do.body120.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !595
  call void @arm_heavy_mb() #17
  %152 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dd, align 128
  %add.ptr126.i = getelementptr i8, ptr %153, i32 8
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !596
  %155 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dd, align 128
  %add.ptr131.i = getelementptr i8, ptr %156, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131.i, i32 %154) #17, !srcloc !589
  br label %if.end132.i

if.end132.i:                                      ; preds = %do.body120.i, %if.then109.i.if.end132.i_crit_edge
  %157 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %port.i, align 16
  call fastcc void @mtip_init_port(ptr noundef %158) #17
  %159 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %port.i, align 16
  %mmio.i.i.i = getelementptr inbounds %struct.mtip_port, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %162, i32 24
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !597
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  call void @arm_heavy_mb() #17
  %164 = or i32 %163, 268435456
  %165 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %166, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %164) #17, !srcloc !589
  %167 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr13.i.i.i = getelementptr i8, ptr %168, i32 24
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !598
  %170 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %171, i32 24
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !599
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  call void @arm_heavy_mb() #17
  %173 = or i32 %172, 16777216
  %174 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr4.i6.i.i = getelementptr i8, ptr %175, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i6.i.i, i32 %173) #17, !srcloc !589
  %176 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr13.i7.i.i = getelementptr i8, ptr %177, i32 24
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i7.i.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !600
  %179 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pdev.i, align 16
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 46
  %181 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %irq.i, align 4
  %dev137.i = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 44
  %call138.i = call ptr @dev_driver_string(ptr noundef %dev137.i) #17
  %call.i291.i = call i32 @request_threaded_irq(i32 noundef %182, ptr noundef nonnull @mtip_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %call138.i, ptr noundef %dd) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291.i)
  %tobool140.not.i = icmp eq i32 %call.i291.i, 0
  %183 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pdev.i, align 16
  br i1 %tobool140.not.i, label %if.end149.i, label %do.end144.i

do.end144.i:                                      ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev146.i = getelementptr inbounds %struct.pci_dev, ptr %184, i32 0, i32 44
  %irq148.i = getelementptr inbounds %struct.pci_dev, ptr %184, i32 0, i32 46
  %185 = ptrtoint ptr %irq148.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %irq148.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev146.i, ptr noundef nonnull @.str.86, i32 noundef %186) #20
  br label %out2.i

if.end149.i:                                      ; preds = %if.end132.i
  %irq151.i = getelementptr inbounds %struct.pci_dev, ptr %184, i32 0, i32 46
  %187 = ptrtoint ptr %irq151.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %irq151.i, align 4
  %isr_binding.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 21
  %189 = ptrtoint ptr %isr_binding.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %isr_binding.i, align 128
  %rem.i.i = and i32 %190, 31
  %add.i292.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i292.i
  %div3.i.i = lshr i32 %190, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i293.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %call.i.i294.i = call i32 @__irq_apply_affinity_hint(i32 noundef %188, ptr noundef %add.ptr.i293.i, i1 noundef zeroext true) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !601
  call void @arm_heavy_mb() #17
  %191 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dd, align 128
  %add.ptr160.i = getelementptr i8, ptr %192, i32 4
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !602
  %194 = or i32 %193, 33554432
  %195 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dd, align 128
  %add.ptr165.i = getelementptr i8, ptr %196, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165.i, i32 %194) #17, !srcloc !589
  %197 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %port.i, align 16
  %svc_wait.i = getelementptr inbounds %struct.mtip_port, ptr %198, i32 0, i32 21
  call void @__init_waitqueue_head(ptr noundef %svc_wait.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @mtip_hw_init.__key.88) #17
  %199 = ptrtoint ptr %dd_flag.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %dd_flag.i, align 4
  %201 = and i32 %200, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool172.not.i = icmp eq i32 %201, 0
  br i1 %tobool172.not.i, label %if.end3, label %if.then173.i

if.then173.i:                                     ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !603
  call void @arm_heavy_mb() #17
  %202 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dd, align 128
  %add.ptr181.i = getelementptr i8, ptr %203, i32 4
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !604
  %205 = and i32 %204, -33554433
  %206 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dd, align 128
  %add.ptr187.i = getelementptr i8, ptr %207, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187.i, i32 %205) #17, !srcloc !589
  %208 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pdev.i, align 16
  %irq189.i = getelementptr inbounds %struct.pci_dev, ptr %209, i32 0, i32 46
  %210 = ptrtoint ptr %irq189.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %irq189.i, align 4
  %call.i.i295.i = call i32 @__irq_apply_affinity_hint(i32 noundef %211, ptr noundef null, i1 noundef zeroext true) #17
  %212 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pdev.i, align 16
  %irq192.i = getelementptr inbounds %struct.pci_dev, ptr %213, i32 0, i32 46
  %214 = ptrtoint ptr %irq192.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %irq192.i, align 4
  %call193.i = call ptr @free_irq(i32 noundef %215, ptr noundef %dd) #17
  br label %out2.i

out2.i:                                           ; preds = %if.then173.i, %do.end144.i, %do.end115.i, %if.then91.i, %if.then75.i
  %216 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %port.i, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !605
  call void @arm_heavy_mb() #17
  %mmio.i.i = getelementptr inbounds %struct.mtip_port, ptr %217, i32 0, i32 2
  %218 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i296.i = getelementptr i8, ptr %219, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i296.i, i32 0) #17, !srcloc !589
  %220 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i297.i = getelementptr i8, ptr %221, i32 24
  %222 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i297.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !599
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  call void @arm_heavy_mb() #17
  %223 = and i32 %222, -16777217
  %224 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr9.i.i.i = getelementptr i8, ptr %225, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 %223) #17, !srcloc !589
  %226 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr13.i.i298.i = getelementptr i8, ptr %227, i32 24
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i298.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !600
  %229 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %230, i32 24
  %231 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !597
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  call void @arm_heavy_mb() #17
  %232 = and i32 %231, -268435457
  %233 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr9.i7.i.i = getelementptr i8, ptr %234, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i7.i.i, i32 %232) #17, !srcloc !589
  %235 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr13.i8.i.i = getelementptr i8, ptr %236, i32 24
  %237 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i8.i.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !598
  %238 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %port.i, align 16
  %block1.i300.i = getelementptr inbounds %struct.mtip_port, ptr %239, i32 0, i32 10
  %240 = ptrtoint ptr %block1.i300.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %block1.i300.i, align 4
  %tobool.not.i301.i = icmp eq ptr %241, null
  br i1 %tobool.not.i301.i, label %out2.i.if.end.i307.i_crit_edge, label %if.then.i305.i

out2.i.if.end.i307.i_crit_edge:                   ; preds = %out2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i307.i

if.then.i305.i:                                   ; preds = %out2.i
  call void @__sanitizer_cov_trace_pc() #19
  %242 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %pdev.i, align 16
  %dev.i303.i = getelementptr inbounds %struct.pci_dev, ptr %243, i32 0, i32 44
  %block1_dma.i304.i = getelementptr inbounds %struct.mtip_port, ptr %239, i32 0, i32 11
  %244 = ptrtoint ptr %block1_dma.i304.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %block1_dma.i304.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i303.i, i32 noundef 4096, ptr noundef nonnull %241, i32 noundef %245, i32 noundef 0) #17
  br label %if.end.i307.i

if.end.i307.i:                                    ; preds = %if.then.i305.i, %out2.i.if.end.i307.i_crit_edge
  %command_list.i306.i = getelementptr inbounds %struct.mtip_port, ptr %239, i32 0, i32 6
  %246 = ptrtoint ptr %command_list.i306.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %command_list.i306.i, align 4
  %tobool3.not.i.i = icmp eq ptr %247, null
  br i1 %tobool3.not.i.i, label %if.end.i307.i.out1.i_crit_edge, label %if.then4.i.i

if.end.i307.i.out1.i_crit_edge:                   ; preds = %if.end.i307.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out1.i

if.then4.i.i:                                     ; preds = %if.end.i307.i
  call void @__sanitizer_cov_trace_pc() #19
  %248 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %pdev.i, align 16
  %dev6.i.i = getelementptr inbounds %struct.pci_dev, ptr %249, i32 0, i32 44
  %command_list_dma.i308.i = getelementptr inbounds %struct.mtip_port, ptr %239, i32 0, i32 7
  %250 = ptrtoint ptr %command_list_dma.i308.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %command_list_dma.i308.i, align 4
  call void @dma_free_attrs(ptr noundef %dev6.i.i, i32 noundef 8192, ptr noundef nonnull %247, i32 noundef %251, i32 noundef 0) #17
  br label %out1.i

out1.i:                                           ; preds = %if.then4.i.i, %if.end.i307.i.out1.i_crit_edge, %if.then8.i.i, %for.body.preheader.i.out1.i_crit_edge, %mtip_detect_product.exit.i.out1.i_crit_edge
  %port195.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 7
  %252 = ptrtoint ptr %port195.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %port195.i, align 16
  call void @kfree(ptr noundef %253) #17
  br label %cleanup

if.end3:                                          ; preds = %if.end149.i
  %tags = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6
  %254 = call ptr @memset(ptr %tags, i32 0, i32 184)
  %ops = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6, i32 2
  %255 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr @mtip_mq_ops, ptr %ops, align 8
  %nr_hw_queues = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6, i32 3
  %256 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 1, ptr %nr_hw_queues, align 4
  %queue_depth = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6, i32 4
  %257 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 256, ptr %queue_depth, align 8
  %reserved_tags = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6, i32 5
  %258 = ptrtoint ptr %reserved_tags to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 1, ptr %reserved_tags, align 4
  %cmd_size = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6, i32 6
  %259 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 10108, ptr %cmd_size, align 8
  %numa_node = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 15
  %260 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %numa_node, align 16
  %numa_node10 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6, i32 7
  %262 = ptrtoint ptr %numa_node10 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %numa_node10, align 4
  %flags = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6, i32 9
  %263 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 1, ptr %flags, align 4
  %driver_data = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6, i32 10
  %264 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %dd, ptr %driver_data, align 8
  %timeout = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6, i32 8
  %265 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 15000, ptr %timeout, align 8
  %call15 = call i32 @blk_mq_alloc_tag_set(ptr noundef %tags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %266 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %pdev.i, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %267, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #20
  br label %block_queue_alloc_tag_error

if.end18:                                         ; preds = %if.end3
  %call20 = call ptr @__blk_mq_alloc_disk(ptr noundef %tags, ptr noundef %dd, ptr noundef nonnull @mtip_block_initialize.__key) #17
  %268 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %call20, ptr %disk, align 4
  %cmp.i190 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %269 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %pdev.i, align 16
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %270, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.61) #20
  br label %block_queue_alloc_init_error

if.end30:                                         ; preds = %if.end18
  %queue = getelementptr inbounds %struct.gendisk, ptr %call20, i32 0, i32 9
  %271 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %queue, align 4
  %queue32 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 5
  %273 = ptrtoint ptr %queue32 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %272, ptr %queue32, align 4
  %call.i191 = call i32 @ida_alloc_range(ptr noundef nonnull @rssd_index_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %cmp = icmp slt i32 %call.i191, 0
  br i1 %cmp, label %if.end30.ida_get_error_crit_edge, label %if.end35

if.end30.ida_get_error_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %ida_get_error

if.end35:                                         ; preds = %if.end30
  %274 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %disk, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %275, i32 0, i32 3
  %add.ptr.i192 = getelementptr %struct.gendisk, ptr %275, i32 0, i32 3, i32 4
  %add.ptr1.i = getelementptr %struct.gendisk, ptr %275, i32 0, i32 4
  %add.ptr2.i = getelementptr %struct.gendisk, ptr %275, i32 0, i32 3, i32 31
  %276 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 0, ptr %add.ptr2.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i195.do.body.i_crit_edge, %if.end35
  %index.addr.0.i = phi i32 [ %call.i191, %if.end35 ], [ %sub.i194, %if.end.i195.do.body.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr2.i, %if.end35 ], [ %incdec.ptr.i, %if.end.i195.do.body.i_crit_edge ]
  %cmp.i193 = icmp eq ptr %p.0.i, %add.ptr.i192
  br i1 %cmp.i193, label %do.body.i.disk_index_error_crit_edge, label %if.end.i195

do.body.i.disk_index_error_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %disk_index_error

if.end.i195:                                      ; preds = %do.body.i
  %index.addr.0.i.frozen = freeze i32 %index.addr.0.i
  %div.i = sdiv i32 %index.addr.0.i.frozen, 26
  %277 = mul i32 %div.i, 26
  %rem.i.decomposed = sub i32 %index.addr.0.i.frozen, %277
  %278 = trunc i32 %rem.i.decomposed to i8
  %conv.i = add nsw i8 %278, 97
  %incdec.ptr.i = getelementptr i8, ptr %p.0.i, i32 -1
  %279 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv.i, ptr %incdec.ptr.i, align 1
  %sub.i194 = add nsw i32 %div.i, -1
  %cmp3.i = icmp sgt i32 %index.addr.0.i, 25
  br i1 %cmp3.i, label %if.end.i195.do.body.i_crit_edge, label %if.end40

if.end.i195.do.body.i_crit_edge:                  ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

if.end40:                                         ; preds = %if.end.i195
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %280 = call ptr @memmove(ptr %add.ptr.i192, ptr %incdec.ptr.i, i32 %sub.ptr.sub.i)
  %281 = ptrtoint ptr %disk_name to i32
  call void @__asan_storeN_noabort(i32 %281, i32 4)
  store i32 1920168804, ptr %disk_name, align 1
  %major = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 1
  %282 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %major, align 4
  %284 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %disk, align 4
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %283, ptr %285, align 8
  %mul = shl i32 %call.i191, 4
  %287 = load ptr, ptr %disk, align 4
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %mul, ptr %first_minor, align 4
  %289 = load ptr, ptr %disk, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %289, i32 0, i32 2
  %290 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 16, ptr %minors, align 8
  %291 = load ptr, ptr %disk, align 4
  %fops = getelementptr inbounds %struct.gendisk, ptr %291, i32 0, i32 8
  %292 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr @mtip_block_ops, ptr %fops, align 8
  %293 = load ptr, ptr %disk, align 4
  %private_data = getelementptr inbounds %struct.gendisk, ptr %293, i32 0, i32 10
  %294 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %dd, ptr %private_data, align 8
  %index47 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 10
  %295 = ptrtoint ptr %index47 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %call.i191, ptr %index47, align 4
  %296 = load ptr, ptr @dfs_parent, align 4
  %tobool.not.i197 = icmp eq ptr %296, null
  br i1 %tobool.not.i197, label %if.end40.skip_create_disk_crit_edge, label %if.end.i200

if.end40.skip_create_disk_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_create_disk

if.end.i200:                                      ; preds = %if.end40
  %297 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %disk, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %298, i32 0, i32 3
  %call.i198 = call ptr @debugfs_create_dir(ptr noundef %disk_name.i, ptr noundef nonnull %296) #17
  %dfs_node.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 13
  %299 = ptrtoint ptr %dfs_node.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call.i198, ptr %dfs_node.i, align 8
  %tobool.not.i.i199 = icmp eq ptr %call.i198, null
  %cmp.i.i = icmp ugt ptr %call.i198, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i199, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end.i203, label %if.end8.i

do.end.i203:                                      ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #19
  %300 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %pdev.i, align 16
  %dev.i202 = getelementptr inbounds %struct.pci_dev, ptr %301, i32 0, i32 44
  %302 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %disk, align 4
  %disk_name5.i = getelementptr inbounds %struct.gendisk, ptr %303, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i202, ptr noundef nonnull @.str.144, ptr noundef %disk_name5.i) #20
  %304 = ptrtoint ptr %dfs_node.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr null, ptr %dfs_node.i, align 8
  br label %skip_create_disk

if.end8.i:                                        ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #19
  %call10.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.146, i16 noundef zeroext 292, ptr noundef nonnull %call.i198, ptr noundef %dd, ptr noundef nonnull @mtip_flags_fops) #17
  %305 = ptrtoint ptr %dfs_node.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %dfs_node.i, align 8
  %call12.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.147, i16 noundef zeroext 292, ptr noundef %306, ptr noundef %dd, ptr noundef nonnull @mtip_regs_fops) #17
  br label %skip_create_disk

skip_create_disk:                                 ; preds = %if.end8.i, %do.end.i203, %if.end40.skip_create_disk_crit_edge, %entry.skip_create_disk_crit_edge
  %index.0 = phi i32 [ 0, %entry.skip_create_disk_crit_edge ], [ %call.i191, %if.end40.skip_create_disk_crit_edge ], [ %call.i191, %do.end.i203 ], [ %call.i191, %if.end8.i ]
  %port.i204 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 7
  %307 = ptrtoint ptr %port.i204 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %port.i204, align 16
  %call.i205 = call fastcc i32 @mtip_get_identify(ptr noundef %308) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp.i206 = icmp slt i32 %call.i205, 0
  br i1 %cmp.i206, label %skip_create_disk.do.end54_crit_edge, label %if.end.i208

skip_create_disk.do.end54_crit_edge:              ; preds = %skip_create_disk
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end54

if.end.i208:                                      ; preds = %skip_create_disk
  %309 = ptrtoint ptr %port.i204 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %port.i204, align 16
  %identify.i = getelementptr inbounds %struct.mtip_port, ptr %310, i32 0, i32 12
  %311 = ptrtoint ptr %identify.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %identify.i, align 4
  %add.ptr.i207 = getelementptr i16, ptr %312, i32 142
  %313 = ptrtoint ptr %add.ptr.i207 to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %add.ptr.i207, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4783, i16 %314)
  %cmp2.i = icmp eq i16 %314, -4783
  br i1 %cmp2.i, label %if.end57.thread, label %if.end6.i

if.end57.thread:                                  ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i = getelementptr inbounds %struct.mtip_port, ptr %310, i32 0, i32 22
  call void @_set_bit(i32 noundef 6, ptr noundef %flags.i) #17
  br label %start_service_thread

if.end6.i:                                        ; preds = %if.end.i208
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %revid.i.i) #17
  %315 = ptrtoint ptr %revid.i.i to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 -1, ptr %revid.i.i, align 2, !annotation !584
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %cbuf.i.i) #17
  %316 = call ptr @memset(ptr %cbuf.i.i, i32 255, i32 42)
  %identify_valid.i.i = getelementptr inbounds %struct.mtip_port, ptr %310, i32 0, i32 1
  %317 = ptrtoint ptr %identify_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %identify_valid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool.not.i.i209 = icmp eq i32 %318, 0
  br i1 %tobool.not.i.i209, label %if.end6.i.mtip_dump_identify.exit.i_crit_edge, label %if.end.i.i216

if.end6.i.mtip_dump_identify.exit.i_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_dump_identify.exit.i

if.end.i.i216:                                    ; preds = %if.end6.i
  %add.ptr.i.i210 = getelementptr i16, ptr %312, i32 10
  %call.i.i211 = call i32 @strlcpy(ptr noundef nonnull %cbuf.i.i, ptr noundef %add.ptr.i.i210, i32 noundef 21) #17
  %319 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %310, align 4
  %pdev.i.i = getelementptr inbounds %struct.driver_data, ptr %320, i32 0, i32 4
  %321 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %pdev.i.i, align 16
  %dev.i.i212 = getelementptr inbounds %struct.pci_dev, ptr %322, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i212, ptr noundef nonnull @.str.176, ptr noundef nonnull %cbuf.i.i) #20
  %323 = ptrtoint ptr %identify.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %identify.i, align 4
  %add.ptr4.i.i213 = getelementptr i16, ptr %324, i32 23
  %call5.i.i = call i32 @strlcpy(ptr noundef nonnull %cbuf.i.i, ptr noundef %add.ptr4.i.i213, i32 noundef 9) #17
  %325 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %310, align 4
  %pdev10.i.i = getelementptr inbounds %struct.driver_data, ptr %326, i32 0, i32 4
  %327 = ptrtoint ptr %pdev10.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %pdev10.i.i, align 16
  %dev11.i.i = getelementptr inbounds %struct.pci_dev, ptr %328, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.179, ptr noundef nonnull %cbuf.i.i) #20
  %329 = ptrtoint ptr %identify.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %identify.i, align 4
  %add.ptr15.i.i = getelementptr i16, ptr %330, i32 27
  %call16.i.i = call i32 @strlcpy(ptr noundef nonnull %cbuf.i.i, ptr noundef %add.ptr15.i.i, i32 noundef 41) #17
  %331 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %310, align 4
  %pdev21.i.i = getelementptr inbounds %struct.driver_data, ptr %332, i32 0, i32 4
  %333 = ptrtoint ptr %pdev21.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %pdev21.i.i, align 16
  %dev22.i.i = getelementptr inbounds %struct.pci_dev, ptr %334, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i.i, ptr noundef nonnull @.str.182, ptr noundef nonnull %cbuf.i.i) #20
  %335 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %310, align 4
  %pdev28.i.i = getelementptr inbounds %struct.driver_data, ptr %336, i32 0, i32 4
  %337 = ptrtoint ptr %pdev28.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %pdev28.i.i, align 16
  %dev29.i.i = getelementptr inbounds %struct.pci_dev, ptr %338, i32 0, i32 44
  %339 = ptrtoint ptr %identify.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %identify.i, align 4
  %arrayidx.i.i214 = getelementptr i16, ptr %340, i32 128
  %341 = ptrtoint ptr %arrayidx.i.i214 to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %arrayidx.i.i214, align 2
  %conv.i.i = zext i16 %342 to i32
  %and.i.i215 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i215)
  %tobool34.not.i.i = icmp eq i32 %and.i.i215, 0
  %cond.i.i = select i1 %tobool34.not.i.i, ptr @.str.188, ptr @.str.187
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29.i.i, ptr noundef nonnull @.str.185, i32 noundef %conv.i.i, ptr noundef nonnull %cond.i.i) #20
  %343 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %310, align 4
  %port1.i.i.i = getelementptr inbounds %struct.driver_data, ptr %344, i32 0, i32 7
  %345 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %port1.i.i.i, align 16
  %identify_valid.i.i.i = getelementptr inbounds %struct.mtip_port, ptr %346, i32 0, i32 1
  %347 = ptrtoint ptr %identify_valid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %identify_valid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool.i.not.i.i = icmp eq i32 %348, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i216.if.end44.i.i_crit_edge, label %do.end40.i.i

if.end.i.i216.if.end44.i.i_crit_edge:             ; preds = %if.end.i.i216
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44.i.i

do.end40.i.i:                                     ; preds = %if.end.i.i216
  call void @__sanitizer_cov_trace_pc() #19
  %identify.i.i.i = getelementptr inbounds %struct.mtip_port, ptr %346, i32 0, i32 12
  %349 = ptrtoint ptr %identify.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %identify.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr i16, ptr %350, i32 101
  %351 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %arrayidx3.i.i.i, align 2
  %conv4.i.i.i = zext i16 %352 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv4.i.i.i, 16
  %arrayidx.i.i.i = getelementptr i16, ptr %350, i32 100
  %353 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %354 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv.i.i.i
  %arrayidx6.i.i.i = getelementptr i16, ptr %350, i32 102
  %355 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %arrayidx6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %356 to i64
  %shl11.i.i.i = shl nuw nsw i64 %conv7.i.i.i, 32
  %or12.i.i.i = or i64 %or.i.i.i, %shl11.i.i.i
  %arrayidx9.i.i.i = getelementptr i16, ptr %350, i32 103
  %357 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %arrayidx9.i.i.i, align 2
  %conv10.i.i.i = zext i16 %358 to i64
  %shl13.i.i.i = shl nuw i64 %conv10.i.i.i, 48
  %or14.i.i.i = or i64 %or12.i.i.i, %shl13.i.i.i
  %pdev42.i.i = getelementptr inbounds %struct.driver_data, ptr %344, i32 0, i32 4
  %359 = ptrtoint ptr %pdev42.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %pdev42.i.i, align 16
  %dev43.i.i = getelementptr inbounds %struct.pci_dev, ptr %360, i32 0, i32 44
  %361 = lshr i64 %or14.i.i.i, 11
  %shr.i.i = and i64 %361, 17592186044415
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43.i.i, ptr noundef nonnull @.str.190, i64 noundef %or14.i.i.i, i64 noundef %shr.i.i) #20
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %do.end40.i.i, %if.end.i.i216.if.end44.i.i_crit_edge
  %362 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %310, align 4
  %pdev46.i.i = getelementptr inbounds %struct.driver_data, ptr %363, i32 0, i32 4
  %364 = ptrtoint ptr %pdev46.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %pdev46.i.i, align 16
  %call47.i.i = call i32 @pci_read_config_word(ptr noundef %365, i32 noundef 8, ptr noundef nonnull %revid.i.i) #17
  %366 = ptrtoint ptr %revid.i.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %revid.i.i, align 2
  %trunc.i.i = trunc i16 %367 to i8
  %368 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %368, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i.i, label %sw.default.i.i [
    i8 1, label %sw.bb.i.i
    i8 3, label %sw.bb52.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call51.i.i = call i32 @strlcpy(ptr noundef nonnull %cbuf.i.i, ptr noundef nonnull @.str.192, i32 noundef 3) #17
  br label %do.end59.i.i

sw.bb52.i.i:                                      ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call54.i.i = call i32 @strlcpy(ptr noundef nonnull %cbuf.i.i, ptr noundef nonnull @.str.193, i32 noundef 3) #17
  br label %do.end59.i.i

sw.default.i.i:                                   ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call56.i.i = call i32 @strlcpy(ptr noundef nonnull %cbuf.i.i, ptr noundef nonnull @.str.194, i32 noundef 2) #17
  br label %do.end59.i.i

do.end59.i.i:                                     ; preds = %sw.default.i.i, %sw.bb52.i.i, %sw.bb.i.i
  %369 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %310, align 4
  %pdev61.i.i = getelementptr inbounds %struct.driver_data, ptr %370, i32 0, i32 4
  %371 = ptrtoint ptr %pdev61.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %pdev61.i.i, align 16
  %dev62.i.i = getelementptr inbounds %struct.pci_dev, ptr %372, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.i.i, ptr noundef nonnull @.str.196, ptr noundef nonnull %cbuf.i.i) #20
  br label %mtip_dump_identify.exit.i

mtip_dump_identify.exit.i:                        ; preds = %do.end59.i.i, %if.end6.i.mtip_dump_identify.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %cbuf.i.i) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %revid.i.i) #17
  %373 = ptrtoint ptr %port.i204 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %port.i204, align 16
  %log_buf.i = getelementptr inbounds %struct.mtip_port, ptr %374, i32 0, i32 16
  %375 = ptrtoint ptr %log_buf.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %log_buf.i, align 4
  %log_buf_dma.i = getelementptr inbounds %struct.mtip_port, ptr %374, i32 0, i32 17
  %377 = ptrtoint ptr %log_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %log_buf_dma.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fis.i.i) #17
  %379 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 1
  %380 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 2
  %381 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 4
  %382 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 7
  %383 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 12
  %384 = call ptr @memset(ptr %fis.i.i, i32 0, i32 20)
  %385 = ptrtoint ptr %fis.i.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 39, ptr %fis.i.i, align 4
  %386 = ptrtoint ptr %379 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 -128, ptr %379, align 1
  %387 = ptrtoint ptr %380 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 47, ptr %380, align 2
  %388 = ptrtoint ptr %383 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 1, ptr %383, align 4
  %389 = ptrtoint ptr %381 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 16, ptr %381, align 4
  %390 = ptrtoint ptr %382 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 -96, ptr %382, align 1
  %391 = call ptr @memset(ptr %376, i32 0, i32 512)
  %call.i88.i = call fastcc i32 @mtip_exec_internal_command(ptr noundef %374, ptr noundef nonnull %fis.i.i, i32 noundef %378, i32 noundef 512, i32 noundef 5000) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %tobool.not.i217 = icmp eq i32 %call.i88.i, 0
  br i1 %tobool.not.i217, label %if.else.i, label %do.end.i220

do.end.i220:                                      ; preds = %mtip_dump_identify.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev.i218 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %392 = ptrtoint ptr %pdev.i218 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %pdev.i218, align 16
  %dev.i219 = getelementptr inbounds %struct.pci_dev, ptr %393, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i219, ptr noundef nonnull @.str.159) #20
  br label %if.end48.i

if.else.i:                                        ; preds = %mtip_dump_identify.exit.i
  %394 = ptrtoint ptr %port.i204 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %port.i204, align 16
  %log_buf14.i = getelementptr inbounds %struct.mtip_port, ptr %395, i32 0, i32 16
  %396 = ptrtoint ptr %log_buf14.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %log_buf14.i, align 4
  %arrayidx.i221 = getelementptr i8, ptr %397, i32 259
  %398 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx.i221, align 1
  %400 = and i8 %399, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %400)
  %tobool16.not.i = icmp eq i8 %400, 0
  br i1 %tobool16.not.i, label %if.else.i.if.end23.i_crit_edge, label %do.end20.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

do.end20.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev21.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %401 = ptrtoint ptr %pdev21.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %pdev21.i, align 16
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %402, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i, ptr noundef nonnull @.str.162) #20
  %dd_flag.i222 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 11
  call void @_set_bit(i32 noundef 3, ptr noundef %dd_flag.i222) #17
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end20.i, %if.else.i.if.end23.i_crit_edge
  %arrayidx24.i = getelementptr i8, ptr %397, i32 288
  %403 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %404)
  %cmp26.i = icmp eq i8 %404, -9
  br i1 %cmp26.i, label %do.end31.i, label %if.end23.i.if.end35.i_crit_edge

if.end23.i.if.end35.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35.i

do.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev32.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %405 = ptrtoint ptr %pdev32.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %pdev32.i, align 16
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %406, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33.i, ptr noundef nonnull @.str.165) #20
  %dd_flag34.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 11
  call void @_set_bit(i32 noundef 2, ptr noundef %dd_flag34.i) #17
  %407 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %.pr.i = load i8, ptr %arrayidx24.i, align 1
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end31.i, %if.end23.i.if.end35.i_crit_edge
  %408 = phi i8 [ %.pr.i, %do.end31.i ], [ %404, %if.end23.i.if.end35.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %408)
  %cmp38.i = icmp eq i8 %408, -65
  br i1 %cmp38.i, label %do.end43.i, label %if.end35.i.if.end48.i_crit_edge

if.end35.i.if.end48.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48.i

do.end43.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev44.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %409 = ptrtoint ptr %pdev44.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %pdev44.i, align 16
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %410, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45.i, ptr noundef nonnull @.str.168) #20
  %dd_flag46.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 11
  call void @_set_bit(i32 noundef 8, ptr noundef %dd_flag46.i) #17
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end43.i, %if.end35.i.if.end48.i_crit_edge, %do.end.i220
  %411 = ptrtoint ptr %port.i204 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %port.i204, align 16
  %identify_valid.i89.i = getelementptr inbounds %struct.mtip_port, ptr %412, i32 0, i32 1
  %413 = ptrtoint ptr %identify_valid.i89.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %identify_valid.i89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %414)
  %tobool1.not.i.i = icmp eq i32 %414, 0
  br i1 %tobool1.not.i.i, label %if.end48.i.do.end55.i_crit_edge, label %if.end3.i.i

if.end48.i.do.end55.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end55.i

if.end3.i.i:                                      ; preds = %if.end48.i
  %identify.i93.i = getelementptr inbounds %struct.mtip_port, ptr %412, i32 0, i32 12
  %415 = ptrtoint ptr %identify.i93.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %identify.i93.i, align 4
  %arrayidx.i94.i = getelementptr i16, ptr %416, i32 82
  %417 = ptrtoint ptr %arrayidx.i94.i to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %arrayidx.i94.i, align 2
  %419 = and i16 %418, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %419)
  %tobool4.not.i.i223 = icmp eq i16 %419, 0
  br i1 %tobool4.not.i.i223, label %if.end3.i.i.do.end55.i_crit_edge, label %if.end12.i.i

if.end3.i.i.do.end55.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end55.i

if.end12.i.i:                                     ; preds = %if.end3.i.i
  %arrayidx14.i.i = getelementptr i16, ptr %416, i32 85
  %420 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %arrayidx14.i.i, align 2
  %422 = and i16 %421, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %422)
  %tobool17.not.i.i = icmp eq i16 %422, 0
  br i1 %tobool17.not.i.i, label %if.end12.i.i.do.end55.i_crit_edge, label %if.end25.i.i

if.end12.i.i.do.end55.i_crit_edge:                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end55.i

if.end25.i.i:                                     ; preds = %if.end12.i.i
  %smart_buf.i.i224 = getelementptr inbounds %struct.mtip_port, ptr %412, i32 0, i32 18
  %423 = ptrtoint ptr %smart_buf.i.i224 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %smart_buf.i.i224, align 4
  %425 = call ptr @memset(ptr %424, i32 0, i32 512)
  %smart_buf_dma.i.i225 = getelementptr inbounds %struct.mtip_port, ptr %412, i32 0, i32 19
  %426 = ptrtoint ptr %smart_buf_dma.i.i225 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %smart_buf_dma.i.i225, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fis.i.i.i) #17
  %428 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i.i, i32 0, i32 1
  %429 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i.i, i32 0, i32 2
  %430 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i.i, i32 0, i32 3
  %431 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i.i, i32 0, i32 5
  %432 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i.i, i32 0, i32 6
  %433 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i.i, i32 0, i32 7
  %434 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i.i, i32 0, i32 12
  %435 = getelementptr inbounds i8, ptr %fis.i.i.i, i32 4
  %436 = call ptr @memset(ptr %435, i32 0, i32 16)
  %437 = ptrtoint ptr %fis.i.i.i to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 39, ptr %fis.i.i.i, align 4
  %438 = ptrtoint ptr %428 to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 -128, ptr %428, align 1
  %439 = ptrtoint ptr %429 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 -80, ptr %429, align 2
  %440 = ptrtoint ptr %430 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 -48, ptr %430, align 1
  %441 = ptrtoint ptr %434 to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 1, ptr %434, align 4
  %442 = ptrtoint ptr %431 to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 79, ptr %431, align 1
  %443 = ptrtoint ptr %432 to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 -62, ptr %432, align 2
  %444 = ptrtoint ptr %433 to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 -96, ptr %433, align 1
  %call.i.i.i226 = call fastcc i32 @mtip_exec_internal_command(ptr noundef %412, ptr noundef nonnull %fis.i.i.i, i32 noundef %427, i32 noundef 512, i32 noundef 15000) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i226)
  %tobool27.not.i.i = icmp eq i32 %call.i.i.i226, 0
  br i1 %tobool27.not.i.i, label %if.end35.i.i, label %if.end25.i.i.do.end55.i_crit_edge

if.end25.i.i.do.end55.i_crit_edge:                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end55.i

if.end35.i.i:                                     ; preds = %if.end25.i.i
  %445 = ptrtoint ptr %smart_buf.i.i224 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %smart_buf.i.i224, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %446, i32 2
  %447 = ptrtoint ptr %add.ptr.i97.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %add.ptr.i97.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %448)
  %cmp39.i.i = icmp eq i8 %448, -14
  br i1 %cmp39.i.i, label %if.end35.i.i.do.end61.i_crit_edge, label %for.inc.i.i

if.end35.i.i.do.end61.i_crit_edge:                ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.i.i:                                      ; preds = %if.end35.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %446, i32 14
  %449 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %450)
  %cmp39.1.i.i = icmp eq i8 %450, -14
  br i1 %cmp39.1.i.i, label %for.inc.i.i.do.end61.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.do.end61.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %incdec.ptr.1.i.i = getelementptr i8, ptr %446, i32 26
  %451 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %incdec.ptr.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %452)
  %cmp39.2.i.i = icmp eq i8 %452, -14
  br i1 %cmp39.2.i.i, label %for.inc.1.i.i.do.end61.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.do.end61.i_crit_edge:               ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %incdec.ptr.2.i.i = getelementptr i8, ptr %446, i32 38
  %453 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %incdec.ptr.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %454)
  %cmp39.3.i.i = icmp eq i8 %454, -14
  br i1 %cmp39.3.i.i, label %for.inc.2.i.i.do.end61.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.do.end61.i_crit_edge:               ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %incdec.ptr.3.i.i = getelementptr i8, ptr %446, i32 50
  %455 = ptrtoint ptr %incdec.ptr.3.i.i to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %incdec.ptr.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %456)
  %cmp39.4.i.i = icmp eq i8 %456, -14
  br i1 %cmp39.4.i.i, label %for.inc.3.i.i.do.end61.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.do.end61.i_crit_edge:               ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %incdec.ptr.4.i.i = getelementptr i8, ptr %446, i32 62
  %457 = ptrtoint ptr %incdec.ptr.4.i.i to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %incdec.ptr.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %458)
  %cmp39.5.i.i = icmp eq i8 %458, -14
  br i1 %cmp39.5.i.i, label %for.inc.4.i.i.do.end61.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.do.end61.i_crit_edge:               ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %incdec.ptr.5.i.i = getelementptr i8, ptr %446, i32 74
  %459 = ptrtoint ptr %incdec.ptr.5.i.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %incdec.ptr.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %460)
  %cmp39.6.i.i = icmp eq i8 %460, -14
  br i1 %cmp39.6.i.i, label %for.inc.5.i.i.do.end61.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.do.end61.i_crit_edge:               ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %incdec.ptr.6.i.i = getelementptr i8, ptr %446, i32 86
  %461 = ptrtoint ptr %incdec.ptr.6.i.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %incdec.ptr.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %462)
  %cmp39.7.i.i = icmp eq i8 %462, -14
  br i1 %cmp39.7.i.i, label %for.inc.6.i.i.do.end61.i_crit_edge, label %for.inc.7.i.i

for.inc.6.i.i.do.end61.i_crit_edge:               ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %incdec.ptr.7.i.i = getelementptr i8, ptr %446, i32 98
  %463 = ptrtoint ptr %incdec.ptr.7.i.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %incdec.ptr.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %464)
  %cmp39.8.i.i = icmp eq i8 %464, -14
  br i1 %cmp39.8.i.i, label %for.inc.7.i.i.do.end61.i_crit_edge, label %for.inc.8.i.i

for.inc.7.i.i.do.end61.i_crit_edge:               ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.8.i.i:                                    ; preds = %for.inc.7.i.i
  %incdec.ptr.8.i.i = getelementptr i8, ptr %446, i32 110
  %465 = ptrtoint ptr %incdec.ptr.8.i.i to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %incdec.ptr.8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %466)
  %cmp39.9.i.i = icmp eq i8 %466, -14
  br i1 %cmp39.9.i.i, label %for.inc.8.i.i.do.end61.i_crit_edge, label %for.inc.9.i.i

for.inc.8.i.i.do.end61.i_crit_edge:               ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.9.i.i:                                    ; preds = %for.inc.8.i.i
  %incdec.ptr.9.i.i = getelementptr i8, ptr %446, i32 122
  %467 = ptrtoint ptr %incdec.ptr.9.i.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %incdec.ptr.9.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %468)
  %cmp39.10.i.i = icmp eq i8 %468, -14
  br i1 %cmp39.10.i.i, label %for.inc.9.i.i.do.end61.i_crit_edge, label %for.inc.10.i.i

for.inc.9.i.i.do.end61.i_crit_edge:               ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.10.i.i:                                   ; preds = %for.inc.9.i.i
  %incdec.ptr.10.i.i = getelementptr i8, ptr %446, i32 134
  %469 = ptrtoint ptr %incdec.ptr.10.i.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %incdec.ptr.10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %470)
  %cmp39.11.i.i = icmp eq i8 %470, -14
  br i1 %cmp39.11.i.i, label %for.inc.10.i.i.do.end61.i_crit_edge, label %for.inc.11.i.i

for.inc.10.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.11.i.i:                                   ; preds = %for.inc.10.i.i
  %incdec.ptr.11.i.i = getelementptr i8, ptr %446, i32 146
  %471 = ptrtoint ptr %incdec.ptr.11.i.i to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %incdec.ptr.11.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %472)
  %cmp39.12.i.i = icmp eq i8 %472, -14
  br i1 %cmp39.12.i.i, label %for.inc.11.i.i.do.end61.i_crit_edge, label %for.inc.12.i.i

for.inc.11.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.12.i.i:                                   ; preds = %for.inc.11.i.i
  %incdec.ptr.12.i.i = getelementptr i8, ptr %446, i32 158
  %473 = ptrtoint ptr %incdec.ptr.12.i.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %incdec.ptr.12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %474)
  %cmp39.13.i.i = icmp eq i8 %474, -14
  br i1 %cmp39.13.i.i, label %for.inc.12.i.i.do.end61.i_crit_edge, label %for.inc.13.i.i

for.inc.12.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.13.i.i:                                   ; preds = %for.inc.12.i.i
  %incdec.ptr.13.i.i = getelementptr i8, ptr %446, i32 170
  %475 = ptrtoint ptr %incdec.ptr.13.i.i to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %incdec.ptr.13.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %476)
  %cmp39.14.i.i = icmp eq i8 %476, -14
  br i1 %cmp39.14.i.i, label %for.inc.13.i.i.do.end61.i_crit_edge, label %for.inc.14.i.i

for.inc.13.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.14.i.i:                                   ; preds = %for.inc.13.i.i
  %incdec.ptr.14.i.i = getelementptr i8, ptr %446, i32 182
  %477 = ptrtoint ptr %incdec.ptr.14.i.i to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %incdec.ptr.14.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %478)
  %cmp39.15.i.i = icmp eq i8 %478, -14
  br i1 %cmp39.15.i.i, label %for.inc.14.i.i.do.end61.i_crit_edge, label %for.inc.15.i.i

for.inc.14.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.15.i.i:                                   ; preds = %for.inc.14.i.i
  %incdec.ptr.15.i.i = getelementptr i8, ptr %446, i32 194
  %479 = ptrtoint ptr %incdec.ptr.15.i.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %incdec.ptr.15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %480)
  %cmp39.16.i.i = icmp eq i8 %480, -14
  br i1 %cmp39.16.i.i, label %for.inc.15.i.i.do.end61.i_crit_edge, label %for.inc.16.i.i

for.inc.15.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.16.i.i:                                   ; preds = %for.inc.15.i.i
  %incdec.ptr.16.i.i = getelementptr i8, ptr %446, i32 206
  %481 = ptrtoint ptr %incdec.ptr.16.i.i to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %incdec.ptr.16.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %482)
  %cmp39.17.i.i = icmp eq i8 %482, -14
  br i1 %cmp39.17.i.i, label %for.inc.16.i.i.do.end61.i_crit_edge, label %for.inc.17.i.i

for.inc.16.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.17.i.i:                                   ; preds = %for.inc.16.i.i
  %incdec.ptr.17.i.i = getelementptr i8, ptr %446, i32 218
  %483 = ptrtoint ptr %incdec.ptr.17.i.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %incdec.ptr.17.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %484)
  %cmp39.18.i.i = icmp eq i8 %484, -14
  br i1 %cmp39.18.i.i, label %for.inc.17.i.i.do.end61.i_crit_edge, label %for.inc.18.i.i

for.inc.17.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.17.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.18.i.i:                                   ; preds = %for.inc.17.i.i
  %incdec.ptr.18.i.i = getelementptr i8, ptr %446, i32 230
  %485 = ptrtoint ptr %incdec.ptr.18.i.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %incdec.ptr.18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %486)
  %cmp39.19.i.i = icmp eq i8 %486, -14
  br i1 %cmp39.19.i.i, label %for.inc.18.i.i.do.end61.i_crit_edge, label %for.inc.19.i.i

for.inc.18.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.18.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.19.i.i:                                   ; preds = %for.inc.18.i.i
  %incdec.ptr.19.i.i = getelementptr i8, ptr %446, i32 242
  %487 = ptrtoint ptr %incdec.ptr.19.i.i to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %incdec.ptr.19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %488)
  %cmp39.20.i.i = icmp eq i8 %488, -14
  br i1 %cmp39.20.i.i, label %for.inc.19.i.i.do.end61.i_crit_edge, label %for.inc.20.i.i

for.inc.19.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.19.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.20.i.i:                                   ; preds = %for.inc.19.i.i
  %incdec.ptr.20.i.i = getelementptr i8, ptr %446, i32 254
  %489 = ptrtoint ptr %incdec.ptr.20.i.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %incdec.ptr.20.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %490)
  %cmp39.21.i.i = icmp eq i8 %490, -14
  br i1 %cmp39.21.i.i, label %for.inc.20.i.i.do.end61.i_crit_edge, label %for.inc.21.i.i

for.inc.20.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.20.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.21.i.i:                                   ; preds = %for.inc.20.i.i
  %incdec.ptr.21.i.i = getelementptr i8, ptr %446, i32 266
  %491 = ptrtoint ptr %incdec.ptr.21.i.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %incdec.ptr.21.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %492)
  %cmp39.22.i.i = icmp eq i8 %492, -14
  br i1 %cmp39.22.i.i, label %for.inc.21.i.i.do.end61.i_crit_edge, label %for.inc.22.i.i

for.inc.21.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.22.i.i:                                   ; preds = %for.inc.21.i.i
  %incdec.ptr.22.i.i = getelementptr i8, ptr %446, i32 278
  %493 = ptrtoint ptr %incdec.ptr.22.i.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %incdec.ptr.22.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %494)
  %cmp39.23.i.i = icmp eq i8 %494, -14
  br i1 %cmp39.23.i.i, label %for.inc.22.i.i.do.end61.i_crit_edge, label %for.inc.23.i.i

for.inc.22.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.23.i.i:                                   ; preds = %for.inc.22.i.i
  %incdec.ptr.23.i.i = getelementptr i8, ptr %446, i32 290
  %495 = ptrtoint ptr %incdec.ptr.23.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %incdec.ptr.23.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %496)
  %cmp39.24.i.i = icmp eq i8 %496, -14
  br i1 %cmp39.24.i.i, label %for.inc.23.i.i.do.end61.i_crit_edge, label %for.inc.24.i.i

for.inc.23.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.23.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.24.i.i:                                   ; preds = %for.inc.23.i.i
  %incdec.ptr.24.i.i = getelementptr i8, ptr %446, i32 302
  %497 = ptrtoint ptr %incdec.ptr.24.i.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %incdec.ptr.24.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %498)
  %cmp39.25.i.i = icmp eq i8 %498, -14
  br i1 %cmp39.25.i.i, label %for.inc.24.i.i.do.end61.i_crit_edge, label %for.inc.25.i.i

for.inc.24.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.25.i.i:                                   ; preds = %for.inc.24.i.i
  %incdec.ptr.25.i.i = getelementptr i8, ptr %446, i32 314
  %499 = ptrtoint ptr %incdec.ptr.25.i.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %incdec.ptr.25.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %500)
  %cmp39.26.i.i = icmp eq i8 %500, -14
  br i1 %cmp39.26.i.i, label %for.inc.25.i.i.do.end61.i_crit_edge, label %for.inc.26.i.i

for.inc.25.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.25.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.26.i.i:                                   ; preds = %for.inc.25.i.i
  %incdec.ptr.26.i.i = getelementptr i8, ptr %446, i32 326
  %501 = ptrtoint ptr %incdec.ptr.26.i.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %incdec.ptr.26.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %502)
  %cmp39.27.i.i = icmp eq i8 %502, -14
  br i1 %cmp39.27.i.i, label %for.inc.26.i.i.do.end61.i_crit_edge, label %for.inc.27.i.i

for.inc.26.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.26.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

for.inc.27.i.i:                                   ; preds = %for.inc.26.i.i
  %incdec.ptr.27.i.i = getelementptr i8, ptr %446, i32 338
  %503 = ptrtoint ptr %incdec.ptr.27.i.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %incdec.ptr.27.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %504)
  %cmp39.28.i.i = icmp eq i8 %504, -14
  br i1 %cmp39.28.i.i, label %for.inc.27.i.i.do.end61.i_crit_edge, label %for.inc.27.i.i.do.end55.i_crit_edge

for.inc.27.i.i.do.end55.i_crit_edge:              ; preds = %for.inc.27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end55.i

for.inc.27.i.i.do.end61.i_crit_edge:              ; preds = %for.inc.27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end61.i

do.end55.i:                                       ; preds = %for.inc.27.i.i.do.end55.i_crit_edge, %if.end25.i.i.do.end55.i_crit_edge, %if.end12.i.i.do.end55.i_crit_edge, %if.end3.i.i.do.end55.i_crit_edge, %if.end48.i.do.end55.i_crit_edge
  %.str.207.sink.i = phi ptr [ @.str.198, %if.end48.i.do.end55.i_crit_edge ], [ @.str.201, %if.end3.i.i.do.end55.i_crit_edge ], [ @.str.204, %if.end12.i.i.do.end55.i_crit_edge ], [ @.str.207, %if.end25.i.i.do.end55.i_crit_edge ], [ @.str.210, %for.inc.27.i.i.do.end55.i_crit_edge ]
  %505 = ptrtoint ptr %412 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %412, align 4
  %pdev33.i.i = getelementptr inbounds %struct.driver_data, ptr %506, i32 0, i32 4
  %507 = ptrtoint ptr %pdev33.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %pdev33.i.i, align 16
  %dev34.i.i = getelementptr inbounds %struct.pci_dev, ptr %508, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev34.i.i, ptr noundef nonnull %.str.207.sink.i) #20
  %pdev56.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %509 = ptrtoint ptr %pdev56.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %pdev56.i, align 16
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %510, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev57.i, ptr noundef nonnull @.str.171) #20
  br label %mtip_hw_get_identify.exit

do.end61.i:                                       ; preds = %for.inc.27.i.i.do.end61.i_crit_edge, %for.inc.26.i.i.do.end61.i_crit_edge, %for.inc.25.i.i.do.end61.i_crit_edge, %for.inc.24.i.i.do.end61.i_crit_edge, %for.inc.23.i.i.do.end61.i_crit_edge, %for.inc.22.i.i.do.end61.i_crit_edge, %for.inc.21.i.i.do.end61.i_crit_edge, %for.inc.20.i.i.do.end61.i_crit_edge, %for.inc.19.i.i.do.end61.i_crit_edge, %for.inc.18.i.i.do.end61.i_crit_edge, %for.inc.17.i.i.do.end61.i_crit_edge, %for.inc.16.i.i.do.end61.i_crit_edge, %for.inc.15.i.i.do.end61.i_crit_edge, %for.inc.14.i.i.do.end61.i_crit_edge, %for.inc.13.i.i.do.end61.i_crit_edge, %for.inc.12.i.i.do.end61.i_crit_edge, %for.inc.11.i.i.do.end61.i_crit_edge, %for.inc.10.i.i.do.end61.i_crit_edge, %for.inc.9.i.i.do.end61.i_crit_edge, %for.inc.8.i.i.do.end61.i_crit_edge, %for.inc.7.i.i.do.end61.i_crit_edge, %for.inc.6.i.i.do.end61.i_crit_edge, %for.inc.5.i.i.do.end61.i_crit_edge, %for.inc.4.i.i.do.end61.i_crit_edge, %for.inc.3.i.i.do.end61.i_crit_edge, %for.inc.2.i.i.do.end61.i_crit_edge, %for.inc.1.i.i.do.end61.i_crit_edge, %for.inc.i.i.do.end61.i_crit_edge, %if.end35.i.i.do.end61.i_crit_edge
  %pattr.05.lcssa.i.i = phi ptr [ %add.ptr.i97.i, %if.end35.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.i.i, %for.inc.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.1.i.i, %for.inc.1.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.2.i.i, %for.inc.2.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.3.i.i, %for.inc.3.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.4.i.i, %for.inc.4.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.5.i.i, %for.inc.5.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.6.i.i, %for.inc.6.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.7.i.i, %for.inc.7.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.8.i.i, %for.inc.8.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.9.i.i, %for.inc.9.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.10.i.i, %for.inc.10.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.11.i.i, %for.inc.11.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.12.i.i, %for.inc.12.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.13.i.i, %for.inc.13.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.14.i.i, %for.inc.14.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.15.i.i, %for.inc.15.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.16.i.i, %for.inc.16.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.17.i.i, %for.inc.17.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.18.i.i, %for.inc.18.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.19.i.i, %for.inc.19.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.20.i.i, %for.inc.20.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.21.i.i, %for.inc.21.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.22.i.i, %for.inc.22.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.23.i.i, %for.inc.23.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.24.i.i, %for.inc.24.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.25.i.i, %for.inc.25.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.26.i.i, %for.inc.26.i.i.do.end61.i_crit_edge ], [ %incdec.ptr.27.i.i, %for.inc.27.i.i.do.end61.i_crit_edge ]
  %attr242.sroa.6.0.pattr.05.lcssa.i.sroa_idx.i = getelementptr inbounds i8, ptr %pattr.05.lcssa.i.i, i32 3
  %511 = ptrtoint ptr %attr242.sroa.6.0.pattr.05.lcssa.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %attr242.sroa.6.0.copyload.i = load i8, ptr %attr242.sroa.6.0.pattr.05.lcssa.i.sroa_idx.i, align 1
  %attr242.sroa.9.0.pattr.05.lcssa.i.sroa_idx.i = getelementptr inbounds i8, ptr %pattr.05.lcssa.i.i, i32 5
  %512 = ptrtoint ptr %attr242.sroa.9.0.pattr.05.lcssa.i.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %512, i32 4)
  %attr242.sroa.9.0.copyload.i = load i32, ptr %attr242.sroa.9.0.pattr.05.lcssa.i.sroa_idx.i, align 1
  %pdev62.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %513 = ptrtoint ptr %pdev62.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %pdev62.i, align 16
  %dev63.i = getelementptr inbounds %struct.pci_dev, ptr %514, i32 0, i32 44
  %conv64.i = zext i8 %attr242.sroa.6.0.copyload.i to i32
  %515 = call i32 @llvm.bswap.i32(i32 %attr242.sroa.9.0.copyload.i) #17
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev63.i, ptr noundef nonnull @.str.174, i32 noundef %conv64.i, i32 noundef %515) #20
  br label %mtip_hw_get_identify.exit

mtip_hw_get_identify.exit:                        ; preds = %do.end61.i, %do.end55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %cmp50 = icmp slt i32 %call.i88.i, 0
  br i1 %cmp50, label %mtip_hw_get_identify.exit.do.end54_crit_edge, label %if.end57

mtip_hw_get_identify.exit.do.end54_crit_edge:     ; preds = %mtip_hw_get_identify.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end54

do.end54:                                         ; preds = %mtip_hw_get_identify.exit.do.end54_crit_edge, %skip_create_disk.do.end54_crit_edge
  %pdev55 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %516 = ptrtoint ptr %pdev55 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %pdev55, align 16
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %517, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.67) #20
  br label %init_hw_cmds_error

if.end57:                                         ; preds = %mtip_hw_get_identify.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 60753, i32 %call.i88.i)
  %cmp58 = icmp eq i32 %call.i88.i, 60753
  br i1 %cmp58, label %if.end57.start_service_thread_crit_edge, label %if.end60

if.end57.start_service_thread_crit_edge:          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %start_service_thread

if.end60:                                         ; preds = %if.end57
  %queue61 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 5
  %518 = ptrtoint ptr %queue61 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %queue61, align 4
  call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %519) #17
  %520 = ptrtoint ptr %queue61 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %queue61, align 4
  call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %521) #17
  %522 = ptrtoint ptr %queue61 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %queue61, align 4
  call void @blk_queue_max_segments(ptr noundef %523, i16 noundef zeroext 504) #17
  %524 = ptrtoint ptr %queue61 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %queue61, align 4
  call void @blk_queue_physical_block_size(ptr noundef %525, i32 noundef 4096) #17
  %526 = ptrtoint ptr %queue61 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %queue61, align 4
  call void @blk_queue_max_hw_sectors(ptr noundef %527, i32 noundef 65535) #17
  %528 = ptrtoint ptr %queue61 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %queue61, align 4
  call void @blk_queue_max_segment_size(ptr noundef %529, i32 noundef 4194304) #17
  %pdev67 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %530 = ptrtoint ptr %pdev67 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %pdev67, align 16
  %dma_parms.i = getelementptr inbounds %struct.pci_dev, ptr %531, i32 0, i32 44, i32 22
  %532 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i228 = icmp eq ptr %533, null
  br i1 %tobool.not.i228, label %if.end60.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end60.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  %534 = ptrtoint ptr %533 to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 4194304, ptr %533, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end60.dma_set_max_seg_size.exit_crit_edge
  %535 = ptrtoint ptr %queue61 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %queue61, align 4
  call void @blk_queue_io_min(ptr noundef %536, i32 noundef 4096) #17
  %537 = ptrtoint ptr %port.i204 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %port.i204, align 16
  %identify_valid.i = getelementptr inbounds %struct.mtip_port, ptr %538, i32 0, i32 1
  %539 = ptrtoint ptr %identify_valid.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %identify_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %540)
  %tobool.i.not = icmp eq i32 %540, 0
  br i1 %tobool.i.not, label %do.end75, label %if.end78

do.end75:                                         ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #19
  %541 = ptrtoint ptr %pdev67 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %pdev67, align 16
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %542, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev77, ptr noundef nonnull @.str.70) #20
  br label %init_hw_cmds_error

if.end78:                                         ; preds = %dma_set_max_seg_size.exit
  %identify.i229 = getelementptr inbounds %struct.mtip_port, ptr %538, i32 0, i32 12
  %543 = ptrtoint ptr %identify.i229 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %identify.i229, align 4
  %arrayidx3.i = getelementptr i16, ptr %544, i32 101
  %545 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %545)
  %546 = load i16, ptr %arrayidx3.i, align 2
  %conv4.i = zext i16 %546 to i64
  %shl.i = shl nuw nsw i64 %conv4.i, 16
  %arrayidx.i230 = getelementptr i16, ptr %544, i32 100
  %547 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_load2_noabort(i32 %547)
  %548 = load i16, ptr %arrayidx.i230, align 2
  %conv.i231 = zext i16 %548 to i64
  %or.i = or i64 %shl.i, %conv.i231
  %arrayidx6.i = getelementptr i16, ptr %544, i32 102
  %549 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %549)
  %550 = load i16, ptr %arrayidx6.i, align 2
  %conv7.i = zext i16 %550 to i64
  %shl11.i = shl nuw nsw i64 %conv7.i, 32
  %or12.i = or i64 %or.i, %shl11.i
  %arrayidx9.i = getelementptr i16, ptr %544, i32 103
  %551 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %552 to i64
  %shl13.i = shl nuw i64 %conv10.i, 48
  %or14.i = or i64 %or12.i, %shl13.i
  %553 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %disk, align 4
  call void @set_capacity(ptr noundef %554, i64 noundef %or14.i) #17
  %555 = ptrtoint ptr %pdev67 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %pdev67, align 16
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %556, i32 0, i32 44
  %557 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %disk, align 4
  %call83 = call i32 @device_add_disk(ptr noundef %dev81, ptr noundef %558, ptr noundef nonnull @mtip_disk_attr_groups) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end78.init_hw_cmds_error_crit_edge

if.end78.init_hw_cmds_error_crit_edge:            ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_hw_cmds_error

if.end86:                                         ; preds = %if.end78
  %mtip_svc_handler = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 12
  %559 = ptrtoint ptr %mtip_svc_handler to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %mtip_svc_handler, align 4
  %tobool87.not = icmp eq ptr %560, null
  br i1 %tobool87.not, label %if.end86.start_service_thread_crit_edge, label %if.then88

if.end86.start_service_thread_crit_edge:          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #19
  br label %start_service_thread

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #19
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 11
  call void @_set_bit(i32 noundef 7, ptr noundef %dd_flag) #17
  br label %cleanup

start_service_thread:                             ; preds = %if.end86.start_service_thread_crit_edge, %if.end57.start_service_thread_crit_edge, %if.end57.thread
  %cmp58246 = phi i32 [ 60753, %if.end57.thread ], [ 0, %if.end86.start_service_thread_crit_edge ], [ 60753, %if.end57.start_service_thread_crit_edge ]
  %numa_node90 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 15
  %561 = ptrtoint ptr %numa_node90 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %numa_node90, align 16
  %call91 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @mtip_service_thread, ptr noundef %dd, i32 noundef %562, ptr noundef nonnull @.str.72, i32 noundef %index.0) #17
  %mtip_svc_handler92 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 12
  %563 = ptrtoint ptr %mtip_svc_handler92 to i32
  call void @__asan_store4_noabort(i32 %563)
  store ptr %call91, ptr %mtip_svc_handler92, align 4
  %cmp.i232 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232, label %do.end98, label %if.end102

do.end98:                                         ; preds = %start_service_thread
  call void @__sanitizer_cov_trace_pc() #19
  %pdev99 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %564 = ptrtoint ptr %pdev99 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %pdev99, align 16
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %565, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.74) #20
  %566 = ptrtoint ptr %mtip_svc_handler92 to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr null, ptr %mtip_svc_handler92, align 4
  %567 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %disk, align 4
  call void @del_gendisk(ptr noundef %568) #17
  br label %init_hw_cmds_error

if.end102:                                        ; preds = %start_service_thread
  call void @__sanitizer_cov_trace_pc() #19
  %call104 = call i32 @wake_up_process(ptr noundef %call91) #17
  br label %cleanup

init_hw_cmds_error:                               ; preds = %do.end98, %if.end78.init_hw_cmds_error_crit_edge, %do.end75, %do.end54
  %rv.3 = phi i32 [ -22, %do.end54 ], [ -14, %do.end98 ], [ %call83, %if.end78.init_hw_cmds_error_crit_edge ], [ -5, %do.end75 ]
  %dfs_node.i233 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 13
  %569 = ptrtoint ptr %dfs_node.i233 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %dfs_node.i233, align 8
  call void @debugfs_remove(ptr noundef %570) #17
  br label %disk_index_error

disk_index_error:                                 ; preds = %init_hw_cmds_error, %do.body.i.disk_index_error_crit_edge
  %rv.4 = phi i32 [ %rv.3, %init_hw_cmds_error ], [ -22, %do.body.i.disk_index_error_crit_edge ]
  %index.1 = phi i32 [ %index.0, %init_hw_cmds_error ], [ %call.i191, %do.body.i.disk_index_error_crit_edge ]
  call void @ida_free(ptr noundef nonnull @rssd_index_ida, i32 noundef %index.1) #17
  br label %ida_get_error

ida_get_error:                                    ; preds = %disk_index_error, %if.end30.ida_get_error_crit_edge
  %rv.5 = phi i32 [ %rv.4, %disk_index_error ], [ %call.i191, %if.end30.ida_get_error_crit_edge ]
  %571 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %disk, align 4
  call void @blk_cleanup_disk(ptr noundef %572) #17
  br label %block_queue_alloc_init_error

block_queue_alloc_init_error:                     ; preds = %ida_get_error, %do.end27
  %rv.6 = phi i32 [ %rv.5, %ida_get_error ], [ -12, %do.end27 ]
  %tags110 = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 6
  call void @blk_mq_free_tag_set(ptr noundef %tags110) #17
  br label %block_queue_alloc_tag_error

block_queue_alloc_tag_error:                      ; preds = %block_queue_alloc_init_error, %do.end
  %rv.7 = phi i32 [ %rv.6, %block_queue_alloc_init_error ], [ %call15, %do.end ]
  call fastcc void @mtip_hw_exit(ptr noundef %dd)
  br label %cleanup

cleanup:                                          ; preds = %block_queue_alloc_tag_error, %if.end102, %if.then88, %out1.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %cmp58246, %if.end102 ], [ 0, %if.then88 ], [ %rv.7, %block_queue_alloc_tag_error ], [ -22, %out1.i ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_iounmap_regions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtip_workq_sdbfx(ptr nocapture noundef readonly %port, i32 noundef %group, i32 noundef %completed) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %completed)
  %tobool.not = icmp eq i32 %completed, 0
  br i1 %tobool.not, label %land.end, label %do.body41

land.end:                                         ; preds = %entry
  %.b84 = load i1, ptr @mtip_workq_sdbfx.__already_done, align 1
  br i1 %.b84, label %land.end.cleanup_crit_edge, label %if.then11, !prof !593

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then11:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mtip_workq_sdbfx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 665, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

do.body41:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !606
  tail call void @arm_heavy_mb() #17
  %2 = tail call i32 @llvm.bswap.i32(i32 %completed)
  %arrayidx = getelementptr %struct.mtip_port, ptr %port, i32 0, i32 4, i32 %group
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #17, !srcloc !589
  %shl = shl i32 %group, 5
  %queue.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body41
  %completed.addr.090 = phi i32 [ %completed, %do.body41 ], [ %completed.addr.1, %for.inc.for.body_crit_edge ]
  %bit.087 = phi i32 [ 0, %do.body41 ], [ %inc, %for.inc.for.body_crit_edge ]
  %and = and i32 %completed.addr.090, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %for.body.if.end59_crit_edge, label %if.then49

for.body.if.end59_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then49:                                        ; preds = %for.body
  %or = or i32 %bit.087, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp50 = icmp eq i32 %or, 0
  br i1 %cmp50, label %if.then49.for.inc_crit_edge, label %if.end58, !prof !607

if.then49.for.inc_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end58:                                         ; preds = %if.then49
  %5 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue.i, align 4
  %queue_hw_ctx.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %queue_hw_ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue_hw_ctx.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tags.i, align 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %or)
  %cmp.i.i = icmp ugt i32 %14, %or
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end58.mtip_cmd_from_tag.exit_crit_edge

if.end58.mtip_cmd_from_tag.exit_crit_edge:        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_cmd_from_tag.exit

if.then.i.i:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %16, i32 %or
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %18) #17, !srcloc !608
  %19 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %20, i32 %or
  %21 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx2.i.i, align 4
  br label %mtip_cmd_from_tag.exit

mtip_cmd_from_tag.exit:                           ; preds = %if.then.i.i, %if.end58.mtip_cmd_from_tag.exit_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.then.i.i ], [ null, %if.end58.mtip_cmd_from_tag.exit_crit_edge ]
  %status1.i = getelementptr %struct.request, ptr %retval.0.i.i, i32 53, i32 26
  %23 = ptrtoint ptr %status1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %status1.i, align 4
  %24 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %retval.0.i.i, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %queue_flags.i.i, align 4
  %28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %mtip_cmd_from_tag.exit.if.then.i_crit_edge, label %blk_should_fake_timeout.exit.i

mtip_cmd_from_tag.exit.if.then.i_crit_edge:       ; preds = %mtip_cmd_from_tag.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

blk_should_fake_timeout.exit.i:                   ; preds = %mtip_cmd_from_tag.exit
  %call1.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %25) #17
  br i1 %call1.i.i, label %blk_should_fake_timeout.exit.i.if.end59_crit_edge, label %blk_should_fake_timeout.exit.i.if.then.i_crit_edge, !prof !607

blk_should_fake_timeout.exit.i.if.then.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

blk_should_fake_timeout.exit.i.if.end59_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then.i:                                        ; preds = %blk_should_fake_timeout.exit.i.if.then.i_crit_edge, %mtip_cmd_from_tag.exit.if.then.i_crit_edge
  tail call void @blk_mq_complete_request(ptr noundef %retval.0.i.i) #17
  br label %if.end59

if.end59:                                         ; preds = %if.then.i, %blk_should_fake_timeout.exit.i.if.end59_crit_edge, %for.body.if.end59_crit_edge
  %shr = lshr i32 %completed.addr.090, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end59, %if.then49.for.inc_crit_edge
  %completed.addr.1 = phi i32 [ %completed.addr.090, %if.then49.for.inc_crit_edge ], [ %shr, %if.end59 ]
  %inc = add nuw nsw i32 %bit.087, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %bit.087)
  %cmp = icmp ugt i32 %bit.087, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %completed.addr.1)
  %tobool46.not = icmp eq i32 %completed.addr.1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool46.not
  br i1 %or.cond, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  %irq_workers_active = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_workers_active, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !609
  tail call void @llvm.prefetch.p0(ptr %irq_workers_active, i32 1, i32 3, i32 1) #17
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_workers_active, ptr %irq_workers_active, i32 1, ptr elementtype(i32) %irq_workers_active) #17, !srcloc !610
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !611
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp61 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp61, label %do.body63, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body63:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !612
  tail call void @arm_heavy_mb() #17
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #17, !srcloc !589
  br label %cleanup

cleanup:                                          ; preds = %do.body63, %for.end.cleanup_crit_edge, %if.then11, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segment_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_min(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_service_thread(ptr noundef %data) #2 align 64 {
entry:
  %vendor_id.i.i = alloca i16, align 2
  %fis.i.i = alloca %struct.host_to_dev_fis, align 4
  %tagaccum.i = alloca [8 x i32], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_groups = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_groups, align 8
  %mul = shl i32 %1, 5
  %port1 = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 16
  %flags = getelementptr inbounds %struct.mtip_port, ptr %3, i32 0, i32 22
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 11
  %call234 = call zeroext i1 @kthread_should_stop() #17
  br i1 %call234, label %entry.st_out_crit_edge, label %lor.lhs.false.lr.ph

entry.st_out_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %st_out

lor.lhs.false.lr.ph:                              ; preds = %entry
  %svc_wait = getelementptr inbounds %struct.mtip_port, ptr %3, i32 0, i32 21
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 4
  %queue.i.i = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 5
  %4 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 4
  %7 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 7
  %8 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 12
  %irq_workers_active = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 18
  %tags = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 6
  %cmds_to_issue = getelementptr inbounds %struct.mtip_port, ptr %3, i32 0, i32 20
  %sr.i.i = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end132.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.st_out_crit_edge

lor.lhs.false.st_out_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %st_out

if.end:                                           ; preds = %lor.lhs.false
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #17
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 2611) #17
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 866
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #17
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #17
  %call13229 = call i32 @prepare_to_wait_event(ptr noundef %svc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #17
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and18230 = and i32 %16, 866
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18230)
  %tobool19.not231 = icmp eq i32 %and18230, 0
  br i1 %tobool19.not231, label %if.then11.if.end21_crit_edge, label %if.then11.for.end_crit_edge

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  br label %if.end21

if.end21:                                         ; preds = %cleanup.if.end21_crit_edge, %if.then11.if.end21_crit_edge
  %call13232 = phi i32 [ %call13, %cleanup.if.end21_crit_edge ], [ %call13229, %if.then11.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13232)
  %tobool22.not = icmp eq i32 %call13232, 0
  br i1 %tobool22.not, label %cleanup, label %if.end21.__out_crit_edge

if.end21.__out_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %__out

cleanup:                                          ; preds = %if.end21
  call void @schedule() #17
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %svc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #17
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and18 = and i32 %18, 866
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %cleanup.if.end21_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cleanup.if.end21_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then11.for.end_crit_edge
  call void @finish_wait(ptr noundef %svc_wait, ptr noundef nonnull %__wq_entry) #17
  br label %__out

__out:                                            ; preds = %for.end, %if.end21.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #17
  br label %if.end26

if.end26:                                         ; preds = %__out, %if.end.if.end26_crit_edge
  %call28 = call zeroext i1 @kthread_should_stop() #17
  br i1 %call28, label %if.end26.st_out_crit_edge, label %lor.lhs.false29

if.end26.st_out_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %st_out

lor.lhs.false29:                                  ; preds = %if.end26
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool32.not = icmp eq i32 %21, 0
  br i1 %tobool32.not, label %if.end34, label %lor.lhs.false29.st_out_crit_edge

lor.lhs.false29.st_out_crit_edge:                 ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #19
  br label %st_out

if.end34:                                         ; preds = %lor.lhs.false29
  %22 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dd_flag, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool36.not = icmp eq i32 %24, 0
  br i1 %tobool36.not, label %if.end40, label %if.end34.st_out_crit_edge, !prof !593

if.end34.st_out_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %st_out

if.end40:                                         ; preds = %if.end34
  call void @_set_bit(i32 noundef 4, ptr noundef %flags) #17
  br label %restart_eh

restart_eh:                                       ; preds = %if.end47.restart_eh_crit_edge, %if.end40
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool44.not = icmp eq i32 %27, 0
  br i1 %tobool44.not, label %restart_eh.if.end47_crit_edge, label %if.then45

restart_eh.if.end47_crit_edge:                    ; preds = %restart_eh
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.then45:                                        ; preds = %restart_eh
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tagaccum.i) #17
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.218) #20
  %30 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port1, align 16
  %flags.i = getelementptr inbounds %struct.mtip_port, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then45
  %34 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue.i.i, align 4
  %queue_hw_ctx.i.i = getelementptr inbounds %struct.request_queue, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %queue_hw_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue_hw_ctx.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tags.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tags.i.i, align 16
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.not.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i.not.i, label %if.then.i.mtip_cmd_from_tag.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.mtip_cmd_from_tag.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_cmd_from_tag.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %rqs.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %41, i32 0, i32 5
  %44 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rqs.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %47) #17, !srcloc !608
  %48 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rqs.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  br label %mtip_cmd_from_tag.exit.i

mtip_cmd_from_tag.exit.i:                         ; preds = %if.then.i.i.i, %if.then.i.mtip_cmd_from_tag.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %51, %if.then.i.i.i ], [ null, %if.then.i.mtip_cmd_from_tag.exit.i_crit_edge ]
  %status1.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 53, i32 26
  %52 = ptrtoint ptr %status1.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 10, ptr %status1.i.i, align 4
  %53 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %retval.0.i.i.i, align 8
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %57 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i, label %mtip_cmd_from_tag.exit.i.if.then.i.i_crit_edge, label %blk_should_fake_timeout.exit.i.i

mtip_cmd_from_tag.exit.i.if.then.i.i_crit_edge:   ; preds = %mtip_cmd_from_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

blk_should_fake_timeout.exit.i.i:                 ; preds = %mtip_cmd_from_tag.exit.i
  %call1.i.i.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %54) #17
  br i1 %call1.i.i.i, label %blk_should_fake_timeout.exit.i.i.mtip_handle_tfe.exit_crit_edge, label %blk_should_fake_timeout.exit.i.i.if.then.i.i_crit_edge, !prof !607

blk_should_fake_timeout.exit.i.i.if.then.i.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

blk_should_fake_timeout.exit.i.i.mtip_handle_tfe.exit_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_handle_tfe.exit

if.then.i.i:                                      ; preds = %blk_should_fake_timeout.exit.i.i.if.then.i.i_crit_edge, %mtip_cmd_from_tag.exit.i.if.then.i.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %retval.0.i.i.i) #17
  br label %mtip_handle_tfe.exit

if.end.i:                                         ; preds = %if.then45
  %58 = call ptr @memset(ptr %tagaccum.i, i32 0, i32 32)
  %59 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %slot_groups, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp274.not.i = icmp eq i32 %60, 0
  br i1 %cmp274.not.i, label %if.end.i.for.end32.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end32.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %group.0276.i = phi i32 [ %inc31.i, %for.inc30.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %cmd_cnt.0275.i = phi i32 [ %cmd_cnt.1.lcssa.i, %for.inc30.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtip_port, ptr %31, i32 0, i32 4, i32 %group.0276.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #17, !srcloc !585
  %64 = call i32 @llvm.bswap.i32(i32 %63) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !613
  %65 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i, align 16
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10.i, ptr noundef nonnull @.str.221, i32 noundef %group.0276.i, i32 noundef %64) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !614
  call void @arm_heavy_mb() #17
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %63) #17, !srcloc !589
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool18.not.i = icmp eq i32 %63, 0
  br i1 %tobool18.not.i, label %for.body.i.for.inc30.i_crit_edge, label %for.body19.lr.ph.i

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc30.i

for.body19.lr.ph.i:                               ; preds = %for.body.i
  %shl23.i = shl i32 %group.0276.i, 5
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.inc.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %bit.0272.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %inc29.i, %for.inc.i.for.body19.i_crit_edge ]
  %cmd_cnt.1271.i = phi i32 [ %cmd_cnt.0275.i, %for.body19.lr.ph.i ], [ %cmd_cnt.2.i, %for.inc.i.for.body19.i_crit_edge ]
  %shl.i = shl nuw i32 1, %bit.0272.i
  %and.i = and i32 %shl.i, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %for.body19.i.for.inc.i_crit_edge, label %if.end22.i

for.body19.i.for.inc.i_crit_edge:                 ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end22.i:                                       ; preds = %for.body19.i
  %add.i = add nuw nsw i32 %bit.0272.i, %shl23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp24.i = icmp eq i32 %add.i, 0
  br i1 %cmp24.i, label %if.end22.i.for.inc.i_crit_edge, label %if.end26.i

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end26.i:                                       ; preds = %if.end22.i
  %69 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %queue.i.i, align 4
  %queue_hw_ctx.i227.i = getelementptr inbounds %struct.request_queue, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %queue_hw_ctx.i227.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queue_hw_ctx.i227.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %tags.i228.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %74, i32 0, i32 19
  %75 = ptrtoint ptr %tags.i228.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tags.i228.i, align 16
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add.i)
  %cmp.i.i229.i = icmp ugt i32 %78, %add.i
  br i1 %cmp.i.i229.i, label %if.then.i.i231.i, label %if.end26.i.mtip_cmd_from_tag.exit234.i_crit_edge

if.end26.i.mtip_cmd_from_tag.exit234.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_cmd_from_tag.exit234.i

if.then.i.i231.i:                                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  %rqs.i.i230.i = getelementptr inbounds %struct.blk_mq_tags, ptr %76, i32 0, i32 5
  %79 = ptrtoint ptr %rqs.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rqs.i.i230.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %80, i32 %add.i
  %81 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %82) #17, !srcloc !608
  %83 = ptrtoint ptr %rqs.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rqs.i.i230.i, align 4
  %arrayidx2.i.i.i = getelementptr ptr, ptr %84, i32 %add.i
  %85 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx2.i.i.i, align 4
  br label %mtip_cmd_from_tag.exit234.i

mtip_cmd_from_tag.exit234.i:                      ; preds = %if.then.i.i231.i, %if.end26.i.mtip_cmd_from_tag.exit234.i_crit_edge
  %retval.0.i.i232.i = phi ptr [ %86, %if.then.i.i231.i ], [ null, %if.end26.i.mtip_cmd_from_tag.exit234.i_crit_edge ]
  %status1.i236.i = getelementptr %struct.request, ptr %retval.0.i.i232.i, i32 53, i32 26
  %87 = ptrtoint ptr %status1.i236.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %status1.i236.i, align 4
  %88 = ptrtoint ptr %retval.0.i.i232.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %retval.0.i.i232.i, align 8
  %queue_flags.i.i237.i = getelementptr inbounds %struct.request_queue, ptr %89, i32 0, i32 11
  %90 = ptrtoint ptr %queue_flags.i.i237.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %queue_flags.i.i237.i, align 4
  %92 = and i32 %91, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i238.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i.i238.i, label %mtip_cmd_from_tag.exit234.i.if.then.i241.i_crit_edge, label %blk_should_fake_timeout.exit.i240.i

mtip_cmd_from_tag.exit234.i.if.then.i241.i_crit_edge: ; preds = %mtip_cmd_from_tag.exit234.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i241.i

blk_should_fake_timeout.exit.i240.i:              ; preds = %mtip_cmd_from_tag.exit234.i
  %call1.i.i239.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %89) #17
  br i1 %call1.i.i239.i, label %blk_should_fake_timeout.exit.i240.i.mtip_complete_command.exit242.i_crit_edge, label %blk_should_fake_timeout.exit.i240.i.if.then.i241.i_crit_edge, !prof !607

blk_should_fake_timeout.exit.i240.i.if.then.i241.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i240.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i241.i

blk_should_fake_timeout.exit.i240.i.mtip_complete_command.exit242.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i240.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_complete_command.exit242.i

if.then.i241.i:                                   ; preds = %blk_should_fake_timeout.exit.i240.i.if.then.i241.i_crit_edge, %mtip_cmd_from_tag.exit234.i.if.then.i241.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %retval.0.i.i232.i) #17
  br label %mtip_complete_command.exit242.i

mtip_complete_command.exit242.i:                  ; preds = %if.then.i241.i, %blk_should_fake_timeout.exit.i240.i.mtip_complete_command.exit242.i_crit_edge
  call void @_set_bit(i32 noundef %add.i, ptr noundef nonnull %tagaccum.i) #17
  %inc.i = add i32 %cmd_cnt.1271.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %mtip_complete_command.exit242.i, %if.end22.i.for.inc.i_crit_edge, %for.body19.i.for.inc.i_crit_edge
  %cmd_cnt.2.i = phi i32 [ %cmd_cnt.1271.i, %if.end22.i.for.inc.i_crit_edge ], [ %inc.i, %mtip_complete_command.exit242.i ], [ %cmd_cnt.1271.i, %for.body19.i.for.inc.i_crit_edge ]
  %inc29.i = add nuw nsw i32 %bit.0272.i, 1
  %exitcond = icmp eq i32 %inc29.i, 32
  br i1 %exitcond, label %for.inc.i.for.inc30.i_crit_edge, label %for.inc.i.for.body19.i_crit_edge

for.inc.i.for.body19.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body19.i

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %cmd_cnt.1.lcssa.i = phi i32 [ %cmd_cnt.0275.i, %for.body.i.for.inc30.i_crit_edge ], [ %cmd_cnt.2.i, %for.inc.i.for.inc30.i_crit_edge ]
  %inc31.i = add nuw i32 %group.0276.i, 1
  %93 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %slot_groups, align 8
  %cmp.i = icmp ult i32 %inc31.i, %94
  br i1 %cmp.i, label %for.inc30.i.for.body.i_crit_edge, label %for.inc30.i.for.end32.i_crit_edge

for.inc30.i.for.end32.i_crit_edge:                ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32.i

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end32.i:                                      ; preds = %for.inc30.i.for.end32.i_crit_edge, %if.end.i.for.end32.i_crit_edge
  %cmd_cnt.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end32.i_crit_edge ], [ %cmd_cnt.1.lcssa.i, %for.inc30.i.for.end32.i_crit_edge ]
  call fastcc void @print_tags(ptr noundef %data, ptr noundef nonnull @.str.223, ptr noundef nonnull %tagaccum.i, i32 noundef %cmd_cnt.0.lcssa.i) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %95(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %97(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %98(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %99(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %101(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %102(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %105(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %106(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %107(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %108(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %110(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %111(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %112(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %113(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %114(i32 noundef 214748000) #17
  call fastcc void @mtip_restart_port(ptr noundef %31) #17
  %115 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %port1, align 16
  %log_buf.i = getelementptr inbounds %struct.mtip_port, ptr %116, i32 0, i32 16
  %117 = ptrtoint ptr %log_buf.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %log_buf.i, align 4
  %log_buf_dma.i = getelementptr inbounds %struct.mtip_port, ptr %116, i32 0, i32 17
  %119 = ptrtoint ptr %log_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %log_buf_dma.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fis.i.i) #17
  %121 = call ptr @memset(ptr %fis.i.i, i32 0, i32 20)
  %122 = ptrtoint ptr %fis.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 39, ptr %fis.i.i, align 4
  %123 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -128, ptr %4, align 1
  %124 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 47, ptr %5, align 2
  %125 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %8, align 4
  %126 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 16, ptr %6, align 4
  %127 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -96, ptr %7, align 1
  %128 = call ptr @memset(ptr %118, i32 0, i32 512)
  %call.i.i206 = call fastcc i32 @mtip_exec_internal_command(ptr noundef %116, ptr noundef nonnull %fis.i.i, i32 noundef %120, i32 noundef 512, i32 noundef 5000) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i206)
  %tobool39.not.i = icmp eq i32 %call.i.i206, 0
  br i1 %tobool39.not.i, label %if.else.i, label %do.end43.i

do.end43.i:                                       ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  %129 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdev.i, align 16
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45.i, ptr noundef nonnull @.str.159) #20
  br label %if.end82.i

if.else.i:                                        ; preds = %for.end32.i
  %131 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %port1, align 16
  %log_buf47.i = getelementptr inbounds %struct.mtip_port, ptr %132, i32 0, i32 16
  %133 = ptrtoint ptr %log_buf47.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %log_buf47.i, align 4
  %arrayidx48.i = getelementptr i8, ptr %134, i32 259
  %135 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx48.i, align 1
  %137 = and i8 %136, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool50.not.i = icmp eq i8 %137, 0
  br i1 %tobool50.not.i, label %if.else.i.if.end57.i_crit_edge, label %do.end54.i

if.else.i.if.end57.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57.i

do.end54.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %138 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev.i, align 16
  %dev56.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev56.i, ptr noundef nonnull @.str.162) #20
  call void @_set_bit(i32 noundef 3, ptr noundef %dd_flag) #17
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end54.i, %if.else.i.if.end57.i_crit_edge
  %fail_reason.0.i = phi ptr [ @.str.228, %do.end54.i ], [ null, %if.else.i.if.end57.i_crit_edge ]
  %fail_all_ncq_write.0.i = phi i32 [ 1, %do.end54.i ], [ 0, %if.else.i.if.end57.i_crit_edge ]
  %arrayidx58.i = getelementptr i8, ptr %134, i32 288
  %140 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx58.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %141)
  %cmp60.i = icmp eq i8 %141, -9
  br i1 %cmp60.i, label %do.end65.i, label %if.end57.i.if.end69.i_crit_edge

if.end57.i.if.end69.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69.i

do.end65.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  %142 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev.i, align 16
  %dev67.i = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67.i, ptr noundef nonnull @.str.165) #20
  call void @_set_bit(i32 noundef 2, ptr noundef %dd_flag) #17
  %144 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %.pr.i = load i8, ptr %arrayidx58.i, align 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %do.end65.i, %if.end57.i.if.end69.i_crit_edge
  %145 = phi i8 [ %.pr.i, %do.end65.i ], [ %141, %if.end57.i.if.end69.i_crit_edge ]
  %fail_reason.1.i = phi ptr [ @.str.231, %do.end65.i ], [ %fail_reason.0.i, %if.end57.i.if.end69.i_crit_edge ]
  %fail_all_ncq_cmds.0.i = phi i32 [ 1, %do.end65.i ], [ 0, %if.end57.i.if.end69.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %145)
  %cmp72.i = icmp eq i8 %145, -65
  br i1 %cmp72.i, label %if.then74.i, label %if.end69.i.if.end82.i_crit_edge

if.end69.i.if.end82.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82.i

if.then74.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 8, ptr noundef %dd_flag) #17
  %146 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pdev.i, align 16
  %dev80.i = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev80.i, ptr noundef nonnull @.str.233) #20
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then74.i, %if.end69.i.if.end82.i_crit_edge, %do.end43.i
  %fail_reason.2.i = phi ptr [ null, %do.end43.i ], [ @.str.235, %if.then74.i ], [ %fail_reason.1.i, %if.end69.i.if.end82.i_crit_edge ]
  %fail_all_ncq_write.1.i = phi i32 [ 0, %do.end43.i ], [ %fail_all_ncq_write.0.i, %if.then74.i ], [ %fail_all_ncq_write.0.i, %if.end69.i.if.end82.i_crit_edge ]
  %fail_all_ncq_cmds.1.i = phi i32 [ 0, %do.end43.i ], [ 1, %if.then74.i ], [ %fail_all_ncq_cmds.0.i, %if.end69.i.if.end82.i_crit_edge ]
  %148 = call ptr @memset(ptr %tagaccum.i, i32 0, i32 32)
  %149 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %slot_groups, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp86281.not.i = icmp eq i32 %150, 0
  br i1 %cmp86281.not.i, label %if.end82.i.for.end145.i_crit_edge, label %for.cond89.preheader.lr.ph.i

if.end82.i.for.end145.i_crit_edge:                ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end145.i

for.cond89.preheader.lr.ph.i:                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fail_all_ncq_cmds.1.i)
  %tobool104.not.i = icmp ne i32 %fail_all_ncq_cmds.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fail_all_ncq_write.1.i)
  %tobool106.not.i = icmp ne i32 %fail_all_ncq_write.1.i, 0
  %cmp121.not.i = icmp eq ptr %fail_reason.2.i, null
  %spec.select.i = select i1 %cmp121.not.i, ptr @.str.241, ptr %fail_reason.2.i
  br label %for.cond89.preheader.i

for.cond89.preheader.i:                           ; preds = %for.inc143.i.for.cond89.preheader.i_crit_edge, %for.cond89.preheader.lr.ph.i
  %group.1282.i = phi i32 [ 0, %for.cond89.preheader.lr.ph.i ], [ %inc144.i, %for.inc143.i.for.cond89.preheader.i_crit_edge ]
  %shl93.i = shl i32 %group.1282.i, 5
  br label %for.body92.i

for.body92.i:                                     ; preds = %for.inc140.i.for.body92.i_crit_edge, %for.cond89.preheader.i
  %bit.1280.i = phi i32 [ 0, %for.cond89.preheader.i ], [ %inc141.i, %for.inc140.i.for.body92.i_crit_edge ]
  %add94.i = add nuw nsw i32 %bit.1280.i, %shl93.i
  %151 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %queue.i.i, align 4
  %queue_hw_ctx.i244.i = getelementptr inbounds %struct.request_queue, ptr %152, i32 0, i32 8
  %153 = ptrtoint ptr %queue_hw_ctx.i244.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %queue_hw_ctx.i244.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %tags.i245.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %156, i32 0, i32 19
  %157 = ptrtoint ptr %tags.i245.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tags.i245.i, align 16
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %add94.i)
  %cmp.i.i246.i = icmp ugt i32 %160, %add94.i
  br i1 %cmp.i.i246.i, label %if.then.i.i250.i, label %for.body92.i.mtip_cmd_from_tag.exit253.i_crit_edge

for.body92.i.mtip_cmd_from_tag.exit253.i_crit_edge: ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_cmd_from_tag.exit253.i

if.then.i.i250.i:                                 ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #19
  %rqs.i.i247.i = getelementptr inbounds %struct.blk_mq_tags, ptr %158, i32 0, i32 5
  %161 = ptrtoint ptr %rqs.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rqs.i.i247.i, align 4
  %arrayidx.i.i248.i = getelementptr ptr, ptr %162, i32 %add94.i
  %163 = ptrtoint ptr %arrayidx.i.i248.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx.i.i248.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %164) #17, !srcloc !608
  %165 = ptrtoint ptr %rqs.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rqs.i.i247.i, align 4
  %arrayidx2.i.i249.i = getelementptr ptr, ptr %166, i32 %add94.i
  %167 = ptrtoint ptr %arrayidx2.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx2.i.i249.i, align 4
  br label %mtip_cmd_from_tag.exit253.i

mtip_cmd_from_tag.exit253.i:                      ; preds = %if.then.i.i250.i, %for.body92.i.mtip_cmd_from_tag.exit253.i_crit_edge
  %retval.0.i.i251.i = phi ptr [ %168, %if.then.i.i250.i ], [ null, %for.body92.i.mtip_cmd_from_tag.exit253.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add94.i)
  %cmp96.i = icmp eq i32 %add94.i, 0
  br i1 %cmp96.i, label %mtip_cmd_from_tag.exit253.i.do.end136.i_crit_edge, label %lor.lhs.false.i

mtip_cmd_from_tag.exit253.i.do.end136.i_crit_edge: ; preds = %mtip_cmd_from_tag.exit253.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end136.i

lor.lhs.false.i:                                  ; preds = %mtip_cmd_from_tag.exit253.i
  %add.ptr.i.i252.i = getelementptr %struct.request, ptr %retval.0.i.i251.i, i32 1
  %169 = ptrtoint ptr %add.ptr.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr.i.i252.i, align 4
  %command98.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %command98.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %command98.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %172)
  %cmp100.i = icmp eq i8 %172, -17
  br i1 %cmp100.i, label %lor.lhs.false.i.do.end136.i_crit_edge, label %if.else103.i

lor.lhs.false.i.do.end136.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end136.i

if.else103.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %172)
  %cmp109.i = icmp eq i8 %172, 97
  %or.cond224.i = select i1 %tobool106.not.i, i1 %cmp109.i, i1 false
  %or.cond283.i = select i1 %tobool104.not.i, i1 true, i1 %or.cond224.i
  br i1 %or.cond283.i, label %do.end114.i, label %land.lhs.true127.critedge.i

do.end114.i:                                      ; preds = %if.else103.i
  %173 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pdev.i, align 16
  %dev116.i = getelementptr inbounds %struct.pci_dev, ptr %174, i32 0, i32 44
  %cond.i = select i1 %cmp109.i, ptr @.str.239, ptr @.str.240
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev116.i, ptr noundef nonnull @.str.237, ptr noundef nonnull %cond.i, i32 noundef %add94.i, ptr noundef nonnull %spec.select.i) #20
  %status1.i255.i = getelementptr %struct.request, ptr %retval.0.i.i251.i, i32 53, i32 26
  %175 = ptrtoint ptr %status1.i255.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 7, ptr %status1.i255.i, align 4
  %176 = ptrtoint ptr %retval.0.i.i251.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %retval.0.i.i251.i, align 8
  %queue_flags.i.i256.i = getelementptr inbounds %struct.request_queue, ptr %177, i32 0, i32 11
  %178 = ptrtoint ptr %queue_flags.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %queue_flags.i.i256.i, align 4
  %180 = and i32 %179, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.i.i257.i = icmp eq i32 %180, 0
  br i1 %tobool.not.i.i257.i, label %do.end114.i.if.then.i260.i_crit_edge, label %blk_should_fake_timeout.exit.i259.i

do.end114.i.if.then.i260.i_crit_edge:             ; preds = %do.end114.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i260.i

blk_should_fake_timeout.exit.i259.i:              ; preds = %do.end114.i
  %call1.i.i258.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %177) #17
  br i1 %call1.i.i258.i, label %blk_should_fake_timeout.exit.i259.i.for.inc140.i_crit_edge, label %blk_should_fake_timeout.exit.i259.i.if.then.i260.i_crit_edge, !prof !607

blk_should_fake_timeout.exit.i259.i.if.then.i260.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i259.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i260.i

blk_should_fake_timeout.exit.i259.i.for.inc140.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i259.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc140.i

if.then.i260.i:                                   ; preds = %blk_should_fake_timeout.exit.i259.i.if.then.i260.i_crit_edge, %do.end114.i.if.then.i260.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %retval.0.i.i251.i) #17
  br label %for.inc140.i

land.lhs.true127.critedge.i:                      ; preds = %if.else103.i
  %retries.i = getelementptr %struct.request, ptr %retval.0.i.i251.i, i32 53, i32 23
  %181 = ptrtoint ptr %retries.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %retries.i, align 4
  %dec128.i = add i32 %182, -1
  store i32 %dec128.i, ptr %retries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp129.i = icmp sgt i32 %182, 0
  br i1 %cmp129.i, label %if.then131.i, label %land.lhs.true127.critedge.i.do.end136.i_crit_edge

land.lhs.true127.critedge.i.do.end136.i_crit_edge: ; preds = %land.lhs.true127.critedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end136.i

if.then131.i:                                     ; preds = %land.lhs.true127.critedge.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef %add94.i, ptr noundef nonnull %tagaccum.i) #17
  %shr.i.i = ashr i32 %add94.i, 5
  %arrayidx.i.i = getelementptr %struct.mtip_port, ptr %31, i32 0, i32 25, i32 %shr.i.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !615
  call void @arm_heavy_mb() #17
  %and.i.i = and i32 %add94.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %183 = call i32 @llvm.bswap.i32(i32 %shl.i.i) #17
  %arrayidx2.i.i = getelementptr %struct.mtip_port, ptr %31, i32 0, i32 3, i32 %shr.i.i
  %184 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx2.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %183) #17, !srcloc !589
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !616
  call void @arm_heavy_mb() #17
  %arrayidx9.i.i = getelementptr %struct.mtip_port, ptr %31, i32 0, i32 5, i32 %shr.i.i
  %186 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx9.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %183) #17, !srcloc !589
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #17
  br label %for.inc140.i

do.end136.i:                                      ; preds = %land.lhs.true127.critedge.i.do.end136.i_crit_edge, %lor.lhs.false.i.do.end136.i_crit_edge, %mtip_cmd_from_tag.exit253.i.do.end136.i_crit_edge
  %188 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %31, align 4
  %pdev138.i = getelementptr inbounds %struct.driver_data, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %pdev138.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pdev138.i, align 16
  %dev139.i = getelementptr inbounds %struct.pci_dev, ptr %191, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev139.i, ptr noundef nonnull @.str.243, i32 noundef %add94.i) #20
  %status1.i263.i = getelementptr %struct.request, ptr %retval.0.i.i251.i, i32 53, i32 26
  %192 = ptrtoint ptr %status1.i263.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 10, ptr %status1.i263.i, align 4
  %193 = ptrtoint ptr %retval.0.i.i251.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %retval.0.i.i251.i, align 8
  %queue_flags.i.i264.i = getelementptr inbounds %struct.request_queue, ptr %194, i32 0, i32 11
  %195 = ptrtoint ptr %queue_flags.i.i264.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %queue_flags.i.i264.i, align 4
  %197 = and i32 %196, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.not.i.i265.i = icmp eq i32 %197, 0
  br i1 %tobool.not.i.i265.i, label %do.end136.i.if.then.i268.i_crit_edge, label %blk_should_fake_timeout.exit.i267.i

do.end136.i.if.then.i268.i_crit_edge:             ; preds = %do.end136.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i268.i

blk_should_fake_timeout.exit.i267.i:              ; preds = %do.end136.i
  %call1.i.i266.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %194) #17
  br i1 %call1.i.i266.i, label %blk_should_fake_timeout.exit.i267.i.for.inc140.i_crit_edge, label %blk_should_fake_timeout.exit.i267.i.if.then.i268.i_crit_edge, !prof !607

blk_should_fake_timeout.exit.i267.i.if.then.i268.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i267.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i268.i

blk_should_fake_timeout.exit.i267.i.for.inc140.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i267.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc140.i

if.then.i268.i:                                   ; preds = %blk_should_fake_timeout.exit.i267.i.if.then.i268.i_crit_edge, %do.end136.i.if.then.i268.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %retval.0.i.i251.i) #17
  br label %for.inc140.i

for.inc140.i:                                     ; preds = %if.then.i268.i, %blk_should_fake_timeout.exit.i267.i.for.inc140.i_crit_edge, %if.then131.i, %if.then.i260.i, %blk_should_fake_timeout.exit.i259.i.for.inc140.i_crit_edge
  %inc141.i = add nuw nsw i32 %bit.1280.i, 1
  %exitcond.not.i = icmp eq i32 %inc141.i, 32
  br i1 %exitcond.not.i, label %for.inc143.i, label %for.inc140.i.for.body92.i_crit_edge

for.inc140.i.for.body92.i_crit_edge:              ; preds = %for.inc140.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body92.i

for.inc143.i:                                     ; preds = %for.inc140.i
  %inc144.i = add nuw i32 %group.1282.i, 1
  %198 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %slot_groups, align 8
  %cmp86.i = icmp ult i32 %inc144.i, %199
  br i1 %cmp86.i, label %for.inc143.i.for.cond89.preheader.i_crit_edge, label %for.inc143.i.for.end145.i_crit_edge

for.inc143.i.for.end145.i_crit_edge:              ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end145.i

for.inc143.i.for.cond89.preheader.i_crit_edge:    ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond89.preheader.i

for.end145.i:                                     ; preds = %for.inc143.i.for.end145.i_crit_edge, %if.end82.i.for.end145.i_crit_edge
  call fastcc void @print_tags(ptr noundef %data, ptr noundef nonnull @.str.245, ptr noundef nonnull %tagaccum.i, i32 noundef %cmd_cnt.0.lcssa.i) #17
  br label %mtip_handle_tfe.exit

mtip_handle_tfe.exit:                             ; preds = %for.end145.i, %if.then.i.i, %blk_should_fake_timeout.exit.i.i.mtip_handle_tfe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tagaccum.i) #17
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %if.end47

if.end47:                                         ; preds = %mtip_handle_tfe.exit, %restart_eh.if.end47_crit_edge
  %200 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %flags, align 4
  %202 = and i32 %201, 2
  %tobool50.not = icmp eq i32 %202, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.restart_eh_crit_edge

if.end47.restart_eh_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %restart_eh

if.end52:                                         ; preds = %if.end47
  %203 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %flags, align 4
  %205 = and i32 %204, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool55.not = icmp eq i32 %205, 0
  br i1 %tobool55.not, label %if.end52.if.end84_crit_edge, label %if.then56

if.end52.if.end84_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end84

if.then56:                                        ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %206 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -500, %206
  br label %while.body61

while.body61:                                     ; preds = %while.body61.backedge, %if.then56
  %__ms.0233 = phi i32 [ 100, %if.then56 ], [ %__ms.0233.be, %while.body61.backedge ]
  %dec = add nsw i32 %__ms.0233, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %207(i32 noundef 214748000) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool60.not = icmp eq i32 %dec, 0
  br i1 %tobool60.not, label %while.end, label %while.body61.while.body61.backedge_crit_edge

while.body61.while.body61.backedge_crit_edge:     ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body61.backedge

while.body61.backedge:                            ; preds = %land.rhs.while.body61.backedge_crit_edge, %while.body61.while.body61.backedge_crit_edge
  %__ms.0233.be = phi i32 [ %dec, %while.body61.while.body61.backedge_crit_edge ], [ 100, %land.rhs.while.body61.backedge_crit_edge ]
  br label %while.body61

while.end:                                        ; preds = %while.body61
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %irq_workers_active, i32 noundef 4) #17
  %208 = ptrtoint ptr %irq_workers_active to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %irq_workers_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp.not = icmp eq i32 %209, 0
  br i1 %cmp.not, label %while.end.do.end65_crit_edge, label %land.rhs

while.end.do.end65_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65

land.rhs:                                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %210 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp64 = icmp slt i32 %sub, 0
  br i1 %cmp64, label %land.rhs.while.body61.backedge_crit_edge, label %land.rhs.do.end65_crit_edge

land.rhs.do.end65_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65

land.rhs.while.body61.backedge_crit_edge:         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body61.backedge

do.end65:                                         ; preds = %land.rhs.do.end65_crit_edge, %while.end.do.end65_crit_edge
  %call.i.i201 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_workers_active, i32 noundef 4) #17
  %211 = ptrtoint ptr %irq_workers_active to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %irq_workers_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp68.not = icmp eq i32 %212, 0
  br i1 %cmp68.not, label %do.end65.if.end73_crit_edge, label %do.end72

do.end65.if.end73_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

do.end72:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #19
  %213 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pdev.i, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %214, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.216) #20
  br label %if.end73

if.end73:                                         ; preds = %do.end72, %do.end65.if.end73_crit_edge
  %215 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %queue.i.i, align 4
  call void @blk_mq_quiesce_queue(ptr noundef %216) #17
  call void @blk_mq_tagset_busy_iter(ptr noundef %tags, ptr noundef nonnull @mtip_queue_cmd, ptr noundef %data) #17
  %217 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %port1, align 16
  %flags75 = getelementptr inbounds %struct.mtip_port, ptr %218, i32 0, i32 22
  call void @_set_bit(i32 noundef 5, ptr noundef %flags75) #17
  %call76 = call fastcc i32 @mtip_device_reset(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end73.if.end80_crit_edge, label %if.then78

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_mq_tagset_busy_iter(ptr noundef %tags, ptr noundef nonnull @mtip_abort_cmd, ptr noundef %data) #17
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end73.if.end80_crit_edge
  %219 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %port1, align 16
  %flags82 = getelementptr inbounds %struct.mtip_port, ptr %220, i32 0, i32 22
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags82) #17
  %221 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %queue.i.i, align 4
  call void @blk_mq_unquiesce_queue(ptr noundef %222) #17
  br label %if.end84

if.end84:                                         ; preds = %if.end80, %if.end52.if.end84_crit_edge
  %223 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %flags, align 4
  %225 = and i32 %224, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool87.not = icmp eq i32 %225, 0
  br i1 %tobool87.not, label %if.end84.if.end122_crit_edge, label %if.end84.while.cond89.outer_crit_edge

if.end84.while.cond89.outer_crit_edge:            ; preds = %if.end84
  br label %while.cond89.outer

if.end84.if.end122_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

while.cond89.outer:                               ; preds = %if.end108.while.cond89.outer_crit_edge, %if.end84.while.cond89.outer_crit_edge
  %slot_start.0.ph = phi i32 [ %mul, %if.end84.while.cond89.outer_crit_edge ], [ %slot_start.1, %if.end108.while.cond89.outer_crit_edge ]
  %cmp92 = phi i1 [ false, %if.end84.while.cond89.outer_crit_edge ], [ true, %if.end108.while.cond89.outer_crit_edge ]
  br label %while.cond89

while.cond89:                                     ; preds = %if.end117, %while.cond89.outer
  %slot_start.0 = phi i32 [ %slot_start.1, %if.end117 ], [ %slot_start.0.ph, %while.cond89.outer ]
  %slot.0 = phi i32 [ %call91, %if.end117 ], [ 1, %while.cond89.outer ]
  %call91 = call i32 @_find_next_bit_be(ptr noundef %cmds_to_issue, i32 noundef %mul, i32 noundef %slot.0) #17
  br i1 %cmp92, label %if.then93, label %while.cond89.if.end99_crit_edge

while.cond89.if.end99_crit_edge:                  ; preds = %while.cond89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end99

if.then93:                                        ; preds = %while.cond89
  call void @__sanitizer_cov_trace_cmp4(i32 %slot_start.0, i32 %call91)
  %cmp94.not = icmp ult i32 %slot_start.0, %call91
  call void @__sanitizer_cov_trace_cmp4(i32 %call91, i32 %mul)
  %cmp96.not = icmp ult i32 %call91, %mul
  %or.cond190 = select i1 %cmp94.not, i1 %cmp96.not, i1 false
  br i1 %or.cond190, label %if.then93.if.end99_crit_edge, label %while.end120

if.then93.if.end99_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end99

if.end99:                                         ; preds = %if.then93.if.end99_crit_edge, %while.cond89.if.end99_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %slot_start.0, i32 %mul)
  %cmp100 = icmp eq i32 %slot_start.0, %mul
  br i1 %cmp100, label %if.then107, label %if.end99.if.end108_crit_edge, !prof !607

if.end99.if.end108_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108

if.then107:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end99.if.end108_crit_edge
  %slot_start.1 = phi i32 [ %call91, %if.then107 ], [ %slot_start.0, %if.end99.if.end108_crit_edge ]
  %cmp109 = icmp eq i32 %call91, %mul
  br i1 %cmp109, label %if.end108.while.cond89.outer_crit_edge, label %if.end117, !prof !607

if.end108.while.cond89.outer_crit_edge:           ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond89.outer

if.end117:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #19
  %shr.i207 = ashr i32 %call91, 5
  %arrayidx.i208 = getelementptr %struct.mtip_port, ptr %3, i32 0, i32 25, i32 %shr.i207
  call void @_raw_spin_lock(ptr noundef %arrayidx.i208) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !615
  call void @arm_heavy_mb() #17
  %and.i209 = and i32 %call91, 31
  %shl.i210 = shl nuw i32 1, %and.i209
  %226 = call i32 @llvm.bswap.i32(i32 %shl.i210) #17
  %arrayidx2.i = getelementptr %struct.mtip_port, ptr %3, i32 0, i32 3, i32 %shr.i207
  %227 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx2.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %226) #17, !srcloc !589
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !616
  call void @arm_heavy_mb() #17
  %arrayidx9.i = getelementptr %struct.mtip_port, ptr %3, i32 0, i32 5, i32 %shr.i207
  %229 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx9.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %226) #17, !srcloc !589
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i208) #17
  call void @_clear_bit(i32 noundef %call91, ptr noundef %cmds_to_issue) #17
  br label %while.cond89

while.end120:                                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #17
  br label %if.end122

if.end122:                                        ; preds = %while.end120, %if.end84.if.end122_crit_edge
  %231 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %flags, align 4
  %233 = and i32 %232, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool125.not = icmp eq i32 %233, 0
  br i1 %tobool125.not, label %if.end122.if.end132_crit_edge, label %if.then126

if.end122.if.end132_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end132

if.then126:                                       ; preds = %if.end122
  %234 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pdev.i, align 16
  %dev.i212 = getelementptr inbounds %struct.pci_dev, ptr %235, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i212, ptr noundef nonnull @.str.249) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %236 = load volatile i32, ptr @jiffies, align 128
  %237 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -240000, %237
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.cond35.i.do.body1.i_crit_edge, %if.then126
  %cnt.0.i = phi i32 [ 0, %if.then126 ], [ %cnt.1.i, %do.cond35.i.do.body1.i_crit_edge ]
  %238 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %dd_flag, align 4
  %240 = and i32 %239, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool.not.i214 = icmp eq i32 %240, 0
  br i1 %tobool.not.i214, label %if.end.i215, label %do.body1.i.if.end132_crit_edge, !prof !593

do.body1.i.if.end132_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end132

if.end.i215:                                      ; preds = %do.body1.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i.i) #17
  %241 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %vendor_id.i.i, align 2
  %242 = ptrtoint ptr %sr.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %sr.i.i, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool.not.i.i = icmp eq i8 %243, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i215.mtip_check_surprise_removal.exit.thread.i_crit_edge

if.end.i215.mtip_check_surprise_removal.exit.thread.i_crit_edge: ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_check_surprise_removal.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i215
  %244 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %pdev.i, align 16
  %call.i.i216 = call i32 @pci_read_config_word(ptr noundef %245, i32 noundef 0, ptr noundef nonnull %vendor_id.i.i) #17
  %246 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %vendor_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %247)
  %cmp.i.i = icmp eq i16 %247, -1
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end7.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %248 = ptrtoint ptr %sr.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %sr.i.i, align 4
  %249 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %queue.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %250, null
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %250) #17
  br label %mtip_check_surprise_removal.exit.thread.i

do.end.i.i:                                       ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %251 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %pdev.i, align 16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %252, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %mtip_check_surprise_removal.exit.thread.i

mtip_check_surprise_removal.exit.thread.i:        ; preds = %do.end.i.i, %if.then5.i.i, %if.end.i215.mtip_check_surprise_removal.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i.i) #17
  br label %if.end132

if.end7.i:                                        ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i.i) #17
  %253 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %port1, align 16
  %call8.i = call fastcc i32 @mtip_get_identify(ptr noundef %254) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i218 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i218, label %if.end7.i.if.end132_crit_edge, label %if.end10.i

if.end7.i.if.end132_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end132

if.end10.i:                                       ; preds = %if.end7.i
  %255 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %port1, align 16
  %identify.i = getelementptr inbounds %struct.mtip_port, ptr %256, i32 0, i32 12
  %257 = ptrtoint ptr %identify.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %identify.i, align 4
  %add.ptr.i = getelementptr i16, ptr %258, i32 142
  %259 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4783, i16 %260)
  %cmp12.i = icmp eq i16 %260, -4783
  br i1 %cmp12.i, label %if.then14.i, label %if.then129

if.then14.i:                                      ; preds = %if.end10.i
  call void @msleep(i32 noundef 1000) #17
  %inc.i219 = add i32 %cnt.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 179, i32 %cnt.0.i)
  %cmp15.i = icmp ugt i32 %cnt.0.i, 179
  br i1 %cmp15.i, label %do.end20.i, label %if.then14.i.do.cond35.i_crit_edge

if.then14.i.do.cond35.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond35.i

do.end20.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #19
  %261 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pdev.i, align 16
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %262, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %263 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %263, %236
  %call23.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #17
  %div.i = udiv i32 %call23.i, 1000
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22.i, ptr noundef nonnull @.str.252, i32 noundef %div.i) #20
  br label %do.cond35.i

do.cond35.i:                                      ; preds = %do.end20.i, %if.then14.i.do.cond35.i_crit_edge
  %cnt.1.i = phi i32 [ 0, %do.end20.i ], [ %inc.i219, %if.then14.i.do.cond35.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %264 = load volatile i32, ptr @jiffies, align 128
  %sub36.i = add i32 %add.neg.i, %264
  %cmp37.i = icmp slt i32 %sub36.i, 0
  br i1 %cmp37.i, label %do.cond35.i.do.body1.i_crit_edge, label %do.end42.i

do.cond35.i.do.body1.i_crit_edge:                 ; preds = %do.cond35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.i

do.end42.i:                                       ; preds = %do.cond35.i
  call void @__sanitizer_cov_trace_pc() #19
  %265 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %pdev.i, align 16
  %dev44.i = getelementptr inbounds %struct.pci_dev, ptr %266, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %267 = load volatile i32, ptr @jiffies, align 128
  %sub45.i = sub i32 %267, %236
  %call46.i = call i32 @jiffies_to_msecs(i32 noundef %sub45.i) #17
  %div47.i = udiv i32 %call46.i, 1000
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.258, i32 noundef %div47.i) #20
  br label %if.end132

if.then129:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  %268 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %pdev.i, align 16
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %269, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %270 = load volatile i32, ptr @jiffies, align 128
  %sub30.i = sub i32 %270, %236
  %call31.i = call i32 @jiffies_to_msecs(i32 noundef %sub30.i) #17
  %div32.i = udiv i32 %call31.i, 1000
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29.i, ptr noundef nonnull @.str.255, i32 noundef %div32.i) #20
  %call33.i = call fastcc i32 @mtip_block_initialize(ptr noundef %data) #17
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #17
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %do.end42.i, %if.end7.i.if.end132_crit_edge, %mtip_check_surprise_removal.exit.thread.i, %do.body1.i.if.end132_crit_edge, %if.end122.if.end132_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #17
  br i1 %call, label %if.end132.st_out_crit_edge, label %if.end132.lor.lhs.false_crit_edge

if.end132.lor.lhs.false_crit_edge:                ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

if.end132.st_out_crit_edge:                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #19
  br label %st_out

st_out:                                           ; preds = %if.end132.st_out_crit_edge, %if.end34.st_out_crit_edge, %lor.lhs.false29.st_out_crit_edge, %if.end26.st_out_crit_edge, %lor.lhs.false.st_out_crit_edge, %entry.st_out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtip_hw_exit(ptr noundef %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sr = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 14
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sr, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %port = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !605
  tail call void @arm_heavy_mb() #17
  %mmio.i = getelementptr inbounds %struct.mtip_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #17, !srcloc !589
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !599
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %9) #17, !srcloc !589
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %13, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !600
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !597
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %18 = and i32 %17, -268435457
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr9.i7.i = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i7.i, i32 %18) #17, !srcloc !589
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr13.i8.i = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i8.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !598
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !617
  tail call void @arm_heavy_mb() #17
  %24 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dd, align 128
  %add.ptr = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !618
  %27 = and i32 %26, -33554433
  %28 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dd, align 128
  %add.ptr3 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %27) #17, !srcloc !589
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdev = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 16
  %irq = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %33, ptr noundef null, i1 noundef zeroext true) #17
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 16
  %irq6 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 46
  %36 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq6, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %37, ptr noundef %dd) #17
  tail call void @msleep(i32 noundef 1000) #17
  %port1.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 7
  %38 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port1.i, align 16
  %block1.i = getelementptr inbounds %struct.mtip_port, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %block1.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %block1_dma.i = getelementptr inbounds %struct.mtip_port, ptr %39, i32 0, i32 11
  %44 = ptrtoint ptr %block1_dma.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %block1_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %41, i32 noundef %45, i32 noundef 0) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %command_list.i = getelementptr inbounds %struct.mtip_port, ptr %39, i32 0, i32 6
  %46 = ptrtoint ptr %command_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %command_list.i, align 4
  %tobool3.not.i = icmp eq ptr %47, null
  br i1 %tobool3.not.i, label %if.end.i.mtip_dma_free.exit_crit_edge, label %if.then4.i

if.end.i.mtip_dma_free.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_dma_free.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 16
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %command_list_dma.i = getelementptr inbounds %struct.mtip_port, ptr %39, i32 0, i32 7
  %50 = ptrtoint ptr %command_list_dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %command_list_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 8192, ptr noundef nonnull %47, i32 noundef %51, i32 noundef 0) #17
  br label %mtip_dma_free.exit

mtip_dma_free.exit:                               ; preds = %if.then4.i, %if.end.i.mtip_dma_free.exit_crit_edge
  %52 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port1.i, align 16
  tail call void @kfree(ptr noundef %53) #17
  %54 = ptrtoint ptr %port1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %port1.i, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mtip_check_surprise_removal(ptr nocapture noundef %dd) unnamed_addr #2 align 64 {
entry:
  %vendor_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id) #17
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %vendor_id, align 2
  %sr = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 14
  %1 = ptrtoint ptr %sr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sr, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 16
  %call = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %vendor_id) #17
  %5 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp = icmp eq i16 %6, -1
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %sr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %sr, align 4
  %queue = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 5
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %do.end, label %if.then5

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %9) #17
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %do.end ], [ true, %if.then5 ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id) #17
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtip_hba_reset(ptr noundef %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !619
  tail call void @arm_heavy_mb() #17
  %0 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #17, !srcloc !589
  %2 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd, align 128
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !620
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 11
  %add.neg = sub i32 -1000, %5
  br label %do.body5

do.body5:                                         ; preds = %land.rhs.do.body5_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #17
  %16 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dd_flag, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not = icmp eq i32 %18, 0
  br i1 %tobool7.not, label %do.cond8, label %do.body5.cleanup_crit_edge

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.cond8:                                         ; preds = %do.body5
  %19 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dd, align 128
  %add.ptr12 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !621
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not = icmp eq i32 %22, 0
  br i1 %tobool16.not, label %do.cond8.do.end17_crit_edge, label %land.rhs

do.cond8.do.end17_crit_edge:                      ; preds = %do.cond8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end17

land.rhs:                                         ; preds = %do.cond8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %23
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs.do.body5_crit_edge, label %land.rhs.do.end17_crit_edge

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end17

land.rhs.do.body5_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body5

do.end17:                                         ; preds = %land.rhs.do.end17_crit_edge, %do.cond8.do.end17_crit_edge
  %24 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dd, align 128
  %add.ptr21 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !622
  %27 = shl i32 %26, 7
  %sext = ashr i32 %27, 31
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.body5.cleanup_crit_edge
  %retval.0 = phi i32 [ %sext, %do.end17 ], [ -1, %do.body5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtip_init_port(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !605
  tail call void @arm_heavy_mb() #17
  %mmio.i = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #17, !srcloc !589
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !599
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %5) #17, !srcloc !589
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !600
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !597
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %14 = and i32 %13, -268435457
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr9.i7.i = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i7.i, i32 %14) #17, !srcloc !589
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr13.i8.i = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i8.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !598
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !623
  %.mask = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !624
  tail call void @arm_heavy_mb() #17
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %add.ptr4 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #17, !srcloc !589
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !625
  tail call void @arm_heavy_mb() #17
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr11 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #17, !srcloc !589
  %flags = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #17
  br label %do.body12

do.body12:                                        ; preds = %do.body, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !626
  tail call void @arm_heavy_mb() #17
  %command_list_dma15 = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 7
  %29 = ptrtoint ptr %command_list_dma15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %command_list_dma15, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #17, !srcloc !589
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !627
  tail call void @arm_heavy_mb() #17
  %rxfis_dma22 = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 9
  %34 = ptrtoint ptr %rxfis_dma22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rxfis_dma22, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i, align 4
  %add.ptr25 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %36) #17, !srcloc !589
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !628
  tail call void @arm_heavy_mb() #17
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 4
  %add.ptr32 = getelementptr i8, ptr %40, i32 48
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !629
  %42 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i, align 4
  %add.ptr37 = getelementptr i8, ptr %43, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %41) #17, !srcloc !589
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port, align 4
  %slot_groups94 = getelementptr inbounds %struct.driver_data, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %slot_groups94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %slot_groups94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp95.not = icmp eq i32 %47, 0
  br i1 %cmp95.not, label %do.body12.do.body42_crit_edge, label %do.body12.do.body39_crit_edge

do.body12.do.body39_crit_edge:                    ; preds = %do.body12
  br label %do.body39

do.body12.do.body42_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body42

do.body39:                                        ; preds = %do.body39.do.body39_crit_edge, %do.body12.do.body39_crit_edge
  %i.096 = phi i32 [ %inc, %do.body39.do.body39_crit_edge ], [ 0, %do.body12.do.body39_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !630
  tail call void @arm_heavy_mb() #17
  %arrayidx = getelementptr %struct.mtip_port, ptr %port, i32 0, i32 4, i32 %i.096
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 -1) #17, !srcloc !589
  %inc = add nuw i32 %i.096, 1
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port, align 4
  %slot_groups = getelementptr inbounds %struct.driver_data, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %slot_groups, align 8
  %cmp = icmp ult i32 %inc, %53
  br i1 %cmp, label %do.body39.do.body39_crit_edge, label %do.body39.do.body42_crit_edge

do.body39.do.body42_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body42

do.body39.do.body39_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body39

do.body42:                                        ; preds = %do.body39.do.body42_crit_edge, %do.body12.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !631
  tail call void @arm_heavy_mb() #17
  %54 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i, align 4
  %add.ptr48 = getelementptr i8, ptr %55, i32 16
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !632
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 4
  %add.ptr53 = getelementptr i8, ptr %58, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %56) #17, !srcloc !589
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !633
  tail call void @arm_heavy_mb() #17
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 128
  %add.ptr61 = getelementptr i8, ptr %62, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !634
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 128
  %add.ptr67 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %63) #17, !srcloc !589
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !635
  tail call void @arm_heavy_mb() #17
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %add.ptr72 = getelementptr i8, ptr %69, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 1526775933) #17, !srcloc !589
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtip_start_port(ptr nocapture noundef readonly %port) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %mmio.i = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !597
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %3 = or i32 %2, 268435456
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #17, !srcloc !589
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !598
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !599
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %12 = or i32 %11, 16777216
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr4.i6 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i6, i32 %12) #17, !srcloc !589
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr13.i7 = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i7) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !600
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_irq_handler(i32 noundef %irq, ptr noundef %instance) #2 align 64 {
entry:
  %vendor_id.i33 = alloca i16, align 2
  %vendor_id.i18 = alloca i16, align 2
  %vendor_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port1.i = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 7
  %0 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1.i, align 16
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 128
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !636
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.do.body165.i_crit_edge, label %if.then.i

entry.do.body165.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body165.i

if.then.i:                                        ; preds = %entry
  %mmio5.i = getelementptr inbounds %struct.mtip_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %mmio5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #17, !srcloc !585
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !637
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  br i1 %cmp.i, label %if.then12.i, label %do.body.i, !prof !607

if.then12.i:                                      ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i18) #17
  %9 = ptrtoint ptr %vendor_id.i18 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %vendor_id.i18, align 2
  %sr.i19 = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 14
  %10 = ptrtoint ptr %sr.i19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sr.i19, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i20 = icmp eq i8 %11, 0
  br i1 %tobool.not.i20, label %if.end.i24, label %if.then12.i.mtip_check_surprise_removal.exit32_crit_edge

if.then12.i.mtip_check_surprise_removal.exit32_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_check_surprise_removal.exit32

if.end.i24:                                       ; preds = %if.then12.i
  %pdev.i21 = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 4
  %12 = ptrtoint ptr %pdev.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i21, align 16
  %call.i22 = call i32 @pci_read_config_word(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %vendor_id.i18) #17
  %14 = ptrtoint ptr %vendor_id.i18 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vendor_id.i18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp.i23 = icmp eq i16 %15, -1
  br i1 %cmp.i23, label %if.then2.i27, label %if.end.i24.mtip_check_surprise_removal.exit32_crit_edge

if.end.i24.mtip_check_surprise_removal.exit32_crit_edge: ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_check_surprise_removal.exit32

if.then2.i27:                                     ; preds = %if.end.i24
  %16 = ptrtoint ptr %sr.i19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %sr.i19, align 4
  %queue.i25 = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 5
  %17 = ptrtoint ptr %queue.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue.i25, align 4
  %tobool4.not.i26 = icmp eq ptr %18, null
  br i1 %tobool4.not.i26, label %do.end.i30, label %if.then5.i28

if.then5.i28:                                     ; preds = %if.then2.i27
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %18) #17
  br label %mtip_check_surprise_removal.exit32

do.end.i30:                                       ; preds = %if.then2.i27
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %pdev.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i21, align 16
  %dev.i29 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i29, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %mtip_check_surprise_removal.exit32

mtip_check_surprise_removal.exit32:               ; preds = %do.end.i30, %if.then5.i28, %if.end.i24.mtip_check_surprise_removal.exit32_crit_edge, %if.then12.i.mtip_check_surprise_removal.exit32_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i18) #17
  br label %mtip_handle_irq.exit

do.body.i:                                        ; preds = %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !638
  tail call void @arm_heavy_mb() #17
  %21 = ptrtoint ptr %mmio5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio5.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %7) #17, !srcloc !589
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %do.body.i.if.end120.i_crit_edge, label %if.then23.i, !prof !607

do.body.i.if.end120.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120.i

if.then23.i:                                      ; preds = %do.body.i
  %irq_workers_active.i = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_workers_active.i, i32 noundef 4) #17
  %23 = ptrtoint ptr %irq_workers_active.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %irq_workers_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25.not.i = icmp eq i32 %24, 0
  br i1 %cmp25.not.i, label %if.then23.i.if.end66.i_crit_edge, label %land.rhs.i

if.then23.i.if.end66.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end66.i

land.rhs.i:                                       ; preds = %if.then23.i
  %.b219.i = load i1, ptr @mtip_handle_irq.__already_done, align 1
  br i1 %.b219.i, label %land.rhs.i.if.end66.i_crit_edge, label %if.then40.i, !prof !593

land.rhs.i.if.end66.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end66.i

if.then40.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mtip_handle_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 762, i32 noundef 9, ptr noundef null) #17
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then40.i, %land.rhs.i.if.end66.i_crit_edge, %if.then23.i.if.end66.i_crit_edge
  %arrayidx77.i = getelementptr %struct.mtip_port, ptr %1, i32 0, i32 4, i32 0
  %25 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx77.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #17, !srcloc !585
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !639
  %completed81.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 0, i32 3
  %29 = ptrtoint ptr %completed81.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %completed81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool83.not.i = icmp ne i32 %27, 0
  %inc.i = zext i1 %tobool83.not.i to i32
  %arrayidx77.1.i = getelementptr %struct.mtip_port, ptr %1, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %arrayidx77.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx77.1.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #17, !srcloc !585
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !639
  %completed81.1.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 1, i32 3
  %34 = ptrtoint ptr %completed81.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %completed81.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool83.not.1.i = icmp ne i32 %32, 0
  %inc.1.i = zext i1 %tobool83.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %arrayidx77.2.i = getelementptr %struct.mtip_port, ptr %1, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %arrayidx77.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx77.2.i, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #17, !srcloc !585
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !639
  %completed81.2.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 2, i32 3
  %39 = ptrtoint ptr %completed81.2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %completed81.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool83.not.2.i = icmp ne i32 %37, 0
  %inc.2.i = zext i1 %tobool83.not.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.2.i
  %arrayidx77.3.i = getelementptr %struct.mtip_port, ptr %1, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %arrayidx77.3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx77.3.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #17, !srcloc !585
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !639
  %completed81.3.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 3, i32 3
  %44 = ptrtoint ptr %completed81.3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %completed81.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool83.not.3.i = icmp ne i32 %42, 0
  %inc.3.i = zext i1 %tobool83.not.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %inc.3.i
  %arrayidx77.4.i = getelementptr %struct.mtip_port, ptr %1, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %arrayidx77.4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx77.4.i, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #17, !srcloc !585
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !639
  %completed81.4.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 4, i32 3
  %49 = ptrtoint ptr %completed81.4.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %completed81.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool83.not.4.i = icmp ne i32 %47, 0
  %inc.4.i = zext i1 %tobool83.not.4.i to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %inc.4.i
  %arrayidx77.5.i = getelementptr %struct.mtip_port, ptr %1, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %arrayidx77.5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx77.5.i, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #17, !srcloc !585
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !639
  %completed81.5.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 5, i32 3
  %54 = ptrtoint ptr %completed81.5.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %completed81.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool83.not.5.i = icmp ne i32 %52, 0
  %inc.5.i = zext i1 %tobool83.not.5.i to i32
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %inc.5.i
  %arrayidx77.6.i = getelementptr %struct.mtip_port, ptr %1, i32 0, i32 4, i32 6
  %55 = ptrtoint ptr %arrayidx77.6.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx77.6.i, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #17, !srcloc !585
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !639
  %completed81.6.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 6, i32 3
  %59 = ptrtoint ptr %completed81.6.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %completed81.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool83.not.6.i = icmp ne i32 %57, 0
  %inc.6.i = zext i1 %tobool83.not.6.i to i32
  %spec.select.6.i = add nuw nsw i32 %spec.select.5.i, %inc.6.i
  %arrayidx77.7.i = getelementptr %struct.mtip_port, ptr %1, i32 0, i32 4, i32 7
  %60 = ptrtoint ptr %arrayidx77.7.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx77.7.i, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #17, !srcloc !585
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !639
  %completed81.7.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 7, i32 3
  %64 = ptrtoint ptr %completed81.7.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %completed81.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool83.not.7.i = icmp ne i32 %62, 0
  %inc.7.i = zext i1 %tobool83.not.7.i to i32
  %spec.select.7.i = add nuw nsw i32 %spec.select.6.i, %inc.7.i
  %call.i.i220.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_workers_active.i, i32 noundef 4) #17
  %65 = ptrtoint ptr %irq_workers_active.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %spec.select.7.i, ptr %irq_workers_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.7.i)
  %tobool88.not.i = icmp eq i32 %spec.select.7.i, 0
  br i1 %tobool88.not.i, label %if.end66.i.if.end120.i_crit_edge, label %for.cond90.preheader.i

if.end66.i.if.end120.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120.i

for.cond90.preheader.i:                           ; preds = %if.end66.i
  %isr_workq.i = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 17
  %66 = ptrtoint ptr %completed81.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %completed81.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool96.not.i = icmp eq i32 %67, 0
  br i1 %tobool96.not.i, label %for.cond90.preheader.i.for.inc101.i_crit_edge, label %if.then97.i

for.cond90.preheader.i.for.inc101.i_crit_edge:    ; preds = %for.cond90.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc101.i

if.then97.i:                                      ; preds = %for.cond90.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx94.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 1
  %cpu_binding.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 1, i32 2
  %68 = ptrtoint ptr %cpu_binding.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu_binding.i, align 16
  %70 = ptrtoint ptr %isr_workq.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %isr_workq.i, align 4
  %call99.i = tail call zeroext i1 @queue_work_on(i32 noundef %69, ptr noundef %71, ptr noundef %arrayidx94.i) #17
  br label %for.inc101.i

for.inc101.i:                                     ; preds = %if.then97.i, %for.cond90.preheader.i.for.inc101.i_crit_edge
  %72 = ptrtoint ptr %completed81.2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %completed81.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool96.not.1.i = icmp eq i32 %73, 0
  br i1 %tobool96.not.1.i, label %for.inc101.i.for.inc101.1.i_crit_edge, label %if.then97.1.i

for.inc101.i.for.inc101.1.i_crit_edge:            ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc101.1.i

if.then97.1.i:                                    ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx94.1.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 2
  %cpu_binding.1.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 2, i32 2
  %74 = ptrtoint ptr %cpu_binding.1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu_binding.1.i, align 16
  %76 = ptrtoint ptr %isr_workq.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %isr_workq.i, align 4
  %call99.1.i = tail call zeroext i1 @queue_work_on(i32 noundef %75, ptr noundef %77, ptr noundef %arrayidx94.1.i) #17
  br label %for.inc101.1.i

for.inc101.1.i:                                   ; preds = %if.then97.1.i, %for.inc101.i.for.inc101.1.i_crit_edge
  %78 = ptrtoint ptr %completed81.3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %completed81.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool96.not.2.i = icmp eq i32 %79, 0
  br i1 %tobool96.not.2.i, label %for.inc101.1.i.for.inc101.2.i_crit_edge, label %if.then97.2.i

for.inc101.1.i.for.inc101.2.i_crit_edge:          ; preds = %for.inc101.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc101.2.i

if.then97.2.i:                                    ; preds = %for.inc101.1.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx94.2.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 3
  %cpu_binding.2.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 3, i32 2
  %80 = ptrtoint ptr %cpu_binding.2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu_binding.2.i, align 16
  %82 = ptrtoint ptr %isr_workq.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %isr_workq.i, align 4
  %call99.2.i = tail call zeroext i1 @queue_work_on(i32 noundef %81, ptr noundef %83, ptr noundef %arrayidx94.2.i) #17
  br label %for.inc101.2.i

for.inc101.2.i:                                   ; preds = %if.then97.2.i, %for.inc101.1.i.for.inc101.2.i_crit_edge
  %84 = ptrtoint ptr %completed81.4.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %completed81.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool96.not.3.i = icmp eq i32 %85, 0
  br i1 %tobool96.not.3.i, label %for.inc101.2.i.for.inc101.3.i_crit_edge, label %if.then97.3.i

for.inc101.2.i.for.inc101.3.i_crit_edge:          ; preds = %for.inc101.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc101.3.i

if.then97.3.i:                                    ; preds = %for.inc101.2.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx94.3.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 4
  %cpu_binding.3.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 4, i32 2
  %86 = ptrtoint ptr %cpu_binding.3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu_binding.3.i, align 16
  %88 = ptrtoint ptr %isr_workq.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %isr_workq.i, align 4
  %call99.3.i = tail call zeroext i1 @queue_work_on(i32 noundef %87, ptr noundef %89, ptr noundef %arrayidx94.3.i) #17
  br label %for.inc101.3.i

for.inc101.3.i:                                   ; preds = %if.then97.3.i, %for.inc101.2.i.for.inc101.3.i_crit_edge
  %90 = ptrtoint ptr %completed81.5.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %completed81.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool96.not.4.i = icmp eq i32 %91, 0
  br i1 %tobool96.not.4.i, label %for.inc101.3.i.for.inc101.4.i_crit_edge, label %if.then97.4.i

for.inc101.3.i.for.inc101.4.i_crit_edge:          ; preds = %for.inc101.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc101.4.i

if.then97.4.i:                                    ; preds = %for.inc101.3.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx94.4.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 5
  %cpu_binding.4.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 5, i32 2
  %92 = ptrtoint ptr %cpu_binding.4.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu_binding.4.i, align 16
  %94 = ptrtoint ptr %isr_workq.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %isr_workq.i, align 4
  %call99.4.i = tail call zeroext i1 @queue_work_on(i32 noundef %93, ptr noundef %95, ptr noundef %arrayidx94.4.i) #17
  br label %for.inc101.4.i

for.inc101.4.i:                                   ; preds = %if.then97.4.i, %for.inc101.3.i.for.inc101.4.i_crit_edge
  %96 = ptrtoint ptr %completed81.6.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %completed81.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool96.not.5.i = icmp eq i32 %97, 0
  br i1 %tobool96.not.5.i, label %for.inc101.4.i.for.inc101.5.i_crit_edge, label %if.then97.5.i

for.inc101.4.i.for.inc101.5.i_crit_edge:          ; preds = %for.inc101.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc101.5.i

if.then97.5.i:                                    ; preds = %for.inc101.4.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx94.5.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 6
  %cpu_binding.5.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 6, i32 2
  %98 = ptrtoint ptr %cpu_binding.5.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cpu_binding.5.i, align 16
  %100 = ptrtoint ptr %isr_workq.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %isr_workq.i, align 4
  %call99.5.i = tail call zeroext i1 @queue_work_on(i32 noundef %99, ptr noundef %101, ptr noundef %arrayidx94.5.i) #17
  br label %for.inc101.5.i

for.inc101.5.i:                                   ; preds = %if.then97.5.i, %for.inc101.4.i.for.inc101.5.i_crit_edge
  %102 = ptrtoint ptr %completed81.7.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %completed81.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool96.not.6.i = icmp eq i32 %103, 0
  br i1 %tobool96.not.6.i, label %for.inc101.5.i.for.inc101.6.i_crit_edge, label %if.then97.6.i

for.inc101.5.i.for.inc101.6.i_crit_edge:          ; preds = %for.inc101.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc101.6.i

if.then97.6.i:                                    ; preds = %for.inc101.5.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx94.6.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 7
  %cpu_binding.6.i = getelementptr %struct.driver_data, ptr %instance, i32 0, i32 20, i32 7, i32 2
  %104 = ptrtoint ptr %cpu_binding.6.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cpu_binding.6.i, align 16
  %106 = ptrtoint ptr %isr_workq.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %isr_workq.i, align 4
  %call99.6.i = tail call zeroext i1 @queue_work_on(i32 noundef %105, ptr noundef %107, ptr noundef %arrayidx94.6.i) #17
  br label %for.inc101.6.i

for.inc101.6.i:                                   ; preds = %if.then97.6.i, %for.inc101.5.i.for.inc101.6.i_crit_edge
  %108 = ptrtoint ptr %completed81.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %completed81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool107.not.i = icmp eq i32 %109, 0
  br i1 %tobool107.not.i, label %for.inc101.6.i.if.end120.i_crit_edge, label %if.then114.i, !prof !607

for.inc101.6.i.if.end120.i_crit_edge:             ; preds = %for.inc101.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120.i

if.then114.i:                                     ; preds = %for.inc101.6.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @mtip_workq_sdbfx(ptr noundef %1, i32 noundef 0, i32 noundef %109) #17
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then114.i, %for.inc101.6.i.if.end120.i_crit_edge, %if.end66.i.if.end120.i_crit_edge, %do.body.i.if.end120.i_crit_edge
  %tobool157.not.i = phi i1 [ false, %if.end66.i.if.end120.i_crit_edge ], [ true, %if.then114.i ], [ true, %for.inc101.6.i.if.end120.i_crit_edge ], [ false, %do.body.i.if.end120.i_crit_edge ]
  %and121.i = and i32 %8, 2109734992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %if.end120.i.if.end144.i_crit_edge, label %if.then129.i, !prof !593

if.end120.i.if.end144.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end144.i

if.then129.i:                                     ; preds = %if.end120.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %110 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %vendor_id.i, align 2
  %sr.i = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 14
  %111 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sr.i, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i10 = icmp eq i8 %112, 0
  br i1 %tobool.not.i10, label %if.end.i14, label %if.then129.i.mtip_check_surprise_removal.exit.thread_crit_edge, !prof !591

if.then129.i.mtip_check_surprise_removal.exit.thread_crit_edge: ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_check_surprise_removal.exit.thread

if.end.i14:                                       ; preds = %if.then129.i
  %pdev.i11 = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 4
  %113 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev.i11, align 16
  %call.i12 = call i32 @pci_read_config_word(ptr noundef %114, i32 noundef 0, ptr noundef nonnull %vendor_id.i) #17
  %115 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %vendor_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %116)
  %cmp.i13 = icmp eq i16 %116, -1
  br i1 %cmp.i13, label %if.then2.i, label %if.end138.i

if.then2.i:                                       ; preds = %if.end.i14
  %117 = ptrtoint ptr %sr.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %sr.i, align 4
  %queue.i = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 5
  %118 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %queue.i, align 4
  %tobool4.not.i = icmp eq ptr %119, null
  br i1 %tobool4.not.i, label %do.end.i16, label %if.then5.i, !prof !592

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %119) #17
  br label %mtip_check_surprise_removal.exit.thread

do.end.i16:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %120 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdev.i11, align 16
  %dev.i15 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i15, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %mtip_check_surprise_removal.exit.thread

mtip_check_surprise_removal.exit.thread:          ; preds = %do.end.i16, %if.then5.i, %if.then129.i.mtip_check_surprise_removal.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #17
  br label %mtip_handle_irq.exit

if.end138.i:                                      ; preds = %if.end.i14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %dd_flag.i = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 11
  %122 = ptrtoint ptr %dd_flag.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %dd_flag.i, align 4
  %124 = and i32 %123, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool140.not.i = icmp eq i32 %124, 0
  br i1 %tobool140.not.i, label %if.end142.i, label %if.end138.i.mtip_handle_irq.exit_crit_edge

if.end138.i.mtip_handle_irq.exit_crit_edge:       ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_handle_irq.exit

if.end142.i:                                      ; preds = %if.end138.i
  %and.i4 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %if.end142.i.if.end.i_crit_edge, label %do.end.i, !prof !593

if.end142.i.if.end.i_crit_edge:                   ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i:                                         ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #19
  %125 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdev.i11, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.100) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !640
  call void @arm_heavy_mb() #17
  %127 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %port1.i, align 16
  %mmio.i = getelementptr inbounds %struct.mtip_port, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %130, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 4) #17, !srcloc !589
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end142.i.if.end.i_crit_edge
  %and5.i = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i7 = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i7, label %if.end.i.if.end23.i_crit_edge, label %do.end15.i, !prof !593

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %131 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev.i11, align 16
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17.i, ptr noundef nonnull @.str.103) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !641
  call void @arm_heavy_mb() #17
  %133 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %port1.i, align 16
  %mmio21.i = getelementptr inbounds %struct.mtip_port, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %mmio21.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmio21.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %136, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 256) #17, !srcloc !589
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end15.i, %if.end.i.if.end23.i_crit_edge
  %and24.i = and i32 %8, 897581072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end40.i, label %do.end34.i, !prof !593

do.end34.i:                                       ; preds = %if.end23.i
  %137 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pdev.i11, align 16
  %dev36.i = getelementptr inbounds %struct.pci_dev, ptr %138, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.106, i32 noundef %and24.i) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i33) #17
  %139 = ptrtoint ptr %vendor_id.i33 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %vendor_id.i33, align 2
  %140 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %sr.i, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i35 = icmp eq i8 %141, 0
  br i1 %tobool.not.i35, label %if.end.i39, label %do.end34.i.mtip_check_surprise_removal.exit47.thread_crit_edge

do.end34.i.mtip_check_surprise_removal.exit47.thread_crit_edge: ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_check_surprise_removal.exit47.thread

if.end.i39:                                       ; preds = %do.end34.i
  %142 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev.i11, align 16
  %call.i37 = call i32 @pci_read_config_word(ptr noundef %143, i32 noundef 0, ptr noundef nonnull %vendor_id.i33) #17
  %144 = ptrtoint ptr %vendor_id.i33 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %vendor_id.i33, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %145)
  %cmp.i38 = icmp eq i16 %145, -1
  br i1 %cmp.i38, label %if.then2.i42, label %mtip_check_surprise_removal.exit47

if.then2.i42:                                     ; preds = %if.end.i39
  %146 = ptrtoint ptr %sr.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %sr.i, align 4
  %queue.i40 = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 5
  %147 = ptrtoint ptr %queue.i40 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %queue.i40, align 4
  %tobool4.not.i41 = icmp eq ptr %148, null
  br i1 %tobool4.not.i41, label %do.end.i45, label %if.then5.i43

if.then5.i43:                                     ; preds = %if.then2.i42
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %148) #17
  br label %mtip_check_surprise_removal.exit47.thread

do.end.i45:                                       ; preds = %if.then2.i42
  call void @__sanitizer_cov_trace_pc() #19
  %149 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdev.i11, align 16
  %dev.i44 = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i44, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %mtip_check_surprise_removal.exit47.thread

mtip_check_surprise_removal.exit47.thread:        ; preds = %do.end.i45, %if.then5.i43, %do.end34.i.mtip_check_surprise_removal.exit47.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i33) #17
  br label %if.end144.i

mtip_check_surprise_removal.exit47:               ; preds = %if.end.i39
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i33) #17
  %and41.i = and i32 %8, 1207959552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %mtip_check_surprise_removal.exit47.if.end144.i_crit_edge, label %mtip_check_surprise_removal.exit47.if.then49.i_crit_edge, !prof !642

mtip_check_surprise_removal.exit47.if.then49.i_crit_edge: ; preds = %mtip_check_surprise_removal.exit47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49.i

mtip_check_surprise_removal.exit47.if.end144.i_crit_edge: ; preds = %mtip_check_surprise_removal.exit47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end144.i

if.end40.i:                                       ; preds = %if.end23.i
  %and41.old.i = and i32 %8, 1207959552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.old.i)
  %tobool42.not.old.i = icmp eq i32 %and41.old.i, 0
  br i1 %tobool42.not.old.i, label %if.end40.i.if.end144.i_crit_edge, label %if.end40.i.if.then49.i_crit_edge, !prof !607

if.end40.i.if.then49.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49.i

if.end40.i.if.end144.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end144.i

if.then49.i:                                      ; preds = %if.end40.i.if.then49.i_crit_edge, %mtip_check_surprise_removal.exit47.if.then49.i_crit_edge
  %151 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %port1.i, align 16
  %flags.i9 = getelementptr inbounds %struct.mtip_port, ptr %152, i32 0, i32 22
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i9) #17
  %153 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %port1.i, align 16
  %svc_wait.i = getelementptr inbounds %struct.mtip_port, ptr %154, i32 0, i32 21
  call void @__wake_up(ptr noundef %svc_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #17
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then49.i, %if.end40.i.if.end144.i_crit_edge, %mtip_check_surprise_removal.exit47.if.end144.i_crit_edge, %mtip_check_surprise_removal.exit47.thread, %if.end120.i.if.end144.i_crit_edge
  %and145.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i)
  %tobool146.not.i = icmp eq i32 %and145.i, 0
  br i1 %tobool146.not.i, label %if.end144.i.if.end156.i_crit_edge, label %if.then153.i, !prof !593

if.end144.i.if.end156.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156.i

if.then153.i:                                     ; preds = %if.end144.i
  %155 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %port1.i, align 16
  %queue.i.i = getelementptr inbounds %struct.driver_data, ptr %instance, i32 0, i32 5
  %157 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %queue.i.i, align 4
  %queue_hw_ctx.i.i = getelementptr inbounds %struct.request_queue, ptr %158, i32 0, i32 8
  %159 = ptrtoint ptr %queue_hw_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %queue_hw_ctx.i.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %tags.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %162, i32 0, i32 19
  %163 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tags.i.i, align 16
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp.i.i.not.i = icmp eq i32 %166, 0
  br i1 %cmp.i.i.not.i, label %if.then153.i.mtip_cmd_from_tag.exit.i_crit_edge, label %if.then.i.i.i

if.then153.i.mtip_cmd_from_tag.exit.i_crit_edge:  ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_cmd_from_tag.exit.i

if.then.i.i.i:                                    ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #19
  %rqs.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %164, i32 0, i32 5
  %167 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rqs.i.i.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %170) #17, !srcloc !608
  %171 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rqs.i.i.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  br label %mtip_cmd_from_tag.exit.i

mtip_cmd_from_tag.exit.i:                         ; preds = %if.then.i.i.i, %if.then153.i.mtip_cmd_from_tag.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %174, %if.then.i.i.i ], [ null, %if.then153.i.mtip_cmd_from_tag.exit.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 1
  %flags.i = getelementptr inbounds %struct.mtip_port, ptr %156, i32 0, i32 22
  %175 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i2 = icmp eq i32 %and1.i.i, 0
  %tobool3.not.i = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond.i = select i1 %tobool.not.i2, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %mtip_cmd_from_tag.exit.i.if.end156.i_crit_edge, label %if.then.i3

mtip_cmd_from_tag.exit.i.if.end156.i_crit_edge:   ; preds = %mtip_cmd_from_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156.i

if.then.i3:                                       ; preds = %mtip_cmd_from_tag.exit.i
  %cmd_issue.i = getelementptr inbounds %struct.mtip_port, ptr %156, i32 0, i32 5
  %177 = ptrtoint ptr %cmd_issue.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cmd_issue.i, align 4
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !643
  %180 = and i32 %179, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool6.not.i = icmp eq i32 %180, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i3.if.end156.i_crit_edge

if.then.i3.if.end156.i_crit_edge:                 ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156.i

if.then7.i:                                       ; preds = %if.then.i3
  %status1.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 53, i32 26
  %181 = ptrtoint ptr %status1.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %status1.i.i, align 4
  %182 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %retval.0.i.i.i, align 8
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %183, i32 0, i32 11
  %184 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %186 = and i32 %185, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i.i.i = icmp eq i32 %186, 0
  br i1 %tobool.not.i.i.i, label %if.then7.i.if.then.i.i_crit_edge, label %blk_should_fake_timeout.exit.i.i

if.then7.i.if.then.i.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

blk_should_fake_timeout.exit.i.i:                 ; preds = %if.then7.i
  %call1.i.i.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %183) #17
  br i1 %call1.i.i.i, label %blk_should_fake_timeout.exit.i.i.if.end156.i_crit_edge, label %blk_should_fake_timeout.exit.i.i.if.then.i.i_crit_edge, !prof !607

blk_should_fake_timeout.exit.i.i.if.then.i.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

blk_should_fake_timeout.exit.i.i.if.end156.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156.i

if.then.i.i:                                      ; preds = %blk_should_fake_timeout.exit.i.i.if.then.i.i_crit_edge, %if.then7.i.if.then.i.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %retval.0.i.i.i) #17
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.then.i.i, %blk_should_fake_timeout.exit.i.i.if.end156.i_crit_edge, %if.then.i3.if.end156.i_crit_edge, %mtip_cmd_from_tag.exit.i.if.end156.i_crit_edge, %if.end144.i.if.end156.i_crit_edge
  br i1 %tobool157.not.i, label %if.end156.i.mtip_handle_irq.exit_crit_edge, label %if.end156.i.do.body165.i_crit_edge, !prof !593

if.end156.i.do.body165.i_crit_edge:               ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body165.i

if.end156.i.mtip_handle_irq.exit_crit_edge:       ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_handle_irq.exit

do.body165.i:                                     ; preds = %if.end156.i.do.body165.i_crit_edge, %entry.do.body165.i_crit_edge
  %rv.0224.i = phi i32 [ 1, %if.end156.i.do.body165.i_crit_edge ], [ 0, %entry.do.body165.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !644
  call void @arm_heavy_mb() #17
  %187 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %instance, align 128
  %add.ptr169.i = getelementptr i8, ptr %188, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.i, i32 %4) #17, !srcloc !589
  br label %mtip_handle_irq.exit

mtip_handle_irq.exit:                             ; preds = %do.body165.i, %if.end156.i.mtip_handle_irq.exit_crit_edge, %if.end138.i.mtip_handle_irq.exit_crit_edge, %mtip_check_surprise_removal.exit.thread, %mtip_check_surprise_removal.exit32
  %retval.0.i = phi i32 [ 1, %mtip_check_surprise_removal.exit32 ], [ 1, %if.end138.i.mtip_handle_irq.exit_crit_edge ], [ %rv.0224.i, %do.body165.i ], [ 1, %if.end156.i.mtip_handle_irq.exit_crit_edge ], [ 1, %mtip_check_surprise_removal.exit.thread ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mtip_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  %last_sg.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %5, i32 1
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags.i, align 4
  %8 = and i32 %7, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %8)
  %9 = icmp eq i32 %8, 34
  br i1 %9, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = getelementptr %struct.request, ptr %5, i32 1, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %port.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port.i, align 16
  %command_list.i = getelementptr inbounds %struct.mtip_port, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %command_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %command_list.i, align 4
  %tag.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tag.i, align 4
  %mul.i = shl i32 %18, 5
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 %mul.i
  %s_active.i.i = getelementptr inbounds %struct.mtip_port, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %s_active.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_active.i.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !645
  %22 = and i32 %21, -16777217
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #17
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %14, align 4
  %slot_groups15.i.i = getelementptr inbounds %struct.driver_data, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %slot_groups15.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slot_groups15.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp16.i.i = icmp ugt i32 %27, 1
  br i1 %cmp16.i.i, label %if.then.for.body.i.i_crit_edge, label %if.then.mtip_commands_active.exit.i_crit_edge

if.then.mtip_commands_active.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_commands_active.exit.i

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %active.018.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %23, %if.then.for.body.i.i_crit_edge ]
  %n.017.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %if.then.for.body.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr %struct.mtip_port, ptr %14, i32 0, i32 3, i32 %n.017.i.i
  %28 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx5.i.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #17, !srcloc !585
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !646
  %or.i.i = or i32 %31, %active.018.i.i
  %inc.i.i = add nuw i32 %n.017.i.i, 1
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %14, align 4
  %slot_groups.i.i = getelementptr inbounds %struct.driver_data, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %slot_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slot_groups.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %35
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.mtip_commands_active.exit.i_crit_edge

for.body.i.i.mtip_commands_active.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_commands_active.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

mtip_commands_active.exit.i:                      ; preds = %for.body.i.i.mtip_commands_active.exit.i_crit_edge, %if.then.mtip_commands_active.exit.i_crit_edge
  %active.0.lcssa.i.i = phi i32 [ %23, %if.then.mtip_commands_active.exit.i_crit_edge ], [ %or.i.i, %for.body.i.i.mtip_commands_active.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.lcssa.i.i)
  %cmp9.i.not.i = icmp eq i32 %active.0.lcssa.i.i, 0
  br i1 %cmp9.i.not.i, label %if.end.i, label %mtip_commands_active.exit.i.cleanup_crit_edge

mtip_commands_active.exit.i.cleanup_crit_edge:    ; preds = %mtip_commands_active.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %mtip_commands_active.exit.i
  %command_dma.i = getelementptr %struct.request, ptr %5, i32 1, i32 1
  %36 = ptrtoint ptr %command_dma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %command_dma.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #17
  %ctba.i = getelementptr inbounds %struct.mtip_cmd_hdr, ptr %add.ptr.i25, i32 0, i32 2
  %39 = ptrtoint ptr %ctba.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ctba.i, align 4
  %40 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port.i, align 16
  %flags.i = getelementptr inbounds %struct.mtip_port, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i, align 4
  %44 = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %ctbau.i = getelementptr inbounds %struct.mtip_cmd_hdr, ptr %add.ptr.i25, i32 0, i32 3
  %45 = ptrtoint ptr %ctbau.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ctbau.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %opts.i = getelementptr inbounds %struct.mtip_int_cmd, ptr %12, i32 0, i32 3
  %46 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %opts.i, align 4
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %12, align 4
  %or.i = or i32 %49, %47
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i) #17
  %51 = ptrtoint ptr %add.ptr.i25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %add.ptr.i25, align 4
  %buf_len.i = getelementptr inbounds %struct.mtip_int_cmd, ptr %12, i32 0, i32 2
  %52 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buf_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool10.not.i = icmp eq i32 %53, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end21.i_crit_edge, label %if.then11.i

if.end8.i.if.end21.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %55, i32 128
  %sub.i = add i32 %53, 4194303
  %and14.i = and i32 %sub.i, 4194303
  %56 = tail call i32 @llvm.bswap.i32(i32 %and14.i) #17
  %info.i = getelementptr i8, ptr %55, i32 140
  %57 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %info.i, align 4
  %buffer.i = getelementptr inbounds %struct.mtip_int_cmd, ptr %12, i32 0, i32 1
  %58 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buffer.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #17
  %61 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %add.ptr12.i, align 4
  %dba_upper.i = getelementptr i8, ptr %55, i32 132
  %62 = ptrtoint ptr %dba_upper.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %dba_upper.i, align 4
  %63 = ptrtoint ptr %add.ptr.i25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i25, align 4
  %or20.i = or i32 %64, 256
  store i32 %or20.i, ptr %add.ptr.i25, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end21.i_crit_edge
  %65 = getelementptr inbounds %struct.mtip_cmd_hdr, ptr %add.ptr.i25, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %65, align 4
  tail call void @blk_mq_start_request(ptr noundef %5) #17
  %67 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %port.i, align 16
  %69 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tag.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !647
  tail call void @arm_heavy_mb() #17
  %and.i.i = and i32 %70, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %71 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #17
  %shr.i48.i = ashr i32 %70, 5
  %arrayidx.i.i = getelementptr %struct.mtip_port, ptr %68, i32 0, i32 5, i32 %shr.i48.i
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #17, !srcloc !589
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i.i29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i29)
  %tobool.i.not.i = icmp eq i32 %and.i.i29, 0
  br i1 %tobool.i.not.i, label %if.end.if.end7_crit_edge, label %lor.lhs.false.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

lor.lhs.false.i:                                  ; preds = %if.end
  %unal_qdepth.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 24
  %74 = ptrtoint ptr %unal_qdepth.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %unal_qdepth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i30 = icmp eq i32 %75, 0
  br i1 %tobool.not.i30, label %lor.lhs.false.i.if.end7_crit_edge, label %if.end.i31

lor.lhs.false.i.if.end7_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.end.i31:                                       ; preds = %lor.lhs.false.i
  %__data_len.i.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 8
  %76 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %__data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33280, i32 %77)
  %cmp3.i = icmp ult i32 %77, 33280
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i31.if.end14.i_crit_edge

if.end.i31.if.end14.i_crit_edge:                  ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.then4.i:                                       ; preds = %if.end.i31
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 9
  %78 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %__sector.i.i, align 8
  %and6.i = and i64 %79, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i)
  %tobool7.not.i = icmp eq i64 %and6.i, 0
  %80 = and i32 %77, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool11.not.i = icmp eq i32 %80, 0
  %or.cond.i = select i1 %tobool7.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.then4.i.if.end14.i_crit_edge, label %if.then12.i

if.then4.i.if.end14.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  %unaligned.i = getelementptr %struct.request, ptr %5, i32 1, i32 3
  %81 = ptrtoint ptr %unaligned.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %unaligned.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.then4.i.if.end14.i_crit_edge, %if.end.i31.if.end14.i_crit_edge
  %unaligned15.i = getelementptr %struct.request, ptr %5, i32 1, i32 3
  %82 = ptrtoint ptr %unaligned15.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %unaligned15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool16.not.i = icmp eq i32 %83, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end7_crit_edge, label %land.lhs.true.i

if.end14.i.if.end7_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.end14.i
  %port.i32 = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %84 = ptrtoint ptr %port.i32 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %port.i32, align 16
  %cmd_slot_unal.i = getelementptr inbounds %struct.mtip_port, ptr %85, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_slot_unal.i, i32 noundef 4) #17
  %86 = ptrtoint ptr %cmd_slot_unal.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %cmd_slot_unal.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %land.lhs.true.i
  %c.0.i.i.i = phi i32 [ %87, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.if.end7_crit_edge, label %do.cond3.i.i.i, !prof !607

do.body1.i.i.i.if.end7_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !648
  tail call void @llvm.prefetch.p0(ptr %cmd_slot_unal.i, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cmd_slot_unal.i, ptr %cmd_slot_unal.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %cmd_slot_unal.i) #17, !srcloc !649
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %88, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %88, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !650
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %atomic_dec_if_positive.exit.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !593

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.i.i.i

atomic_dec_if_positive.exit.i:                    ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp18.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp18.i, label %atomic_dec_if_positive.exit.i.cleanup_crit_edge, label %atomic_dec_if_positive.exit.i.if.end7_crit_edge

atomic_dec_if_positive.exit.i.if.end7_crit_edge:  ; preds = %atomic_dec_if_positive.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

atomic_dec_if_positive.exit.i.cleanup_crit_edge:  ; preds = %atomic_dec_if_positive.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %atomic_dec_if_positive.exit.i.if.end7_crit_edge, %do.body1.i.i.i.if.end7_crit_edge, %if.end14.i.if.end7_crit_edge, %lor.lhs.false.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %port.i34 = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %89 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %port.i34, align 16
  %flags.i35 = getelementptr inbounds %struct.mtip_port, ptr %90, i32 0, i32 22
  %91 = ptrtoint ptr %flags.i35 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags.i35, align 4
  %93 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i36 = icmp eq i32 %93, 0
  br i1 %tobool.not.i36, label %if.end7.lor.lhs.false_crit_edge, label %if.then.i, !prof !593

if.end7.lor.lhs.false_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

if.then.i:                                        ; preds = %if.end7
  %ic_pause_timer.i = getelementptr inbounds %struct.mtip_port, ptr %90, i32 0, i32 23
  %94 = ptrtoint ptr %ic_pause_timer.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ic_pause_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool4.not.i = icmp eq i32 %95, 0
  br i1 %tobool4.not.i, label %if.then.i.cleanup_crit_edge, label %if.then5.i38

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5.i38:                                     ; preds = %if.then.i
  %add.i = add i32 %95, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %sub.i37 = sub i32 %add.i, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i37)
  %cmp.i = icmp slt i32 %sub.i37, 0
  br i1 %cmp.i, label %cleanup.i, label %if.then5.i38.cleanup_crit_edge

if.then5.i38.cleanup_crit_edge:                   ; preds = %if.then5.i38
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.i:                                        ; preds = %if.then5.i38
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i35) #17
  %dd_flag.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %dd_flag.i) #17
  %97 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %port.i34, align 16
  %ic_pause_timer13.i = getelementptr inbounds %struct.mtip_port, ptr %98, i32 0, i32 23
  %99 = ptrtoint ptr %ic_pause_timer13.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %ic_pause_timer13.i, align 4
  %100 = load ptr, ptr %port.i34, align 16
  %svc_wait.i = getelementptr inbounds %struct.mtip_port, ptr %100, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %svc_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #17
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.i, %if.end7.lor.lhs.false_crit_edge
  %dd_flag.i39 = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 11
  %101 = ptrtoint ptr %dd_flag.i39 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dd_flag.i39, align 32
  %and.i = and i32 %102, 271
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i40 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i40, label %lor.lhs.false.if.end11_crit_edge, label %if.end.i41, !prof !593

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.end.i41:                                       ; preds = %lor.lhs.false
  %103 = ptrtoint ptr %dd_flag.i39 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %dd_flag.i39, align 4
  %105 = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool5.not.i = icmp eq i32 %105, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i41.cleanup_crit_edge

if.end.i41.cleanup_crit_edge:                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i41
  %106 = ptrtoint ptr %dd_flag.i39 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %dd_flag.i39, align 4
  %108 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool10.not.i42 = icmp eq i32 %108, 0
  br i1 %tobool10.not.i42, label %if.end12.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12.i:                                       ; preds = %if.end7.i
  %109 = ptrtoint ptr %dd_flag.i39 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %dd_flag.i39, align 4
  %111 = and i32 %110, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool15.not.i = icmp eq i32 %111, 0
  br i1 %tobool15.not.i, label %if.end12.i.if.end19.i_crit_edge, label %land.lhs.true.i46

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i

land.lhs.true.i46:                                ; preds = %if.end12.i
  %112 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i44 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool.i.not.i45 = icmp eq i32 %and.i.i44, 0
  br i1 %tobool.i.not.i45, label %land.lhs.true.i46.if.end19.i_crit_edge, label %land.lhs.true.i46.cleanup_crit_edge

land.lhs.true.i46.cleanup_crit_edge:              ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.i46.if.end19.i_crit_edge:           ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i

if.end19.i:                                       ; preds = %land.lhs.true.i46.if.end19.i_crit_edge, %if.end12.i.if.end19.i_crit_edge
  %114 = ptrtoint ptr %dd_flag.i39 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %dd_flag.i39, align 4
  %and1.i39.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i39.i)
  %tobool22.not.i = icmp eq i32 %and1.i39.i, 0
  br i1 %tobool22.not.i, label %is_stopped.exit, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_stopped.exit:                                  ; preds = %if.end19.i
  %116 = ptrtoint ptr %dd_flag.i39 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %dd_flag.i39, align 4
  %118 = and i32 %117, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool27.not.i.not = icmp eq i32 %118, 0
  br i1 %tobool27.not.i.not, label %is_stopped.exit.if.end11_crit_edge, label %is_stopped.exit.cleanup_crit_edge

is_stopped.exit.cleanup_crit_edge:                ; preds = %is_stopped.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_stopped.exit.if.end11_crit_edge:               ; preds = %is_stopped.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.end11:                                         ; preds = %is_stopped.exit.if.end11_crit_edge, %lor.lhs.false.if.end11_crit_edge
  tail call void @blk_mq_start_request(ptr noundef %5) #17
  %119 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %port.i34, align 16
  %command_list.i49 = getelementptr inbounds %struct.mtip_port, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %command_list.i49 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %command_list.i49, align 4
  %tag.i50 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 5
  %123 = ptrtoint ptr %tag.i50 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tag.i50, align 4
  %mul.i51 = shl i32 %124, 5
  %add.ptr.i52 = getelementptr i8, ptr %122, i32 %mul.i51
  %125 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i54 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool.i.not.i55 = icmp eq i32 %and.i.i54, 0
  %cond3.i = select i1 %tobool.i.not.i55, i32 2, i32 1
  %__sector.i.i56 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 9
  %127 = ptrtoint ptr %__sector.i.i56 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %__sector.i.i56, align 8
  %__data_len.i.i.i57 = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 8
  %129 = ptrtoint ptr %__data_len.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %__data_len.i.i.i57, align 8
  %shr.i136.i = lshr i32 %130, 9
  %131 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %queue, align 8
  %133 = getelementptr %struct.request, ptr %5, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i.i) #17
  %134 = ptrtoint ptr %last_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %last_sg.i.i, align 4
  %call.i.i = call i32 @__blk_rq_map_sg(ptr noundef %132, ptr noundef %5, ptr noundef %133, ptr noundef nonnull %last_sg.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i.i) #17
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %135 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  %call8.i = call i32 @dma_map_sg_attrs(ptr noundef %dev.i, ptr noundef %133, i32 noundef %call.i.i, i32 noundef %cond3.i, i32 noundef 0) #17
  %flags.i59 = getelementptr inbounds %struct.mtip_port, ptr %120, i32 0, i32 22
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %flags.i59) #17, !srcloc !608
  %scatter_ents.i = getelementptr %struct.request, ptr %5, i32 1, i32 2
  %137 = ptrtoint ptr %scatter_ents.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call8.i, ptr %scatter_ents.i, align 4
  %retries.i = getelementptr %struct.request, ptr %5, i32 53, i32 23
  %138 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2, ptr %retries.i, align 4
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 39, ptr %140, align 4
  %opts.i60 = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 1
  %142 = ptrtoint ptr %opts.i60 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -128, ptr %opts.i60, align 1
  %spec.select.i = select i1 %tobool.i.not.i55, i8 96, i8 97
  %143 = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 2
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %spec.select.i, ptr %143, align 2
  %conv.i = trunc i64 %128 to i8
  %145 = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv.i, ptr %145, align 4
  %shr.i = lshr i64 %128, 8
  %conv15.i = trunc i64 %shr.i to i8
  %147 = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 5
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv15.i, ptr %147, align 1
  %shr16.i = lshr i64 %128, 16
  %conv18.i = trunc i64 %shr16.i to i8
  %149 = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 6
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv18.i, ptr %149, align 2
  %shr19.i = lshr i64 %128, 24
  %conv21.i = trunc i64 %shr19.i to i8
  %151 = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 8
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv21.i, ptr %151, align 4
  %shr22.i = lshr i64 %128, 32
  %conv24.i = trunc i64 %shr22.i to i8
  %153 = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 9
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv24.i, ptr %153, align 1
  %shr25.i = lshr i64 %128, 40
  %conv27.i = trunc i64 %shr25.i to i8
  %155 = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 10
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv27.i, ptr %155, align 2
  %157 = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 7
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 64, ptr %157, align 1
  %conv29.i = trunc i32 %shr.i136.i to i8
  %features.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 3
  %159 = ptrtoint ptr %features.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv29.i, ptr %features.i, align 1
  %shr30.i = lshr i32 %130, 17
  %conv32.i = trunc i32 %shr30.i to i8
  %features_ex.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 11
  %160 = ptrtoint ptr %features_ex.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv32.i, ptr %features_ex.i, align 1
  %161 = ptrtoint ptr %tag.i50 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tag.i50, align 4
  %shl.i = shl i32 %162, 3
  %163 = lshr i32 %162, 5
  %or.i61 = or i32 %shl.i, %163
  %conv36.i = trunc i32 %or.i61 to i8
  %sect_count.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 12
  %164 = ptrtoint ptr %sect_count.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv36.i, ptr %sect_count.i, align 4
  %sect_cnt_ex.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %140, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp14.i.i = icmp sgt i32 %call8.i, 0
  %165 = call ptr @memset(ptr %sect_cnt_ex.i, i32 0, i32 7)
  br i1 %cmp14.i.i, label %for.body.lr.ph.i.i, label %if.end11.fill_command_sg.exit.i_crit_edge

if.end11.fill_command_sg.exit.i_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %fill_command_sg.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end11
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %167, i32 128
  br label %for.body.i.i63

for.body.i.i63:                                   ; preds = %if.end.i.i.for.body.i.i63_crit_edge, %for.body.lr.ph.i.i
  %sg.017.i.i = phi ptr [ %133, %for.body.lr.ph.i.i ], [ %call.i138.i, %if.end.i.i.for.body.i.i63_crit_edge ]
  %command_sg.016.i.i = phi ptr [ %add.ptr.i.i62, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end.i.i.for.body.i.i63_crit_edge ]
  %n.015.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i64, %if.end.i.i.for.body.i.i63_crit_edge ]
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.017.i.i, i32 0, i32 4
  %168 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dma_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %169)
  %cmp2.i.i = icmp ugt i32 %169, 4194304
  br i1 %cmp2.i.i, label %do.end.i.i, label %for.body.i.i63.if.end.i.i_crit_edge

for.body.i.i63.if.end.i.i_crit_edge:              ; preds = %for.body.i.i63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i63
  call void @__sanitizer_cov_trace_pc() #19
  %170 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pdev.i, align 16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.108) #20
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %for.body.i.i63.if.end.i.i_crit_edge
  %sub.i.i = add i32 %169, 4194303
  %and.i137.i = and i32 %sub.i.i, 4194303
  %172 = call i32 @llvm.bswap.i32(i32 %and.i137.i) #17
  %info.i.i = getelementptr inbounds %struct.mtip_cmd_sg, ptr %command_sg.016.i.i, i32 0, i32 3
  %173 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %info.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.017.i.i, i32 0, i32 3
  %174 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dma_address.i.i, align 4
  %176 = call i32 @llvm.bswap.i32(i32 %175) #17
  %177 = ptrtoint ptr %command_sg.016.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %command_sg.016.i.i, align 4
  %dba_upper.i.i = getelementptr inbounds %struct.mtip_cmd_sg, ptr %command_sg.016.i.i, i32 0, i32 1
  %178 = ptrtoint ptr %dba_upper.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %dba_upper.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.mtip_cmd_sg, ptr %command_sg.016.i.i, i32 1
  %inc.i.i64 = add nuw nsw i32 %n.015.i.i, 1
  %call.i138.i = call ptr @sg_next(ptr noundef %sg.017.i.i) #17
  %exitcond.not.i.i = icmp eq i32 %inc.i.i64, %call8.i
  br i1 %exitcond.not.i.i, label %if.end.i.i.fill_command_sg.exit.i_crit_edge, label %if.end.i.i.for.body.i.i63_crit_edge

if.end.i.i.for.body.i.i63_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i63

if.end.i.i.fill_command_sg.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fill_command_sg.exit.i

fill_command_sg.exit.i:                           ; preds = %if.end.i.i.fill_command_sg.exit.i_crit_edge, %if.end11.fill_command_sg.exit.i_crit_edge
  %unaligned.i65 = getelementptr %struct.request, ptr %5, i32 1, i32 3
  %179 = ptrtoint ptr %unaligned.i65 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %unaligned.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.i66 = icmp eq i32 %180, 0
  br i1 %tobool.not.i66, label %fill_command_sg.exit.i.if.end43.i_crit_edge, label %if.then39.i, !prof !593

fill_command_sg.exit.i.if.end43.i_crit_edge:      ; preds = %fill_command_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43.i

if.then39.i:                                      ; preds = %fill_command_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %181 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %157, align 1
  %183 = or i8 %182, -128
  store i8 %183, ptr %157, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %fill_command_sg.exit.i.if.end43.i_crit_edge
  %command_dma.i67 = getelementptr %struct.request, ptr %5, i32 1, i32 1
  %184 = ptrtoint ptr %command_dma.i67 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %command_dma.i67, align 4
  %186 = call i32 @llvm.bswap.i32(i32 %185) #17
  %ctba.i68 = getelementptr inbounds %struct.mtip_cmd_hdr, ptr %add.ptr.i52, i32 0, i32 2
  %187 = ptrtoint ptr %ctba.i68 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %ctba.i68, align 4
  %188 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %port.i34, align 16
  %flags46.i = getelementptr inbounds %struct.mtip_port, ptr %189, i32 0, i32 22
  %190 = ptrtoint ptr %flags46.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %flags46.i, align 4
  %192 = and i32 %191, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool48.not.i = icmp eq i32 %192, 0
  br i1 %tobool48.not.i, label %if.end43.i.if.end53.i_crit_edge, label %if.then49.i

if.end43.i.if.end53.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53.i

if.then49.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #19
  %ctbau.i69 = getelementptr inbounds %struct.mtip_cmd_hdr, ptr %add.ptr.i52, i32 0, i32 3
  %193 = ptrtoint ptr %ctbau.i69 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %ctbau.i69, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %if.end43.i.if.end53.i_crit_edge
  %shl54.i = shl i32 %call8.i, 16
  %or56.i = or i32 %shl54.i, 133
  %194 = call i32 @llvm.bswap.i32(i32 %or56.i) #17
  %195 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %add.ptr.i52, align 4
  %196 = getelementptr inbounds %struct.mtip_cmd_hdr, ptr %add.ptr.i52, i32 0, i32 1
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %196, align 4
  %direction.i = getelementptr %struct.request, ptr %5, i32 53, i32 25
  %198 = ptrtoint ptr %direction.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %cond3.i, ptr %direction.i, align 4
  %199 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %flags.i59, align 4
  %and59.i = and i32 %200, 527
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  %201 = ptrtoint ptr %tag.i50 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tag.i50, align 4
  br i1 %tobool60.not.i, label %if.end71.i, label %if.then67.i, !prof !593

if.then67.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #19
  %cmds_to_issue.i = getelementptr inbounds %struct.mtip_port, ptr %120, i32 0, i32 20
  call void @_set_bit(i32 noundef %202, ptr noundef %cmds_to_issue.i) #17
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i59) #17
  br label %cleanup

if.end71.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #19
  %shr.i139.i = ashr i32 %202, 5
  %arrayidx.i.i70 = getelementptr %struct.mtip_port, ptr %120, i32 0, i32 25, i32 %shr.i139.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i70) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !615
  call void @arm_heavy_mb() #17
  %and.i140.i = and i32 %202, 31
  %shl.i.i71 = shl nuw i32 1, %and.i140.i
  %203 = call i32 @llvm.bswap.i32(i32 %shl.i.i71) #17
  %arrayidx2.i.i = getelementptr %struct.mtip_port, ptr %120, i32 0, i32 3, i32 %shr.i139.i
  %204 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx2.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %203) #17, !srcloc !589
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !616
  call void @arm_heavy_mb() #17
  %arrayidx9.i.i = getelementptr %struct.mtip_port, ptr %120, i32 0, i32 5, i32 %shr.i139.i
  %206 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx9.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %203) #17, !srcloc !589
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i70) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end71.i, %if.then67.i, %is_stopped.exit.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %land.lhs.true.i46.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i41.cleanup_crit_edge, %if.then5.i38.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %atomic_dec_if_positive.exit.i.cleanup_crit_edge, %if.end21.i, %mtip_commands_active.exit.i.cleanup_crit_edge
  %retval.0 = phi i8 [ 10, %is_stopped.exit.cleanup_crit_edge ], [ 0, %if.end21.i ], [ 13, %mtip_commands_active.exit.i.cleanup_crit_edge ], [ 13, %atomic_dec_if_positive.exit.i.cleanup_crit_edge ], [ 0, %if.then67.i ], [ 0, %if.end71.i ], [ 10, %if.then.i.cleanup_crit_edge ], [ 10, %if.then5.i38.cleanup_crit_edge ], [ 10, %if.end.i41.cleanup_crit_edge ], [ 10, %if.end7.i.cleanup_crit_edge ], [ 10, %land.lhs.true.i46.cleanup_crit_edge ], [ 10, %if.end19.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_cmd_timeout(ptr noundef %req, i1 noundef zeroext %reserved) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %reserved, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %status = getelementptr %struct.request, ptr %req, i32 53, i32 26
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %status, align 4
  tail call void @blk_mq_complete_request(ptr noundef %req) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queuedata, align 4
  %tag = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 5
  %5 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tag, align 4
  %port = getelementptr inbounds %struct.driver_data, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 16
  %cmds_to_issue = getelementptr inbounds %struct.mtip_port, ptr %8, i32 0, i32 20
  %div3.i = lshr i32 %6, 5
  %arrayidx.i = getelementptr i32, ptr %cmds_to_issue, i32 %div3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %6, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.mtip_port, ptr %8, i32 0, i32 22
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 16
  %svc_wait = getelementptr inbounds %struct.mtip_port, ptr %14, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %svc_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_softirq_done_fn(ptr noundef %rq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %pdev = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = getelementptr %struct.request, ptr %rq, i32 1, i32 4
  %scatter_ents = getelementptr %struct.request, ptr %rq, i32 1, i32 2
  %7 = ptrtoint ptr %scatter_ents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scatter_ents, align 4
  %direction = getelementptr %struct.request, ptr %rq, i32 53, i32 25
  %9 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %direction, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 0) #17
  %unaligned = getelementptr %struct.request, ptr %rq, i32 1, i32 3
  %11 = ptrtoint ptr %unaligned to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unaligned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !593

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %port = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 16
  %cmd_slot_unal = getelementptr inbounds %struct.mtip_port, ptr %14, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_slot_unal, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %cmd_slot_unal, i32 1, i32 3, i32 1) #17
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_slot_unal, ptr %cmd_slot_unal, i32 1, ptr elementtype(i32) %cmd_slot_unal) #17, !srcloc !651
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status = getelementptr %struct.request, ptr %rq, i32 53, i32 26
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %status, align 4
  tail call void @blk_mq_end_request(ptr noundef %rq, i8 noundef zeroext %17) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_init_cmd(ptr nocapture noundef readonly %set, ptr noundef %rq, i32 noundef %hctx_idx, i32 noundef %numa_node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %pdev = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %command_dma = getelementptr %struct.request, ptr %rq, i32 1, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef %command_dma, i32 noundef 3264, i32 noundef 0) #17
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %5 = getelementptr %struct.request, ptr %rq, i32 1, i32 4
  tail call void @sg_init_table(ptr noundef %5, i32 noundef 504) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtip_free_cmd(ptr nocapture noundef readonly %set, ptr nocapture noundef readonly %rq, i32 noundef %hctx_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %pdev = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %command_dma = getelementptr %struct.request, ptr %rq, i32 1, i32 1
  %6 = ptrtoint ptr %command_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %command_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtip_block_open(ptr noundef readonly %dev, i32 noundef %mode) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dd_flag, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  %. = select i1 %tobool5.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then4 ], [ -19, %if.then.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mtip_block_release(ptr nocapture noundef %disk, i32 noundef %mode) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_block_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %fis.i177.i = alloca %struct.host_to_dev_fis, align 4
  %fis.i164.i = alloca %struct.host_to_dev_fis, align 4
  %fis.i.i = alloca %struct.host_to_dev_fis, align 4
  %dma_addr.i.i = alloca i32, align 4
  %drive_command.i = alloca [4 x i8], align 4
  %drive_command18.i = alloca [7 x i8], align 1
  %req_task.i = alloca %struct.ide_task_request_s, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dd_flag, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4705, i32 %cmd)
  %cond = icmp eq i32 %cmd, 4705
  %or.cond = or i1 %cond, %tobool4.not
  br i1 %or.cond, label %if.end2.cleanup_crit_edge, label %sw.default, !prof !642

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.default:                                       ; preds = %if.end2
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %cmd, label %sw.default.cleanup_crit_edge [
    i32 781, label %sw.bb.i
    i32 799, label %sw.bb1.i
    i32 798, label %sw.bb17.i
    i32 797, label %sw.bb37.i
  ]

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.default
  %8 = inttoptr i32 %arg to ptr
  %port.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 16
  %identify.i = getelementptr inbounds %struct.mtip_port, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %identify.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %identify.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i, label %sw.bb.i.cleanup_crit_edge, label %if.end.i.i.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i.i:                                     ; preds = %sw.bb.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 512, i32 -1226833920) #24, !srcloc !652
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.cleanup_crit_edge

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %12, i32 noundef 512) #17
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %12, i32 noundef 512) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.sw.epilog.i_crit_edge, label %copy_to_user.exit.i.cleanup_crit_edge

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

copy_to_user.exit.i.sw.epilog.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drive_command.i) #17
  %14 = getelementptr inbounds [4 x i8], ptr %drive_command.i, i32 0, i32 1
  %15 = getelementptr inbounds [4 x i8], ptr %drive_command.i, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %drive_command.i, i32 0, i32 3
  %17 = inttoptr i32 %arg to ptr
  %18 = ptrtoint ptr %drive_command.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %drive_command.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 156) #17
  %call.i.i70.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i70.i, label %sw.bb1.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb1.i.if.then11.i.i.i_crit_edge:               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb1.i
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 4, i32 -1226833920) #24
  %asmresult.i.i71.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i71.i)
  %cmp.i6.i72.i = icmp eq i32 %asmresult.i.i71.i, 0
  br i1 %cmp.i6.i72.i, label %if.end.i.i74.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !593

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i

if.end.i.i74.i:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i73.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %drive_command.i, i32 noundef 4) #17
  %20 = call i32 @llvm.read_register.i32(metadata !572) #17
  %and.i.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !653
  %and.i.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #17, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !655
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %drive_command.i, ptr noundef %17, i32 noundef 4) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #17, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end5.i, label %if.end.i.i74.i.if.then11.i.i.i_crit_edge, !prof !593

if.end.i.i74.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i74.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i74.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb1.i.if.then11.i.i.i_crit_edge
  %res.0.i.i225.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i74.i.if.then11.i.i.i_crit_edge ], [ 4, %sw.bb1.i.if.then11.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 4, %res.0.i.i225.i
  %add.ptr.i.i.i = getelementptr i8, ptr %drive_command.i, i32 %sub.i.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i225.i)
  br label %cleanup.thread.i

if.end5.i:                                        ; preds = %if.end.i.i74.i
  %port6.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %port6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port6.i, align 16
  %add.i = add i32 %arg, 4
  %26 = inttoptr i32 %add.i to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fis.i.i) #17
  %27 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 3
  %30 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 4
  %31 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 5
  %32 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 6
  %33 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i.i, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i.i) #17
  %34 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dma_addr.i.i, align 4
  %35 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %16, align 1
  %conv.i.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %if.end5.i.if.end10.i.i_crit_edge, label %if.then.i.i

if.end5.i.if.end10.i.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool1.not.i.i = icmp eq i32 %add.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.exec_drive_command.exit.thread.i_crit_edge, label %if.end.i.i

if.then.i.i.exec_drive_command.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exec_drive_command.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %25, align 4
  %pdev.i.i = getelementptr inbounds %struct.driver_data, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i.i, align 16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 9
  %call.i.i161.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %mul.i.i, ptr noundef nonnull %dma_addr.i.i, i32 noundef 3264, i32 noundef 0) #17
  %tobool3.not.i.i = icmp eq ptr %call.i.i161.i, null
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %25, align 4
  %pdev6.i.i = getelementptr inbounds %struct.driver_data, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %pdev6.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev6.i.i, align 16
  %dev7.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.114, i32 noundef %mul.i.i) #20
  br label %exec_drive_command.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end.i.i.if.end10.i.i_crit_edge, %if.end5.i.if.end10.i.i_crit_edge
  %buf.0.i.i = phi ptr [ %call.i.i161.i, %if.end.i.i.if.end10.i.i_crit_edge ], [ null, %if.end5.i.if.end10.i.i_crit_edge ]
  %45 = call ptr @memset(ptr %30, i32 0, i32 16)
  %46 = ptrtoint ptr %fis.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 39, ptr %fis.i.i, align 4
  %47 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -128, ptr %27, align 1
  %48 = ptrtoint ptr %drive_command.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %drive_command.i, align 4
  %50 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %28, align 2
  %51 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %15, align 2
  %53 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %29, align 1
  %54 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %16, align 1
  %56 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %33, align 4
  %57 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.300)
  switch i8 %49, label %sw.default.i.i.i [
    i8 -80, label %if.end20.thread.i.i
    i8 -110, label %if.end10.i.i.mtip_set_timeout.exit.i.i_crit_edge
    i8 -12, label %if.end10.i.i.sw.bb1.i.i.i_crit_edge
    i8 -4, label %if.end10.i.i.sw.bb1.i.i.i_crit_edge13
    i8 -32, label %if.end10.i.i.mtip_set_timeout.exit.i.i_crit_edge14
    i8 -9, label %if.end10.i.i.sw.bb11.i.i.i_crit_edge
    i8 -6, label %if.end10.i.i.sw.bb11.i.i.i_crit_edge15
  ]

if.end10.i.i.sw.bb11.i.i.i_crit_edge15:           ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11.i.i.i

if.end10.i.i.sw.bb11.i.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11.i.i.i

if.end10.i.i.mtip_set_timeout.exit.i.i_crit_edge14: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i.i

if.end10.i.i.sw.bb1.i.i.i_crit_edge13:            ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1.i.i.i

if.end10.i.i.sw.bb1.i.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1.i.i.i

if.end10.i.i.mtip_set_timeout.exit.i.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i.i

if.end20.thread.i.i:                              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %58 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %14, align 1
  %60 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %30, align 4
  %61 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 79, ptr %31, align 1
  %62 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -62, ptr %32, align 2
  br label %mtip_set_timeout.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end10.i.i.sw.bb1.i.i.i_crit_edge, %if.end10.i.i.sw.bb1.i.i.i_crit_edge13
  %63 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %25, align 4
  %port4.i.i.i = getelementptr inbounds %struct.driver_data, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %port4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %port4.i.i.i, align 16
  %identify5.i.i.i = getelementptr inbounds %struct.mtip_port, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %identify5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %identify5.i.i.i, align 4
  %add.ptr6.i.i.i = getelementptr i16, ptr %68, i32 89
  %69 = ptrtoint ptr %add.ptr6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %70 to i32
  %mul9.i.i.i = mul i32 %conv7.i.i.i, 120000
  br label %mtip_set_timeout.exit.i.i

sw.bb11.i.i.i:                                    ; preds = %if.end10.i.i.sw.bb11.i.i.i_crit_edge, %if.end10.i.i.sw.bb11.i.i.i_crit_edge15
  br label %mtip_set_timeout.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i.i

mtip_set_timeout.exit.i.i:                        ; preds = %sw.default.i.i.i, %sw.bb11.i.i.i, %sw.bb1.i.i.i, %if.end20.thread.i.i, %if.end10.i.i.mtip_set_timeout.exit.i.i_crit_edge, %if.end10.i.i.mtip_set_timeout.exit.i.i_crit_edge14
  %mul3.sink.i.i.i = phi i32 [ %mul9.i.i.i, %sw.bb1.i.i.i ], [ 5000, %sw.default.i.i.i ], [ 15000, %if.end20.thread.i.i ], [ 60000, %sw.bb11.i.i.i ], [ 120000, %if.end10.i.i.mtip_set_timeout.exit.i.i_crit_edge ], [ 120000, %if.end10.i.i.mtip_set_timeout.exit.i.i_crit_edge14 ]
  %rxfis24.i.i = getelementptr inbounds %struct.mtip_port, ptr %25, i32 0, i32 8
  %71 = ptrtoint ptr %rxfis24.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rxfis24.i.i, align 4
  br i1 %tobool.not.i.i, label %if.end26.thread.i.i, label %cond.true.i.i

if.end26.thread.i.i:                              ; preds = %mtip_set_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr25.i.i = getelementptr i8, ptr %72, i32 64
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %mtip_set_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 32
  %73 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_addr.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end26.thread.i.i
  %reply.098.i.i = phi ptr [ %add.ptr.i.i, %cond.true.i.i ], [ %add.ptr25.i.i, %if.end26.thread.i.i ]
  %cond.i.i = phi i32 [ %74, %cond.true.i.i ], [ 0, %if.end26.thread.i.i ]
  %mul30.i.i = shl nuw nsw i32 %conv.i.i, 9
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 %mul30.i.i
  %call34.i.i = call fastcc i32 @mtip_exec_internal_command(ptr noundef %25, ptr noundef nonnull %fis.i.i, i32 noundef %cond.i.i, i32 noundef %spec.select.i.i, i32 noundef %mul3.sink.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp35.i.i = icmp slt i32 %call34.i.i, 0
  br i1 %cmp35.i.i, label %cond.end.i.i.exit_drive_command.i.i_crit_edge, label %if.end38.i.i

cond.end.i.i.exit_drive_command.i.i_crit_edge:    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit_drive_command.i.i

if.end38.i.i:                                     ; preds = %cond.end.i.i
  %command39.i.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %reply.098.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %command39.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %command39.i.i, align 2
  %77 = ptrtoint ptr %drive_command.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %drive_command.i, align 4
  %features41.i.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %reply.098.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %features41.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %features41.i.i, align 1
  %80 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %14, align 1
  %sect_count43.i.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %reply.098.i.i, i32 0, i32 12
  %81 = ptrtoint ptr %sect_count43.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %sect_count43.i.i, align 4
  %83 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %15, align 2
  br i1 %tobool.not.i.i, label %if.end38.i.i.exit_drive_command.i.i_crit_edge, label %if.then46.i.i

if.end38.i.i.exit_drive_command.i.i_crit_edge:    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit_drive_command.i.i

if.then46.i.i:                                    ; preds = %if.end38.i.i
  %84 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %16, align 1
  %conv48.i.i = zext i8 %85 to i32
  %mul49.i.i = shl nuw nsw i32 %conv48.i.i, 9
  call void @__check_object_size(ptr noundef %buf.0.i.i, i32 noundef %mul49.i.i, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i.i162.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i162.i, label %if.then46.i.i.copy_to_user.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then46.i.i.copy_to_user.exit.i.i_crit_edge:    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then46.i.i
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 %mul49.i.i, i32 -1226833920) #24, !srcloc !652
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then2.i.i.i.i, label %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge

if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %buf.0.i.i, i32 noundef %mul49.i.i) #17
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %26, ptr noundef %buf.0.i.i, i32 noundef %mul49.i.i) #17
  br label %copy_to_user.exit.i.i

copy_to_user.exit.i.i:                            ; preds = %if.then2.i.i.i.i, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge, %if.then46.i.i.copy_to_user.exit.i.i_crit_edge
  %n.addr.0.i.i.i = phi i32 [ %mul49.i.i, %if.then46.i.i.copy_to_user.exit.i.i_crit_edge ], [ %call.i12.i.i.i.i, %if.then2.i.i.i.i ], [ %mul49.i.i, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i)
  %tobool51.not.i.i = icmp eq i32 %n.addr.0.i.i.i, 0
  %spec.select101.i.i = select i1 %tobool51.not.i.i, i32 0, i32 -14
  br label %exit_drive_command.i.i

exit_drive_command.i.i:                           ; preds = %copy_to_user.exit.i.i, %if.end38.i.i.exit_drive_command.i.i_crit_edge, %cond.end.i.i.exit_drive_command.i.i_crit_edge
  %rv.0.i.i = phi i32 [ 0, %if.end38.i.i.exit_drive_command.i.i_crit_edge ], [ -14, %cond.end.i.i.exit_drive_command.i.i_crit_edge ], [ %spec.select101.i.i, %copy_to_user.exit.i.i ]
  %tobool55.not.i.i = icmp eq ptr %buf.0.i.i, null
  br i1 %tobool55.not.i.i, label %exit_drive_command.i.i.exec_drive_command.exit.i_crit_edge, label %if.then56.i.i

exit_drive_command.i.i.exec_drive_command.exit.i_crit_edge: ; preds = %exit_drive_command.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exec_drive_command.exit.i

if.then56.i.i:                                    ; preds = %exit_drive_command.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %87 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %25, align 4
  %pdev58.i.i = getelementptr inbounds %struct.driver_data, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %pdev58.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev58.i.i, align 16
  %dev59.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %91 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_addr.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev59.i.i, i32 noundef %mul30.i.i, ptr noundef nonnull %buf.0.i.i, i32 noundef %92, i32 noundef 0) #17
  br label %exec_drive_command.exit.i

exec_drive_command.exit.thread.i:                 ; preds = %do.end.i.i, %if.then.i.i.exec_drive_command.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i.i) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i.i) #17
  br label %cleanup.thread.i

exec_drive_command.exit.i:                        ; preds = %if.then56.i.i, %exit_drive_command.i.i.exec_drive_command.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i.i) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0.i.i)
  %tobool9.not.i = icmp eq i32 %rv.0.i.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.i79.i, label %exec_drive_command.exit.i.cleanup.thread.i_crit_edge

exec_drive_command.exit.i.cleanup.thread.i_crit_edge: ; preds = %exec_drive_command.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

if.end8.i.i79.i:                                  ; preds = %exec_drive_command.exit.i
  call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i80.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i80.i, label %if.end8.i.i79.i.cleanup.thread.i_crit_edge, label %copy_to_user.exit88.i

if.end8.i.i79.i.cleanup.thread.i_crit_edge:       ; preds = %if.end8.i.i79.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

copy_to_user.exit88.i:                            ; preds = %if.end8.i.i79.i
  %call.i.i.i84.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %drive_command.i, i32 noundef 4) #17
  %call.i12.i.i85.i = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %drive_command.i, i32 noundef 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i85.i)
  %tobool14.not.i = icmp eq i32 %call.i12.i.i85.i, 0
  br i1 %tobool14.not.i, label %cleanup.i, label %copy_to_user.exit88.i.cleanup.thread.i_crit_edge

copy_to_user.exit88.i.cleanup.thread.i_crit_edge: ; preds = %copy_to_user.exit88.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %copy_to_user.exit88.i.cleanup.thread.i_crit_edge, %if.end8.i.i79.i.cleanup.thread.i_crit_edge, %exec_drive_command.exit.i.cleanup.thread.i_crit_edge, %exec_drive_command.exit.thread.i, %if.then11.i.i.i
  %retval.0.ph.i = phi i32 [ -14, %copy_to_user.exit88.i.cleanup.thread.i_crit_edge ], [ -5, %exec_drive_command.exit.thread.i ], [ -5, %exec_drive_command.exit.i.cleanup.thread.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end8.i.i79.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drive_command.i) #17
  br label %cleanup

cleanup.i:                                        ; preds = %copy_to_user.exit88.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drive_command.i) #17
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %drive_command18.i) #17
  %93 = getelementptr inbounds [7 x i8], ptr %drive_command18.i, i32 0, i32 1
  %94 = getelementptr inbounds [7 x i8], ptr %drive_command18.i, i32 0, i32 2
  %95 = getelementptr inbounds [7 x i8], ptr %drive_command18.i, i32 0, i32 3
  %96 = getelementptr inbounds [7 x i8], ptr %drive_command18.i, i32 0, i32 4
  %97 = getelementptr inbounds [7 x i8], ptr %drive_command18.i, i32 0, i32 5
  %98 = getelementptr inbounds [7 x i8], ptr %drive_command18.i, i32 0, i32 6
  %99 = inttoptr i32 %arg to ptr
  %100 = call ptr @memset(ptr %drive_command18.i, i32 255, i32 7)
  tail call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 156) #17
  %call.i.i93.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i93.i, label %sw.bb17.i.if.then11.i.i109.i_crit_edge, label %land.lhs.true.i.i96.i

sw.bb17.i.if.then11.i.i109.i_crit_edge:           ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i109.i

land.lhs.true.i.i96.i:                            ; preds = %sw.bb17.i
  %101 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %99, i32 7, i32 -1226833920) #24
  %asmresult.i.i94.i = extractvalue { i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i94.i)
  %cmp.i6.i95.i = icmp eq i32 %asmresult.i.i94.i, 0
  br i1 %cmp.i6.i95.i, label %if.end.i.i106.i, label %land.lhs.true.i.i96.i.if.then11.i.i109.i_crit_edge, !prof !593

land.lhs.true.i.i96.i.if.then11.i.i109.i_crit_edge: ; preds = %land.lhs.true.i.i96.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i109.i

if.end.i.i106.i:                                  ; preds = %land.lhs.true.i.i96.i
  %call.i.i.i97.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %drive_command18.i, i32 noundef 7) #17
  %102 = call i32 @llvm.read_register.i32(metadata !572) #17
  %and.i.i.i.i.i.i98.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i.i98.i to ptr
  %cpu_domain.i.i.i.i.i99.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 4
  %104 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i99.i) #9, !srcloc !653
  %and.i.i.i.i100.i = and i32 %104, -13
  %or.i.i.i.i101.i = or i32 %and.i.i.i.i100.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i101.i) #17, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !655
  %call1.i.i.i102.i = call i32 @arm_copy_from_user(ptr noundef nonnull %drive_command18.i, ptr noundef %99, i32 noundef 7) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #17, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i102.i)
  %tobool4.not.i.i105.i = icmp eq i32 %call1.i.i.i102.i, 0
  br i1 %tobool4.not.i.i105.i, label %if.end23.i, label %if.end.i.i106.i.if.then11.i.i109.i_crit_edge, !prof !593

if.end.i.i106.i.if.then11.i.i109.i_crit_edge:     ; preds = %if.end.i.i106.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i109.i

if.then11.i.i109.i:                               ; preds = %if.end.i.i106.i.if.then11.i.i109.i_crit_edge, %land.lhs.true.i.i96.i.if.then11.i.i109.i_crit_edge, %sw.bb17.i.if.then11.i.i109.i_crit_edge
  %res.0.i.i104238.i = phi i32 [ %call1.i.i.i102.i, %if.end.i.i106.i.if.then11.i.i109.i_crit_edge ], [ 7, %sw.bb17.i.if.then11.i.i109.i_crit_edge ], [ 7, %land.lhs.true.i.i96.i.if.then11.i.i109.i_crit_edge ]
  %sub.i.i107.i = sub i32 7, %res.0.i.i104238.i
  %add.ptr.i.i108.i = getelementptr i8, ptr %drive_command18.i, i32 %sub.i.i107.i
  %105 = call ptr @memset(ptr %add.ptr.i.i108.i, i32 0, i32 %res.0.i.i104238.i)
  br label %cleanup35.thread.i

if.end23.i:                                       ; preds = %if.end.i.i106.i
  %port24.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %106 = ptrtoint ptr %port24.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %port24.i, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fis.i164.i) #17
  %108 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i164.i, i32 0, i32 1
  %109 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i164.i, i32 0, i32 2
  %110 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i164.i, i32 0, i32 3
  %111 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i164.i, i32 0, i32 4
  %112 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i164.i, i32 0, i32 5
  %113 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i164.i, i32 0, i32 6
  %114 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i164.i, i32 0, i32 7
  %115 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i164.i, i32 0, i32 12
  %rxfis.i.i = getelementptr inbounds %struct.mtip_port, ptr %107, i32 0, i32 8
  %116 = ptrtoint ptr %rxfis.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rxfis.i.i, align 4
  %118 = getelementptr inbounds i8, ptr %fis.i164.i, i32 8
  %119 = call ptr @memset(ptr %118, i32 0, i32 12)
  %120 = ptrtoint ptr %fis.i164.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 39, ptr %fis.i164.i, align 4
  %121 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -128, ptr %108, align 1
  %122 = ptrtoint ptr %drive_command18.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %drive_command18.i, align 1
  %124 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %109, align 2
  %125 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %93, align 1
  %127 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %110, align 1
  %128 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %94, align 1
  %130 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %115, align 4
  %131 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %95, align 1
  %133 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %111, align 4
  %134 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %96, align 1
  %136 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %112, align 1
  %137 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %97, align 1
  %139 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %113, align 2
  %140 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %98, align 1
  %142 = and i8 %141, -17
  %143 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %114, align 1
  %144 = zext i8 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.301)
  switch i8 %123, label %sw.default.i.i172.i [
    i8 -110, label %if.end23.i.mtip_set_timeout.exit.i174.i_crit_edge
    i8 -12, label %if.end23.i.sw.bb1.i.i170.i_crit_edge
    i8 -4, label %if.end23.i.sw.bb1.i.i170.i_crit_edge16
    i8 -32, label %if.end23.i.mtip_set_timeout.exit.i174.i_crit_edge17
    i8 -9, label %if.end23.i.sw.bb11.i.i171.i_crit_edge
    i8 -6, label %if.end23.i.sw.bb11.i.i171.i_crit_edge18
    i8 -80, label %sw.bb12.i.i.i
  ]

if.end23.i.sw.bb11.i.i171.i_crit_edge18:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11.i.i171.i

if.end23.i.sw.bb11.i.i171.i_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11.i.i171.i

if.end23.i.mtip_set_timeout.exit.i174.i_crit_edge17: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i174.i

if.end23.i.sw.bb1.i.i170.i_crit_edge16:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1.i.i170.i

if.end23.i.sw.bb1.i.i170.i_crit_edge:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1.i.i170.i

if.end23.i.mtip_set_timeout.exit.i174.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i174.i

sw.bb1.i.i170.i:                                  ; preds = %if.end23.i.sw.bb1.i.i170.i_crit_edge, %if.end23.i.sw.bb1.i.i170.i_crit_edge16
  %145 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %107, align 4
  %port4.i.i165.i = getelementptr inbounds %struct.driver_data, ptr %146, i32 0, i32 7
  %147 = ptrtoint ptr %port4.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %port4.i.i165.i, align 16
  %identify5.i.i166.i = getelementptr inbounds %struct.mtip_port, ptr %148, i32 0, i32 12
  %149 = ptrtoint ptr %identify5.i.i166.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %identify5.i.i166.i, align 4
  %add.ptr6.i.i167.i = getelementptr i16, ptr %150, i32 89
  %151 = ptrtoint ptr %add.ptr6.i.i167.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %add.ptr6.i.i167.i, align 2
  %conv7.i.i168.i = zext i16 %152 to i32
  %mul9.i.i169.i = mul i32 %conv7.i.i168.i, 120000
  br label %mtip_set_timeout.exit.i174.i

sw.bb11.i.i171.i:                                 ; preds = %if.end23.i.sw.bb11.i.i171.i_crit_edge, %if.end23.i.sw.bb11.i.i171.i_crit_edge18
  br label %mtip_set_timeout.exit.i174.i

sw.bb12.i.i.i:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i174.i

sw.default.i.i172.i:                              ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i174.i

mtip_set_timeout.exit.i174.i:                     ; preds = %sw.default.i.i172.i, %sw.bb12.i.i.i, %sw.bb11.i.i171.i, %sw.bb1.i.i170.i, %if.end23.i.mtip_set_timeout.exit.i174.i_crit_edge, %if.end23.i.mtip_set_timeout.exit.i174.i_crit_edge17
  %mul3.sink.i.i173.i = phi i32 [ %mul9.i.i169.i, %sw.bb1.i.i170.i ], [ 5000, %sw.default.i.i172.i ], [ 15000, %sw.bb12.i.i.i ], [ 60000, %sw.bb11.i.i171.i ], [ 120000, %if.end23.i.mtip_set_timeout.exit.i174.i_crit_edge ], [ 120000, %if.end23.i.mtip_set_timeout.exit.i174.i_crit_edge17 ]
  %call.i.i = call fastcc i32 @mtip_exec_internal_command(ptr noundef %107, ptr noundef nonnull %fis.i164.i, i32 noundef 0, i32 noundef 0, i32 noundef %mul3.sink.i.i173.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %exec_drive_task.exit.i, label %if.end8.i.i115.i

exec_drive_task.exit.i:                           ; preds = %mtip_set_timeout.exit.i174.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i164.i) #17
  br label %cleanup35.thread.i

if.end8.i.i115.i:                                 ; preds = %mtip_set_timeout.exit.i174.i
  %command10.i.i = getelementptr i8, ptr %117, i32 66
  %153 = ptrtoint ptr %command10.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %command10.i.i, align 2
  %155 = ptrtoint ptr %drive_command18.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %drive_command18.i, align 1
  %features12.i.i = getelementptr i8, ptr %117, i32 67
  %156 = ptrtoint ptr %features12.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %features12.i.i, align 1
  %158 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %93, align 1
  %159 = getelementptr i8, ptr %117, i32 69
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %159, align 1
  %162 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %96, align 1
  %163 = getelementptr i8, ptr %117, i32 70
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %163, align 2
  %166 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %97, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i164.i) #17
  call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i116.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i116.i, label %if.end8.i.i115.i.cleanup35.thread.i_crit_edge, label %copy_to_user.exit124.i

if.end8.i.i115.i.cleanup35.thread.i_crit_edge:    ; preds = %if.end8.i.i115.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup35.thread.i

copy_to_user.exit124.i:                           ; preds = %if.end8.i.i115.i
  %call.i.i.i120.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %drive_command18.i, i32 noundef 7) #17
  %call.i12.i.i121.i = call i32 @arm_copy_to_user(ptr noundef %99, ptr noundef nonnull %drive_command18.i, i32 noundef 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i121.i)
  %tobool32.not.i = icmp eq i32 %call.i12.i.i121.i, 0
  br i1 %tobool32.not.i, label %cleanup35.i, label %copy_to_user.exit124.i.cleanup35.thread.i_crit_edge

copy_to_user.exit124.i.cleanup35.thread.i_crit_edge: ; preds = %copy_to_user.exit124.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup35.thread.i

cleanup35.thread.i:                               ; preds = %copy_to_user.exit124.i.cleanup35.thread.i_crit_edge, %if.end8.i.i115.i.cleanup35.thread.i_crit_edge, %exec_drive_task.exit.i, %if.then11.i.i109.i
  %retval.1.ph.i = phi i32 [ -14, %copy_to_user.exit124.i.cleanup35.thread.i_crit_edge ], [ -5, %exec_drive_task.exit.i ], [ -14, %if.then11.i.i109.i ], [ -14, %if.end8.i.i115.i.cleanup35.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %drive_command18.i) #17
  br label %cleanup

cleanup35.i:                                      ; preds = %copy_to_user.exit124.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %drive_command18.i) #17
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %req_task.i) #17
  %167 = call ptr @memset(ptr %req_task.i, i32 255, i32 40)
  %168 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 156) #17
  %call.i.i129.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i129.i, label %sw.bb37.i.if.then11.i.i145.i_crit_edge, label %land.lhs.true.i.i132.i

sw.bb37.i.if.then11.i.i145.i_crit_edge:           ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i145.i

land.lhs.true.i.i132.i:                           ; preds = %sw.bb37.i
  %169 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %168, i32 40, i32 -1226833920) #24
  %asmresult.i.i130.i = extractvalue { i32, i32 } %169, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i130.i)
  %cmp.i6.i131.i = icmp eq i32 %asmresult.i.i130.i, 0
  br i1 %cmp.i6.i131.i, label %if.end.i.i142.i, label %land.lhs.true.i.i132.i.if.then11.i.i145.i_crit_edge, !prof !593

land.lhs.true.i.i132.i.if.then11.i.i145.i_crit_edge: ; preds = %land.lhs.true.i.i132.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i145.i

if.end.i.i142.i:                                  ; preds = %land.lhs.true.i.i132.i
  %call.i.i.i133.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req_task.i, i32 noundef 40) #17
  %170 = call i32 @llvm.read_register.i32(metadata !572) #17
  %and.i.i.i.i.i.i134.i = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i.i.i.i134.i to ptr
  %cpu_domain.i.i.i.i.i135.i = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 4
  %172 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i135.i) #9, !srcloc !653
  %and.i.i.i.i136.i = and i32 %172, -13
  %or.i.i.i.i137.i = or i32 %and.i.i.i.i136.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i137.i) #17, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !655
  %call1.i.i.i138.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req_task.i, ptr noundef %168, i32 noundef 40) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %172) #17, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i138.i)
  %tobool4.not.i.i141.i = icmp eq i32 %call1.i.i.i138.i, 0
  br i1 %tobool4.not.i.i141.i, label %if.end41.i, label %if.end.i.i142.i.if.then11.i.i145.i_crit_edge, !prof !593

if.end.i.i142.i.if.then11.i.i145.i_crit_edge:     ; preds = %if.end.i.i142.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i145.i

if.then11.i.i145.i:                               ; preds = %if.end.i.i142.i.if.then11.i.i145.i_crit_edge, %land.lhs.true.i.i132.i.if.then11.i.i145.i_crit_edge, %sw.bb37.i.if.then11.i.i145.i_crit_edge
  %res.0.i.i140251.i = phi i32 [ %call1.i.i.i138.i, %if.end.i.i142.i.if.then11.i.i145.i_crit_edge ], [ 40, %sw.bb37.i.if.then11.i.i145.i_crit_edge ], [ 40, %land.lhs.true.i.i132.i.if.then11.i.i145.i_crit_edge ]
  %sub.i.i143.i = sub i32 40, %res.0.i.i140251.i
  %add.ptr.i.i144.i = getelementptr i8, ptr %req_task.i, i32 %sub.i.i143.i
  %173 = call ptr @memset(ptr %add.ptr.i.i144.i, i32 0, i32 %res.0.i.i140251.i)
  br label %cleanup47.i

if.end41.i:                                       ; preds = %if.end.i.i142.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fis.i177.i) #17
  %174 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 1
  %175 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 2
  %176 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 3
  %177 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 4
  %178 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 5
  %179 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 6
  %180 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 7
  %181 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 8
  %182 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 9
  %183 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 10
  %184 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 11
  %185 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 12
  %186 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i177.i, i32 0, i32 13
  %out_size.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 6
  %187 = ptrtoint ptr %out_size.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %out_size.i.i, align 4
  %add.i.i = add i32 %188, 40
  %in_size.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 7
  %189 = ptrtoint ptr %in_size.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %in_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 130560, i32 %190)
  %cmp.i178.i = icmp ugt i32 %190, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 130560, i32 %188)
  %cmp2.i.i = icmp ugt i32 %188, 130560
  %or.cond.i.i = select i1 %cmp.i178.i, i1 true, i1 %cmp2.i.i
  br i1 %or.cond.i.i, label %if.end41.i.if.end8.i.i151.i_crit_edge, label %if.end.i180.i

if.end41.i.if.end8.i.i151.i_crit_edge:            ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i.i151.i

if.end.i180.i:                                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i179.i = icmp eq i32 %188, 0
  br i1 %tobool.not.i179.i, label %if.end.i180.i.if.end15.i.i_crit_edge, label %if.then3.i.i

if.end.i180.i.if.end15.i.i_crit_edge:             ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i.i

if.then3.i.i:                                     ; preds = %if.end.i180.i
  %add.ptr.i181.i = getelementptr i8, ptr %168, i32 40
  %call.i182.i = call ptr @memdup_user(ptr noundef %add.ptr.i181.i, i32 noundef %188) #17
  %cmp.i.i183.i = icmp ugt ptr %call.i182.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i183.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %191 = ptrtoint ptr %call.i182.i to i32
  br label %if.end8.i.i151.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %pdev.i184.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %192 = ptrtoint ptr %pdev.i184.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pdev.i184.i, align 16
  %dev.i185.i = getelementptr inbounds %struct.pci_dev, ptr %193, i32 0, i32 44
  %call.i.i186.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %call.i182.i) #17
  br i1 %call.i.i186.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end7.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i28.i.i, !prof !593

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit.i.i

if.then.i28.i.i:                                  ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %dev.i185.i) #17
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %193, i32 0, i32 44, i32 3
  %194 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %195, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i29.i.i, label %if.then.i28.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i28.i.i.dev_name.exit.i.i.i_crit_edge:    ; preds = %if.then.i28.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i.i.i

if.end.i.i29.i.i:                                 ; preds = %if.then.i28.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %196 = ptrtoint ptr %dev.i185.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev.i185.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i29.i.i, %if.then.i28.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %197, %if.end.i.i29.i.i ], [ %195, %if.then.i28.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.140, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.141, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #17
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @debug_dma_map_single(ptr noundef %dev.i185.i, ptr noundef %call.i182.i, i32 noundef %188) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %198 = load ptr, ptr @mem_map, align 4
  %199 = ptrtoint ptr %call.i182.i to i32
  %sub.i.i187.i = add i32 %199, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i187.i, 12
  %add.ptr.i.i188.i = getelementptr %struct.page, ptr %198, i32 %shr.i.i.i
  %and.i.i.i = and i32 %199, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i185.i, ptr noundef %add.ptr.i.i188.i, i32 noundef %and.i.i.i, i32 noundef %188, i32 noundef 1, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %200 = ptrtoint ptr %pdev.i184.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pdev.i184.i, align 16
  %dev10.i.i = getelementptr inbounds %struct.pci_dev, ptr %201, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev10.i.i, i32 noundef %retval.0.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i30.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i30.i.i, label %dma_map_single_attrs.exit.i.i.if.then212.i.i_crit_edge, label %dma_map_single_attrs.exit.i.i.if.end15.i.i_crit_edge

dma_map_single_attrs.exit.i.i.if.end15.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i.i

dma_map_single_attrs.exit.i.i.if.then212.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then212.i.i

if.end15.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i.if.end15.i.i_crit_edge, %if.end.i180.i.if.end15.i.i_crit_edge
  %dma_buffer.0.i.i = phi i32 [ 0, %if.end.i180.i.if.end15.i.i_crit_edge ], [ %retval.0.i.i.i, %dma_map_single_attrs.exit.i.i.if.end15.i.i_crit_edge ]
  %outbuf.0.i.i = phi ptr [ null, %if.end.i180.i.if.end15.i.i_crit_edge ], [ %call.i182.i, %dma_map_single_attrs.exit.i.i.if.end15.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool16.not.i.i = icmp eq i32 %190, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end33.i.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  %add.ptr18.i.i = getelementptr i8, ptr %168, i32 %add.i.i
  %call19.i.i = call ptr @memdup_user(ptr noundef %add.ptr18.i.i, i32 noundef %190) #17
  %cmp.i31.i.i = icmp ugt ptr %call19.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.i.i, label %if.then21.i.i, label %if.end23.i.i

if.then21.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %202 = ptrtoint ptr %call19.i.i to i32
  br label %if.end210.i.i

if.end23.i.i:                                     ; preds = %if.then17.i.i
  %pdev24.i.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %203 = ptrtoint ptr %pdev24.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev24.i.i, align 16
  %dev25.i.i = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44
  %call.i32.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %call19.i.i) #17
  br i1 %call.i32.i.i, label %land.rhs.i34.i.i, label %if.end39.i47.i.i

land.rhs.i34.i.i:                                 ; preds = %if.end23.i.i
  %.b1.i33.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i33.i.i, label %land.rhs.i34.i.i.dma_map_single_attrs.exit49.i.i_crit_edge, label %if.then.i38.i.i, !prof !593

land.rhs.i34.i.i.dma_map_single_attrs.exit49.i.i_crit_edge: ; preds = %land.rhs.i34.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit49.i.i

if.then.i38.i.i:                                  ; preds = %land.rhs.i34.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i35.i.i = call ptr @dev_driver_string(ptr noundef %dev25.i.i) #17
  %init_name.i.i36.i.i = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44, i32 3
  %205 = ptrtoint ptr %init_name.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %init_name.i.i36.i.i, align 8
  %tobool.not.i.i37.i.i = icmp eq ptr %206, null
  br i1 %tobool.not.i.i37.i.i, label %if.end.i.i39.i.i, label %if.then.i38.i.i.dev_name.exit.i41.i.i_crit_edge

if.then.i38.i.i.dev_name.exit.i41.i.i_crit_edge:  ; preds = %if.then.i38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i41.i.i

if.end.i.i39.i.i:                                 ; preds = %if.then.i38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %207 = ptrtoint ptr %dev25.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev25.i.i, align 4
  br label %dev_name.exit.i41.i.i

dev_name.exit.i41.i.i:                            ; preds = %if.end.i.i39.i.i, %if.then.i38.i.i.dev_name.exit.i41.i.i_crit_edge
  %retval.0.i.i40.i.i = phi ptr [ %208, %if.end.i.i39.i.i ], [ %206, %if.then.i38.i.i.dev_name.exit.i41.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.140, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.141, ptr noundef %call16.i35.i.i, ptr noundef %retval.0.i.i40.i.i) #17
  br label %dma_map_single_attrs.exit49.i.i

if.end39.i47.i.i:                                 ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @debug_dma_map_single(ptr noundef %dev25.i.i, ptr noundef %call19.i.i, i32 noundef %190) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %209 = load ptr, ptr @mem_map, align 4
  %210 = ptrtoint ptr %call19.i.i to i32
  %sub.i42.i.i = add i32 %210, 1073741824
  %shr.i43.i.i = lshr i32 %sub.i42.i.i, 12
  %add.ptr.i44.i.i = getelementptr %struct.page, ptr %209, i32 %shr.i43.i.i
  %and.i45.i.i = and i32 %210, 4095
  %call41.i46.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev25.i.i, ptr noundef %add.ptr.i44.i.i, i32 noundef %and.i45.i.i, i32 noundef %190, i32 noundef 2, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit49.i.i

dma_map_single_attrs.exit49.i.i:                  ; preds = %if.end39.i47.i.i, %dev_name.exit.i41.i.i, %land.rhs.i34.i.i.dma_map_single_attrs.exit49.i.i_crit_edge
  %retval.0.i48.i.i = phi i32 [ %call41.i46.i.i, %if.end39.i47.i.i ], [ -1, %dev_name.exit.i41.i.i ], [ -1, %land.rhs.i34.i.i.dma_map_single_attrs.exit49.i.i_crit_edge ]
  %211 = ptrtoint ptr %pdev24.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pdev24.i.i, align 16
  %dev28.i.i = getelementptr inbounds %struct.pci_dev, ptr %212, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev28.i.i, i32 noundef %retval.0.i48.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i48.i.i)
  %cmp.i50.i.i = icmp eq i32 %retval.0.i48.i.i, -1
  br i1 %cmp.i50.i.i, label %dma_map_single_attrs.exit49.i.i.if.then207.i.i_crit_edge, label %dma_map_single_attrs.exit49.i.i.if.end33.i.i_crit_edge

dma_map_single_attrs.exit49.i.i.if.end33.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit49.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i.i

dma_map_single_attrs.exit49.i.i.if.then207.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit49.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then207.i.i

if.end33.i.i:                                     ; preds = %dma_map_single_attrs.exit49.i.i.if.end33.i.i_crit_edge, %if.end15.i.i.if.end33.i.i_crit_edge
  %inbuf_dma.0.i.i = phi i32 [ 0, %if.end15.i.i.if.end33.i.i_crit_edge ], [ %retval.0.i48.i.i, %dma_map_single_attrs.exit49.i.i.if.end33.i.i_crit_edge ]
  %dma_buffer.1.i.i = phi i32 [ %dma_buffer.0.i.i, %if.end15.i.i.if.end33.i.i_crit_edge ], [ %retval.0.i48.i.i, %dma_map_single_attrs.exit49.i.i.if.end33.i.i_crit_edge ]
  %inbuf.0.i.i = phi ptr [ null, %if.end15.i.i.if.end33.i.i_crit_edge ], [ %call19.i.i, %dma_map_single_attrs.exit49.i.i.if.end33.i.i_crit_edge ]
  %data_phase.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 4
  %213 = ptrtoint ptr %data_phase.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %data_phase.i.i, align 4
  %215 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.302)
  switch i32 %214, label %if.end33.i.i.abort.i.i_crit_edge [
    i32 4, label %sw.bb.i.i
    i32 1, label %if.end33.i.i.sw.epilog.i.i_crit_edge
    i32 0, label %if.end33.i.i.sw.epilog.i.i_crit_edge19
  ]

if.end33.i.i.sw.epilog.i.i_crit_edge19:           ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

if.end33.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

if.end33.i.i.abort.i.i_crit_edge:                 ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %abort.i.i

sw.bb.i.i:                                        ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %div1.i.i = lshr i32 %188, 9
  %conv.i189.i = trunc i32 %div1.i.i to i8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb.i.i, %if.end33.i.i.sw.epilog.i.i_crit_edge, %if.end33.i.i.sw.epilog.i.i_crit_edge19
  %nsect.0.i.i = phi i8 [ %conv.i189.i, %sw.bb.i.i ], [ 0, %if.end33.i.i.sw.epilog.i.i_crit_edge ], [ 0, %if.end33.i.i.sw.epilog.i.i_crit_edge19 ]
  %216 = call ptr @memset(ptr %181, i32 0, i32 12)
  %217 = ptrtoint ptr %fis.i177.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 39, ptr %fis.i177.i, align 4
  %218 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 -128, ptr %174, align 1
  %arrayidx.i190.i = getelementptr inbounds [8 x i8], ptr %req_task.i, i32 0, i32 7
  %219 = ptrtoint ptr %arrayidx.i190.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx.i190.i, align 1
  %221 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %175, align 2
  %arrayidx44.i.i = getelementptr inbounds [8 x i8], ptr %req_task.i, i32 0, i32 1
  %222 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx44.i.i, align 1
  %224 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %176, align 1
  %arrayidx46.i.i = getelementptr inbounds [8 x i8], ptr %req_task.i, i32 0, i32 2
  %225 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx46.i.i, align 2
  %227 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %185, align 4
  %arrayidx48.i.i = getelementptr inbounds [8 x i8], ptr %req_task.i, i32 0, i32 3
  %228 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx48.i.i, align 1
  %230 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %177, align 4
  %arrayidx50.i.i = getelementptr inbounds [8 x i8], ptr %req_task.i, i32 0, i32 4
  %231 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx50.i.i, align 4
  %233 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %178, align 1
  %arrayidx52.i.i = getelementptr inbounds [8 x i8], ptr %req_task.i, i32 0, i32 5
  %234 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx52.i.i, align 1
  %236 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %179, align 2
  %arrayidx54.i.i = getelementptr inbounds [8 x i8], ptr %req_task.i, i32 0, i32 6
  %237 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx54.i.i, align 2
  %239 = and i8 %238, -17
  %240 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %180, align 1
  %in_flags.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 3
  %241 = ptrtoint ptr %in_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %bf.load.i.i = load i16, ptr %in_flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.i)
  %cmp57.i.i = icmp eq i16 %bf.load.i.i, 0
  br i1 %cmp57.i.i, label %land.lhs.true.i.i, label %sw.epilog.i.i.if.else.i.i_crit_edge

sw.epilog.i.i.if.else.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog.i.i
  %out_flags.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 2
  %242 = ptrtoint ptr %out_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %bf.load59.i.i = load i16, ptr %out_flags.i.i, align 4
  %243 = and i16 %bf.load59.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %243)
  %tobool62.not.i.i = icmp eq i16 %243, 0
  br i1 %tobool62.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then63.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

if.then63.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %244 = ptrtoint ptr %in_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 15614, ptr %in_flags.i.i, align 4
  %arrayidx65.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 3
  %245 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx65.i.i, align 1
  %247 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %181, align 4
  %arrayidx67.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 4
  %248 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx67.i.i, align 4
  %250 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %249, ptr %182, align 1
  %arrayidx69.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 5
  %251 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx69.i.i, align 1
  %253 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %183, align 2
  %arrayidx71.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 1
  %254 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx71.i.i, align 1
  %256 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %184, align 1
  %arrayidx73.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 2
  %257 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx73.i.i, align 2
  %259 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %186, align 1
  br label %if.end75.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %sw.epilog.i.i.if.else.i.i_crit_edge
  %260 = ptrtoint ptr %in_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 254, ptr %in_flags.i.i, align 4
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.else.i.i, %if.then63.i.i
  %261 = zext i8 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.303)
  switch i8 %220, label %if.end75.i.i.implicit_sector.exit.i.i_crit_edge [
    i8 -15, label %if.end75.i.i.sw.bb.i.i.i_crit_edge
    i8 -14, label %if.end75.i.i.sw.bb.i.i.i_crit_edge20
    i8 -13, label %if.end75.i.i.sw.bb.i.i.i_crit_edge21
    i8 -12, label %if.end75.i.i.sw.bb.i.i.i_crit_edge22
    i8 -11, label %if.end75.i.i.sw.bb.i.i.i_crit_edge23
    i8 -10, label %if.end75.i.i.sw.bb.i.i.i_crit_edge24
    i8 -28, label %if.end75.i.i.sw.bb.i.i.i_crit_edge25
    i8 -24, label %if.end75.i.i.sw.bb.i.i.i_crit_edge26
    i8 -7, label %sw.bb1.i.i191.i
    i8 -80, label %sw.bb4.i.i.i
    i8 -79, label %sw.bb13.i.i.i
  ]

if.end75.i.i.sw.bb.i.i.i_crit_edge26:             ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

if.end75.i.i.sw.bb.i.i.i_crit_edge25:             ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

if.end75.i.i.sw.bb.i.i.i_crit_edge24:             ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

if.end75.i.i.sw.bb.i.i.i_crit_edge23:             ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

if.end75.i.i.sw.bb.i.i.i_crit_edge22:             ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

if.end75.i.i.sw.bb.i.i.i_crit_edge21:             ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

if.end75.i.i.sw.bb.i.i.i_crit_edge20:             ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

if.end75.i.i.sw.bb.i.i.i_crit_edge:               ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

if.end75.i.i.implicit_sector.exit.i.i_crit_edge:  ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %implicit_sector.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.end75.i.i.sw.bb.i.i.i_crit_edge, %if.end75.i.i.sw.bb.i.i.i_crit_edge20, %if.end75.i.i.sw.bb.i.i.i_crit_edge21, %if.end75.i.i.sw.bb.i.i.i_crit_edge22, %if.end75.i.i.sw.bb.i.i.i_crit_edge23, %if.end75.i.i.sw.bb.i.i.i_crit_edge24, %if.end75.i.i.sw.bb.i.i.i_crit_edge25, %if.end75.i.i.sw.bb.i.i.i_crit_edge26
  br label %implicit_sector.exit.i.i

sw.bb1.i.i191.i:                                  ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %223)
  %cmp.i52.i.i = icmp eq i8 %223, 3
  br label %implicit_sector.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %262 = and i8 %223, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -48, i8 %262)
  %switch.i.i.i = icmp eq i8 %262, -48
  br label %implicit_sector.exit.i.i

sw.bb13.i.i.i:                                    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %263 = and i8 %223, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %263)
  %switch29.i.i.i = icmp eq i8 %263, -62
  br label %implicit_sector.exit.i.i

implicit_sector.exit.i.i:                         ; preds = %sw.bb13.i.i.i, %sw.bb4.i.i.i, %sw.bb1.i.i191.i, %sw.bb.i.i.i, %if.end75.i.i.implicit_sector.exit.i.i_crit_edge
  %rv.0.shrunk.i.i.i = phi i1 [ false, %if.end75.i.i.implicit_sector.exit.i.i_crit_edge ], [ true, %sw.bb.i.i.i ], [ %cmp.i52.i.i, %sw.bb1.i.i191.i ], [ %switch.i.i.i, %sw.bb4.i.i.i ], [ %switch29.i.i.i, %sw.bb13.i.i.i ]
  %264 = select i1 %tobool16.not.i.i, i1 %tobool.not.i179.i, i1 false
  %brmerge.i.i = xor i1 %264, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool84.not.i.i = icmp eq i8 %226, 0
  %or.cond107.i.i = select i1 %brmerge.i.i, i1 %tobool84.not.i.i, i1 false
  br i1 %or.cond107.i.i, label %if.then85.i.i, label %implicit_sector.exit.i.i.if.end96.i.i_crit_edge

implicit_sector.exit.i.i.if.end96.i.i_crit_edge:  ; preds = %implicit_sector.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96.i.i

if.then85.i.i:                                    ; preds = %implicit_sector.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nsect.0.i.i)
  %tobool86.not.i.i = icmp eq i8 %nsect.0.i.i, 0
  br i1 %tobool86.not.i.i, label %if.else89.i.i, label %if.then87.i.i

if.then87.i.i:                                    ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %265 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %nsect.0.i.i, ptr %185, align 4
  br label %if.end96.i.i

if.else89.i.i:                                    ; preds = %if.then85.i.i
  br i1 %rv.0.shrunk.i.i.i, label %if.else89.i.i.if.end96.i.i_crit_edge, label %do.end.i192.i

if.else89.i.i.if.end96.i.i_crit_edge:             ; preds = %if.else89.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96.i.i

do.end.i192.i:                                    ; preds = %if.else89.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev92.i.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %266 = ptrtoint ptr %pdev92.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %pdev92.i.i, align 16
  %dev93.i.i = getelementptr inbounds %struct.pci_dev, ptr %267, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev93.i.i, ptr noundef nonnull @.str.138) #20
  br label %abort.i.i

if.end96.i.i:                                     ; preds = %if.else89.i.i.if.end96.i.i_crit_edge, %if.then87.i.i, %implicit_sector.exit.i.i.if.end96.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -12, i8 %220)
  %cmp99.i.i = icmp ne i8 %220, -12
  %tobool102.not.i.i = icmp eq ptr %outbuf.0.i.i, null
  %or.cond2.i.i = or i1 %tobool102.not.i.i, %cmp99.i.i
  br i1 %or.cond2.i.i, label %if.end109.i.i, label %sw.bb1.i53.i.i

if.end109.i.i:                                    ; preds = %if.end96.i.i
  %268 = zext i8 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.304)
  switch i8 %220, label %sw.default.i.i200.i [
    i8 -110, label %if.end109.i.i.mtip_set_timeout.exit.i202.i_crit_edge
    i8 -12, label %if.end109.i.i.sw.bb1.i53.thread.i.i_crit_edge
    i8 -4, label %if.end109.i.i.sw.bb1.i53.thread.i.i_crit_edge27
    i8 -32, label %if.end109.i.i.mtip_set_timeout.exit.i202.i_crit_edge28
    i8 -9, label %if.end109.i.i.sw.bb11.i.i198.i_crit_edge
    i8 -6, label %if.end109.i.i.sw.bb11.i.i198.i_crit_edge29
    i8 -80, label %sw.bb12.i.i199.i
  ]

if.end109.i.i.sw.bb11.i.i198.i_crit_edge29:       ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11.i.i198.i

if.end109.i.i.sw.bb11.i.i198.i_crit_edge:         ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11.i.i198.i

if.end109.i.i.mtip_set_timeout.exit.i202.i_crit_edge28: ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i202.i

if.end109.i.i.sw.bb1.i53.thread.i.i_crit_edge27:  ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1.i53.thread.i.i

if.end109.i.i.sw.bb1.i53.thread.i.i_crit_edge:    ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1.i53.thread.i.i

if.end109.i.i.mtip_set_timeout.exit.i202.i_crit_edge: ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i202.i

sw.bb1.i53.thread.i.i:                            ; preds = %if.end109.i.i.sw.bb1.i53.thread.i.i_crit_edge, %if.end109.i.i.sw.bb1.i53.thread.i.i_crit_edge27
  %port4.i63.i.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %269 = ptrtoint ptr %port4.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %port4.i63.i.i, align 16
  %identify5.i64.i.i = getelementptr inbounds %struct.mtip_port, ptr %270, i32 0, i32 12
  %271 = ptrtoint ptr %identify5.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %identify5.i64.i.i, align 4
  br label %if.else.i.i.i

sw.bb1.i53.i.i:                                   ; preds = %if.end96.i.i
  %273 = ptrtoint ptr %outbuf.0.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %outbuf.0.i.i, align 1
  %275 = and i8 %274, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.not.i.i.i = icmp eq i8 %275, 0
  %port4.i.i193.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %276 = ptrtoint ptr %port4.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %port4.i.i193.i, align 16
  %identify5.i.i194.i = getelementptr inbounds %struct.mtip_port, ptr %277, i32 0, i32 12
  %278 = ptrtoint ptr %identify5.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %identify5.i.i194.i, align 4
  br i1 %tobool.not.i.i.i, label %sw.bb1.i53.i.i.if.else.i.i.i_crit_edge, label %if.then.i55.i.i

sw.bb1.i53.i.i.if.else.i.i.i_crit_edge:           ; preds = %sw.bb1.i53.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i.i

if.then.i55.i.i:                                  ; preds = %sw.bb1.i53.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i54.i.i = getelementptr i16, ptr %279, i32 90
  %280 = ptrtoint ptr %add.ptr.i54.i.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %add.ptr.i54.i.i, align 2
  %conv2.i.i.i = zext i16 %281 to i32
  %mul3.i.i.i = mul i32 %conv2.i.i.i, 120000
  br label %mtip_set_timeout.exit.i202.i

if.else.i.i.i:                                    ; preds = %sw.bb1.i53.i.i.if.else.i.i.i_crit_edge, %sw.bb1.i53.thread.i.i
  %282 = phi ptr [ %272, %sw.bb1.i53.thread.i.i ], [ %279, %sw.bb1.i53.i.i.if.else.i.i.i_crit_edge ]
  %add.ptr6.i.i195.i = getelementptr i16, ptr %282, i32 89
  %283 = ptrtoint ptr %add.ptr6.i.i195.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %add.ptr6.i.i195.i, align 2
  %conv7.i.i196.i = zext i16 %284 to i32
  %mul9.i.i197.i = mul i32 %conv7.i.i196.i, 120000
  br label %mtip_set_timeout.exit.i202.i

sw.bb11.i.i198.i:                                 ; preds = %if.end109.i.i.sw.bb11.i.i198.i_crit_edge, %if.end109.i.i.sw.bb11.i.i198.i_crit_edge29
  br label %mtip_set_timeout.exit.i202.i

sw.bb12.i.i199.i:                                 ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i202.i

sw.default.i.i200.i:                              ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_set_timeout.exit.i202.i

mtip_set_timeout.exit.i202.i:                     ; preds = %sw.default.i.i200.i, %sw.bb12.i.i199.i, %sw.bb11.i.i198.i, %if.else.i.i.i, %if.then.i55.i.i, %if.end109.i.i.mtip_set_timeout.exit.i202.i_crit_edge, %if.end109.i.i.mtip_set_timeout.exit.i202.i_crit_edge28
  %mul3.sink.i.i201.i = phi i32 [ %mul3.i.i.i, %if.then.i55.i.i ], [ %mul9.i.i197.i, %if.else.i.i.i ], [ 5000, %sw.default.i.i200.i ], [ 15000, %sw.bb12.i.i199.i ], [ 60000, %sw.bb11.i.i198.i ], [ 120000, %if.end109.i.i.mtip_set_timeout.exit.i202.i_crit_edge ], [ 120000, %if.end109.i.i.mtip_set_timeout.exit.i202.i_crit_edge28 ]
  br i1 %rv.0.shrunk.i.i.i, label %mtip_set_timeout.exit.i202.i.if.end116.i.i_crit_edge, label %if.else113.i.i

mtip_set_timeout.exit.i202.i.if.end116.i.i_crit_edge: ; preds = %mtip_set_timeout.exit.i202.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116.i.i

if.else113.i.i:                                   ; preds = %mtip_set_timeout.exit.i202.i
  call void @__sanitizer_cov_trace_pc() #19
  %285 = ptrtoint ptr %185 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %185, align 4
  %conv115.i.i = zext i8 %286 to i32
  %mul.i203.i = shl nuw nsw i32 %conv115.i.i, 9
  br label %if.end116.i.i

if.end116.i.i:                                    ; preds = %if.else113.i.i, %mtip_set_timeout.exit.i202.i.if.end116.i.i_crit_edge
  %transfer_size.0.i.i = phi i32 [ %mul.i203.i, %if.else113.i.i ], [ 512, %mtip_set_timeout.exit.i202.i.if.end116.i.i_crit_edge ]
  %port117.i.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %287 = ptrtoint ptr %port117.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %port117.i.i, align 16
  %call118.i.i = call fastcc i32 @mtip_exec_internal_command(ptr noundef %288, ptr noundef nonnull %fis.i177.i, i32 noundef %dma_buffer.1.i.i, i32 noundef %transfer_size.0.i.i, i32 noundef %mul3.sink.i.i201.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i.i)
  %cmp119.i.i = icmp slt i32 %call118.i.i, 0
  br i1 %cmp119.i.i, label %if.end116.i.i.abort.i.i_crit_edge, label %if.end122.i.i

if.end116.i.i.abort.i.i_crit_edge:                ; preds = %if.end116.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %abort.i.i

if.end122.i.i:                                    ; preds = %if.end116.i.i
  %289 = ptrtoint ptr %port117.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %port117.i.i, align 16
  %mmio.i.i = getelementptr inbounds %struct.mtip_port, ptr %290, i32 0, i32 2
  %291 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr124.i.i = getelementptr i8, ptr %292, i32 32
  %293 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124.i.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !656
  %294 = ptrtoint ptr %data_phase.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %data_phase.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %295)
  %cmp128.i.i = icmp eq i32 %295, 1
  %296 = and i32 %293, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool132.not.i.i = icmp eq i32 %296, 0
  %or.cond3.i.i = select i1 %cmp128.i.i, i1 %tobool132.not.i.i, i1 false
  %297 = ptrtoint ptr %port117.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %port117.i.i, align 16
  %rxfis135.i.i = getelementptr inbounds %struct.mtip_port, ptr %298, i32 0, i32 8
  %299 = ptrtoint ptr %rxfis135.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %rxfis135.i.i, align 4
  %..i.i = select i1 %or.cond3.i.i, i32 32, i32 64
  %.112.i.i = select i1 %or.cond3.i.i, i32 47, i32 66
  %add.ptr142.i.i = getelementptr i8, ptr %300, i32 %..i.i
  %command143.i.i = getelementptr i8, ptr %300, i32 %.112.i.i
  %301 = ptrtoint ptr %command143.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %storemerge.i.i = load i8, ptr %command143.i.i, align 1
  %302 = ptrtoint ptr %arrayidx.i190.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %storemerge.i.i, ptr %arrayidx.i190.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbuf_dma.0.i.i)
  %tobool147.not.i.i = icmp eq i32 %inbuf_dma.0.i.i, 0
  br i1 %tobool147.not.i.i, label %if.end122.i.i.if.end151.i.i_crit_edge, label %if.then148.i.i

if.end122.i.i.if.end151.i.i_crit_edge:            ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end151.i.i

if.then148.i.i:                                   ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev149.i.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %303 = ptrtoint ptr %pdev149.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %pdev149.i.i, align 16
  %dev150.i.i = getelementptr inbounds %struct.pci_dev, ptr %304, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev150.i.i, i32 noundef %inbuf_dma.0.i.i, i32 noundef %190, i32 noundef 2, i32 noundef 0) #17
  br label %if.end151.i.i

if.end151.i.i:                                    ; preds = %if.then148.i.i, %if.end122.i.i.if.end151.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma_buffer.0.i.i)
  %tobool152.not.i.i = icmp eq i32 %dma_buffer.0.i.i, 0
  br i1 %tobool152.not.i.i, label %if.end151.i.i.if.end156.i.i_crit_edge, label %if.then153.i.i

if.end151.i.i.if.end156.i.i_crit_edge:            ; preds = %if.end151.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156.i.i

if.then153.i.i:                                   ; preds = %if.end151.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev154.i.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %305 = ptrtoint ptr %pdev154.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %pdev154.i.i, align 16
  %dev155.i.i = getelementptr inbounds %struct.pci_dev, ptr %306, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev155.i.i, i32 noundef %dma_buffer.0.i.i, i32 noundef %188, i32 noundef 1, i32 noundef 0) #17
  br label %if.end156.i.i

if.end156.i.i:                                    ; preds = %if.then153.i.i, %if.end151.i.i.if.end156.i.i_crit_edge
  %features157.i.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 3
  %307 = ptrtoint ptr %features157.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %features157.i.i, align 1
  %309 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %308, ptr %arrayidx44.i.i, align 1
  %sect_count160.i.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 12
  %310 = ptrtoint ptr %sect_count160.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %sect_count160.i.i, align 4
  %312 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %311, ptr %arrayidx46.i.i, align 2
  %313 = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 4
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %313, align 4
  %316 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %315, ptr %arrayidx48.i.i, align 1
  %317 = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 5
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %317, align 1
  %320 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %arrayidx50.i.i, align 4
  %321 = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 6
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %321, align 2
  %324 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %arrayidx52.i.i, align 1
  %325 = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 7
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %325, align 1
  %328 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %327, ptr %arrayidx54.i.i, align 2
  %out_flags171.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 2
  %329 = ptrtoint ptr %out_flags171.i.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %bf.load172.i.i = load i16, ptr %out_flags171.i.i, align 4
  %330 = and i16 %bf.load172.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %330)
  %tobool175.not.i.i = icmp eq i16 %330, 0
  br i1 %tobool175.not.i.i, label %if.end156.i.i.if.end189.i.i_crit_edge, label %if.then176.i.i

if.end156.i.i.if.end189.i.i_crit_edge:            ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end189.i.i

if.then176.i.i:                                   ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %331 = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %331, align 4
  %arrayidx178.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 3
  %334 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %333, ptr %arrayidx178.i.i, align 1
  %335 = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 9
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %335, align 1
  %arrayidx180.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 4
  %338 = ptrtoint ptr %arrayidx180.i.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %337, ptr %arrayidx180.i.i, align 4
  %339 = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 10
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %339, align 2
  %arrayidx182.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 5
  %342 = ptrtoint ptr %arrayidx182.i.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %arrayidx182.i.i, align 1
  %features_ex183.i.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 11
  %343 = ptrtoint ptr %features_ex183.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %features_ex183.i.i, align 1
  %arrayidx185.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 1
  %345 = ptrtoint ptr %arrayidx185.i.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %344, ptr %arrayidx185.i.i, align 1
  %sect_cnt_ex186.i.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %add.ptr142.i.i, i32 0, i32 13
  %346 = ptrtoint ptr %sect_cnt_ex186.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %sect_cnt_ex186.i.i, align 1
  %arrayidx188.i.i = getelementptr inbounds %struct.ide_task_request_s, ptr %req_task.i, i32 0, i32 1, i32 2
  %348 = ptrtoint ptr %arrayidx188.i.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %347, ptr %arrayidx188.i.i, align 2
  br label %if.end189.i.i

if.end189.i.i:                                    ; preds = %if.then176.i.i, %if.end156.i.i.if.end189.i.i_crit_edge
  br i1 %tobool.not.i179.i, label %if.end197.i.i, label %if.then191.i.i

if.then191.i.i:                                   ; preds = %if.end189.i.i
  %add.ptr192.i.i = getelementptr i8, ptr %168, i32 40
  call void @__check_object_size(ptr noundef %outbuf.0.i.i, i32 noundef %188, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i.i211.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i211.i, label %if.then191.i.i.if.end215.i.i_crit_edge, label %if.end.i.i.i215.i

if.then191.i.i.if.end215.i.i_crit_edge:           ; preds = %if.then191.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end215.i.i

if.end.i.i.i215.i:                                ; preds = %if.then191.i.i
  %349 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr192.i.i, i32 %188, i32 -1226833920) #24, !srcloc !652
  %asmresult.i.i.i213.i = extractvalue { i32, i32 } %349, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i213.i)
  %cmp.i6.i.i214.i = icmp eq i32 %asmresult.i.i.i213.i, 0
  br i1 %cmp.i6.i.i214.i, label %copy_to_user.exit.i218.i, label %if.end.i.i.i215.i.if.end215.i.i_crit_edge

if.end.i.i.i215.i.if.end215.i.i_crit_edge:        ; preds = %if.end.i.i.i215.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end215.i.i

copy_to_user.exit.i218.i:                         ; preds = %if.end.i.i.i215.i
  %call.i.i.i.i216.i = call zeroext i1 @__kasan_check_read(ptr noundef %outbuf.0.i.i, i32 noundef %188) #17
  %call.i12.i.i.i217.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr192.i.i, ptr noundef %outbuf.0.i.i, i32 noundef %188) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i217.i)
  %tobool194.not.i.i = icmp ne i32 %call.i12.i.i.i217.i, 0
  %brmerge108.i.i = select i1 %tobool194.not.i.i, i1 true, i1 %tobool16.not.i.i
  %.mux.i.i = select i1 %tobool194.not.i.i, i32 -14, i32 0
  br i1 %brmerge108.i.i, label %copy_to_user.exit.i218.i.if.end215.i.i_crit_edge, label %copy_to_user.exit.i218.i.if.then199.i.i_crit_edge

copy_to_user.exit.i218.i.if.then199.i.i_crit_edge: ; preds = %copy_to_user.exit.i218.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then199.i.i

copy_to_user.exit.i218.i.if.end215.i.i_crit_edge: ; preds = %copy_to_user.exit.i218.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end215.i.i

if.end197.i.i:                                    ; preds = %if.end189.i.i
  br i1 %tobool16.not.i.i, label %if.end197.i.i.if.end215.i.i_crit_edge, label %if.end197.i.i.if.then199.i.i_crit_edge

if.end197.i.i.if.then199.i.i_crit_edge:           ; preds = %if.end197.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then199.i.i

if.end197.i.i.if.end215.i.i_crit_edge:            ; preds = %if.end197.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end215.i.i

if.then199.i.i:                                   ; preds = %if.end197.i.i.if.then199.i.i_crit_edge, %copy_to_user.exit.i218.i.if.then199.i.i_crit_edge
  %add.ptr200.i.i = getelementptr i8, ptr %168, i32 %add.i.i
  call void @__check_object_size(ptr noundef %inbuf.0.i.i, i32 noundef %190, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i18.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i18.i.i, label %if.then199.i.i.if.end215.i.i_crit_edge, label %if.end.i.i22.i.i

if.then199.i.i.if.end215.i.i_crit_edge:           ; preds = %if.then199.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end215.i.i

if.end.i.i22.i.i:                                 ; preds = %if.then199.i.i
  %350 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr200.i.i, i32 %190, i32 -1226833920) #24, !srcloc !652
  %asmresult.i.i20.i.i = extractvalue { i32, i32 } %350, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i20.i.i)
  %cmp.i6.i21.i.i = icmp eq i32 %asmresult.i.i20.i.i, 0
  br i1 %cmp.i6.i21.i.i, label %copy_to_user.exit27.i.i, label %if.end.i.i22.i.i.if.end215.i.i_crit_edge

if.end.i.i22.i.i.if.end215.i.i_crit_edge:         ; preds = %if.end.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end215.i.i

copy_to_user.exit27.i.i:                          ; preds = %if.end.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i23.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %inbuf.0.i.i, i32 noundef %190) #17
  %call.i12.i.i24.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr200.i.i, ptr noundef %inbuf.0.i.i, i32 noundef %190) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i24.i.i)
  %tobool202.not.i.i = icmp eq i32 %call.i12.i.i24.i.i, 0
  %spec.select.i219.i = select i1 %tobool202.not.i.i, i32 0, i32 -14
  br label %if.end215.i.i

abort.i.i:                                        ; preds = %if.end116.i.i.abort.i.i_crit_edge, %do.end.i192.i, %if.end33.i.i.abort.i.i_crit_edge
  %err.0.i.i = phi i32 [ -22, %do.end.i192.i ], [ -22, %if.end33.i.i.abort.i.i_crit_edge ], [ -5, %if.end116.i.i.abort.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbuf_dma.0.i.i)
  %tobool206.not.i.i = icmp eq i32 %inbuf_dma.0.i.i, 0
  br i1 %tobool206.not.i.i, label %abort.i.i.if.end210.i.i_crit_edge, label %abort.i.i.if.then207.i.i_crit_edge

abort.i.i.if.then207.i.i_crit_edge:               ; preds = %abort.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then207.i.i

abort.i.i.if.end210.i.i_crit_edge:                ; preds = %abort.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end210.i.i

if.then207.i.i:                                   ; preds = %abort.i.i.if.then207.i.i_crit_edge, %dma_map_single_attrs.exit49.i.i.if.then207.i.i_crit_edge
  %inbuf.187.i.i = phi ptr [ %inbuf.0.i.i, %abort.i.i.if.then207.i.i_crit_edge ], [ %call19.i.i, %dma_map_single_attrs.exit49.i.i.if.then207.i.i_crit_edge ]
  %err.086.i.i = phi i32 [ %err.0.i.i, %abort.i.i.if.then207.i.i_crit_edge ], [ -12, %dma_map_single_attrs.exit49.i.i.if.then207.i.i_crit_edge ]
  %inbuf_dma.185.i.i = phi i32 [ %inbuf_dma.0.i.i, %abort.i.i.if.then207.i.i_crit_edge ], [ -1, %dma_map_single_attrs.exit49.i.i.if.then207.i.i_crit_edge ]
  %pdev208.i.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %351 = ptrtoint ptr %pdev208.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %pdev208.i.i, align 16
  %dev209.i.i = getelementptr inbounds %struct.pci_dev, ptr %352, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev209.i.i, i32 noundef %inbuf_dma.185.i.i, i32 noundef %190, i32 noundef 2, i32 noundef 0) #17
  br label %if.end210.i.i

if.end210.i.i:                                    ; preds = %if.then207.i.i, %abort.i.i.if.end210.i.i_crit_edge, %if.then21.i.i
  %inbuf.175.i.i = phi ptr [ %inbuf.187.i.i, %if.then207.i.i ], [ %inbuf.0.i.i, %abort.i.i.if.end210.i.i_crit_edge ], [ null, %if.then21.i.i ]
  %err.074.i.i = phi i32 [ %err.086.i.i, %if.then207.i.i ], [ %err.0.i.i, %abort.i.i.if.end210.i.i_crit_edge ], [ %202, %if.then21.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma_buffer.0.i.i)
  %tobool211.not.i.i = icmp eq i32 %dma_buffer.0.i.i, 0
  br i1 %tobool211.not.i.i, label %if.end210.i.i.if.end215.i.i_crit_edge, label %if.end210.i.i.if.then212.i.i_crit_edge

if.end210.i.i.if.then212.i.i_crit_edge:           ; preds = %if.end210.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then212.i.i

if.end210.i.i.if.end215.i.i_crit_edge:            ; preds = %if.end210.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end215.i.i

if.then212.i.i:                                   ; preds = %if.end210.i.i.if.then212.i.i_crit_edge, %dma_map_single_attrs.exit.i.i.if.then212.i.i_crit_edge
  %outbuf_dma.173106.i.i = phi i32 [ %dma_buffer.0.i.i, %if.end210.i.i.if.then212.i.i_crit_edge ], [ -1, %dma_map_single_attrs.exit.i.i.if.then212.i.i_crit_edge ]
  %err.074105.i.i = phi i32 [ %err.074.i.i, %if.end210.i.i.if.then212.i.i_crit_edge ], [ -12, %dma_map_single_attrs.exit.i.i.if.then212.i.i_crit_edge ]
  %inbuf.175104.i.i = phi ptr [ %inbuf.175.i.i, %if.end210.i.i.if.then212.i.i_crit_edge ], [ null, %dma_map_single_attrs.exit.i.i.if.then212.i.i_crit_edge ]
  %outbuf.176103.i.i = phi ptr [ %outbuf.0.i.i, %if.end210.i.i.if.then212.i.i_crit_edge ], [ %call.i182.i, %dma_map_single_attrs.exit.i.i.if.then212.i.i_crit_edge ]
  %pdev213.i.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %353 = ptrtoint ptr %pdev213.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %pdev213.i.i, align 16
  %dev214.i.i = getelementptr inbounds %struct.pci_dev, ptr %354, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev214.i.i, i32 noundef %outbuf_dma.173106.i.i, i32 noundef %188, i32 noundef 1, i32 noundef 0) #17
  br label %if.end215.i.i

if.end215.i.i:                                    ; preds = %if.then212.i.i, %if.end210.i.i.if.end215.i.i_crit_edge, %copy_to_user.exit27.i.i, %if.end.i.i22.i.i.if.end215.i.i_crit_edge, %if.then199.i.i.if.end215.i.i_crit_edge, %if.end197.i.i.if.end215.i.i_crit_edge, %copy_to_user.exit.i218.i.if.end215.i.i_crit_edge, %if.end.i.i.i215.i.if.end215.i.i_crit_edge, %if.then191.i.i.if.end215.i.i_crit_edge
  %err.07496.i.i = phi i32 [ %err.074105.i.i, %if.then212.i.i ], [ %err.074.i.i, %if.end210.i.i.if.end215.i.i_crit_edge ], [ -14, %if.end.i.i.i215.i.if.end215.i.i_crit_edge ], [ -14, %if.then191.i.i.if.end215.i.i_crit_edge ], [ 0, %if.end197.i.i.if.end215.i.i_crit_edge ], [ %.mux.i.i, %copy_to_user.exit.i218.i.if.end215.i.i_crit_edge ], [ -14, %if.then199.i.i.if.end215.i.i_crit_edge ], [ -14, %if.end.i.i22.i.i.if.end215.i.i_crit_edge ], [ %spec.select.i219.i, %copy_to_user.exit27.i.i ]
  %inbuf.17595.i.i = phi ptr [ %inbuf.175104.i.i, %if.then212.i.i ], [ %inbuf.175.i.i, %if.end210.i.i.if.end215.i.i_crit_edge ], [ %inbuf.0.i.i, %if.end.i.i.i215.i.if.end215.i.i_crit_edge ], [ %inbuf.0.i.i, %if.then191.i.i.if.end215.i.i_crit_edge ], [ %inbuf.0.i.i, %if.end197.i.i.if.end215.i.i_crit_edge ], [ %inbuf.0.i.i, %copy_to_user.exit.i218.i.if.end215.i.i_crit_edge ], [ %inbuf.0.i.i, %if.then199.i.i.if.end215.i.i_crit_edge ], [ %inbuf.0.i.i, %if.end.i.i22.i.i.if.end215.i.i_crit_edge ], [ %inbuf.0.i.i, %copy_to_user.exit27.i.i ]
  %outbuf.17694.i.i = phi ptr [ %outbuf.176103.i.i, %if.then212.i.i ], [ %outbuf.0.i.i, %if.end210.i.i.if.end215.i.i_crit_edge ], [ %outbuf.0.i.i, %if.end.i.i.i215.i.if.end215.i.i_crit_edge ], [ %outbuf.0.i.i, %if.then191.i.i.if.end215.i.i_crit_edge ], [ %outbuf.0.i.i, %if.end197.i.i.if.end215.i.i_crit_edge ], [ %outbuf.0.i.i, %copy_to_user.exit.i218.i.if.end215.i.i_crit_edge ], [ %outbuf.0.i.i, %if.then199.i.i.if.end215.i.i_crit_edge ], [ %outbuf.0.i.i, %if.end.i.i22.i.i.if.end215.i.i_crit_edge ], [ %outbuf.0.i.i, %copy_to_user.exit27.i.i ]
  call void @kfree(ptr noundef %outbuf.17694.i.i) #17
  call void @kfree(ptr noundef %inbuf.17595.i.i) #17
  br label %if.end8.i.i151.i

if.end8.i.i151.i:                                 ; preds = %if.end215.i.i, %if.then5.i.i, %if.end41.i.if.end8.i.i151.i_crit_edge
  %retval.0.i220.i = phi i32 [ %191, %if.then5.i.i ], [ %err.07496.i.i, %if.end215.i.i ], [ -22, %if.end41.i.if.end8.i.i151.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i177.i) #17
  call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i152.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i152.i, label %if.end8.i.i151.i.cleanup47.i_crit_edge, label %copy_to_user.exit160.i

if.end8.i.i151.i.cleanup47.i_crit_edge:           ; preds = %if.end8.i.i151.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup47.i

copy_to_user.exit160.i:                           ; preds = %if.end8.i.i151.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i156.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %req_task.i, i32 noundef 40) #17
  %call.i12.i.i157.i = call i32 @arm_copy_to_user(ptr noundef %168, ptr noundef nonnull %req_task.i, i32 noundef 40) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i157.i)
  %tobool44.not.i = icmp eq i32 %call.i12.i.i157.i, 0
  %spec.select.i = select i1 %tobool44.not.i, i32 %retval.0.i220.i, i32 -14
  br label %cleanup47.i

cleanup47.i:                                      ; preds = %copy_to_user.exit160.i, %if.end8.i.i151.i.cleanup47.i_crit_edge, %if.then11.i.i145.i
  %retval.2.i = phi i32 [ -14, %if.then11.i.i145.i ], [ -14, %if.end8.i.i151.i.cleanup47.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit160.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %req_task.i) #17
  br label %cleanup

sw.epilog.i:                                      ; preds = %cleanup35.i, %cleanup.i, %copy_to_user.exit.i.sw.epilog.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %cleanup47.i, %cleanup35.thread.i, %cleanup.thread.i, %copy_to_user.exit.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ], [ -25, %if.end2.cleanup_crit_edge ], [ %retval.2.i, %cleanup47.i ], [ 0, %sw.epilog.i ], [ -14, %copy_to_user.exit.i.cleanup_crit_edge ], [ -22, %sw.default.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i ], [ %retval.1.ph.i, %cleanup35.thread.i ], [ -14, %sw.bb.i.cleanup_crit_edge ], [ -14, %if.end.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_block_getgeo(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %geo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %port1.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port1.i, align 16
  %identify_valid.i = getelementptr inbounds %struct.mtip_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %identify_valid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %identify_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %do.end, label %if.end191

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %pdev = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 16
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.142) #20
  br label %cleanup

if.end191:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %identify.i = getelementptr inbounds %struct.mtip_port, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %identify.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %identify.i, align 4
  %arrayidx3.i = getelementptr i16, ptr %11, i32 101
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx3.i, align 2
  %conv4.i = zext i16 %13 to i64
  %shl.i = shl nuw nsw i64 %conv4.i, 16
  %arrayidx.i = getelementptr i16, ptr %11, i32 100
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %15 to i64
  %or.i = or i64 %shl.i, %conv.i
  %arrayidx6.i = getelementptr i16, ptr %11, i32 102
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx6.i, align 2
  %conv7.i = zext i16 %17 to i64
  %shl11.i = shl nuw nsw i64 %conv7.i, 32
  %or12.i = or i64 %or.i, %shl11.i
  %arrayidx9.i = getelementptr i16, ptr %11, i32 103
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %19 to i64
  %shl13.i = shl nuw i64 %conv10.i, 48
  %or14.i = or i64 %or12.i, %shl13.i
  %20 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -32, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %21 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 56, ptr %sectors, align 1
  %22 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6399890801082905663, i64 %or14.i, i32 0) #24, !srcloc !657
  %asmresult.i = extractvalue { i64, i32 } %22, 0
  %asmresult4.i = extractvalue { i64, i32 } %22, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6399890801082905663, i64 %or14.i, i64 %asmresult.i, i32 %asmresult4.i) #24, !srcloc !658
  %asmresult10.i = extractvalue { i64, i32 } %23, 0
  %div171285 = lshr i64 %asmresult10.i, 13
  %conv193 = trunc i64 %div171285 to i16
  %cylinders = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %24 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv193, ptr %cylinders, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end191 ], [ -25, %do.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtip_exec_internal_command(ptr noundef %port, ptr nocapture noundef readonly %fis, i32 noundef %buffer, i32 noundef %buf_len, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  %vendor_id.i = alloca i16, align 2
  %icmd = alloca %struct.mtip_int_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %icmd) #17
  %2 = getelementptr inbounds %struct.mtip_int_cmd, ptr %icmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mtip_int_cmd, ptr %icmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.mtip_int_cmd, ptr %icmd, i32 0, i32 3
  %5 = ptrtoint ptr %icmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %icmd, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %buffer, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %buf_len, ptr %3, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %4, align 4
  %and = and i32 %buffer, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %pdev = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.116) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %11 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %vendor_id.i, align 2
  %sr.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sr.i, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.mtip_check_surprise_removal.exit.thread_crit_edge

if.end.mtip_check_surprise_removal.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_check_surprise_removal.exit.thread

if.end.i:                                         ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 16
  %call.i = call i32 @pci_read_config_word(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %vendor_id.i) #17
  %16 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp.i = icmp eq i16 %17, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end7

if.then2.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %sr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %sr.i, align 4
  %queue.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %20) #17
  br label %mtip_check_surprise_removal.exit.thread

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %mtip_check_surprise_removal.exit.thread

mtip_check_surprise_removal.exit.thread:          ; preds = %do.end.i, %if.then5.i, %if.end.mtip_check_surprise_removal.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #17
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %queue = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue, align 4
  %call8 = call ptr @blk_mq_alloc_request(ptr noundef %24, i32 noundef 34, i32 noundef 2) #17
  %cmp.i3 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %flags = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 22
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #17
  %command = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis, i32 0, i32 2
  %25 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %command, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %26)
  %cmp = icmp eq i8 %26, -13
  br i1 %cmp, label %if.then13, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #17
  %27 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %command, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %28)
  %cmp19.not = icmp eq i8 %28, -32
  br i1 %cmp19.not, label %if.end15.if.end33_crit_edge, label %if.then21

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

if.then21:                                        ; preds = %if.end15
  %call22 = call fastcc i32 @mtip_quiesce_io(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end28, label %if.then21.if.end33_crit_edge

if.then21.if.end33_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

do.end28:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 16
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef nonnull @.str.119) #20
  call void @blk_mq_free_request(ptr noundef %call8) #17
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #17
  %svc_wait = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 21
  call void @__wake_up(ptr noundef %svc_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #17
  br label %cleanup

if.end33:                                         ; preds = %if.then21.if.end33_crit_edge, %if.end15.if.end33_crit_edge
  %add.ptr.i = getelementptr %struct.request, ptr %call8, i32 1
  %31 = getelementptr %struct.request, ptr %call8, i32 1, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %icmd, ptr %31, align 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %35 = call ptr @memcpy(ptr %34, ptr %fis, i32 20)
  %timeout36 = getelementptr inbounds %struct.request, ptr %call8, i32 0, i32 7
  %36 = ptrtoint ptr %timeout36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %timeout, ptr %timeout36, align 4
  %call37 = call zeroext i8 @blk_execute_rq(ptr noundef %call8, i1 noundef zeroext true) #17
  %status = getelementptr %struct.request, ptr %call8, i32 53, i32 26
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool38.not = icmp eq i8 %38, 0
  br i1 %tobool38.not, label %if.end63, label %do.end42

do.end42:                                         ; preds = %if.end33
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 16
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %command, align 2
  %conv46 = zext i8 %42 to i32
  %conv48 = zext i8 %38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.122, i32 noundef %conv46, i32 noundef %conv48) #20
  %call49 = call fastcc zeroext i1 @mtip_check_surprise_removal(ptr noundef %1)
  br i1 %call49, label %do.end42.do.end56_crit_edge, label %lor.lhs.false

do.end42.do.end56_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end56

lor.lhs.false:                                    ; preds = %do.end42
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 11
  %43 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dd_flag, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool52.not = icmp eq i32 %45, 0
  br i1 %tobool52.not, label %if.end61, label %lor.lhs.false.do.end56_crit_edge

lor.lhs.false.do.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end56

do.end56:                                         ; preds = %lor.lhs.false.do.end56_crit_edge, %do.end42.do.end56_crit_edge
  %46 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i, align 16
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %command, align 2
  %conv60 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.125, i32 noundef %conv60) #20
  br label %exec_ic_exit

if.end61:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %call62 = call fastcc i32 @mtip_device_reset(ptr noundef %1)
  br label %exec_ic_exit

if.end63:                                         ; preds = %if.end33
  %cmd_issue = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 5
  %50 = ptrtoint ptr %cmd_issue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmd_issue, align 4
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !659
  %53 = and i32 %52, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool67.not = icmp eq i32 %53, 0
  br i1 %tobool67.not, label %if.end63.exec_ic_exit_crit_edge, label %if.then68

if.end63.exec_ic_exit_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %exec_ic_exit

if.then68:                                        ; preds = %if.end63
  %dd_flag69 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %dd_flag69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %dd_flag69, align 4
  %56 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool71.not = icmp eq i32 %56, 0
  br i1 %tobool71.not, label %if.then72, label %if.then68.exec_ic_exit_crit_edge

if.then68.exec_ic_exit_crit_edge:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  br label %exec_ic_exit

if.then72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  %call73 = call fastcc i32 @mtip_device_reset(ptr noundef %1)
  br label %exec_ic_exit

exec_ic_exit:                                     ; preds = %if.then72, %if.then68.exec_ic_exit_crit_edge, %if.end63.exec_ic_exit_crit_edge, %if.end61, %do.end56
  %cmp77 = phi i1 [ true, %if.end63.exec_ic_exit_crit_edge ], [ false, %if.then72 ], [ false, %if.then68.exec_ic_exit_crit_edge ], [ false, %if.end61 ], [ false, %do.end56 ]
  %rv.0 = phi i32 [ 0, %if.end63.exec_ic_exit_crit_edge ], [ -11, %if.then72 ], [ -6, %if.then68.exec_ic_exit_crit_edge ], [ -11, %if.end61 ], [ -6, %do.end56 ]
  call void @blk_mq_free_request(ptr noundef %call8) #17
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #17
  br i1 %cmp77, label %land.lhs.true, label %exec_ic_exit.if.end82_crit_edge

exec_ic_exit.if.end82_crit_edge:                  ; preds = %exec_ic_exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

land.lhs.true:                                    ; preds = %exec_ic_exit
  %mmio.i = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 2
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %58, i32 32
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !660
  %60 = and i32 %59, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i5 = icmp eq i32 %60, 0
  br i1 %tobool.not.i5, label %if.end.i6, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.end.i6:                                        ; preds = %land.lhs.true
  %61 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %command, align 2
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.305)
  switch i8 %62, label %if.end.i6.if.end82_crit_edge [
    i8 -13, label %if.then3.i
    i8 -110, label %land.lhs.true.i
    i8 -12, label %if.end.i6.if.then42.i_crit_edge
    i8 -4, label %land.lhs.true22.i
  ]

if.end.i6.if.then42.i_crit_edge:                  ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42.i

if.end.i6.if.end82_crit_edge:                     ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then3.i:                                       ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %ic_pause_timer.i = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 23
  %65 = ptrtoint ptr %ic_pause_timer.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ic_pause_timer.i, align 4
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i6
  %features.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis, i32 0, i32 3
  %66 = ptrtoint ptr %features.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %features.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp9.i = icmp eq i8 %67, 3
  br i1 %cmp9.i, label %if.then11.i, label %land.lhs.true.i.if.end82_crit_edge

land.lhs.true.i.if.end82_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %ic_pause_timer12.i = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 23
  %69 = ptrtoint ptr %ic_pause_timer12.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %ic_pause_timer12.i, align 4
  br label %cleanup

land.lhs.true22.i:                                ; preds = %if.end.i6
  %features23.i = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis, i32 0, i32 3
  %70 = ptrtoint ptr %features23.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %features23.i, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.306)
  switch i8 %71, label %land.lhs.true22.i.if.end82_crit_edge [
    i8 39, label %land.lhs.true22.i.if.then42.i_crit_edge
    i8 114, label %land.lhs.true22.i.if.then42.i_crit_edge10
    i8 98, label %land.lhs.true22.i.if.then42.i_crit_edge11
    i8 38, label %land.lhs.true22.i.if.then42.i_crit_edge12
  ]

land.lhs.true22.i.if.then42.i_crit_edge12:        ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42.i

land.lhs.true22.i.if.then42.i_crit_edge11:        ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42.i

land.lhs.true22.i.if.then42.i_crit_edge10:        ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42.i

land.lhs.true22.i.if.then42.i_crit_edge:          ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42.i

land.lhs.true22.i.if.end82_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then42.i:                                      ; preds = %land.lhs.true22.i.if.then42.i_crit_edge, %land.lhs.true22.i.if.then42.i_crit_edge10, %land.lhs.true22.i.if.then42.i_crit_edge11, %land.lhs.true22.i.if.then42.i_crit_edge12, %if.end.i6.if.then42.i_crit_edge
  %73 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port, align 4
  %dd_flag.i = getelementptr inbounds %struct.driver_data, ptr %74, i32 0, i32 11
  call void @_clear_bit(i32 noundef 0, ptr noundef %dd_flag.i) #17
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %port, align 4
  %dd_flag44.i = getelementptr inbounds %struct.driver_data, ptr %76, i32 0, i32 11
  call void @_clear_bit(i32 noundef 8, ptr noundef %dd_flag44.i) #17
  call fastcc void @mtip_restart_port(ptr noundef %port) #17
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #17
  br label %if.end82

if.end82:                                         ; preds = %if.then42.i, %land.lhs.true22.i.if.end82_crit_edge, %land.lhs.true.i.if.end82_crit_edge, %if.end.i6.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %exec_ic_exit.if.end82_crit_edge
  %svc_wait83 = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 21
  call void @__wake_up(ptr noundef %svc_wait83, i32 noundef 1, i32 noundef 1, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then11.i, %if.then3.i, %do.end28, %if.end7.cleanup_crit_edge, %mtip_check_surprise_removal.exit.thread, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -16, %do.end28 ], [ %rv.0, %if.end82 ], [ -14, %if.end7.cleanup_crit_edge ], [ -14, %mtip_check_surprise_removal.exit.thread ], [ 0, %if.then3.i ], [ 0, %if.then11.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %icmd) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtip_quiesce_io(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %vendor_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %queue = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_quiesce_queue(ptr noundef %3) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %flags = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 22
  %s_active.i = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 3
  %add.neg = sub i32 -4500, %4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %land.lhs.true

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void @msleep(i32 noundef 20) #17
  br label %do.cond

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %do.body.if.end_crit_edge
  call void @msleep(i32 noundef 100) #17
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %13 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %vendor_id.i, align 2
  %sr.i = getelementptr inbounds %struct.driver_data, ptr %12, i32 0, i32 14
  %14 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sr.i, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.err_fault_crit_edge

if.end.err_fault_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_fault

if.end.i:                                         ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %12, i32 0, i32 4
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 16
  %call.i = call i32 @pci_read_config_word(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %vendor_id.i) #17
  %18 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp.i = icmp eq i16 %19, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end8

if.then2.i:                                       ; preds = %if.end.i
  %sr.i.le = getelementptr inbounds %struct.driver_data, ptr %12, i32 0, i32 14
  %20 = ptrtoint ptr %sr.i.le to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %sr.i.le, align 4
  %queue.i = getelementptr inbounds %struct.driver_data, ptr %12, i32 0, i32 5
  %21 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %22) #17
  br label %err_fault

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev.i.le = getelementptr inbounds %struct.driver_data, ptr %12, i32 0, i32 4
  %23 = ptrtoint ptr %pdev.i.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i.le, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %err_fault

if.end8:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %25 = ptrtoint ptr %s_active.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_active.i, align 4
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !645
  %28 = and i32 %27, -16777217
  %29 = call i32 @llvm.bswap.i32(i32 %28) #17
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 4
  %slot_groups15.i = getelementptr inbounds %struct.driver_data, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %slot_groups15.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slot_groups15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp16.i = icmp ugt i32 %33, 1
  br i1 %cmp16.i, label %if.end8.for.body.i_crit_edge, label %if.end8.mtip_commands_active.exit_crit_edge

if.end8.mtip_commands_active.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_commands_active.exit

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %active.018.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %29, %if.end8.for.body.i_crit_edge ]
  %n.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end8.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.mtip_port, ptr %port, i32 0, i32 3, i32 %n.017.i
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx5.i, align 4
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #17, !srcloc !585
  %37 = call i32 @llvm.bswap.i32(i32 %36) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !646
  %or.i = or i32 %37, %active.018.i
  %inc.i = add nuw i32 %n.017.i, 1
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port, align 4
  %slot_groups.i = getelementptr inbounds %struct.driver_data, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %slot_groups.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slot_groups.i, align 8
  %cmp.i7 = icmp ult i32 %inc.i, %41
  br i1 %cmp.i7, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mtip_commands_active.exit_crit_edge

for.body.i.mtip_commands_active.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_commands_active.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

mtip_commands_active.exit:                        ; preds = %for.body.i.mtip_commands_active.exit_crit_edge, %if.end8.mtip_commands_active.exit_crit_edge
  %active.0.lcssa.i = phi i32 [ %29, %if.end8.mtip_commands_active.exit_crit_edge ], [ %or.i, %for.body.i.mtip_commands_active.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.lcssa.i)
  %cmp9.i.not = icmp eq i32 %active.0.lcssa.i, 0
  br i1 %cmp9.i.not, label %mtip_commands_active.exit.cleanup_crit_edge, label %mtip_commands_active.exit.do.cond_crit_edge

mtip_commands_active.exit.do.cond_crit_edge:      ; preds = %mtip_commands_active.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond

mtip_commands_active.exit.cleanup_crit_edge:      ; preds = %mtip_commands_active.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.cond:                                          ; preds = %mtip_commands_active.exit.do.cond_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %42
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

err_fault:                                        ; preds = %do.end.i, %if.then5.i, %if.end.err_fault_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #17
  br label %cleanup

cleanup:                                          ; preds = %err_fault, %do.cond.cleanup_crit_edge, %mtip_commands_active.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %err_fault ], [ -16, %do.cond.cleanup_crit_edge ], [ 0, %mtip_commands_active.exit.cleanup_crit_edge ]
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port, align 4
  %queue17 = getelementptr inbounds %struct.driver_data, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %queue17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %queue17, align 4
  call void @blk_mq_unquiesce_queue(ptr noundef %46) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtip_device_reset(ptr noundef %dd) unnamed_addr #2 align 64 {
entry:
  %vendor_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %0 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %vendor_id.i, align 2
  %sr.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 14
  %1 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sr.i, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mtip_check_surprise_removal.exit.thread_crit_edge

entry.mtip_check_surprise_removal.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_check_surprise_removal.exit.thread

if.end.i:                                         ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 16
  %call.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %vendor_id.i) #17
  %5 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp.i = icmp eq i16 %6, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %sr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %sr.i, align 4
  %queue.i = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 5
  %8 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_set(i32 noundef 13, ptr noundef nonnull %9) #17
  br label %mtip_check_surprise_removal.exit.thread

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %mtip_check_surprise_removal.exit.thread

mtip_check_surprise_removal.exit.thread:          ; preds = %do.end.i, %if.then5.i, %entry.mtip_check_surprise_removal.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #17
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #17
  %call1 = call fastcc i32 @mtip_hba_reset(ptr noundef %dd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %spec.select = select i1 %cmp, i32 -14, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #17
  %port = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 7
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 16
  call fastcc void @mtip_init_port(ptr noundef %14)
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port, align 16
  %mmio.i.i = getelementptr inbounds %struct.mtip_port, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 24
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !597
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  call void @arm_heavy_mb() #17
  %20 = or i32 %19, 268435456
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %22, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %20) #17, !srcloc !589
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %24, i32 24
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !598
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %27, i32 24
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !599
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  call void @arm_heavy_mb() #17
  %29 = or i32 %28, 16777216
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr4.i6.i = getelementptr i8, ptr %31, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i6.i, i32 %29) #17, !srcloc !589
  %32 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr13.i7.i = getelementptr i8, ptr %33, i32 24
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i7.i) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !600
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !661
  call void @arm_heavy_mb() #17
  %35 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dd, align 128
  %add.ptr = getelementptr i8, ptr %36, i32 4
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !585
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !662
  %38 = or i32 %37, 33554432
  %39 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dd, align 128
  %add.ptr8 = getelementptr i8, ptr %40, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %38) #17, !srcloc !589
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mtip_check_surprise_removal.exit.thread
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %mtip_check_surprise_removal.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtip_restart_port(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !599
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %3) #17, !srcloc !589
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !600
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %9
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %entry
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !663
  %13 = and i32 %12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %14
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port, align 4
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dd_flag, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not = icmp eq i32 %19, 0
  br i1 %tobool5.not, label %if.end, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %while.end
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr9 = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !664
  %23 = and i32 %22, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool14.not = icmp eq i32 %23, 0
  br i1 %tobool14.not, label %if.end.do.end35_crit_edge, label %do.end

if.end.do.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end35

do.end:                                           ; preds = %if.end
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port, align 4
  %pdev = getelementptr inbounds %struct.driver_data, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.127) #20
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port, align 4
  %call18 = tail call fastcc i32 @mtip_hba_reset(ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end.if.end27_crit_edge, label %do.end23

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 4
  %pdev25 = getelementptr inbounds %struct.driver_data, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev25, align 16
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.130) #20
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %do.end.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #17
  br label %do.end35

do.end35:                                         ; preds = %if.end27, %if.end.do.end35_crit_edge
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port, align 4
  %pdev37 = getelementptr inbounds %struct.driver_data, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev37, align 16
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev38, ptr noundef nonnull @.str.133) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !665
  tail call void @arm_heavy_mb() #17
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %add.ptr45 = getelementptr i8, ptr %69, i32 44
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !666
  %71 = or i32 %70, 16777216
  %72 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i, align 4
  %add.ptr50 = getelementptr i8, ptr %73, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %71) #17, !srcloc !589
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i, align 4
  %add.ptr54 = getelementptr i8, ptr %75, i32 44
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !667
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add59.neg = xor i32 %77, -1
  br label %while.cond60

while.cond60:                                     ; preds = %while.cond60.while.cond60_crit_edge, %do.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  %sub61 = add i32 %78, %add59.neg
  %cmp62 = icmp slt i32 %sub61, 0
  br i1 %cmp62, label %while.cond60.while.cond60_crit_edge, label %while.end64

while.cond60.while.cond60_crit_edge:              ; preds = %while.cond60
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond60

while.end64:                                      ; preds = %while.cond60
  %79 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %port, align 4
  %dd_flag66 = getelementptr inbounds %struct.driver_data, ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %dd_flag66 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %dd_flag66, align 4
  %83 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool68.not = icmp eq i32 %83, 0
  br i1 %tobool68.not, label %do.body71, label %while.end64.cleanup_crit_edge

while.end64.cleanup_crit_edge:                    ; preds = %while.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body71:                                        ; preds = %while.end64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !668
  tail call void @arm_heavy_mb() #17
  %84 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i, align 4
  %add.ptr77 = getelementptr i8, ptr %85, i32 44
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !669
  %87 = and i32 %86, -16777217
  %88 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i, align 4
  %add.ptr83 = getelementptr i8, ptr %89, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %87) #17, !srcloc !589
  %90 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio.i, align 4
  %add.ptr87 = getelementptr i8, ptr %91, i32 44
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !670
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %add92.neg = sub i32 -50, %93
  br label %while.cond93

while.cond93:                                     ; preds = %land.rhs103.while.cond93_crit_edge, %do.body71
  %94 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i, align 4
  %add.ptr97 = getelementptr i8, ptr %95, i32 40
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !671
  %97 = and i32 %96, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp102 = icmp eq i32 %97, 0
  br i1 %cmp102, label %land.rhs103, label %while.cond93.while.end108_crit_edge

while.cond93.while.end108_crit_edge:              ; preds = %while.cond93
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end108

land.rhs103:                                      ; preds = %while.cond93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %sub104 = add i32 %add92.neg, %98
  %cmp105 = icmp slt i32 %sub104, 0
  br i1 %cmp105, label %land.rhs103.while.cond93_crit_edge, label %land.rhs103.while.end108_crit_edge

land.rhs103.while.end108_crit_edge:               ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end108

land.rhs103.while.cond93_crit_edge:               ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond93

while.end108:                                     ; preds = %land.rhs103.while.end108_crit_edge, %while.cond93.while.end108_crit_edge
  %99 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %port, align 4
  %dd_flag110 = getelementptr inbounds %struct.driver_data, ptr %100, i32 0, i32 11
  %101 = ptrtoint ptr %dd_flag110 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %dd_flag110, align 4
  %103 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool112.not = icmp eq i32 %103, 0
  br i1 %tobool112.not, label %if.end114, label %while.end108.cleanup_crit_edge

while.end108.cleanup_crit_edge:                   ; preds = %while.end108
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end114:                                        ; preds = %while.end108
  %104 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i, align 4
  %add.ptr118 = getelementptr i8, ptr %105, i32 40
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !672
  %107 = and i32 %106, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp123 = icmp eq i32 %107, 0
  br i1 %cmp123, label %do.end127, label %if.end114.if.end131_crit_edge

if.end114.if.end131_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end131

do.end127:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port, align 4
  %pdev129 = getelementptr inbounds %struct.driver_data, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %pdev129 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev129, align 16
  %dev130 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev130, ptr noundef nonnull @.str.136) #20
  br label %if.end131

if.end131:                                        ; preds = %do.end127, %if.end114.if.end131_crit_edge
  tail call fastcc void @mtip_init_port(ptr noundef %port)
  tail call fastcc void @mtip_start_port(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %while.end108.cleanup_crit_edge, %while.end64.cleanup_crit_edge, %while.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_hw_read_flags(ptr nocapture noundef readonly %f, ptr noundef %ubuf, i32 noundef %len, ptr nocapture noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool1.not = icmp eq i32 %conv, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1024) #21
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %port = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 16
  %flags = getelementptr inbounds %struct.mtip_port, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.148, i32 noundef %8)
  %arrayidx6 = getelementptr i8, ptr %call7.i.i, i32 %call5
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dd_flag, align 32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx6, ptr noundef nonnull @.str.149, i32 noundef %10)
  %add8 = add i32 %call7, %call5
  %11 = tail call i32 @llvm.umin.i32(i32 %add8, i32 %len)
  %conv10 = zext i32 %11 to i64
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv10, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %11)
  %cmp1.i.i = icmp ugt i32 %11, 1024
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !607

if.then3.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.112, i32 noundef 1024, i32 noundef %11) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end4
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %11, i1 noundef zeroext true) #17
  tail call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %11, i32 -1226833920) #24, !srcloc !652
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef %11) #17
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %ubuf, ptr noundef nonnull %call7.i.i, i32 noundef %11) #17
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %11, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %11, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool13.not = icmp eq i32 %n.addr.0.i, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br i1 %tobool13.not, label %cond.false19, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cond.false19:                                     ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset, align 8
  %extract.t44 = trunc i64 %15 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false19, %copy_to_user.exit.cleanup_crit_edge, %if.then3.i.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %extract.t44, %cond.false19 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then3.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_hw_read_registers(ptr nocapture noundef readonly %f, ptr noundef %ubuf, i32 noundef %len, ptr nocapture noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool1.not = icmp eq i32 %conv, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1024) #21
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = call ptr @memcpy(ptr %call7.i.i, ptr @.str.150, i32 24)
  %slot_groups = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_groups, align 8
  %n.0208 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n.0208)
  %cmp209 = icmp sgt i32 %n.0208, -1
  br i1 %cmp209, label %for.body.lr.ph, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %port = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %n.0211 = phi i32 [ %n.0208, %for.body.lr.ph ], [ %n.0, %for.body.for.body_crit_edge ]
  %size.0210 = phi i32 [ 23, %for.body.lr.ph ], [ %add12, %for.body.for.body_crit_edge ]
  %arrayidx7 = getelementptr i8, ptr %call7.i.i, i32 %size.0210
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 16
  %arrayidx8 = getelementptr %struct.mtip_port, ptr %9, i32 0, i32 3, i32 %n.0211
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #17, !srcloc !585
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !673
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx7, ptr noundef nonnull @.str.151, i32 noundef %13)
  %add12 = add i32 %call11, %size.0210
  %n.0 = add nsw i32 %n.0211, -1
  %cmp = icmp sgt i32 %n.0211, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 23, %if.end4.for.end_crit_edge ], [ %add12, %for.body.for.end_crit_edge ]
  %arrayidx13 = getelementptr i8, ptr %call7.i.i, i32 %size.0.lcssa
  %14 = call ptr @memcpy(ptr %arrayidx13, ptr @.str.152, i32 3)
  %add15 = add i32 %size.0.lcssa, 2
  %arrayidx16 = getelementptr i8, ptr %call7.i.i, i32 %add15
  %15 = call ptr @memcpy(ptr %arrayidx16, ptr @.str.153, i32 24)
  %add18 = add i32 %size.0.lcssa, 25
  %16 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot_groups, align 8
  %n.1212 = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n.1212)
  %cmp22213 = icmp sgt i32 %n.1212, -1
  br i1 %cmp22213, label %for.body24.lr.ph, label %for.end.for.end37_crit_edge

for.end.for.end37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end37

for.body24.lr.ph:                                 ; preds = %for.end
  %port28 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 7
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body24.lr.ph
  %n.1215 = phi i32 [ %n.1212, %for.body24.lr.ph ], [ %n.1, %for.body24.for.body24_crit_edge ]
  %size.1214 = phi i32 [ %add18, %for.body24.lr.ph ], [ %add34, %for.body24.for.body24_crit_edge ]
  %arrayidx25 = getelementptr i8, ptr %call7.i.i, i32 %size.1214
  %18 = ptrtoint ptr %port28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port28, align 16
  %arrayidx29 = getelementptr %struct.mtip_port, ptr %19, i32 0, i32 5, i32 %n.1215
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx29, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #17, !srcloc !585
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !674
  %call33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx25, ptr noundef nonnull @.str.151, i32 noundef %23)
  %add34 = add i32 %call33, %size.1214
  %n.1 = add nsw i32 %n.1215, -1
  %cmp22 = icmp sgt i32 %n.1215, 0
  br i1 %cmp22, label %for.body24.for.body24_crit_edge, label %for.body24.for.end37_crit_edge

for.body24.for.end37_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end37

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body24

for.end37:                                        ; preds = %for.body24.for.end37_crit_edge, %for.end.for.end37_crit_edge
  %size.1.lcssa = phi i32 [ %add18, %for.end.for.end37_crit_edge ], [ %add34, %for.body24.for.end37_crit_edge ]
  %arrayidx38 = getelementptr i8, ptr %call7.i.i, i32 %size.1.lcssa
  %24 = call ptr @memcpy(ptr %arrayidx38, ptr @.str.152, i32 3)
  %add40 = add i32 %size.1.lcssa, 2
  %arrayidx41 = getelementptr i8, ptr %call7.i.i, i32 %add40
  %25 = call ptr @memcpy(ptr %arrayidx41, ptr @.str.154, i32 24)
  %add43 = add i32 %size.1.lcssa, 25
  %26 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slot_groups, align 8
  %n.2217 = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n.2217)
  %cmp47218 = icmp sgt i32 %n.2217, -1
  br i1 %cmp47218, label %for.body49.lr.ph, label %for.end37.for.end62_crit_edge

for.end37.for.end62_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end62

for.body49.lr.ph:                                 ; preds = %for.end37
  %port53 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 7
  br label %for.body49

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %for.body49.lr.ph
  %n.2220 = phi i32 [ %n.2217, %for.body49.lr.ph ], [ %n.2, %for.body49.for.body49_crit_edge ]
  %size.2219 = phi i32 [ %add43, %for.body49.lr.ph ], [ %add59, %for.body49.for.body49_crit_edge ]
  %arrayidx50 = getelementptr i8, ptr %call7.i.i, i32 %size.2219
  %28 = ptrtoint ptr %port53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port53, align 16
  %arrayidx54 = getelementptr %struct.mtip_port, ptr %29, i32 0, i32 4, i32 %n.2220
  %30 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx54, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #17, !srcloc !585
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !675
  %call58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx50, ptr noundef nonnull @.str.151, i32 noundef %33)
  %add59 = add i32 %call58, %size.2219
  %n.2 = add nsw i32 %n.2220, -1
  %cmp47 = icmp sgt i32 %n.2220, 0
  br i1 %cmp47, label %for.body49.for.body49_crit_edge, label %for.body49.for.end62_crit_edge

for.body49.for.end62_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end62

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body49

for.end62:                                        ; preds = %for.body49.for.end62_crit_edge, %for.end37.for.end62_crit_edge
  %size.2.lcssa = phi i32 [ %add43, %for.end37.for.end62_crit_edge ], [ %add59, %for.body49.for.end62_crit_edge ]
  %arrayidx63 = getelementptr i8, ptr %call7.i.i, i32 %size.2.lcssa
  %34 = call ptr @memcpy(ptr %arrayidx63, ptr @.str.152, i32 3)
  %add65 = add i32 %size.2.lcssa, 2
  %arrayidx66 = getelementptr i8, ptr %call7.i.i, i32 %add65
  %port69 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %port69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port69, align 16
  %mmio = getelementptr inbounds %struct.mtip_port, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !585
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !676
  %call73 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx66, ptr noundef nonnull @.str.155, i32 noundef %40)
  %add74 = add i32 %call73, %add65
  %arrayidx75 = getelementptr i8, ptr %call7.i.i, i32 %add74
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 128
  %add.ptr79 = getelementptr i8, ptr %42, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #17, !srcloc !585
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !677
  %call83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx75, ptr noundef nonnull @.str.156, i32 noundef %44)
  %add84 = add i32 %call83, %add74
  %arrayidx85 = getelementptr i8, ptr %call7.i.i, i32 %add84
  %45 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 2560, ptr %arrayidx85, align 1
  %add87 = add i32 %add84, 1
  %arrayidx88 = getelementptr i8, ptr %call7.i.i, i32 %add87
  %46 = call ptr @memcpy(ptr %arrayidx88, ptr @.str.158, i32 24)
  %add90 = add i32 %add84, 24
  %47 = ptrtoint ptr %slot_groups to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %slot_groups, align 8
  %n.3222 = add i32 %48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n.3222)
  %cmp94223 = icmp sgt i32 %n.3222, -1
  br i1 %cmp94223, label %for.end62.for.body96_crit_edge, label %for.end62.for.end104_crit_edge

for.end62.for.end104_crit_edge:                   ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end104

for.end62.for.body96_crit_edge:                   ; preds = %for.end62
  br label %for.body96

for.body96:                                       ; preds = %for.body96.for.body96_crit_edge, %for.end62.for.body96_crit_edge
  %n.3225 = phi i32 [ %n.3, %for.body96.for.body96_crit_edge ], [ %n.3222, %for.end62.for.body96_crit_edge ]
  %size.3224 = phi i32 [ %add101, %for.body96.for.body96_crit_edge ], [ %add90, %for.end62.for.body96_crit_edge ]
  %49 = ptrtoint ptr %port69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port69, align 16
  %arrayidx98 = getelementptr %struct.mtip_port, ptr %50, i32 0, i32 20, i32 %n.3225
  %51 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx98, align 4
  %arrayidx99 = getelementptr i8, ptr %call7.i.i, i32 %size.3224
  %call100 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx99, ptr noundef nonnull @.str.151, i32 noundef %52)
  %add101 = add i32 %call100, %size.3224
  %n.3 = add nsw i32 %n.3225, -1
  %cmp94 = icmp sgt i32 %n.3225, 0
  br i1 %cmp94, label %for.body96.for.body96_crit_edge, label %for.body96.for.end104_crit_edge

for.body96.for.end104_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end104

for.body96.for.body96_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body96

for.end104:                                       ; preds = %for.body96.for.end104_crit_edge, %for.end62.for.end104_crit_edge
  %size.3.lcssa = phi i32 [ %add90, %for.end62.for.end104_crit_edge ], [ %add101, %for.body96.for.end104_crit_edge ]
  %arrayidx105 = getelementptr i8, ptr %call7.i.i, i32 %size.3.lcssa
  %53 = call ptr @memcpy(ptr %arrayidx105, ptr @.str.152, i32 3)
  %add107 = add i32 %size.3.lcssa, 2
  %54 = tail call i32 @llvm.umin.i32(i32 %add107, i32 %len)
  %conv110 = zext i32 %54 to i64
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv110, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %54)
  %cmp1.i.i = icmp ugt i32 %54, 1024
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !607

if.then3.i.i:                                     ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.112, i32 noundef 1024, i32 noundef %54) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.then.i.i.i:                                    ; preds = %for.end104
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %54, i1 noundef zeroext true) #17
  tail call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %56 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %54, i32 -1226833920) #24, !srcloc !652
  %asmresult.i.i = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef %54) #17
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %ubuf, ptr noundef nonnull %call7.i.i, i32 noundef %54) #17
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %54, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %54, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool113.not = icmp eq i32 %n.addr.0.i, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br i1 %tobool113.not, label %cond.false119, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cond.false119:                                    ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #19
  %57 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %offset, align 8
  %extract.t204 = trunc i64 %58 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false119, %copy_to_user.exit.cleanup_crit_edge, %if.then3.i.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %extract.t204, %cond.false119 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then3.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtip_get_identify(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %fis = alloca %struct.host_to_dev_fis, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fis) #17
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dd_flag, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis, i32 0, i32 2
  %6 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis, i32 0, i32 1
  %7 = call ptr @memset(ptr %fis, i32 0, i32 20)
  %8 = ptrtoint ptr %fis to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 39, ptr %fis, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %6, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -20, ptr %5, align 2
  %identify_valid = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 1
  %11 = ptrtoint ptr %identify_valid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %identify_valid, align 4
  %identify = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 12
  %12 = ptrtoint ptr %identify to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %identify, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 512)
  %identify_dma = getelementptr inbounds %struct.mtip_port, ptr %port, i32 0, i32 13
  %15 = ptrtoint ptr %identify_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %identify_dma, align 4
  %call1 = call fastcc i32 @mtip_exec_internal_command(ptr noundef %port, ptr noundef nonnull %fis, i32 noundef %16, i32 noundef 512, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.01 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %17 = ptrtoint ptr %identify to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %identify, align 4
  %arrayidx = getelementptr i16, ptr %18, i32 %i.01
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body
  %23 = ptrtoint ptr %identify to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %identify, align 4
  %arrayidx9 = getelementptr i16, ptr %24, i32 128
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx9, align 2
  %27 = and i16 %26, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool10.not = icmp eq i16 %27, 0
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port, align 4
  %dd_flag15 = getelementptr inbounds %struct.driver_data, ptr %29, i32 0, i32 11
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 0, ptr noundef %dd_flag15) #17
  br label %if.end16

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %dd_flag15) #17
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %30 = ptrtoint ptr %identify_valid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %identify_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ 0, %if.end16 ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis) #17
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtip_hw_show_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dd_flag, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.213, i32 18)
  br label %if.end11

if.else:                                          ; preds = %entry
  %8 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dd_flag, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.214, i32 15)
  br label %if.end11

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 8029474385727654400, ptr %buf, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then5, %if.then
  %size.0 = phi i32 [ 17, %if.then ], [ 14, %if.then5 ], [ 7, %if.else8 ]
  ret i32 %size.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mtip_queue_cmd(ptr noundef %req, ptr nocapture noundef readonly %data, i1 noundef zeroext %reserved) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tag = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tag, align 4
  %port = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 16
  %cmds_to_issue = getelementptr inbounds %struct.mtip_port, ptr %3, i32 0, i32 20
  tail call void @_set_bit(i32 noundef %1, ptr noundef %cmds_to_issue) #17
  tail call void @blk_abort_request(ptr noundef %req) #17
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mtip_abort_cmd(ptr noundef %req, ptr nocapture noundef readonly %data, i1 noundef zeroext %reserved) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tag = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tag, align 4
  %port = getelementptr inbounds %struct.driver_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 16
  %cmds_to_issue = getelementptr inbounds %struct.mtip_port, ptr %3, i32 0, i32 20
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %cmds_to_issue) #17
  %status = getelementptr %struct.request, ptr %req, i32 53, i32 26
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %status, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 8
  %queuedata.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %queuedata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queuedata.i, align 4
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = getelementptr %struct.request, ptr %req, i32 1, i32 4
  %scatter_ents.i = getelementptr %struct.request, ptr %req, i32 1, i32 2
  %12 = ptrtoint ptr %scatter_ents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scatter_ents.i, align 4
  %direction.i = getelementptr %struct.request, ptr %req, i32 53, i32 25
  %14 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 0) #17
  %unaligned.i = getelementptr %struct.request, ptr %req, i32 1, i32 3
  %16 = ptrtoint ptr %unaligned.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unaligned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %entry.mtip_softirq_done_fn.exit_crit_edge, label %if.then.i, !prof !593

entry.mtip_softirq_done_fn.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtip_softirq_done_fn.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %port.i = getelementptr inbounds %struct.driver_data, ptr %8, i32 0, i32 7
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port.i, align 16
  %cmd_slot_unal.i = getelementptr inbounds %struct.mtip_port, ptr %19, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_slot_unal.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %cmd_slot_unal.i, i32 1, i32 3, i32 1) #17
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_slot_unal.i, ptr %cmd_slot_unal.i, i32 1, ptr elementtype(i32) %cmd_slot_unal.i) #17, !srcloc !651
  br label %mtip_softirq_done_fn.exit

mtip_softirq_done_fn.exit:                        ; preds = %if.then.i, %entry.mtip_softirq_done_fn.exit_crit_edge
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status, align 4
  tail call void @blk_mq_end_request(ptr noundef %req, i8 noundef zeroext %22) #17
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_tags(ptr nocapture noundef readonly %dd, ptr noundef %msg, ptr nocapture noundef readonly %tagbits, i32 noundef %cnt) unnamed_addr #2 align 64 {
entry:
  %tagmap = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tagmap) #17
  %0 = call ptr @memset(ptr %tagmap, i32 0, i32 128)
  %arrayidx = getelementptr i32, ptr %tagbits, i32 7
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tagmap, ptr noundef nonnull @.str.246, i32 noundef %2)
  %add.ptr.1 = getelementptr i8, ptr %tagmap, i32 %call
  %arrayidx.1 = getelementptr i32, ptr %tagbits, i32 6
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %call.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.246, i32 noundef %4)
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %tagmap, i32 %add.1
  %arrayidx.2 = getelementptr i32, ptr %tagbits, i32 5
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.2, align 4
  %call.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.246, i32 noundef %6)
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %tagmap, i32 %add.2
  %arrayidx.3 = getelementptr i32, ptr %tagbits, i32 4
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.3, align 4
  %call.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.246, i32 noundef %8)
  %add.3 = add i32 %call.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %tagmap, i32 %add.3
  %arrayidx.4 = getelementptr i32, ptr %tagbits, i32 3
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.4, align 4
  %call.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.246, i32 noundef %10)
  %add.4 = add i32 %call.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %tagmap, i32 %add.4
  %arrayidx.5 = getelementptr i32, ptr %tagbits, i32 2
  %11 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.5, align 4
  %call.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.246, i32 noundef %12)
  %add.5 = add i32 %call.5, %add.4
  %add.ptr.6 = getelementptr i8, ptr %tagmap, i32 %add.5
  %arrayidx.6 = getelementptr i32, ptr %tagbits, i32 1
  %13 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.6, align 4
  %call.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6, ptr noundef nonnull @.str.246, i32 noundef %14)
  %add.6 = add i32 %call.6, %add.5
  %add.ptr.7 = getelementptr i8, ptr %tagmap, i32 %add.6
  %15 = ptrtoint ptr %tagbits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tagbits, align 4
  %call.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.7, ptr noundef nonnull @.str.246, i32 noundef %16)
  %pdev = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.247, i32 noundef %cnt, ptr noundef %msg, ptr noundef nonnull %tagmap) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tagmap) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_abort_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mark_disk_dead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtip_standby_drive(ptr noundef %dd) unnamed_addr #2 align 64 {
entry:
  %fis.i = alloca %struct.host_to_dev_fis, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sr = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 14
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sr, align 4, !range !583
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 16
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.mtip_port, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 11
  %7 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dd_flag, align 4
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %dd_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dd_flag, align 4
  %and1.i26 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i26)
  %tobool9.not = icmp eq i32 %and1.i26, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fis.i) #17
  %12 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.host_to_dev_fis, ptr %fis.i, i32 0, i32 2
  %14 = call ptr @memset(ptr %fis.i, i32 0, i32 20)
  %15 = ptrtoint ptr %fis.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 39, ptr %fis.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %12, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -32, ptr %13, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call.i = call fastcc i32 @mtip_exec_internal_command(ptr noundef nonnull %3, ptr noundef nonnull %fis.i, i32 noundef 0, i32 noundef 0, i32 noundef 120000) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mtip_standby_immediate.exit.thread, label %do.end

mtip_standby_immediate.exit.thread:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i) #17
  br label %cleanup

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.267) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i) #17
  %pdev = getelementptr inbounds %struct.driver_data, ptr %dd, i32 0, i32 4
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.265) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mtip_standby_immediate.exit.thread, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true6.cleanup_crit_edge ], [ %call.i, %do.end ], [ 0, %mtip_standby_immediate.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_freeze_queue_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mtip_no_dev_cleanup(ptr noundef %rq, ptr nocapture noundef readnone %data, i1 noundef zeroext %reserv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr %struct.request, ptr %rq, i32 53, i32 26
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %status, align 4
  tail call void @blk_mq_complete_request(ptr noundef %rq) #17
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_pci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dd_flag) #17
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %disk.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk.i, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.273, ptr noundef %disk_name.i) #20
  %call.i.i = tail call fastcc i32 @mtip_standby_drive(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %do.body1.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.275) #20
  br label %mtip_block_suspend.exit

do.body1.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !678
  tail call void @arm_heavy_mb() #17
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !679
  %11 = and i32 %10, -33554433
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %add.ptr6.i.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %11) #17, !srcloc !589
  %port.i.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port.i.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !605
  tail call void @arm_heavy_mb() #17
  %mmio.i.i.i = getelementptr inbounds %struct.mtip_port, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #17, !srcloc !589
  %18 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !599
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %21 = and i32 %20, -16777217
  %22 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr9.i.i.i.i = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i.i, i32 %21) #17, !srcloc !589
  %24 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr13.i.i.i.i = getelementptr i8, ptr %25, i32 24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !600
  %27 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %28, i32 24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !597
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %30 = and i32 %29, -268435457
  %31 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr9.i7.i.i.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i7.i.i.i, i32 %30) #17, !srcloc !589
  %33 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr13.i8.i.i.i = getelementptr i8, ptr %34, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i8.i.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !598
  br label %mtip_block_suspend.exit

mtip_block_suspend.exit:                          ; preds = %do.body1.i.i, %do.end.i.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_pci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %disk.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk.i, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.279, ptr noundef %disk_name.i) #20
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 252
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !587
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !588
  tail call void @arm_heavy_mb() #17
  %9 = or i32 %8, 257
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %add.ptr4.i.i.i = getelementptr i8, ptr %11, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %9) #17, !srcloc !589
  %call.i.i = tail call fastcc i32 @mtip_hba_reset(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.281) #20
  br label %mtip_block_resume.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %port.i.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port.i.i, align 16
  tail call fastcc void @mtip_init_port(ptr noundef %15) #17
  %16 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port.i.i, align 16
  %mmio.i.i.i.i = getelementptr inbounds %struct.mtip_port, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !597
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %21 = or i32 %20, 268435456
  %22 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i, i32 %21) #17, !srcloc !589
  %24 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr13.i.i.i.i = getelementptr i8, ptr %25, i32 24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !598
  %27 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %28, i32 24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !599
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  %30 = or i32 %29, 16777216
  %31 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr4.i6.i.i.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i6.i.i.i, i32 %30) #17, !srcloc !589
  %33 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr13.i7.i.i.i = getelementptr i8, ptr %34, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i7.i.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !680
  tail call void @arm_heavy_mb() #17
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 128
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !681
  %39 = or i32 %38, 33554432
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  %add.ptr7.i.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %39) #17, !srcloc !589
  br label %mtip_block_resume.exit

mtip_block_resume.exit:                           ; preds = %if.end.i.i, %do.end.i.i
  %dd_flag = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %dd_flag) #17
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtip_hw_read_device_status(ptr nocapture noundef readnone %f, ptr noundef %ubuf, i32 noundef %len, ptr nocapture noundef %offset) #2 align 64 {
entry:
  %id_buf.i = alloca [42 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset, align 8
  %conv = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp ne i32 %len, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1024) #21
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %id_buf.i) #17
  %3 = call ptr @memset(ptr %id_buf.i, i32 255, i32 42)
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dev_lock) #17
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr @.str.295, i32 18)
  %5 = load ptr, ptr @online_list, align 4
  %cmp12.not23.i = icmp eq ptr %5, @online_list
  br i1 %cmp12.not23.i, label %if.end4.for.end.i_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.for.end.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %size.025.i = phi i32 [ %size.1.i, %for.inc.i.for.body.i_crit_edge ], [ 17, %if.end4.for.body.i_crit_edge ]
  %.pn.in24.i = phi ptr [ %.pn26.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %if.end4.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn26.i = load ptr, ptr %.pn.in24.i, align 4
  %pdev.i = getelementptr i8, ptr %.pn.in24.i, i32 -1396
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 16
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i36

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then.i36:                                      ; preds = %for.body.i
  %port.i = getelementptr i8, ptr %.pn.in24.i, i32 -1204
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 16
  %tobool14.not.i = icmp eq ptr %10, null
  br i1 %tobool14.not.i, label %if.then.i36.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i36.if.else.i_crit_edge:                  ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i36
  %identify.i = getelementptr inbounds %struct.mtip_port, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %identify.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %identify.i, align 4
  %tobool16.not.i = icmp eq ptr %12, null
  br i1 %tobool16.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true17.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %identify_valid.i = getelementptr inbounds %struct.mtip_port, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %identify_valid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %identify_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not.i = icmp eq i32 %14, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.if.else.i_crit_edge, label %if.then20.i

land.lhs.true17.i.if.else.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then20.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr23.i = getelementptr i16, ptr %12, i32 10
  %call24.i = call i32 @strlcpy(ptr noundef nonnull %id_buf.i, ptr noundef %add.ptr23.i, i32 noundef 21) #17
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port.i, align 16
  %identify26.i = getelementptr inbounds %struct.mtip_port, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %identify26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %identify26.i, align 4
  %add.ptr27.i = getelementptr i16, ptr %18, i32 141
  %19 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr27.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true17.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then.i36.if.else.i_crit_edge
  %21 = call ptr @memset(ptr %id_buf.i, i32 0, i32 42)
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i = load ptr, ptr %port.i, align 16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then20.i
  %23 = phi ptr [ %.pr.i, %if.else.i ], [ %16, %if.then20.i ]
  %status.0.i = phi i16 [ 0, %if.else.i ], [ %20, %if.then20.i ]
  %tobool30.not.i = icmp eq ptr %23, null
  br i1 %tobool30.not.i, label %if.end.i.if.else44.i_crit_edge, label %land.lhs.true31.i

if.end.i.if.else44.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else44.i

land.lhs.true31.i:                                ; preds = %if.end.i
  %flags33.i = getelementptr inbounds %struct.mtip_port, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %flags33.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags33.i, align 4
  %26 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool35.not.i = icmp eq i32 %26, 0
  br i1 %tobool35.not.i, label %land.lhs.true31.i.if.else44.i_crit_edge, label %if.then36.i

land.lhs.true31.i.if.else44.i_crit_edge:          ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else44.i

if.then36.i:                                      ; preds = %land.lhs.true31.i
  %arrayidx37.i = getelementptr i8, ptr %call7.i.i, i32 %size.025.i
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i37, label %if.then36.i.dev_name.exit.i_crit_edge

if.then36.i.dev_name.exit.i_crit_edge:            ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i

if.end.i.i37:                                     ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i37, %if.then36.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i37 ], [ %30, %if.then36.i.dev_name.exit.i_crit_edge ]
  %conv41.i = zext i16 %status.0.i to i32
  %call42.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx37.i, ptr noundef nonnull @.str.296, ptr noundef %retval.0.i.i, ptr noundef nonnull %id_buf.i, i32 noundef %conv41.i) #17
  %add43.i = add i32 %call42.i, %size.025.i
  br label %for.inc.i

if.else44.i:                                      ; preds = %land.lhs.true31.i.if.else44.i_crit_edge, %if.end.i.if.else44.i_crit_edge
  %arrayidx45.i = getelementptr i8, ptr %call7.i.i, i32 %size.025.i
  %33 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i, align 16
  %init_name.i6.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i6.i, align 8
  %tobool.not.i7.i = icmp eq ptr %36, null
  br i1 %tobool.not.i7.i, label %if.end.i8.i, label %if.else44.i.dev_name.exit10.i_crit_edge

if.else44.i.dev_name.exit10.i_crit_edge:          ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit10.i

if.end.i8.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %37 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev47.i, align 4
  br label %dev_name.exit10.i

dev_name.exit10.i:                                ; preds = %if.end.i8.i, %if.else44.i.dev_name.exit10.i_crit_edge
  %retval.0.i9.i = phi ptr [ %38, %if.end.i8.i ], [ %36, %if.else44.i.dev_name.exit10.i_crit_edge ]
  %call50.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx45.i, ptr noundef nonnull @.str.297, ptr noundef %retval.0.i9.i, ptr noundef nonnull %id_buf.i) #17
  %add51.i = add i32 %call50.i, %size.025.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %dev_name.exit10.i, %dev_name.exit.i, %for.body.i.for.inc.i_crit_edge
  %size.1.i = phi i32 [ %add43.i, %dev_name.exit.i ], [ %add51.i, %dev_name.exit10.i ], [ %size.025.i, %for.body.i.for.inc.i_crit_edge ]
  %cmp12.not.i = icmp eq ptr %.pn26.i, @online_list
  br i1 %cmp12.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end4.for.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ 17, %if.end4.for.end.i_crit_edge ], [ %size.1.i, %for.inc.i.for.end.i_crit_edge ]
  %arrayidx59.i = getelementptr i8, ptr %call7.i.i, i32 %size.0.lcssa.i
  %39 = call ptr @memcpy(ptr %arrayidx59.i, ptr @.str.298, i32 24)
  %add61.i = add i32 %size.0.lcssa.i, 23
  %40 = load ptr, ptr @removing_list, align 4
  %cmp71.not28.i = icmp eq ptr %40, @removing_list
  br i1 %cmp71.not28.i, label %for.end.i.show_device_status.exit_crit_edge, label %for.end.i.for.body74.i_crit_edge

for.end.i.for.body74.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body74.i

for.end.i.show_device_status.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %show_device_status.exit

for.body74.i:                                     ; preds = %for.inc126.i.for.body74.i_crit_edge, %for.end.i.for.body74.i_crit_edge
  %size.230.i = phi i32 [ %size.3.i, %for.inc126.i.for.body74.i_crit_edge ], [ %add61.i, %for.end.i.for.body74.i_crit_edge ]
  %.pn1.in29.i = phi ptr [ %.pn131.i, %for.inc126.i.for.body74.i_crit_edge ], [ %40, %for.end.i.for.body74.i_crit_edge ]
  %41 = ptrtoint ptr %.pn1.in29.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn131.i = load ptr, ptr %.pn1.in29.i, align 4
  %pdev75.i = getelementptr i8, ptr %.pn1.in29.i, i32 -1404
  %42 = ptrtoint ptr %pdev75.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev75.i, align 16
  %tobool76.not.i = icmp eq ptr %43, null
  br i1 %tobool76.not.i, label %for.body74.i.for.inc126.i_crit_edge, label %if.then77.i

for.body74.i.for.inc126.i_crit_edge:              ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc126.i

if.then77.i:                                      ; preds = %for.body74.i
  %port78.i = getelementptr i8, ptr %.pn1.in29.i, i32 -1212
  %44 = ptrtoint ptr %port78.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port78.i, align 16
  %tobool79.not.i = icmp eq ptr %45, null
  br i1 %tobool79.not.i, label %if.then77.i.if.else97.i_crit_edge, label %land.lhs.true80.i

if.then77.i.if.else97.i_crit_edge:                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else97.i

land.lhs.true80.i:                                ; preds = %if.then77.i
  %identify82.i = getelementptr inbounds %struct.mtip_port, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %identify82.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %identify82.i, align 4
  %tobool83.not.i = icmp eq ptr %47, null
  br i1 %tobool83.not.i, label %land.lhs.true80.i.if.else97.i_crit_edge, label %land.lhs.true84.i

land.lhs.true80.i.if.else97.i_crit_edge:          ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else97.i

land.lhs.true84.i:                                ; preds = %land.lhs.true80.i
  %identify_valid86.i = getelementptr inbounds %struct.mtip_port, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %identify_valid86.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %identify_valid86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool87.not.i = icmp eq i32 %49, 0
  br i1 %tobool87.not.i, label %land.lhs.true84.i.if.else97.i_crit_edge, label %if.then88.i

land.lhs.true84.i.if.else97.i_crit_edge:          ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else97.i

if.then88.i:                                      ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr92.i = getelementptr i16, ptr %47, i32 10
  %call93.i = call i32 @strlcpy(ptr noundef nonnull %id_buf.i, ptr noundef %add.ptr92.i, i32 noundef 21) #17
  %50 = ptrtoint ptr %port78.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port78.i, align 16
  %identify95.i = getelementptr inbounds %struct.mtip_port, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %identify95.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %identify95.i, align 4
  %add.ptr96.i = getelementptr i16, ptr %53, i32 141
  %54 = ptrtoint ptr %add.ptr96.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr96.i, align 2
  br label %if.end99.i

if.else97.i:                                      ; preds = %land.lhs.true84.i.if.else97.i_crit_edge, %land.lhs.true80.i.if.else97.i_crit_edge, %if.then77.i.if.else97.i_crit_edge
  %56 = call ptr @memset(ptr %id_buf.i, i32 0, i32 42)
  %57 = ptrtoint ptr %port78.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr21.i = load ptr, ptr %port78.i, align 16
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else97.i, %if.then88.i
  %58 = phi ptr [ %.pr21.i, %if.else97.i ], [ %51, %if.then88.i ]
  %status.1.i = phi i16 [ 0, %if.else97.i ], [ %55, %if.then88.i ]
  %tobool101.not.i = icmp eq ptr %58, null
  br i1 %tobool101.not.i, label %if.end99.i.if.else116.i_crit_edge, label %land.lhs.true102.i

if.end99.i.if.else116.i_crit_edge:                ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else116.i

land.lhs.true102.i:                               ; preds = %if.end99.i
  %flags104.i = getelementptr inbounds %struct.mtip_port, ptr %58, i32 0, i32 22
  %59 = ptrtoint ptr %flags104.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags104.i, align 4
  %61 = and i32 %60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool106.not.i = icmp eq i32 %61, 0
  br i1 %tobool106.not.i, label %land.lhs.true102.i.if.else116.i_crit_edge, label %if.then107.i

land.lhs.true102.i.if.else116.i_crit_edge:        ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else116.i

if.then107.i:                                     ; preds = %land.lhs.true102.i
  %arrayidx108.i = getelementptr i8, ptr %call7.i.i, i32 %size.230.i
  %62 = ptrtoint ptr %pdev75.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev75.i, align 16
  %init_name.i11.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44, i32 3
  %64 = ptrtoint ptr %init_name.i11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i11.i, align 8
  %tobool.not.i12.i = icmp eq ptr %65, null
  br i1 %tobool.not.i12.i, label %if.end.i13.i, label %if.then107.i.dev_name.exit15.i_crit_edge

if.then107.i.dev_name.exit15.i_crit_edge:         ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit15.i

if.end.i13.i:                                     ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev110.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %66 = ptrtoint ptr %dev110.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev110.i, align 4
  br label %dev_name.exit15.i

dev_name.exit15.i:                                ; preds = %if.end.i13.i, %if.then107.i.dev_name.exit15.i_crit_edge
  %retval.0.i14.i = phi ptr [ %67, %if.end.i13.i ], [ %65, %if.then107.i.dev_name.exit15.i_crit_edge ]
  %conv113.i = zext i16 %status.1.i to i32
  %call114.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx108.i, ptr noundef nonnull @.str.296, ptr noundef %retval.0.i14.i, ptr noundef nonnull %id_buf.i, i32 noundef %conv113.i) #17
  %add115.i = add i32 %call114.i, %size.230.i
  br label %for.inc126.i

if.else116.i:                                     ; preds = %land.lhs.true102.i.if.else116.i_crit_edge, %if.end99.i.if.else116.i_crit_edge
  %arrayidx117.i = getelementptr i8, ptr %call7.i.i, i32 %size.230.i
  %68 = ptrtoint ptr %pdev75.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev75.i, align 16
  %init_name.i16.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44, i32 3
  %70 = ptrtoint ptr %init_name.i16.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i16.i, align 8
  %tobool.not.i17.i = icmp eq ptr %71, null
  br i1 %tobool.not.i17.i, label %if.end.i18.i, label %if.else116.i.dev_name.exit20.i_crit_edge

if.else116.i.dev_name.exit20.i_crit_edge:         ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit20.i

if.end.i18.i:                                     ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev119.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %72 = ptrtoint ptr %dev119.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev119.i, align 4
  br label %dev_name.exit20.i

dev_name.exit20.i:                                ; preds = %if.end.i18.i, %if.else116.i.dev_name.exit20.i_crit_edge
  %retval.0.i19.i = phi ptr [ %73, %if.end.i18.i ], [ %71, %if.else116.i.dev_name.exit20.i_crit_edge ]
  %call122.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx117.i, ptr noundef nonnull @.str.297, ptr noundef %retval.0.i19.i, ptr noundef nonnull %id_buf.i) #17
  %add123.i = add i32 %call122.i, %size.230.i
  br label %for.inc126.i

for.inc126.i:                                     ; preds = %dev_name.exit20.i, %dev_name.exit15.i, %for.body74.i.for.inc126.i_crit_edge
  %size.3.i = phi i32 [ %add115.i, %dev_name.exit15.i ], [ %add123.i, %dev_name.exit20.i ], [ %size.230.i, %for.body74.i.for.inc126.i_crit_edge ]
  %cmp71.not.i = icmp eq ptr %.pn131.i, @removing_list
  br i1 %cmp71.not.i, label %for.inc126.i.show_device_status.exit_crit_edge, label %for.inc126.i.for.body74.i_crit_edge

for.inc126.i.for.body74.i_crit_edge:              ; preds = %for.inc126.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body74.i

for.inc126.i.show_device_status.exit_crit_edge:   ; preds = %for.inc126.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %show_device_status.exit

show_device_status.exit:                          ; preds = %for.inc126.i.show_device_status.exit_crit_edge, %for.end.i.show_device_status.exit_crit_edge
  %size.2.lcssa.i = phi i32 [ %add61.i, %for.end.i.show_device_status.exit_crit_edge ], [ %size.3.i, %for.inc126.i.show_device_status.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dev_lock, i32 noundef %call3.i) #17
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %id_buf.i) #17
  %add = add i32 %size.2.lcssa.i, %conv
  %74 = call i32 @llvm.umin.i32(i32 %add, i32 %len)
  %conv7 = zext i32 %74 to i64
  %75 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv7, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %74)
  %cmp1.i.i = icmp ugt i32 %74, 1024
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !607

if.then3.i.i:                                     ; preds = %show_device_status.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.112, i32 noundef 1024, i32 noundef %74) #17
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.then.i.i.i:                                    ; preds = %show_device_status.exit
  call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %74, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.113, i32 noundef 174) #17
  %call.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %76 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %74, i32 -1226833920) #24, !srcloc !652
  %asmresult.i.i = extractvalue { i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef %74) #17
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %ubuf, ptr noundef nonnull %call7.i.i, i32 noundef %74) #17
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %74, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %74, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool10.not = icmp eq i32 %n.addr.0.i, 0
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br i1 %tobool10.not, label %cond.false16, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cond.false16:                                     ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #19
  %77 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %offset, align 8
  %extract.t35 = trunc i64 %78 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false16, %copy_to_user.exit.cleanup_crit_edge, %if.then3.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %extract.t35, %cond.false16 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then3.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 300)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 300)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { nobuiltin }
attributes #24 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !131, !132, !134, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !208, !209, !210, !211, !213, !214, !216, !218, !219, !221, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !354, !355, !357, !358, !359, !361, !363, !365, !367, !368, !369, !371, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !386, !388, !389, !390, !392, !394, !396, !398, !399, !401, !403, !405, !407, !408, !409, !410, !412, !413, !414, !415, !417, !418, !419, !421, !423, !424, !426, !427, !429, !431, !432, !434, !436, !437, !438, !440, !442, !443, !444, !445, !446, !447, !449, !450, !451, !453, !455, !457, !458, !459, !460, !462, !463, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !479, !480, !482, !484, !485, !486, !487, !489, !491, !492, !493, !494, !496, !497, !498, !499, !501, !502, !503, !504, !506, !507, !508, !509, !511, !513, !514, !515, !516, !518, !519, !520, !521, !523, !524, !525, !526, !528, !529, !530, !531, !533, !534, !535, !536, !538, !539, !540, !541, !543, !544, !545, !546, !548, !549, !550, !552, !553, !554, !556, !558, !559, !560, !562, !564, !566, !568, !570}
!llvm.named.register.sp = !{!572}
!llvm.module.flags = !{!573, !574, !575, !576, !577, !578, !579, !580}
!llvm.ident = !{!581}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4289, i32 32}
!2 = !{ptr @__UNIQUE_ID_author321, !3, !"__UNIQUE_ID_author321", i1 false, i1 false}
!3 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4297, i32 1}
!4 = !{ptr @__UNIQUE_ID_description322, !5, !"__UNIQUE_ID_description322", i1 false, i1 false}
!5 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4298, i32 1}
!6 = !{ptr @__UNIQUE_ID_file323, !7, !"__UNIQUE_ID_file323", i1 false, i1 false}
!7 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4299, i32 1}
!8 = !{ptr @__UNIQUE_ID_license324, !7, !"__UNIQUE_ID_license324", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_version325, !10, !"__UNIQUE_ID_version325", i1 false, i1 false}
!10 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4300, i32 1}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__modver_attr, !10, !"__modver_attr", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_mtip32xx__326_4302_mtip_init6, !15, !"__initcall__kmod_mtip32xx__326_4302_mtip_init6", i1 false, i1 false}
!15 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4302, i32 1}
!16 = !{ptr @__exitcall_mtip_exit, !17, !"__exitcall_mtip_exit", i1 false, i1 false}
!17 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4303, i32 1}
!18 = !{ptr @mtip_major, !19, !"mtip_major", i1 false, i1 false}
!19 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 106, i32 12}
!20 = !{ptr @dfs_parent, !21, !"dfs_parent", i1 false, i1 false}
!21 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 107, i32 23}
!22 = !{ptr @mtip_pci_driver, !23, !"mtip_pci_driver", i1 false, i1 false}
!23 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4215, i32 26}
!24 = !{ptr @mtip_pci_tbl, !25, !"mtip_pci_tbl", i1 false, i1 false}
!25 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4201, i32 35}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3919, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mtip_pci_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtip_pci_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3922, i32 2}
!36 = !{ptr @mtip_pci_probe._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtip_pci_probe._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3935, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mtip_pci_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mtip_pci_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3942, i32 3}
!45 = !{ptr @mtip_pci_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mtip_pci_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3948, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mtip_pci_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtip_pci_probe._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3962, i32 31}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3964, i32 18}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3966, i32 3}
!58 = !{ptr @mtip_pci_probe._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtip_pci_probe._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3977, i32 36}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3981, i32 3}
!64 = !{ptr @mtip_pci_probe._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mtip_pci_probe._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3987, i32 3}
!68 = !{ptr @mtip_pci_probe.__UNIQUE_ID_ddebug320, !67, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3990, i32 2}
!71 = !{ptr @mtip_pci_probe._entry.32, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtip_pci_probe._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4013, i32 4}
!75 = !{ptr @mtip_pci_probe._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mtip_pci_probe._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @mtip_pci_probe.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4016, i32 2}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mtip_pci_probe.__key.39, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4017, i32 2}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mtip_pci_probe.__key.41, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4018, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mtip_pci_probe.__key.43, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4019, i32 2}
!88 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mtip_pci_probe.__key.45, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4020, i32 2}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mtip_pci_probe.__key.47, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4021, i32 2}
!94 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @mtip_pci_probe.__key.49, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4022, i32 2}
!97 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mtip_pci_probe.__key.51, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4023, i32 2}
!100 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4028, i32 3}
!103 = !{ptr @mtip_pci_probe._entry.53, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @mtip_pci_probe._entry_ptr.55, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4038, i32 3}
!107 = !{ptr @mtip_pci_probe._entry.56, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @mtip_pci_probe._entry_ptr.58, !106, !"_entry_ptr", i1 false, i1 false}
!109 = distinct !{null, !110, !"next_node", i1 false, i1 false}
!110 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3825, i32 13}
!111 = !{ptr @instance, !112, !"instance", i1 false, i1 false}
!112 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 96, i32 12}
!113 = !{ptr @cpu_use, !114, !"cpu_use", i1 false, i1 false}
!114 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 110, i32 12}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 665, i32 3}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3855, i32 4}
!119 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mtip_disable_link_opts._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @mtip_disable_link_opts._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3563, i32 3}
!124 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mtip_block_initialize._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @mtip_block_initialize._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @mtip_block_initialize.__key, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3568, i32 13}
!129 = !{ptr @mtip_block_initialize._entry.63, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3570, i32 3}
!131 = !{ptr @mtip_block_initialize._entry_ptr.64, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3582, i32 29}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3602, i32 3}
!136 = !{ptr @mtip_block_initialize._entry.66, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @mtip_block_initialize._entry_ptr.68, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3627, i32 3}
!140 = !{ptr @mtip_block_initialize._entry.69, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @mtip_block_initialize._entry_ptr.71, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3647, i32 7}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3650, i32 3}
!146 = !{ptr @mtip_block_initialize._entry.73, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @mtip_block_initialize._entry_ptr.75, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @mtip_hw_init.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2866, i32 3}
!150 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2895, i32 3}
!153 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mtip_hw_init._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @mtip_hw_init._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2903, i32 3}
!158 = !{ptr @mtip_hw_init._entry.79, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mtip_hw_init._entry_ptr.81, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2913, i32 4}
!162 = !{ptr @mtip_hw_init._entry.82, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @mtip_hw_init._entry_ptr.84, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.86, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2931, i32 3}
!166 = !{ptr @mtip_hw_init._entry.85, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @mtip_hw_init._entry_ptr.87, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @mtip_hw_init.__key.88, !169, !"__key", i1 false, i1 false}
!169 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2941, i32 2}
!170 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2472, i32 3}
!173 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @mtip_detect_product._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @mtip_detect_product._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2480, i32 4}
!178 = !{ptr @mtip_detect_product._entry.92, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @mtip_detect_product._entry_ptr.94, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.96, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2489, i32 2}
!182 = !{ptr @mtip_detect_product._entry.95, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @mtip_detect_product._entry_ptr.97, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.98, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 153, i32 4}
!186 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @mtip_check_surprise_removal._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @mtip_check_surprise_removal._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 762, i32 4}
!191 = !{ptr @.str.100, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 714, i32 3}
!193 = !{ptr @.str.101, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @mtip_process_errors._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @mtip_process_errors._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 720, i32 3}
!198 = !{ptr @mtip_process_errors._entry.102, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @mtip_process_errors._entry_ptr.104, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.106, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 726, i32 3}
!202 = !{ptr @mtip_process_errors._entry.105, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @mtip_process_errors._entry_ptr.107, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @mtip_mq_ops, !205, !"mtip_mq_ops", i1 false, i1 false}
!205 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3517, i32 32}
!206 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1471, i32 4}
!208 = !{ptr @.str.109, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @fill_command_sg._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @fill_command_sg._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.110, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 112, i32 8}
!213 = !{ptr @rssd_index_ida, !212, !"rssd_index_ida", i1 false, i1 false}
!214 = !{ptr @mtip_block_ops, !215, !"mtip_block_ops", i1 false, i1 false}
!215 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3331, i32 45}
!216 = distinct !{null, !217, !"__already_done", i1 false, i1 false}
!217 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!218 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!223 = !{ptr @.str.114, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1575, i32 4}
!225 = !{ptr @.str.115, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @exec_drive_command._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @exec_drive_command._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.116, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 978, i32 3}
!230 = !{ptr @.str.117, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @mtip_exec_internal_command._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @mtip_exec_internal_command._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1001, i32 4}
!235 = !{ptr @mtip_exec_internal_command._entry.118, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @mtip_exec_internal_command._entry_ptr.120, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.122, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1020, i32 3}
!239 = !{ptr @mtip_exec_internal_command._entry.121, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @mtip_exec_internal_command._entry_ptr.123, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1027, i32 4}
!243 = !{ptr @mtip_exec_internal_command._entry.124, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @mtip_exec_internal_command._entry_ptr.126, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.127, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 396, i32 3}
!247 = !{ptr @.str.128, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @mtip_restart_port._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @mtip_restart_port._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.130, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 400, i32 4}
!252 = !{ptr @mtip_restart_port._entry.129, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @mtip_restart_port._entry_ptr.131, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.133, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 407, i32 2}
!256 = !{ptr @mtip_restart_port._entry.132, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @mtip_restart_port._entry_ptr.134, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.136, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 437, i32 3}
!260 = !{ptr @mtip_restart_port._entry.135, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @mtip_restart_port._entry_ptr.137, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.138, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1814, i32 5}
!264 = !{ptr @.str.139, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @exec_drive_taskfile._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @exec_drive_taskfile._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = distinct !{null, !268, !"__already_done", i1 false, i1 false}
!268 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!269 = !{ptr @.str.140, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.141, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.142, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3291, i32 3}
!273 = !{ptr @.str.143, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @mtip_block_getgeo._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @mtip_block_getgeo._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.144, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2397, i32 3}
!278 = !{ptr @.str.145, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @mtip_hw_debugfs_init._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @mtip_hw_debugfs_init._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.146, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2404, i32 22}
!283 = !{ptr @.str.147, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2405, i32 22}
!285 = !{ptr @mtip_flags_fops, !286, !"mtip_flags_fops", i1 false, i1 false}
!286 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2383, i32 37}
!287 = !{ptr @.str.148, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2355, i32 30}
!289 = !{ptr @.str.149, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2357, i32 30}
!291 = !{ptr @mtip_regs_fops, !292, !"mtip_regs_fops", i1 false, i1 false}
!292 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2376, i32 37}
!293 = !{ptr @.str.150, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2292, i32 30}
!295 = !{ptr @.str.151, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2295, i32 31}
!297 = !{ptr @.str.152, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2298, i32 30}
!299 = !{ptr @.str.153, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2299, i32 30}
!301 = !{ptr @.str.154, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2306, i32 30}
!303 = !{ptr @.str.155, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2313, i32 30}
!305 = !{ptr @.str.156, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2315, i32 30}
!307 = distinct !{null, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2317, i32 30}
!309 = !{ptr @.str.158, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2319, i32 30}
!311 = !{ptr @.str.159, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2788, i32 3}
!313 = !{ptr @.str.160, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @mtip_hw_get_identify._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @mtip_hw_get_identify._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.162, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2794, i32 4}
!318 = !{ptr @mtip_hw_get_identify._entry.161, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @mtip_hw_get_identify._entry_ptr.163, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.165, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2799, i32 4}
!322 = !{ptr @mtip_hw_get_identify._entry.164, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @mtip_hw_get_identify._entry_ptr.166, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.168, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2804, i32 4}
!326 = !{ptr @mtip_hw_get_identify._entry.167, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @mtip_hw_get_identify._entry_ptr.169, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.171, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2813, i32 3}
!330 = !{ptr @mtip_hw_get_identify._entry.170, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @mtip_hw_get_identify._entry_ptr.172, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.174, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2816, i32 3}
!334 = !{ptr @mtip_hw_get_identify._entry.173, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @mtip_hw_get_identify._entry_ptr.175, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.176, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1412, i32 2}
!338 = !{ptr @.str.177, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @mtip_dump_identify._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @mtip_dump_identify._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.179, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1416, i32 2}
!343 = !{ptr @mtip_dump_identify._entry.178, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @mtip_dump_identify._entry_ptr.180, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.182, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1420, i32 2}
!347 = !{ptr @mtip_dump_identify._entry.181, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @mtip_dump_identify._entry_ptr.183, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.185, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1422, i32 2}
!351 = !{ptr @mtip_dump_identify._entry.184, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @mtip_dump_identify._entry_ptr.186, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.187, !350, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.188, !350, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.190, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1427, i32 3}
!357 = !{ptr @mtip_dump_identify._entry.189, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @mtip_dump_identify._entry_ptr.191, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.192, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1435, i32 17}
!361 = !{ptr @.str.193, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1438, i32 17}
!363 = !{ptr @.str.194, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1441, i32 17}
!365 = !{ptr @.str.196, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1444, i32 2}
!367 = !{ptr @mtip_dump_identify._entry.195, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @mtip_dump_identify._entry_ptr.197, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.198, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1336, i32 3}
!371 = !{ptr @.str.199, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @mtip_get_smart_attr._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @mtip_get_smart_attr._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.201, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1340, i32 3}
!376 = !{ptr @mtip_get_smart_attr._entry.200, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @mtip_get_smart_attr._entry_ptr.202, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.204, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1344, i32 3}
!380 = !{ptr @mtip_get_smart_attr._entry.203, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @mtip_get_smart_attr._entry_ptr.205, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.207, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1351, i32 3}
!384 = !{ptr @mtip_get_smart_attr._entry.206, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @mtip_get_smart_attr._entry_ptr.208, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.210, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1363, i32 3}
!388 = !{ptr @mtip_get_smart_attr._entry.209, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @mtip_get_smart_attr._entry_ptr.211, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @mtip_disk_attr_groups, !391, !"mtip_disk_attr_groups", i1 false, i1 false}
!391 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2171, i32 38}
!392 = !{ptr @mtip_disk_attr_group, !393, !"mtip_disk_attr_group", i1 false, i1 false}
!393 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2167, i32 37}
!394 = !{ptr @mtip_disk_attrs, !395, !"mtip_disk_attrs", i1 false, i1 false}
!395 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2162, i32 26}
!396 = !{ptr @.str.212, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2160, i32 8}
!398 = !{ptr @dev_attr_status, !397, !"dev_attr_status", i1 false, i1 false}
!399 = !{ptr @.str.213, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2151, i32 30}
!401 = !{ptr @.str.214, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2153, i32 30}
!403 = distinct !{null, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2155, i32 30}
!405 = !{ptr @.str.216, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2642, i32 5}
!407 = !{ptr @.str.217, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @mtip_service_thread._entry, !406, !"_entry", i1 false, i1 false}
!409 = !{ptr @mtip_service_thread._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.218, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 519, i32 2}
!412 = !{ptr @.str.219, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @mtip_handle_tfe._entry, !411, !"_entry", i1 false, i1 false}
!414 = !{ptr @mtip_handle_tfe._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.221, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 537, i32 3}
!417 = !{ptr @mtip_handle_tfe._entry.220, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @mtip_handle_tfe._entry_ptr.222, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.223, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 559, i32 17}
!421 = !{ptr @mtip_handle_tfe._entry.224, !422, !"_entry", i1 false, i1 false}
!422 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 570, i32 3}
!423 = !{ptr @mtip_handle_tfe._entry_ptr.225, !422, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @mtip_handle_tfe._entry.226, !425, !"_entry", i1 false, i1 false}
!425 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 576, i32 4}
!426 = !{ptr @mtip_handle_tfe._entry_ptr.227, !425, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.228, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 580, i32 18}
!429 = !{ptr @mtip_handle_tfe._entry.229, !430, !"_entry", i1 false, i1 false}
!430 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 583, i32 4}
!431 = !{ptr @mtip_handle_tfe._entry_ptr.230, !430, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.231, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 587, i32 18}
!434 = !{ptr @.str.233, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 591, i32 4}
!436 = !{ptr @mtip_handle_tfe._entry.232, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @mtip_handle_tfe._entry_ptr.234, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.235, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 594, i32 18}
!440 = !{ptr @.str.237, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 618, i32 6}
!442 = !{ptr @mtip_handle_tfe._entry.236, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @mtip_handle_tfe._entry_ptr.238, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.239, !441, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @.str.240, !441, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.241, !441, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @.str.243, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 645, i32 4}
!449 = !{ptr @mtip_handle_tfe._entry.242, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @mtip_handle_tfe._entry_ptr.244, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.245, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 651, i32 17}
!453 = !{ptr @.str.246, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 478, i32 46}
!455 = !{ptr @.str.247, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 480, i32 2}
!457 = !{ptr @.str.248, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @print_tags._entry, !456, !"_entry", i1 false, i1 false}
!459 = !{ptr @print_tags._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.249, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2505, i32 2}
!462 = !{ptr @.str.250, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @mtip_ftl_rebuild_poll._entry, !461, !"_entry", i1 false, i1 false}
!464 = !{ptr @mtip_ftl_rebuild_poll._entry_ptr, !461, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.252, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2526, i32 5}
!467 = !{ptr @mtip_ftl_rebuild_poll._entry.251, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @mtip_ftl_rebuild_poll._entry_ptr.253, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.255, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2532, i32 4}
!471 = !{ptr @mtip_ftl_rebuild_poll._entry.254, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @mtip_ftl_rebuild_poll._entry_ptr.256, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.258, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2541, i32 2}
!475 = !{ptr @mtip_ftl_rebuild_poll._entry.257, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @mtip_ftl_rebuild_poll._entry_ptr.259, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.260, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 100, i32 8}
!479 = !{ptr @dev_lock, !478, !"dev_lock", i1 false, i1 false}
!480 = !{ptr @online_list, !481, !"online_list", i1 false, i1 false}
!481 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 98, i32 8}
!482 = !{ptr @.str.261, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4111, i32 3}
!484 = !{ptr @.str.262, !483, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @mtip_pci_remove._entry, !483, !"_entry", i1 false, i1 false}
!486 = !{ptr @mtip_pci_remove._entry_ptr, !483, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @removing_list, !488, !"removing_list", i1 false, i1 false}
!488 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 99, i32 8}
!489 = !{ptr @.str.263, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3717, i32 3}
!491 = !{ptr @.str.264, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @mtip_block_remove._entry, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @mtip_block_remove._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.265, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2985, i32 4}
!496 = !{ptr @.str.266, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @mtip_standby_drive._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @mtip_standby_drive._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.267, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 1237, i32 3}
!501 = !{ptr @.str.268, !500, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @mtip_standby_immediate._entry, !500, !"_entry", i1 false, i1 false}
!503 = !{ptr @mtip_standby_immediate._entry_ptr, !500, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.269, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3763, i32 3}
!506 = !{ptr @.str.270, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @mtip_block_shutdown._entry, !505, !"_entry", i1 false, i1 false}
!508 = !{ptr @mtip_block_shutdown._entry_ptr, !505, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @mtip_pci_pm_ops, !510, !"mtip_pci_pm_ops", i1 false, i1 false}
!510 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4212, i32 8}
!511 = !{ptr @.str.271, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4157, i32 3}
!513 = !{ptr @.str.272, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @mtip_pci_suspend._entry, !512, !"_entry", i1 false, i1 false}
!515 = !{ptr @mtip_pci_suspend._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.273, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3783, i32 2}
!518 = !{ptr @.str.274, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @mtip_block_suspend._entry, !517, !"_entry", i1 false, i1 false}
!520 = !{ptr @mtip_block_suspend._entry_ptr, !517, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.275, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3066, i32 3}
!523 = !{ptr @.str.276, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @mtip_hw_suspend._entry, !522, !"_entry", i1 false, i1 false}
!525 = !{ptr @mtip_hw_suspend._entry_ptr, !522, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.277, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4180, i32 3}
!528 = !{ptr @.str.278, !527, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @mtip_pci_resume._entry, !527, !"_entry", i1 false, i1 false}
!530 = !{ptr @mtip_pci_resume._entry_ptr, !527, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @.str.279, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3791, i32 2}
!533 = !{ptr @.str.280, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @mtip_block_resume._entry, !532, !"_entry", i1 false, i1 false}
!535 = !{ptr @mtip_block_resume._entry_ptr, !532, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.281, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 3098, i32 3}
!538 = !{ptr @.str.282, !537, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @mtip_hw_resume._entry, !537, !"_entry", i1 false, i1 false}
!540 = !{ptr @mtip_hw_resume._entry_ptr, !537, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @.str.283, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4240, i32 2}
!543 = !{ptr @.str.284, !542, !"<string literal>", i1 false, i1 false}
!544 = !{ptr @mtip_init._entry, !542, !"_entry", i1 false, i1 false}
!545 = !{ptr @mtip_init._entry_ptr, !542, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.286, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4245, i32 3}
!548 = !{ptr @mtip_init._entry.285, !547, !"_entry", i1 false, i1 false}
!549 = !{ptr @mtip_init._entry_ptr.287, !547, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.289, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4253, i32 3}
!552 = !{ptr @mtip_init._entry.288, !551, !"_entry", i1 false, i1 false}
!553 = !{ptr @mtip_init._entry_ptr.290, !551, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @.str.291, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4257, i32 43}
!556 = !{ptr @.str.293, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 4261, i32 4}
!558 = !{ptr @mtip_init._entry.292, !557, !"_entry", i1 false, i1 false}
!559 = !{ptr @mtip_init._entry_ptr.294, !557, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @mtip_device_status_fops, !561, !"mtip_device_status_fops", i1 false, i1 false}
!561 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2369, i32 37}
!562 = !{ptr @.str.295, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2187, i32 30}
!564 = !{ptr @.str.296, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2204, i32 6}
!566 = !{ptr @.str.297, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2210, i32 6}
!568 = !{ptr @.str.298, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 2217, i32 30}
!570 = !{ptr @dfs_device_status, !571, !"dfs_device_status", i1 false, i1 false}
!571 = !{!"../drivers/block/mtip32xx/mtip32xx.c", i32 108, i32 23}
!572 = !{!"sp"}
!573 = !{i32 1, !"wchar_size", i32 2}
!574 = !{i32 1, !"min_enum_size", i32 4}
!575 = !{i32 8, !"branch-target-enforcement", i32 0}
!576 = !{i32 8, !"sign-return-address", i32 0}
!577 = !{i32 8, !"sign-return-address-all", i32 0}
!578 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!579 = !{i32 7, !"uwtable", i32 1}
!580 = !{i32 7, !"frame-pointer", i32 2}
!581 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!582 = !{i64 2148590396, i64 2148590401, i64 2148590414, i64 2148590458, i64 2148590492, i64 2148590513}
!583 = !{i8 0, i8 2}
!584 = !{!"auto-init"}
!585 = !{i64 5085411}
!586 = !{i64 2156778266}
!587 = !{i64 2156777278}
!588 = !{i64 2156777534}
!589 = !{i64 5084993}
!590 = !{i64 2156811395}
!591 = !{!"branch_weights", i32 2146410443, i32 1073205}
!592 = !{!"branch_weights", i32 1073205, i32 2146410443}
!593 = !{!"branch_weights", i32 2000, i32 1}
!594 = !{i64 2156817218}
!595 = !{i64 2156819925}
!596 = !{i64 2156820848}
!597 = !{i64 2156646437}
!598 = !{i64 2156647881}
!599 = !{i64 2156648383}
!600 = !{i64 2156649819}
!601 = !{i64 2156823506}
!602 = !{i64 2156824437}
!603 = !{i64 2156825633}
!604 = !{i64 2156826566}
!605 = !{i64 2156650378}
!606 = !{i64 2156700902}
!607 = !{!"branch_weights", i32 1, i32 2000}
!608 = !{i64 1265849}
!609 = !{i64 2148855057}
!610 = !{i64 2148769766, i64 2148769798, i64 2148769827, i64 2148769861, i64 2148769892, i64 2148769915}
!611 = !{i64 2148855286}
!612 = !{i64 2156701366}
!613 = !{i64 2156684886}
!614 = !{i64 2156686679}
!615 = !{i64 2156645175}
!616 = !{i64 2156645693}
!617 = !{i64 2156829255}
!618 = !{i64 2156830188}
!619 = !{i64 2156641360}
!620 = !{i64 2156642052}
!621 = !{i64 2156643858}
!622 = !{i64 2156644730}
!623 = !{i64 2156651074}
!624 = !{i64 2156651333}
!625 = !{i64 2156651871}
!626 = !{i64 2156652515}
!627 = !{i64 2156653043}
!628 = !{i64 2156654294}
!629 = !{i64 2156655221}
!630 = !{i64 2156655455}
!631 = !{i64 2156656650}
!632 = !{i64 2156657581}
!633 = !{i64 2156658615}
!634 = !{i64 2156659562}
!635 = !{i64 2156660377}
!636 = !{i64 2156709901}
!637 = !{i64 2156710423}
!638 = !{i64 2156710703}
!639 = !{i64 2156712517}
!640 = !{i64 2156704364}
!641 = !{i64 2156706471}
!642 = !{!"branch_weights", i32 2002, i32 2000}
!643 = !{i64 2156702275}
!644 = !{i64 2156713748}
!645 = !{i64 2156716010}
!646 = !{i64 2156716496}
!647 = !{i64 2156714219}
!648 = !{i64 2148868428}
!649 = !{i64 1252094, i64 1252118, i64 1252139, i64 1252156, i64 1252173}
!650 = !{i64 2148868654}
!651 = !{i64 2148766581, i64 2148766607, i64 2148766636, i64 2148766670, i64 2148766701, i64 2148766724}
!652 = !{i64 2153982038, i64 2153982063}
!653 = !{i64 6476912}
!654 = !{i64 6477109}
!655 = !{i64 2153962342}
!656 = !{i64 2156752726}
!657 = !{i64 1130039, i64 1130066, i64 1130088, i64 1130116}
!658 = !{i64 1130447, i64 1130474, i64 1130507, i64 1130528, i64 1130555, i64 1130581}
!659 = !{i64 2156725055}
!660 = !{i64 2156714958}
!661 = !{i64 2156679699}
!662 = !{i64 2156680630}
!663 = !{i64 2156661885}
!664 = !{i64 2156662779}
!665 = !{i64 2156670087}
!666 = !{i64 2156671030}
!667 = !{i64 2156671568}
!668 = !{i64 2156672957}
!669 = !{i64 2156673894}
!670 = !{i64 2156674429}
!671 = !{i64 2156674951}
!672 = !{i64 2156675865}
!673 = !{i64 2156772495}
!674 = !{i64 2156773001}
!675 = !{i64 2156773507}
!676 = !{i64 2156774045}
!677 = !{i64 2156774559}
!678 = !{i64 2156832913}
!679 = !{i64 2156833846}
!680 = !{i64 2156836465}
!681 = !{i64 2156837396}
