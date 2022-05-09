; ModuleID = '/llk/IR_all_yes/drivers/block/sx8.c_pt.bc'
source_filename = "../drivers/block/sx8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.83 = type { ptr }
%struct.carm_host = type { i32, ptr, ptr, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, i32, %struct.blk_mq_tag_set, ptr, i32, i32, i32, i32, i32, [9 x ptr], ptr, i32, i32, i32, i32, [8 x %struct.carm_port], %struct.work_struct, i32, %struct.completion }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.carm_port = type { i32, ptr, ptr, i64, [41 x i8], i16, i16, i16 }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.carm_msg_allocbuf = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.carm_msg_sg] }
%struct.carm_msg_sg = type { i32, i32 }
%struct.carm_msg_sync_time = type { i8, i8, i16, i32, i32, i32 }
%struct.carm_msg_get_fw_ver = type { i8, i8, i16, i32, i32, i32 }
%struct.carm_msg_ioctl = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.carm_response = type { i32, i32 }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon.82, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.82 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.carm_msg_rw = type { i8, i8, i8, i8, i32, i32, i16, i16, [32 x %struct.carm_msg_sg] }
%struct.carm_request = type { i32, i32, i32, i32, [32 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.hd_geometry = type { i8, i8, i16, i32 }

@__UNIQUE_ID_author286 = internal constant [23 x i8] c"sx8.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [27 x i8] c"sx8.file=drivers/block/sx8\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [16 x i8] c"sx8.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [46 x i8] c"sx8.description=Promise SATA SX8 block driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version290 = internal constant [16 x i8] c"sx8.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sx8\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_max_queue = internal constant [14 x i8] c"sx8.max_queue\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_queue = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_max_queue = internal constant %struct.kernel_param { ptr @__param_str_max_queue, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @max_queue } }, section "__param", align 4
@__UNIQUE_ID_max_queuetype291 = internal constant [27 x i8] c"sx8.parmtype=max_queue:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_queue292 = internal constant [81 x i8] c"sx8.parm=max_queue:Maximum number of queued commands. (min==1, max==30, safe==1)\00", section ".modinfo", align 1
@__initcall__kmod_sx8__293_1582_carm_driver_init6 = internal global ptr @carm_driver_init, section ".initcall6.init", align 4
@carm_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @carm_pci_tbl, ptr @carm_init_one, ptr @carm_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_carm_driver_exit = internal global ptr @carm_driver_exit, section ".exitcall.exit", align 4
@carm_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4186, i32 32768, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 32770, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@carm_init_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carm_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017sx8 version 1.0\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"carm_init_one\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/block/sx8.c\00", [44 x i8] zeroinitializer }, align 32
@carm_init_one._entry_ptr = internal global ptr @carm_init_one._entry, section ".printk_index", align 4
@carm_init_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013sx8(%s): DMA mask failure\0A\00", [35 x i8] zeroinitializer }, align 32
@carm_init_one._entry_ptr.8 = internal global ptr @carm_init_one._entry.6, section ".printk_index", align 4
@carm_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@carm_init_one.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&host->fsm_task)\00", [61 x i8] zeroinitializer }, align 32
@carm_init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013sx8(%s): MMIO alloc failure\0A\00", [33 x i8] zeroinitializer }, align 32
@carm_init_one._entry_ptr.14 = internal global ptr @carm_init_one._entry.12, section ".printk_index", align 4
@carm_init_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013sx8(%s): DMA SHM alloc failure\0A\00", [62 x i8] zeroinitializer }, align 32
@carm_init_one._entry_ptr.17 = internal global ptr @carm_init_one._entry.15, section ".printk_index", align 4
@carm_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @carm_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@carm_major_alloc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@carm_host_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sx8%d\00", [26 x i8] zeroinitializer }, align 32
@carm_init_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013sx8(%s): irq alloc failure\0A\00", [34 x i8] zeroinitializer }, align 32
@carm_init_one._entry_ptr.21 = internal global ptr @carm_init_one._entry.19, section ".printk_index", align 4
@carm_init_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: pci %s, ports %d, io %llx, irq %u, major %d\0A\00", [45 x i8] zeroinitializer }, align 32
@carm_init_one._entry_ptr.24 = internal global ptr @carm_init_one._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@carm_fsm_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016sx8(%s): %d ports activated\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"carm_fsm_task\00", [18 x i8] zeroinitializer }, align 32
@carm_fsm_task._entry_ptr = internal global ptr @carm_fsm_task._entry, section ".printk_index", align 4
@carm_fsm_task._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013sx8: BUG: unknown state %d\0A\00", [34 x i8] zeroinitializer }, align 32
@carm_fsm_task._entry_ptr.29 = internal global ptr @carm_fsm_task._entry.27, section ".printk_index", align 4
@carm_fsm_task._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.5, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Assertion failed! %s,%s,%s,line=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@carm_fsm_task._entry_ptr.32 = internal global ptr @carm_fsm_task._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@carm_array_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.34, ptr @.str.5, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"carm_array_info\00", [16 x i8] zeroinitializer }, align 32
@carm_array_info._entry_ptr = internal global ptr @carm_array_info._entry, section ".printk_index", align 4
@.str.35 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"host->state == HST_DEV_SCAN_START || host->state == HST_DEV_SCAN\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@carm_init_disk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sx8/%u\00", [25 x i8] zeroinitializer }, align 32
@carm_bd_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @carm_bdev_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@carm_handle_responses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014sx8(%s): unhandled event type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"carm_handle_responses\00", [42 x i8] zeroinitializer }, align 32
@carm_handle_responses._entry_ptr = internal global ptr @carm_handle_responses._entry, section ".printk_index", align 4
@carm_handle_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013sx8(%s): BUG: invalid tag 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"carm_handle_resp\00", [47 x i8] zeroinitializer }, align 32
@carm_handle_resp._entry_ptr = internal global ptr @carm_handle_resp._entry, section ".printk_index", align 4
@carm_handle_resp._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.5, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014sx8(%s): BUG: unhandled message type %d/%d\0A\00", [50 x i8] zeroinitializer }, align 32
@carm_handle_resp._entry_ptr.44 = internal global ptr @carm_handle_resp._entry.42, section ".printk_index", align 4
@carm_handle_scan_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016sx8(%s): found %u interesting devices\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"carm_handle_scan_chan\00", [42 x i8] zeroinitializer }, align 32
@carm_handle_scan_chan._entry_ptr = internal global ptr @carm_handle_scan_chan._entry, section ".printk_index", align 4
@carm_handle_scan_chan._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.46, ptr @.str.5, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@carm_handle_scan_chan._entry_ptr.48 = internal global ptr @carm_handle_scan_chan._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"host->state == HST_PORT_SCAN\00", [35 x i8] zeroinitializer }, align 32
@carm_handle_generic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.50, ptr @.str.5, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"carm_handle_generic\00", [44 x i8] zeroinitializer }, align 32
@carm_handle_generic._entry_ptr = internal global ptr @carm_handle_generic._entry, section ".printk_index", align 4
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"host->state == cur_state\00", [39 x i8] zeroinitializer }, align 32
@carm_handle_array_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013sx8: BUG: cur_scan_dev==%d, array_id==%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"carm_handle_array_info\00", [41 x i8] zeroinitializer }, align 32
@carm_handle_array_info._entry_ptr = internal global ptr @carm_handle_array_info._entry, section ".printk_index", align 4
@carm_handle_array_info._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.5, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016sx8(%s): port %u device %Lu sectors\0A\00", [57 x i8] zeroinitializer }, align 32
@carm_handle_array_info._entry_ptr.56 = internal global ptr @carm_handle_array_info._entry.54, section ".printk_index", align 4
@carm_handle_array_info._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.5, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016sx8(%s): port %u device \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@carm_handle_array_info._entry_ptr.59 = internal global ptr @carm_handle_array_info._entry.57, section ".printk_index", align 4
@carm_handle_array_info._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.53, ptr @.str.5, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@carm_handle_array_info._entry_ptr.61 = internal global ptr @carm_handle_array_info._entry.60, section ".printk_index", align 4
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"host->state == HST_DEV_SCAN\00", [36 x i8] zeroinitializer }, align 32
@carm_init_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.63, ptr @.str.5, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"carm_init_host\00", [17 x i8] zeroinitializer }, align 32
@carm_init_host._entry_ptr = internal global ptr @carm_init_host._entry, section ".printk_index", align 4
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"host->state == HST_INVALID\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@carm_init_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013sx8: carm_init_wait timeout, bits == 0x%x, test_bit == %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"carm_init_wait\00", [17 x i8] zeroinitializer }, align 32
@carm_init_wait._entry_ptr = internal global ptr @carm_init_wait._entry, section ".printk_index", align 4
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@carm_remove_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013sx8: BUG: no host data for PCI(%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"carm_remove_one\00", [16 x i8] zeroinitializer }, align 32
@carm_remove_one._entry_ptr = internal global ptr @carm_remove_one._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 160, i64 161]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 160, i64 161]
@__sancov_gen_cov_switch_values.72 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 50, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"max_queue\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 68, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"carm_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 414, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"carm_pci_tbl\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 407, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1406, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1418, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1430, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1431, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1437, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1445, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"carm_mq_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1340, i32 32 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"carm_major_alloc\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 427, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant [13 x i8] c"carm_host_id\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 426, i32 21 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1484, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1502, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1519, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1192, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1208, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1209, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 538, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 87, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1352, i32 9 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1357, i32 27 }
@___asan_gen_.205 = private unnamed_addr constant [12 x i8] c"carm_bd_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 421, i32 45 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1039, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 919, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1001, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 883, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 887, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 898, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 825, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 850, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 853, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 857, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1331, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1241, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [23 x i8] c"../drivers/block/sx8.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1560, i32 3 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__UNIQUE_ID_max_queue292, ptr @__UNIQUE_ID_max_queuetype291, ptr @__UNIQUE_ID_version290, ptr @__exitcall_carm_driver_exit, ptr @__initcall__kmod_sx8__293_1582_carm_driver_init6, ptr @__modver_attr, ptr @__param_max_queue, ptr @carm_array_info._entry, ptr @carm_array_info._entry_ptr, ptr @carm_driver_exit, ptr @carm_fsm_task._entry, ptr @carm_fsm_task._entry.27, ptr @carm_fsm_task._entry.30, ptr @carm_fsm_task._entry_ptr, ptr @carm_fsm_task._entry_ptr.29, ptr @carm_fsm_task._entry_ptr.32, ptr @carm_handle_array_info._entry, ptr @carm_handle_array_info._entry.54, ptr @carm_handle_array_info._entry.57, ptr @carm_handle_array_info._entry.60, ptr @carm_handle_array_info._entry_ptr, ptr @carm_handle_array_info._entry_ptr.56, ptr @carm_handle_array_info._entry_ptr.59, ptr @carm_handle_array_info._entry_ptr.61, ptr @carm_handle_generic._entry, ptr @carm_handle_generic._entry_ptr, ptr @carm_handle_resp._entry, ptr @carm_handle_resp._entry.42, ptr @carm_handle_resp._entry_ptr, ptr @carm_handle_resp._entry_ptr.44, ptr @carm_handle_responses._entry, ptr @carm_handle_responses._entry_ptr, ptr @carm_handle_scan_chan._entry, ptr @carm_handle_scan_chan._entry.47, ptr @carm_handle_scan_chan._entry_ptr, ptr @carm_handle_scan_chan._entry_ptr.48, ptr @carm_init_host._entry, ptr @carm_init_host._entry_ptr, ptr @carm_init_one._entry, ptr @carm_init_one._entry.12, ptr @carm_init_one._entry.15, ptr @carm_init_one._entry.19, ptr @carm_init_one._entry.22, ptr @carm_init_one._entry.6, ptr @carm_init_one._entry_ptr, ptr @carm_init_one._entry_ptr.14, ptr @carm_init_one._entry_ptr.17, ptr @carm_init_one._entry_ptr.21, ptr @carm_init_one._entry_ptr.24, ptr @carm_init_one._entry_ptr.8, ptr @carm_init_wait._entry, ptr @carm_init_wait._entry_ptr, ptr @carm_remove_one._entry, ptr @carm_remove_one._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @max_queue, ptr @carm_driver, ptr @carm_pci_tbl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @carm_init_one.__key, ptr @.str.9, ptr @carm_init_one.__key.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @carm_mq_ops, ptr @carm_major_alloc, ptr @carm_host_id, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @init_completion.__key, ptr @.str.36, ptr @carm_init_disk.__key, ptr @.str.37, ptr @carm_bd_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_one.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_major_alloc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_host_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_fsm_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_fsm_task._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_fsm_task._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_array_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_disk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_bd_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_responses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_resp._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_scan_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_scan_chan._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_generic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_array_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_array_info._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_array_info._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_handle_array_info._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_init_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carm_remove_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @carm_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @carm_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @carm_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @carm_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carm_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b286 = load i1, ptr @carm_init_one.__already_done, align 1
  br i1 %.b286, label %entry.if.end_crit_edge, label %if.then, !prof !170

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @carm_init_one.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call12 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_out_crit_edge

if.end15.err_out_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end19:                                         ; preds = %if.end15
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call20 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end29, label %do.end25

do.end25:                                         ; preds = %if.end19
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end25.pci_name.exit_crit_edge

do.end25.pci_name.exit_crit_edge:                 ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end25.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %do.end25.pci_name.exit_crit_edge ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i) #14
  br label %err_out_regions

if.end29:                                         ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1056) #15
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %if.end29.err_out_regions_crit_edge, label %if.end33

if.end29.err_out_regions_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_regions

if.end33:                                         ; preds = %if.end29
  %pdev34 = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %pdev34 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev34, align 4
  %lock = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @carm_init_one.__key, i16 noundef signext 3) #11
  %fsm_task = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %fsm_task, i32 noundef 0) #11
  %6 = ptrtoint ptr %fsm_task to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %fsm_task, align 8
  %lockdep_map = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @carm_init_one.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry43 = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 25, i32 1
  %7 = ptrtoint ptr %entry43 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry43, ptr %entry43, align 4
  %prev.i = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 25, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry43, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 25, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @carm_fsm_task, ptr %func, align 4
  %probe_comp = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 27
  %10 = ptrtoint ptr %probe_comp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %probe_comp, align 8
  %wait.i = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 27, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #11
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %sub = sub i32 1, %12
  %add = add i32 %sub, %14
  %cond = select i1 %cmp, i32 0, i32 %add
  %call55 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %cond) #11
  %mmio = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call55, ptr %mmio, align 4
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %do.end61, label %if.end65

do.end61:                                         ; preds = %if.end33
  %init_name.i.i287 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %16 = ptrtoint ptr %init_name.i.i287 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i287, align 8
  %tobool.not.i.i288 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i288, label %if.end.i.i290, label %do.end61.pci_name.exit292_crit_edge

do.end61.pci_name.exit292_crit_edge:              ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit292

if.end.i.i290:                                    ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %pci_name.exit292

pci_name.exit292:                                 ; preds = %if.end.i.i290, %do.end61.pci_name.exit292_crit_edge
  %retval.0.i.i291 = phi ptr [ %19, %if.end.i.i290 ], [ %17, %do.end61.pci_name.exit292_crit_edge ]
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i291) #14
  br label %err_out_kfree

if.end65:                                         ; preds = %if.end33
  %20 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev34, align 4
  %dev.i293 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %shm_dma.i = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i293, i32 noundef 524288, ptr noundef %shm_dma.i, i32 noundef 3264, i32 noundef 0) #11
  %shm.i = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %shm.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %shm.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end71, label %if.end75

do.end71:                                         ; preds = %if.end65
  %init_name.i.i294 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %23 = ptrtoint ptr %init_name.i.i294 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i294, align 8
  %tobool.not.i.i295 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i295, label %if.end.i.i297, label %do.end71.pci_name.exit299_crit_edge

do.end71.pci_name.exit299_crit_edge:              ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit299

if.end.i.i297:                                    ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %pci_name.exit299

pci_name.exit299:                                 ; preds = %if.end.i.i297, %do.end71.pci_name.exit299_crit_edge
  %retval.0.i.i298 = phi ptr [ %26, %if.end.i.i297 ], [ %24, %do.end71.pci_name.exit299_crit_edge ]
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i298) #14
  br label %err_out_iounmap

if.end75:                                         ; preds = %if.end65
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 384
  %msg_base.i = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %msg_base.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %msg_base.i, align 4
  %28 = ptrtoint ptr %shm_dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shm_dma.i, align 4
  %add.i = add i32 %29, 384
  %msg_dma.i = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 20
  %30 = ptrtoint ptr %msg_dma.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %msg_dma.i, align 8
  %31 = call ptr @memset(ptr %call.i.i, i32 255, i32 384)
  %32 = load ptr, ptr %msg_base.i, align 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 523904)
  %tag_set = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 11
  %34 = call ptr @memset(ptr %tag_set, i32 0, i32 184)
  %ops = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @carm_mq_ops, ptr %ops, align 8
  %cmd_size = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 11, i32 6
  %36 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 656, ptr %cmd_size, align 8
  %nr_hw_queues = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 11, i32 3
  %37 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %nr_hw_queues, align 4
  %nr_maps = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 11, i32 1
  %38 = ptrtoint ptr %nr_maps to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %nr_maps, align 4
  %39 = load i32, ptr @max_queue, align 4
  %queue_depth = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 11, i32 4
  %40 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %queue_depth, align 8
  %numa_node = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 11, i32 7
  %41 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %numa_node, align 4
  %flags = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 11, i32 9
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %flags, align 4
  %call84 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end75.err_out_dma_free_crit_edge

if.end75.err_out_dma_free_crit_edge:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_dma_free

if.end87:                                         ; preds = %if.end75
  %call89 = tail call ptr @blk_mq_init_queue(ptr noundef %tag_set) #11
  %cmp.i = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then91, label %if.end94

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %call89 to i32
  br label %err_out_dma_free.sink.split

if.end94:                                         ; preds = %if.end87
  %oob_q = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 12
  %44 = ptrtoint ptr %oob_q to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call89, ptr %oob_q, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %call89, i32 0, i32 10
  %45 = ptrtoint ptr %queuedata to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %queuedata, align 4
  %call95 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @carm_major_alloc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.else

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %major = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 160, ptr %major, align 8
  br label %if.end105

if.else:                                          ; preds = %if.end94
  %call98 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef nonnull @carm_major_alloc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %major101 = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %major101 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 161, ptr %major101, align 8
  br label %if.end105

if.else102:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call7.i.i, align 8
  %or = or i32 %49, 131072
  store i32 %or, ptr %call7.i.i, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.then100, %if.then97
  %50 = load i32, ptr @carm_host_id, align 4
  %id = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %id, align 4
  %name = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 6
  %call106 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.18, i32 noundef %50)
  %major107 = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %major107 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %major107, align 8
  %call110 = tail call i32 @__register_blkdev(i32 noundef %53, ptr noundef %name, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end105.err_out_free_majors_crit_edge, label %if.end113

if.end105.err_out_free_majors_crit_edge:          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_free_majors

if.end113:                                        ; preds = %if.end105
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %55, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool115.not = icmp eq i32 %and, 0
  br i1 %tobool115.not, label %if.end113.for.body.preheader_crit_edge, label %if.then116

if.end113.for.body.preheader_crit_edge:           ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %major107 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call110, ptr %major107, align 8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then116, %if.end113.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %carm_init_disk.exit.thread.for.body_crit_edge, %for.body.preheader
  %i.0323 = phi i32 [ %inc, %carm_init_disk.exit.thread.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx.i = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 %i.0323
  %host2.i = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 %i.0323, i32 2
  %57 = ptrtoint ptr %host2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i, ptr %host2.i, align 8
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %i.0323, ptr %arrayidx.i, align 8
  %call.i = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef %arrayidx.i, ptr noundef nonnull @carm_init_disk.__key) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %carm_init_disk.exit, label %carm_init_disk.exit.thread

carm_init_disk.exit.thread:                       ; preds = %for.body
  %disk6.i = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 %i.0323, i32 1
  %59 = ptrtoint ptr %disk6.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %disk6.i, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %call.i, i32 0, i32 3
  %60 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id, align 4
  %mul.i = shl i32 %61, 3
  %add.i300 = add nuw i32 %mul.i, %i.0323
  %call7.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name.i, ptr noundef nonnull @.str.37, i32 noundef %add.i300) #11
  %62 = ptrtoint ptr %major107 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %major107, align 8
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %call.i, align 8
  %mul9.i = shl nuw nsw i32 %i.0323, 5
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %call.i, i32 0, i32 1
  %65 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul9.i, ptr %first_minor.i, align 4
  %minors.i = getelementptr inbounds %struct.gendisk, ptr %call.i, i32 0, i32 2
  %66 = ptrtoint ptr %minors.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 32, ptr %minors.i, align 8
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %call.i, i32 0, i32 8
  %67 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @carm_bd_ops, ptr %fops.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %call.i, i32 0, i32 10
  %68 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx.i, ptr %private_data.i, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %call.i, i32 0, i32 9
  %69 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %queue.i, align 4
  tail call void @blk_queue_max_segments(ptr noundef %70, i16 noundef zeroext 32) #11
  %71 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queue.i, align 4
  tail call void @blk_queue_segment_boundary(ptr noundef %72, i32 noundef 65535) #11
  %inc = add nuw nsw i32 %i.0323, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %carm_init_disk.exit.thread.for.body_crit_edge

carm_init_disk.exit.thread.for.body_crit_edge:    ; preds = %carm_init_disk.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

carm_init_disk.exit:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %call.i to i32
  br label %err_out_blkdev_disks

for.end:                                          ; preds = %carm_init_disk.exit.thread
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  %call.i303 = tail call i32 @request_threaded_irq(i32 noundef %75, ptr noundef nonnull @carm_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %tobool125.not = icmp eq i32 %call.i303, 0
  br i1 %tobool125.not, label %if.end133, label %do.end129

do.end129:                                        ; preds = %for.end
  %init_name.i.i304 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %76 = ptrtoint ptr %init_name.i.i304 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i304, align 8
  %tobool.not.i.i305 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i305, label %if.end.i.i307, label %do.end129.pci_name.exit309_crit_edge

do.end129.pci_name.exit309_crit_edge:             ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit309

if.end.i.i307:                                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  br label %pci_name.exit309

pci_name.exit309:                                 ; preds = %if.end.i.i307, %do.end129.pci_name.exit309_crit_edge
  %retval.0.i.i308 = phi ptr [ %79, %if.end.i.i307 ], [ %77, %do.end129.pci_name.exit309_crit_edge ]
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %retval.0.i.i308) #14
  br label %err_out_blkdev_disks

if.end133:                                        ; preds = %for.end
  %call134 = tail call fastcc i32 @carm_init_host(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.err_out_free_irq_crit_edge

if.end133.err_out_free_irq_crit_edge:             ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_free_irq

if.end137:                                        ; preds = %if.end133
  %probe_err = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 26
  %80 = ptrtoint ptr %probe_err to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -19, ptr %probe_err, align 4
  tail call void @wait_for_completion(ptr noundef %probe_comp) #11
  %81 = ptrtoint ptr %probe_err to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %probe_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool140.not = icmp eq i32 %82, 0
  br i1 %tobool140.not, label %do.end146, label %if.end137.err_out_free_irq_crit_edge

if.end137.err_out_free_irq_crit_edge:             ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_free_irq

do.end146:                                        ; preds = %if.end137
  %init_name.i.i310 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %83 = ptrtoint ptr %init_name.i.i310 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i.i310, align 8
  %tobool.not.i.i311 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i311, label %if.end.i.i313, label %do.end146.pci_name.exit315_crit_edge

do.end146.pci_name.exit315_crit_edge:             ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit315

if.end.i.i313:                                    ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  br label %pci_name.exit315

pci_name.exit315:                                 ; preds = %if.end.i.i313, %do.end146.pci_name.exit315_crit_edge
  %retval.0.i.i314 = phi ptr [ %86, %if.end.i.i313 ], [ %84, %do.end146.pci_name.exit315_crit_edge ]
  %87 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %resource, align 8
  %conv = zext i32 %88 to i64
  %89 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq, align 4
  %91 = ptrtoint ptr %major107 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %major107, align 8
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, ptr noundef %retval.0.i.i314, i32 noundef 8, i64 noundef %conv, i32 noundef %90, i32 noundef %92) #14
  %93 = load i32, ptr @carm_host_id, align 4
  %inc157 = add i32 %93, 1
  store i32 %inc157, ptr @carm_host_id, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %94 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_out_free_irq:                                 ; preds = %if.end137.err_out_free_irq_crit_edge, %if.end133.err_out_free_irq_crit_edge
  %rc.0 = phi i32 [ %call134, %if.end133.err_out_free_irq_crit_edge ], [ %82, %if.end137.err_out_free_irq_crit_edge ]
  %95 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq, align 4
  %call159 = tail call ptr @free_irq(i32 noundef %96, ptr noundef nonnull %call7.i.i) #11
  br label %err_out_blkdev_disks

err_out_blkdev_disks:                             ; preds = %err_out_free_irq, %pci_name.exit309, %carm_init_disk.exit
  %rc.1 = phi i32 [ %73, %carm_init_disk.exit ], [ %call.i303, %pci_name.exit309 ], [ %rc.0, %err_out_free_irq ]
  %state.i = getelementptr inbounds %struct.carm_host, ptr %call7.i.i, i32 0, i32 9
  %disk2.i = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 0, i32 1
  %97 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %disk2.i, align 4
  %tobool.not.i316 = icmp eq ptr %98, null
  br i1 %tobool.not.i316, label %err_out_blkdev_disks.carm_free_disk.exit_crit_edge, label %if.end.i318

err_out_blkdev_disks.carm_free_disk.exit_crit_edge: ; preds = %err_out_blkdev_disks
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit

if.end.i318:                                      ; preds = %err_out_blkdev_disks
  %99 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %100)
  %cmp.i317 = icmp ugt i32 %100, 6
  br i1 %cmp.i317, label %if.then3.i, label %if.end.i318.if.end4.i_crit_edge

if.end.i318.if.end4.i_crit_edge:                  ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %98) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i318.if.end4.i_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %98) #11
  br label %carm_free_disk.exit

carm_free_disk.exit:                              ; preds = %if.end4.i, %err_out_blkdev_disks.carm_free_disk.exit_crit_edge
  %disk2.i.1 = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 1, i32 1
  %101 = ptrtoint ptr %disk2.i.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %disk2.i.1, align 4
  %tobool.not.i316.1 = icmp eq ptr %102, null
  br i1 %tobool.not.i316.1, label %carm_free_disk.exit.carm_free_disk.exit.1_crit_edge, label %if.end.i318.1

carm_free_disk.exit.carm_free_disk.exit.1_crit_edge: ; preds = %carm_free_disk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.1

if.end.i318.1:                                    ; preds = %carm_free_disk.exit
  %103 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %104)
  %cmp.i317.1 = icmp ugt i32 %104, 6
  br i1 %cmp.i317.1, label %if.then3.i.1, label %if.end.i318.1.if.end4.i.1_crit_edge

if.end.i318.1.if.end4.i.1_crit_edge:              ; preds = %if.end.i318.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.1

if.then3.i.1:                                     ; preds = %if.end.i318.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %102) #11
  br label %if.end4.i.1

if.end4.i.1:                                      ; preds = %if.then3.i.1, %if.end.i318.1.if.end4.i.1_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %102) #11
  br label %carm_free_disk.exit.1

carm_free_disk.exit.1:                            ; preds = %if.end4.i.1, %carm_free_disk.exit.carm_free_disk.exit.1_crit_edge
  %disk2.i.2 = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 2, i32 1
  %105 = ptrtoint ptr %disk2.i.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %disk2.i.2, align 4
  %tobool.not.i316.2 = icmp eq ptr %106, null
  br i1 %tobool.not.i316.2, label %carm_free_disk.exit.1.carm_free_disk.exit.2_crit_edge, label %if.end.i318.2

carm_free_disk.exit.1.carm_free_disk.exit.2_crit_edge: ; preds = %carm_free_disk.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.2

if.end.i318.2:                                    ; preds = %carm_free_disk.exit.1
  %107 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %108)
  %cmp.i317.2 = icmp ugt i32 %108, 6
  br i1 %cmp.i317.2, label %if.then3.i.2, label %if.end.i318.2.if.end4.i.2_crit_edge

if.end.i318.2.if.end4.i.2_crit_edge:              ; preds = %if.end.i318.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.2

if.then3.i.2:                                     ; preds = %if.end.i318.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %106) #11
  br label %if.end4.i.2

if.end4.i.2:                                      ; preds = %if.then3.i.2, %if.end.i318.2.if.end4.i.2_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %106) #11
  br label %carm_free_disk.exit.2

carm_free_disk.exit.2:                            ; preds = %if.end4.i.2, %carm_free_disk.exit.1.carm_free_disk.exit.2_crit_edge
  %disk2.i.3 = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 3, i32 1
  %109 = ptrtoint ptr %disk2.i.3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %disk2.i.3, align 4
  %tobool.not.i316.3 = icmp eq ptr %110, null
  br i1 %tobool.not.i316.3, label %carm_free_disk.exit.2.carm_free_disk.exit.3_crit_edge, label %if.end.i318.3

carm_free_disk.exit.2.carm_free_disk.exit.3_crit_edge: ; preds = %carm_free_disk.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.3

if.end.i318.3:                                    ; preds = %carm_free_disk.exit.2
  %111 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %112)
  %cmp.i317.3 = icmp ugt i32 %112, 6
  br i1 %cmp.i317.3, label %if.then3.i.3, label %if.end.i318.3.if.end4.i.3_crit_edge

if.end.i318.3.if.end4.i.3_crit_edge:              ; preds = %if.end.i318.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.3

if.then3.i.3:                                     ; preds = %if.end.i318.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %110) #11
  br label %if.end4.i.3

if.end4.i.3:                                      ; preds = %if.then3.i.3, %if.end.i318.3.if.end4.i.3_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %110) #11
  br label %carm_free_disk.exit.3

carm_free_disk.exit.3:                            ; preds = %if.end4.i.3, %carm_free_disk.exit.2.carm_free_disk.exit.3_crit_edge
  %disk2.i.4 = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 4, i32 1
  %113 = ptrtoint ptr %disk2.i.4 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %disk2.i.4, align 4
  %tobool.not.i316.4 = icmp eq ptr %114, null
  br i1 %tobool.not.i316.4, label %carm_free_disk.exit.3.carm_free_disk.exit.4_crit_edge, label %if.end.i318.4

carm_free_disk.exit.3.carm_free_disk.exit.4_crit_edge: ; preds = %carm_free_disk.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.4

if.end.i318.4:                                    ; preds = %carm_free_disk.exit.3
  %115 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %116)
  %cmp.i317.4 = icmp ugt i32 %116, 6
  br i1 %cmp.i317.4, label %if.then3.i.4, label %if.end.i318.4.if.end4.i.4_crit_edge

if.end.i318.4.if.end4.i.4_crit_edge:              ; preds = %if.end.i318.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.4

if.then3.i.4:                                     ; preds = %if.end.i318.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %114) #11
  br label %if.end4.i.4

if.end4.i.4:                                      ; preds = %if.then3.i.4, %if.end.i318.4.if.end4.i.4_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %114) #11
  br label %carm_free_disk.exit.4

carm_free_disk.exit.4:                            ; preds = %if.end4.i.4, %carm_free_disk.exit.3.carm_free_disk.exit.4_crit_edge
  %disk2.i.5 = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 5, i32 1
  %117 = ptrtoint ptr %disk2.i.5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %disk2.i.5, align 4
  %tobool.not.i316.5 = icmp eq ptr %118, null
  br i1 %tobool.not.i316.5, label %carm_free_disk.exit.4.carm_free_disk.exit.5_crit_edge, label %if.end.i318.5

carm_free_disk.exit.4.carm_free_disk.exit.5_crit_edge: ; preds = %carm_free_disk.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.5

if.end.i318.5:                                    ; preds = %carm_free_disk.exit.4
  %119 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %120)
  %cmp.i317.5 = icmp ugt i32 %120, 6
  br i1 %cmp.i317.5, label %if.then3.i.5, label %if.end.i318.5.if.end4.i.5_crit_edge

if.end.i318.5.if.end4.i.5_crit_edge:              ; preds = %if.end.i318.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.5

if.then3.i.5:                                     ; preds = %if.end.i318.5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %118) #11
  br label %if.end4.i.5

if.end4.i.5:                                      ; preds = %if.then3.i.5, %if.end.i318.5.if.end4.i.5_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %118) #11
  br label %carm_free_disk.exit.5

carm_free_disk.exit.5:                            ; preds = %if.end4.i.5, %carm_free_disk.exit.4.carm_free_disk.exit.5_crit_edge
  %disk2.i.6 = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 6, i32 1
  %121 = ptrtoint ptr %disk2.i.6 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %disk2.i.6, align 4
  %tobool.not.i316.6 = icmp eq ptr %122, null
  br i1 %tobool.not.i316.6, label %carm_free_disk.exit.5.carm_free_disk.exit.6_crit_edge, label %if.end.i318.6

carm_free_disk.exit.5.carm_free_disk.exit.6_crit_edge: ; preds = %carm_free_disk.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.6

if.end.i318.6:                                    ; preds = %carm_free_disk.exit.5
  %123 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %124)
  %cmp.i317.6 = icmp ugt i32 %124, 6
  br i1 %cmp.i317.6, label %if.then3.i.6, label %if.end.i318.6.if.end4.i.6_crit_edge

if.end.i318.6.if.end4.i.6_crit_edge:              ; preds = %if.end.i318.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.6

if.then3.i.6:                                     ; preds = %if.end.i318.6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %122) #11
  br label %if.end4.i.6

if.end4.i.6:                                      ; preds = %if.then3.i.6, %if.end.i318.6.if.end4.i.6_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %122) #11
  br label %carm_free_disk.exit.6

carm_free_disk.exit.6:                            ; preds = %if.end4.i.6, %carm_free_disk.exit.5.carm_free_disk.exit.6_crit_edge
  %disk2.i.7 = getelementptr %struct.carm_host, ptr %call7.i.i, i32 0, i32 24, i32 7, i32 1
  %125 = ptrtoint ptr %disk2.i.7 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %disk2.i.7, align 4
  %tobool.not.i316.7 = icmp eq ptr %126, null
  br i1 %tobool.not.i316.7, label %carm_free_disk.exit.6.carm_free_disk.exit.7_crit_edge, label %if.end.i318.7

carm_free_disk.exit.6.carm_free_disk.exit.7_crit_edge: ; preds = %carm_free_disk.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.7

if.end.i318.7:                                    ; preds = %carm_free_disk.exit.6
  %127 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %128)
  %cmp.i317.7 = icmp ugt i32 %128, 6
  br i1 %cmp.i317.7, label %if.then3.i.7, label %if.end.i318.7.if.end4.i.7_crit_edge

if.end.i318.7.if.end4.i.7_crit_edge:              ; preds = %if.end.i318.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.7

if.then3.i.7:                                     ; preds = %if.end.i318.7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %126) #11
  br label %if.end4.i.7

if.end4.i.7:                                      ; preds = %if.then3.i.7, %if.end.i318.7.if.end4.i.7_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %126) #11
  br label %carm_free_disk.exit.7

carm_free_disk.exit.7:                            ; preds = %if.end4.i.7, %carm_free_disk.exit.6.carm_free_disk.exit.7_crit_edge
  %129 = ptrtoint ptr %major107 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %major107, align 8
  tail call void @unregister_blkdev(i32 noundef %130, ptr noundef %name) #11
  br label %err_out_free_majors

err_out_free_majors:                              ; preds = %carm_free_disk.exit.7, %if.end105.err_out_free_majors_crit_edge
  %rc.2 = phi i32 [ %call110, %if.end105.err_out_free_majors_crit_edge ], [ %rc.1, %carm_free_disk.exit.7 ]
  %131 = ptrtoint ptr %major107 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %major107, align 8
  %133 = zext i32 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values)
  switch i32 %132, label %err_out_free_majors.if.end180_crit_edge [
    i32 160, label %err_out_free_majors.if.end180.sink.split_crit_edge
    i32 161, label %if.then178
  ]

err_out_free_majors.if.end180.sink.split_crit_edge: ; preds = %err_out_free_majors
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180.sink.split

err_out_free_majors.if.end180_crit_edge:          ; preds = %err_out_free_majors
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

if.then178:                                       ; preds = %err_out_free_majors
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180.sink.split

if.end180.sink.split:                             ; preds = %if.then178, %err_out_free_majors.if.end180.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then178 ], [ 0, %err_out_free_majors.if.end180.sink.split_crit_edge ]
  tail call void @_clear_bit(i32 noundef %.sink, ptr noundef nonnull @carm_major_alloc) #11
  br label %if.end180

if.end180:                                        ; preds = %if.end180.sink.split, %err_out_free_majors.if.end180_crit_edge
  %134 = ptrtoint ptr %oob_q to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %oob_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %135) #11
  br label %err_out_dma_free.sink.split

err_out_dma_free.sink.split:                      ; preds = %if.end180, %if.then91
  %rc.3.ph = phi i32 [ %rc.2, %if.end180 ], [ %43, %if.then91 ]
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #11
  br label %err_out_dma_free

err_out_dma_free:                                 ; preds = %err_out_dma_free.sink.split, %if.end75.err_out_dma_free_crit_edge
  %rc.3 = phi i32 [ %call84, %if.end75.err_out_dma_free_crit_edge ], [ %rc.3.ph, %err_out_dma_free.sink.split ]
  %136 = ptrtoint ptr %shm.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %shm.i, align 8
  %138 = ptrtoint ptr %shm_dma.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %shm_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 524288, ptr noundef %137, i32 noundef %139, i32 noundef 0) #11
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_dma_free, %pci_name.exit299
  %rc.4 = phi i32 [ -12, %pci_name.exit299 ], [ %rc.3, %err_out_dma_free ]
  %140 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %141) #11
  br label %err_out_kfree

err_out_kfree:                                    ; preds = %err_out_iounmap, %pci_name.exit292
  %rc.5 = phi i32 [ %rc.4, %err_out_iounmap ], [ -12, %pci_name.exit292 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err_out_regions

err_out_regions:                                  ; preds = %err_out_kfree, %if.end29.err_out_regions_crit_edge, %pci_name.exit
  %rc.6 = phi i32 [ %call20, %pci_name.exit ], [ %rc.5, %err_out_kfree ], [ -12, %if.end29.err_out_regions_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  br label %err_out

err_out:                                          ; preds = %err_out_regions, %if.end15.err_out_crit_edge
  %rc.7 = phi i32 [ %call16, %if.end15.err_out_crit_edge ], [ %rc.6, %err_out_regions ]
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %err_out, %pci_name.exit315, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.7, %err_out ], [ 0, %pci_name.exit315 ], [ %call12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carm_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %do.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %retval.0.i.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %7, ptr noundef nonnull %1) #11
  %state.i = getelementptr inbounds %struct.carm_host, ptr %1, i32 0, i32 9
  %disk2.i = getelementptr %struct.carm_host, ptr %1, i32 0, i32 24, i32 0, i32 1
  %8 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disk2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.carm_free_disk.exit_crit_edge, label %if.end.i

if.end.carm_free_disk.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.i = icmp ugt i32 %11, 6
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %9) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %9) #11
  br label %carm_free_disk.exit

carm_free_disk.exit:                              ; preds = %if.end4.i, %if.end.carm_free_disk.exit_crit_edge
  %disk2.i.1 = getelementptr %struct.carm_host, ptr %1, i32 0, i32 24, i32 1, i32 1
  %12 = ptrtoint ptr %disk2.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disk2.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %13, null
  br i1 %tobool.not.i.1, label %carm_free_disk.exit.carm_free_disk.exit.1_crit_edge, label %if.end.i.1

carm_free_disk.exit.carm_free_disk.exit.1_crit_edge: ; preds = %carm_free_disk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.1

if.end.i.1:                                       ; preds = %carm_free_disk.exit
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp.i.1 = icmp ugt i32 %15, 6
  br i1 %cmp.i.1, label %if.then3.i.1, label %if.end.i.1.if.end4.i.1_crit_edge

if.end.i.1.if.end4.i.1_crit_edge:                 ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.1

if.then3.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %13) #11
  br label %if.end4.i.1

if.end4.i.1:                                      ; preds = %if.then3.i.1, %if.end.i.1.if.end4.i.1_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %13) #11
  br label %carm_free_disk.exit.1

carm_free_disk.exit.1:                            ; preds = %if.end4.i.1, %carm_free_disk.exit.carm_free_disk.exit.1_crit_edge
  %disk2.i.2 = getelementptr %struct.carm_host, ptr %1, i32 0, i32 24, i32 2, i32 1
  %16 = ptrtoint ptr %disk2.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disk2.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %17, null
  br i1 %tobool.not.i.2, label %carm_free_disk.exit.1.carm_free_disk.exit.2_crit_edge, label %if.end.i.2

carm_free_disk.exit.1.carm_free_disk.exit.2_crit_edge: ; preds = %carm_free_disk.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.2

if.end.i.2:                                       ; preds = %carm_free_disk.exit.1
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp.i.2 = icmp ugt i32 %19, 6
  br i1 %cmp.i.2, label %if.then3.i.2, label %if.end.i.2.if.end4.i.2_crit_edge

if.end.i.2.if.end4.i.2_crit_edge:                 ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.2

if.then3.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %17) #11
  br label %if.end4.i.2

if.end4.i.2:                                      ; preds = %if.then3.i.2, %if.end.i.2.if.end4.i.2_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %17) #11
  br label %carm_free_disk.exit.2

carm_free_disk.exit.2:                            ; preds = %if.end4.i.2, %carm_free_disk.exit.1.carm_free_disk.exit.2_crit_edge
  %disk2.i.3 = getelementptr %struct.carm_host, ptr %1, i32 0, i32 24, i32 3, i32 1
  %20 = ptrtoint ptr %disk2.i.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disk2.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %21, null
  br i1 %tobool.not.i.3, label %carm_free_disk.exit.2.carm_free_disk.exit.3_crit_edge, label %if.end.i.3

carm_free_disk.exit.2.carm_free_disk.exit.3_crit_edge: ; preds = %carm_free_disk.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.3

if.end.i.3:                                       ; preds = %carm_free_disk.exit.2
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp.i.3 = icmp ugt i32 %23, 6
  br i1 %cmp.i.3, label %if.then3.i.3, label %if.end.i.3.if.end4.i.3_crit_edge

if.end.i.3.if.end4.i.3_crit_edge:                 ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.3

if.then3.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %21) #11
  br label %if.end4.i.3

if.end4.i.3:                                      ; preds = %if.then3.i.3, %if.end.i.3.if.end4.i.3_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %21) #11
  br label %carm_free_disk.exit.3

carm_free_disk.exit.3:                            ; preds = %if.end4.i.3, %carm_free_disk.exit.2.carm_free_disk.exit.3_crit_edge
  %disk2.i.4 = getelementptr %struct.carm_host, ptr %1, i32 0, i32 24, i32 4, i32 1
  %24 = ptrtoint ptr %disk2.i.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disk2.i.4, align 4
  %tobool.not.i.4 = icmp eq ptr %25, null
  br i1 %tobool.not.i.4, label %carm_free_disk.exit.3.carm_free_disk.exit.4_crit_edge, label %if.end.i.4

carm_free_disk.exit.3.carm_free_disk.exit.4_crit_edge: ; preds = %carm_free_disk.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.4

if.end.i.4:                                       ; preds = %carm_free_disk.exit.3
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %27)
  %cmp.i.4 = icmp ugt i32 %27, 6
  br i1 %cmp.i.4, label %if.then3.i.4, label %if.end.i.4.if.end4.i.4_crit_edge

if.end.i.4.if.end4.i.4_crit_edge:                 ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.4

if.then3.i.4:                                     ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %25) #11
  br label %if.end4.i.4

if.end4.i.4:                                      ; preds = %if.then3.i.4, %if.end.i.4.if.end4.i.4_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %25) #11
  br label %carm_free_disk.exit.4

carm_free_disk.exit.4:                            ; preds = %if.end4.i.4, %carm_free_disk.exit.3.carm_free_disk.exit.4_crit_edge
  %disk2.i.5 = getelementptr %struct.carm_host, ptr %1, i32 0, i32 24, i32 5, i32 1
  %28 = ptrtoint ptr %disk2.i.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disk2.i.5, align 4
  %tobool.not.i.5 = icmp eq ptr %29, null
  br i1 %tobool.not.i.5, label %carm_free_disk.exit.4.carm_free_disk.exit.5_crit_edge, label %if.end.i.5

carm_free_disk.exit.4.carm_free_disk.exit.5_crit_edge: ; preds = %carm_free_disk.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.5

if.end.i.5:                                       ; preds = %carm_free_disk.exit.4
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp.i.5 = icmp ugt i32 %31, 6
  br i1 %cmp.i.5, label %if.then3.i.5, label %if.end.i.5.if.end4.i.5_crit_edge

if.end.i.5.if.end4.i.5_crit_edge:                 ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.5

if.then3.i.5:                                     ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %29) #11
  br label %if.end4.i.5

if.end4.i.5:                                      ; preds = %if.then3.i.5, %if.end.i.5.if.end4.i.5_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %29) #11
  br label %carm_free_disk.exit.5

carm_free_disk.exit.5:                            ; preds = %if.end4.i.5, %carm_free_disk.exit.4.carm_free_disk.exit.5_crit_edge
  %disk2.i.6 = getelementptr %struct.carm_host, ptr %1, i32 0, i32 24, i32 6, i32 1
  %32 = ptrtoint ptr %disk2.i.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %disk2.i.6, align 4
  %tobool.not.i.6 = icmp eq ptr %33, null
  br i1 %tobool.not.i.6, label %carm_free_disk.exit.5.carm_free_disk.exit.6_crit_edge, label %if.end.i.6

carm_free_disk.exit.5.carm_free_disk.exit.6_crit_edge: ; preds = %carm_free_disk.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.6

if.end.i.6:                                       ; preds = %carm_free_disk.exit.5
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp.i.6 = icmp ugt i32 %35, 6
  br i1 %cmp.i.6, label %if.then3.i.6, label %if.end.i.6.if.end4.i.6_crit_edge

if.end.i.6.if.end4.i.6_crit_edge:                 ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.6

if.then3.i.6:                                     ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %33) #11
  br label %if.end4.i.6

if.end4.i.6:                                      ; preds = %if.then3.i.6, %if.end.i.6.if.end4.i.6_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %33) #11
  br label %carm_free_disk.exit.6

carm_free_disk.exit.6:                            ; preds = %if.end4.i.6, %carm_free_disk.exit.5.carm_free_disk.exit.6_crit_edge
  %disk2.i.7 = getelementptr %struct.carm_host, ptr %1, i32 0, i32 24, i32 7, i32 1
  %36 = ptrtoint ptr %disk2.i.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disk2.i.7, align 4
  %tobool.not.i.7 = icmp eq ptr %37, null
  br i1 %tobool.not.i.7, label %carm_free_disk.exit.6.carm_free_disk.exit.7_crit_edge, label %if.end.i.7

carm_free_disk.exit.6.carm_free_disk.exit.7_crit_edge: ; preds = %carm_free_disk.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_free_disk.exit.7

if.end.i.7:                                       ; preds = %carm_free_disk.exit.6
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %39)
  %cmp.i.7 = icmp ugt i32 %39, 6
  br i1 %cmp.i.7, label %if.then3.i.7, label %if.end.i.7.if.end4.i.7_crit_edge

if.end.i.7.if.end4.i.7_crit_edge:                 ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.7

if.then3.i.7:                                     ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @del_gendisk(ptr noundef nonnull %37) #11
  br label %if.end4.i.7

if.end4.i.7:                                      ; preds = %if.then3.i.7, %if.end.i.7.if.end4.i.7_crit_edge
  tail call void @blk_cleanup_disk(ptr noundef nonnull %37) #11
  br label %carm_free_disk.exit.7

carm_free_disk.exit.7:                            ; preds = %if.end4.i.7, %carm_free_disk.exit.6.carm_free_disk.exit.7_crit_edge
  %major = getelementptr inbounds %struct.carm_host, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %major, align 8
  %name = getelementptr inbounds %struct.carm_host, ptr %1, i32 0, i32 6
  tail call void @unregister_blkdev(i32 noundef %41, ptr noundef %name) #11
  %42 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %major, align 8
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %43, label %carm_free_disk.exit.7.if.end11_crit_edge [
    i32 160, label %carm_free_disk.exit.7.if.end11.sink.split_crit_edge
    i32 161, label %if.then9
  ]

carm_free_disk.exit.7.if.end11.sink.split_crit_edge: ; preds = %carm_free_disk.exit.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.sink.split

carm_free_disk.exit.7.if.end11_crit_edge:         ; preds = %carm_free_disk.exit.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %carm_free_disk.exit.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.then9, %carm_free_disk.exit.7.if.end11.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then9 ], [ 0, %carm_free_disk.exit.7.if.end11.sink.split_crit_edge ]
  tail call void @_clear_bit(i32 noundef %.sink, ptr noundef nonnull @carm_major_alloc) #11
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %carm_free_disk.exit.7.if.end11_crit_edge
  %oob_q = getelementptr inbounds %struct.carm_host, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %oob_q to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %oob_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %46) #11
  %tag_set = getelementptr inbounds %struct.carm_host, ptr %1, i32 0, i32 11
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %shm = getelementptr inbounds %struct.carm_host, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %shm, align 8
  %shm_dma = getelementptr inbounds %struct.carm_host, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %shm_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %shm_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 524288, ptr noundef %48, i32 noundef %50, i32 noundef 0) #11
  %mmio = getelementptr inbounds %struct.carm_host, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %52) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %pci_name.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carm_fsm_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -896
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %state6 = getelementptr i8, ptr %work, i32 -848
  %0 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %1, label %do.end75 [
    i32 8, label %entry.do.body87_crit_edge
    i32 1, label %sw.bb8
    i32 9, label %sw.bb10
    i32 10, label %sw.bb15
    i32 3, label %sw.bb20
    i32 4, label %sw.bb25
    i32 5, label %sw.bb26
    i32 6, label %for.cond43.preheader
    i32 7, label %sw.bb72
    i32 2, label %entry.if.end106_crit_edge
  ]

entry.if.end106_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

entry.do.body87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

for.cond43.preheader:                             ; preds = %entry
  %port51 = getelementptr i8, ptr %work, i32 -576
  %dev_active = getelementptr i8, ptr %work, i32 -584
  %probe_err = getelementptr i8, ptr %work, i32 44
  br label %for.body46

sw.bb8:                                           ; preds = %entry
  %oob_q.i = getelementptr i8, ptr %work, i32 -656
  %3 = ptrtoint ptr %oob_q.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oob_q.i, align 8
  %call.i = tail call ptr @blk_mq_alloc_request(ptr noundef %4, i32 noundef 35, i32 noundef 0) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sw.bb8.do.body87_crit_edge, label %carm_send_special.exit.thread

sw.bb8.do.body87_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

carm_send_special.exit.thread:                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  %tag.i = getelementptr inbounds %struct.request, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tag.i, align 4
  %msg_base.i.i = getelementptr i8, ptr %work, i32 -596
  %7 = ptrtoint ptr %msg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msg_base.i.i, align 4
  %mul.i.i = mul i32 %6, 288
  %add.ptr.i34.i = getelementptr i8, ptr %8, i32 %mul.i.i
  %9 = getelementptr inbounds i8, ptr %add.ptr.i34.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 96)
  %11 = ptrtoint ptr %add.ptr.i34.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 9, ptr %add.ptr.i34.i, align 1
  %subtype.i250 = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 1
  %12 = ptrtoint ptr %subtype.i250 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %subtype.i250, align 1
  %shl.i251 = shl i32 %6, 16
  %or.i252 = or i32 %shl.i251, 15
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i252) #11
  %handle.i253 = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 4
  %14 = ptrtoint ptr %handle.i253 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %handle.i253, align 1
  %n_sg.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 2
  %15 = ptrtoint ptr %n_sg.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %n_sg.i, align 1
  %sg_type.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 3
  %16 = ptrtoint ptr %sg_type.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %sg_type.i, align 1
  %shm_dma.i = getelementptr i8, ptr %work, i32 -940
  %17 = ptrtoint ptr %shm_dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shm_dma.i, align 4
  %add.i254 = add i32 %18, 262144
  %19 = tail call i32 @llvm.bswap.i32(i32 %add.i254) #11
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %9, align 1
  %len.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 6
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 1024, ptr %len.i, align 1
  %22 = ptrtoint ptr %shm_dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shm_dma.i, align 4
  %add2.i = add i32 %23, 16384
  %24 = tail call i32 @llvm.bswap.i32(i32 %add2.i) #11
  %evt_pool.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 7
  %25 = ptrtoint ptr %evt_pool.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %evt_pool.i, align 1
  %n_evt.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 8
  %26 = ptrtoint ptr %n_evt.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 262144, ptr %n_evt.i, align 1
  %27 = ptrtoint ptr %shm_dma.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %shm_dma.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  %rbuf_pool.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 9
  %30 = ptrtoint ptr %rbuf_pool.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %rbuf_pool.i, align 1
  %n_rbuf.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 10
  %31 = ptrtoint ptr %n_rbuf.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 805306368, ptr %n_rbuf.i, align 1
  %32 = ptrtoint ptr %shm_dma.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shm_dma.i, align 4
  %add5.i = add i32 %33, 384
  %34 = tail call i32 @llvm.bswap.i32(i32 %add5.i) #11
  %msg_pool.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 11
  %35 = ptrtoint ptr %msg_pool.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %msg_pool.i, align 1
  %n_msg.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 12
  %36 = ptrtoint ptr %n_msg.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 805306368, ptr %n_msg.i, align 1
  %37 = ptrtoint ptr %shm_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %shm_dma.i, align 4
  %add7.i = add i32 %38, 262144
  %39 = tail call i32 @llvm.bswap.i32(i32 %add7.i) #11
  %sg.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 13
  %40 = ptrtoint ptr %sg.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %sg.i, align 1
  %len10.i = getelementptr inbounds %struct.carm_msg_allocbuf, ptr %add.ptr.i34.i, i32 0, i32 13, i32 0, i32 1
  %41 = ptrtoint ptr %len10.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 256, ptr %len10.i, align 1
  %msg_type.i = getelementptr %struct.request, ptr %call.i, i32 1, i32 1
  %42 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 9, ptr %msg_type.i, align 4
  %43 = ptrtoint ptr %subtype.i250 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %subtype.i250, align 1
  %conv6.i = zext i8 %44 to i32
  %msg_subtype.i = getelementptr %struct.request, ptr %call.i, i32 1, i32 2
  %45 = ptrtoint ptr %msg_subtype.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv6.i, ptr %msg_subtype.i, align 4
  %msg_bucket.i = getelementptr %struct.request, ptr %call.i, i32 1, i32 3
  %46 = ptrtoint ptr %msg_bucket.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %msg_bucket.i, align 4
  tail call void @blk_execute_rq_nowait(ptr noundef %call.i, i1 noundef zeroext true, ptr noundef null) #11
  br label %if.end106

sw.bb10:                                          ; preds = %entry
  %oob_q.i156 = getelementptr i8, ptr %work, i32 -656
  %47 = ptrtoint ptr %oob_q.i156 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %oob_q.i156, align 8
  %call.i157 = tail call ptr @blk_mq_alloc_request(ptr noundef %48, i32 noundef 35, i32 noundef 0) #11
  %cmp.i.i158 = icmp ugt ptr %call.i157, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i158, label %sw.bb10.do.body87_crit_edge, label %carm_send_special.exit182.thread

sw.bb10.do.body87_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

carm_send_special.exit182.thread:                 ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  %tag.i159 = getelementptr inbounds %struct.request, ptr %call.i157, i32 0, i32 5
  %49 = ptrtoint ptr %tag.i159 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tag.i159, align 4
  %msg_base.i.i160 = getelementptr i8, ptr %work, i32 -596
  %51 = ptrtoint ptr %msg_base.i.i160 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %msg_base.i.i160, align 4
  %mul.i.i161 = mul i32 %50, 288
  %add.ptr.i34.i162 = getelementptr i8, ptr %52, i32 %mul.i.i161
  %call.i255 = tail call i64 @ktime_get_real_seconds() #11
  %53 = getelementptr inbounds i8, ptr %add.ptr.i34.i162, i32 2
  %54 = call ptr @memset(ptr %53, i32 0, i32 10)
  %55 = ptrtoint ptr %add.ptr.i34.i162 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 9, ptr %add.ptr.i34.i162, align 1
  %subtype.i256 = getelementptr inbounds %struct.carm_msg_sync_time, ptr %add.ptr.i34.i162, i32 0, i32 1
  %56 = ptrtoint ptr %subtype.i256 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %subtype.i256, align 1
  %shl.i257 = shl i32 %50, 16
  %or.i258 = or i32 %shl.i257, 15
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i258) #11
  %handle.i259 = getelementptr inbounds %struct.carm_msg_sync_time, ptr %add.ptr.i34.i162, i32 0, i32 3
  %58 = ptrtoint ptr %handle.i259 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %handle.i259, align 1
  %conv.i260 = trunc i64 %call.i255 to i32
  %59 = tail call i32 @llvm.bswap.i32(i32 %conv.i260) #11
  %timestamp.i = getelementptr inbounds %struct.carm_msg_sync_time, ptr %add.ptr.i34.i162, i32 0, i32 5
  %60 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %timestamp.i, align 1
  %msg_type.i165 = getelementptr %struct.request, ptr %call.i157, i32 1, i32 1
  %61 = ptrtoint ptr %msg_type.i165 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 9, ptr %msg_type.i165, align 4
  %62 = ptrtoint ptr %subtype.i256 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %subtype.i256, align 1
  %conv6.i167 = zext i8 %63 to i32
  %msg_subtype.i168 = getelementptr %struct.request, ptr %call.i157, i32 1, i32 2
  %64 = ptrtoint ptr %msg_subtype.i168 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv6.i167, ptr %msg_subtype.i168, align 4
  %msg_bucket.i179 = getelementptr %struct.request, ptr %call.i157, i32 1, i32 3
  %65 = ptrtoint ptr %msg_bucket.i179 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %msg_bucket.i179, align 4
  tail call void @blk_execute_rq_nowait(ptr noundef %call.i157, i1 noundef zeroext true, ptr noundef null) #11
  br label %if.end106

sw.bb15:                                          ; preds = %entry
  %oob_q.i183 = getelementptr i8, ptr %work, i32 -656
  %66 = ptrtoint ptr %oob_q.i183 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %oob_q.i183, align 8
  %call.i184 = tail call ptr @blk_mq_alloc_request(ptr noundef %67, i32 noundef 35, i32 noundef 0) #11
  %cmp.i.i185 = icmp ugt ptr %call.i184, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i185, label %sw.bb15.do.body87_crit_edge, label %carm_send_special.exit209.thread

sw.bb15.do.body87_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

carm_send_special.exit209.thread:                 ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %tag.i186 = getelementptr inbounds %struct.request, ptr %call.i184, i32 0, i32 5
  %68 = ptrtoint ptr %tag.i186 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tag.i186, align 4
  %msg_base.i.i187 = getelementptr i8, ptr %work, i32 -596
  %70 = ptrtoint ptr %msg_base.i.i187 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %msg_base.i.i187, align 4
  %mul.i.i188 = mul i32 %69, 288
  %add.ptr.i34.i189 = getelementptr i8, ptr %71, i32 %mul.i.i188
  %msg_dma.i.i261 = getelementptr i8, ptr %work, i32 -592
  %72 = ptrtoint ptr %msg_dma.i.i261 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msg_dma.i.i261, align 8
  %add.i.i263 = or i32 %mul.i.i188, 16
  %add.i264 = add i32 %add.i.i263, %73
  %74 = getelementptr inbounds i8, ptr %add.ptr.i34.i189, i32 2
  %75 = call ptr @memset(ptr %74, i32 0, i32 14)
  %76 = ptrtoint ptr %add.ptr.i34.i189 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 9, ptr %add.ptr.i34.i189, align 1
  %subtype.i265 = getelementptr inbounds %struct.carm_msg_get_fw_ver, ptr %add.ptr.i34.i189, i32 0, i32 1
  %77 = ptrtoint ptr %subtype.i265 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %subtype.i265, align 1
  %shl.i266 = shl i32 %69, 16
  %or.i267 = or i32 %shl.i266, 15
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i267) #11
  %handle.i268 = getelementptr inbounds %struct.carm_msg_get_fw_ver, ptr %add.ptr.i34.i189, i32 0, i32 3
  %79 = ptrtoint ptr %handle.i268 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %handle.i268, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %add.i264) #11
  %data_addr.i269 = getelementptr inbounds %struct.carm_msg_get_fw_ver, ptr %add.ptr.i34.i189, i32 0, i32 4
  %81 = ptrtoint ptr %data_addr.i269 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %data_addr.i269, align 1
  %msg_type.i192 = getelementptr %struct.request, ptr %call.i184, i32 1, i32 1
  %82 = ptrtoint ptr %msg_type.i192 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 9, ptr %msg_type.i192, align 4
  %83 = ptrtoint ptr %subtype.i265 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %subtype.i265, align 1
  %conv6.i194 = zext i8 %84 to i32
  %msg_subtype.i195 = getelementptr %struct.request, ptr %call.i184, i32 1, i32 2
  %85 = ptrtoint ptr %msg_subtype.i195 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv6.i194, ptr %msg_subtype.i195, align 4
  %msg_bucket.i206 = getelementptr %struct.request, ptr %call.i184, i32 1, i32 3
  %86 = ptrtoint ptr %msg_bucket.i206 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %msg_bucket.i206, align 4
  tail call void @blk_execute_rq_nowait(ptr noundef %call.i184, i1 noundef zeroext true, ptr noundef null) #11
  br label %if.end106

sw.bb20:                                          ; preds = %entry
  %oob_q.i210 = getelementptr i8, ptr %work, i32 -656
  %87 = ptrtoint ptr %oob_q.i210 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %oob_q.i210, align 8
  %call.i211 = tail call ptr @blk_mq_alloc_request(ptr noundef %88, i32 noundef 35, i32 noundef 0) #11
  %cmp.i.i212 = icmp ugt ptr %call.i211, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i212, label %sw.bb20.do.body87_crit_edge, label %carm_send_special.exit236.thread

sw.bb20.do.body87_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

carm_send_special.exit236.thread:                 ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  %tag.i213 = getelementptr inbounds %struct.request, ptr %call.i211, i32 0, i32 5
  %89 = ptrtoint ptr %tag.i213 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tag.i213, align 4
  %msg_base.i.i214 = getelementptr i8, ptr %work, i32 -596
  %91 = ptrtoint ptr %msg_base.i.i214 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %msg_base.i.i214, align 4
  %mul.i.i215 = mul i32 %90, 288
  %add.ptr.i34.i216 = getelementptr i8, ptr %92, i32 %mul.i.i215
  %msg_dma.i.i270 = getelementptr i8, ptr %work, i32 -592
  %93 = ptrtoint ptr %msg_dma.i.i270 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %msg_dma.i.i270, align 8
  %add.i.i272 = add i32 %mul.i.i215, 64
  %add.i273 = add i32 %add.i.i272, %94
  %95 = getelementptr inbounds i8, ptr %add.ptr.i34.i216, i32 2
  %96 = call ptr @memset(ptr %95, i32 0, i32 14)
  %97 = ptrtoint ptr %add.ptr.i34.i216 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 6, ptr %add.ptr.i34.i216, align 1
  %subtype.i274 = getelementptr inbounds %struct.carm_msg_ioctl, ptr %add.ptr.i34.i216, i32 0, i32 1
  %98 = ptrtoint ptr %subtype.i274 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 5, ptr %subtype.i274, align 1
  %shl.i275 = shl i32 %90, 16
  %or.i276 = or i32 %shl.i275, 15
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i276) #11
  %handle.i277 = getelementptr inbounds %struct.carm_msg_ioctl, ptr %add.ptr.i34.i216, i32 0, i32 4
  %100 = ptrtoint ptr %handle.i277 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %99, ptr %handle.i277, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %add.i273) #11
  %data_addr.i278 = getelementptr inbounds %struct.carm_msg_ioctl, ptr %add.ptr.i34.i216, i32 0, i32 5
  %102 = ptrtoint ptr %data_addr.i278 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %101, ptr %data_addr.i278, align 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i34.i216, i32 64
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 2242545357980376863, ptr %add.ptr.i, align 1
  %msg_type.i219 = getelementptr %struct.request, ptr %call.i211, i32 1, i32 1
  %104 = ptrtoint ptr %msg_type.i219 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 6, ptr %msg_type.i219, align 4
  %105 = ptrtoint ptr %subtype.i274 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %subtype.i274, align 1
  %conv6.i221 = zext i8 %106 to i32
  %msg_subtype.i222 = getelementptr %struct.request, ptr %call.i211, i32 1, i32 2
  %107 = ptrtoint ptr %msg_subtype.i222 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv6.i221, ptr %msg_subtype.i222, align 4
  %msg_bucket.i233 = getelementptr %struct.request, ptr %call.i211, i32 1, i32 3
  %108 = ptrtoint ptr %msg_bucket.i233 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2, ptr %msg_bucket.i233, align 4
  tail call void @blk_execute_rq_nowait(ptr noundef %call.i211, i1 noundef zeroext true, ptr noundef null) #11
  br label %if.end106

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cur_scan_dev = getelementptr i8, ptr %work, i32 -588
  %109 = ptrtoint ptr %cur_scan_dev to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %cur_scan_dev, align 4
  br label %do.body87

sw.bb26:                                          ; preds = %entry
  %cur_scan_dev27 = getelementptr i8, ptr %work, i32 -588
  %110 = ptrtoint ptr %cur_scan_dev27 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cur_scan_dev27, align 4
  %dev_present = getelementptr i8, ptr %work, i32 -580
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.bb26
  %i.0.in = phi i32 [ %111, %sw.bb26 ], [ %i.0, %for.body.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0)
  %cmp28 = icmp slt i32 %i.0, 8
  br i1 %cmp28, label %for.body, label %for.cond.do.body87_crit_edge

for.cond.do.body87_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

for.body:                                         ; preds = %for.cond
  %112 = ptrtoint ptr %dev_present to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dev_present, align 4
  %shl = shl nuw nsw i32 1, %i.0
  %and = and i32 %113, %shl
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %for.body.for.cond_crit_edge, label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0)
  %cmp33 = icmp sgt i32 %i.0, -1
  br i1 %cmp33, label %if.then35, label %for.end.do.body87_crit_edge

for.end.do.body87_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87

if.then35:                                        ; preds = %for.end
  %114 = ptrtoint ptr %cur_scan_dev27 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %i.0, ptr %cur_scan_dev27, align 4
  %oob_q.i237 = getelementptr i8, ptr %work, i32 -656
  %115 = ptrtoint ptr %oob_q.i237 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %oob_q.i237, align 8
  %call.i238 = tail call ptr @blk_mq_alloc_request(ptr noundef %116, i32 noundef 35, i32 noundef 0) #11
  %cmp.i.i239 = icmp ugt ptr %call.i238, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i239, label %sw.epilog, label %do.end15.i

do.end15.i:                                       ; preds = %if.then35
  %tag.i240 = getelementptr inbounds %struct.request, ptr %call.i238, i32 0, i32 5
  %117 = ptrtoint ptr %tag.i240 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tag.i240, align 4
  %msg_base.i.i241 = getelementptr i8, ptr %work, i32 -596
  %119 = ptrtoint ptr %msg_base.i.i241 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %msg_base.i.i241, align 4
  %mul.i.i242 = mul i32 %118, 288
  %add.ptr.i68.i = getelementptr i8, ptr %120, i32 %mul.i.i242
  %msg_dma.i.i = getelementptr i8, ptr %work, i32 -592
  %121 = ptrtoint ptr %msg_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %msg_dma.i.i, align 8
  %msg_type.i243 = getelementptr %struct.request, ptr %call.i238, i32 1, i32 1
  %123 = ptrtoint ptr %msg_type.i243 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 8, ptr %msg_type.i243, align 4
  %msg_subtype.i244 = getelementptr %struct.request, ptr %call.i238, i32 1, i32 2
  %124 = ptrtoint ptr %msg_subtype.i244 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %msg_subtype.i244, align 4
  %add.i.i = add i32 %mul.i.i242, 68
  %add.i = add i32 %add.i.i, %122
  %msg_bucket.i245 = getelementptr %struct.request, ptr %call.i238, i32 1, i32 3
  %125 = ptrtoint ptr %msg_bucket.i245 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 2, ptr %msg_bucket.i245, align 4
  %126 = getelementptr inbounds i8, ptr %add.ptr.i68.i, i32 3
  %127 = call ptr @memset(ptr %126, i32 0, i32 13)
  %128 = ptrtoint ptr %add.ptr.i68.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 8, ptr %add.ptr.i68.i, align 1
  %subtype.i246 = getelementptr inbounds %struct.carm_msg_ioctl, ptr %add.ptr.i68.i, i32 0, i32 1
  %129 = ptrtoint ptr %subtype.i246 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %subtype.i246, align 1
  %conv.i247 = trunc i32 %i.0 to i8
  %array_id.i = getelementptr inbounds %struct.carm_msg_ioctl, ptr %add.ptr.i68.i, i32 0, i32 2
  %130 = ptrtoint ptr %array_id.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv.i247, ptr %array_id.i, align 1
  %131 = load i32, ptr %tag.i240, align 4
  %shl.i = shl i32 %131, 16
  %or.i = or i32 %shl.i, 15
  %132 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %handle.i = getelementptr inbounds %struct.carm_msg_ioctl, ptr %add.ptr.i68.i, i32 0, i32 4
  %133 = ptrtoint ptr %handle.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %handle.i, align 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %add.i) #11
  %data_addr.i = getelementptr inbounds %struct.carm_msg_ioctl, ptr %add.ptr.i68.i, i32 0, i32 5
  %135 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 %134, ptr %data_addr.i, align 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %136 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %state6, align 8
  %138 = add i32 %137, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %138)
  %139 = icmp ult i32 %138, -2
  br i1 %139, label %do.end33.i, label %do.end15.i.sw.epilog.thread288_crit_edge, !prof !171

do.end15.i.sw.epilog.thread288_crit_edge:         ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.thread288

do.end33.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.34, i32 noundef 539) #14
  br label %sw.epilog.thread288

sw.epilog.thread288:                              ; preds = %do.end33.i, %do.end15.i.sw.epilog.thread288_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  tail call void @blk_execute_rq_nowait(ptr noundef %call.i238, i1 noundef zeroext true, ptr noundef null) #11
  br label %if.end106

for.body46:                                       ; preds = %for.inc62.for.body46_crit_edge, %for.cond43.preheader
  %i.1306 = phi i32 [ 0, %for.cond43.preheader ], [ %inc63, %for.inc62.for.body46_crit_edge ]
  %activated.0305 = phi i32 [ 0, %for.cond43.preheader ], [ %activated.2, %for.inc62.for.body46_crit_edge ]
  %140 = ptrtoint ptr %dev_active to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dev_active, align 8
  %shl47 = shl nuw nsw i32 1, %i.1306
  %and48 = and i32 %141, %shl47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %for.body46.for.inc62_crit_edge, label %if.then50

for.body46.for.inc62_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc62

if.then50:                                        ; preds = %for.body46
  %arrayidx = getelementptr [8 x %struct.carm_port], ptr %port51, i32 0, i32 %i.1306
  %disk52 = getelementptr inbounds %struct.carm_port, ptr %arrayidx, i32 0, i32 1
  %142 = ptrtoint ptr %disk52 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %disk52, align 4
  %capacity = getelementptr inbounds %struct.carm_port, ptr %arrayidx, i32 0, i32 3
  %144 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %capacity, align 8
  tail call void @set_capacity(ptr noundef %143, i64 noundef %145) #11
  %call.i249 = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %143, ptr noundef null) #11
  %146 = ptrtoint ptr %probe_err to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call.i249, ptr %probe_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool55.not = icmp eq i32 %call.i249, 0
  %inc57 = add i32 %activated.0305, 1
  br i1 %tobool55.not, label %if.then50.for.inc62_crit_edge, label %if.then50.do.end67_crit_edge

if.then50.do.end67_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then50.for.inc62_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc62

for.inc62:                                        ; preds = %if.then50.for.inc62_crit_edge, %for.body46.for.inc62_crit_edge
  %activated.2 = phi i32 [ %inc57, %if.then50.for.inc62_crit_edge ], [ %activated.0305, %for.body46.for.inc62_crit_edge ]
  %inc63 = add nuw nsw i32 %i.1306, 1
  %exitcond.not = icmp eq i32 %inc63, 8
  br i1 %exitcond.not, label %for.inc62.do.end67_crit_edge, label %for.inc62.for.body46_crit_edge

for.inc62.for.body46_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body46

for.inc62.do.end67_crit_edge:                     ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

do.end67:                                         ; preds = %for.inc62.do.end67_crit_edge, %if.then50.do.end67_crit_edge
  %activated.0.lcssa = phi i32 [ %activated.0305, %if.then50.do.end67_crit_edge ], [ %activated.2, %for.inc62.do.end67_crit_edge ]
  %pdev = getelementptr i8, ptr %work, i32 -852
  %147 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44, i32 3
  %149 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %150, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end67.pci_name.exit_crit_edge

do.end67.pci_name.exit_crit_edge:                 ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  %151 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end67.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %152, %if.end.i.i ], [ %150, %do.end67.pci_name.exit_crit_edge ]
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %retval.0.i.i, i32 noundef %activated.0.lcssa) #14
  br label %do.body87

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %probe_comp = getelementptr i8, ptr %work, i32 48
  tail call void @complete(ptr noundef %probe_comp) #11
  br label %if.end106

do.end75:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %1) #14
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.26, i32 noundef 1209) #14
  br label %if.end106

sw.epilog:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %153 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 2, ptr %state6, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %do.body87

do.body87:                                        ; preds = %sw.epilog, %pci_name.exit, %for.end.do.body87_crit_edge, %for.cond.do.body87_crit_edge, %sw.bb25, %sw.bb20.do.body87_crit_edge, %sw.bb15.do.body87_crit_edge, %sw.bb10.do.body87_crit_edge, %sw.bb8.do.body87_crit_edge, %entry.do.body87_crit_edge
  %new_state.0283 = phi i32 [ 2, %sw.epilog ], [ 6, %for.end.do.body87_crit_edge ], [ 5, %sw.bb25 ], [ 7, %pci_name.exit ], [ 1, %entry.do.body87_crit_edge ], [ 2, %sw.bb8.do.body87_crit_edge ], [ 2, %sw.bb10.do.body87_crit_edge ], [ 2, %sw.bb15.do.body87_crit_edge ], [ 2, %sw.bb20.do.body87_crit_edge ], [ 6, %for.cond.do.body87_crit_edge ]
  %call95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %154 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %new_state.0283, ptr %state6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call95) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %155 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %155, ptr noundef %work) #11
  br label %if.end106

if.end106:                                        ; preds = %do.body87, %do.end75, %sw.bb72, %sw.epilog.thread288, %carm_send_special.exit236.thread, %carm_send_special.exit209.thread, %carm_send_special.exit182.thread, %carm_send_special.exit.thread, %entry.if.end106_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carm_interrupt(i32 noundef %irq, ptr noundef %__host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %__host, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %mmio5 = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 1
  %0 = ptrtoint ptr %mmio5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio5, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !172
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %2, label %if.end14 [
    i32 0, label %do.body1.out_crit_edge
    i32 -1, label %do.body1.out_crit_edge48
  ]

do.body1.out_crit_edge48:                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body1.out_crit_edge:                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %do.body1
  %and = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.end21_crit_edge, label %do.body17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.body17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #11, !srcloc !175
  br label %if.end21

if.end21:                                         ; preds = %do.body17, %if.end14.if.end21_crit_edge
  %state = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 9
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp22 = icmp eq i32 %6, 0
  %and28 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond = select i1 %cmp22, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %if.end21.out_crit_edge, label %if.then30, !prof !176

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then30:                                        ; preds = %if.end21
  %7 = ptrtoint ptr %mmio5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio5, align 4
  %shm.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 2
  %9 = ptrtoint ptr %shm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shm.i, align 8
  %resp_idx.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 15
  %11 = ptrtoint ptr %resp_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resp_idx.i, align 4
  %idx.052.i = urem i32 %12, 48
  %status254.i = getelementptr %struct.carm_response, ptr %10, i32 %idx.052.i, i32 1
  %13 = ptrtoint ptr %status254.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %status254.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp55.i = icmp eq i32 %14, -1
  br i1 %cmp55.i, label %if.then30.carm_handle_responses.exit_crit_edge, label %if.else.lr.ph.i

if.then30.carm_handle_responses.exit_crit_edge:   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_handle_responses.exit

if.else.lr.ph.i:                                  ; preds = %if.then30
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %pdev.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 8
  %tags.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 11, i32 11
  %msg_base.i.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 19
  %cur_scan_dev.i.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 21
  %dev_active.i.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 22
  %fsm_task.i153.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 25
  %fw_ver.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 10
  %dev_present.i.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 23
  %hw_sg_used.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 14
  %wait_q_prod.i.i.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 16
  %wait_q_cons.i.i.i.i = getelementptr inbounds %struct.carm_host, ptr %__host, i32 0, i32 17
  br label %if.else.i

if.else.i:                                        ; preds = %cleanup.i.if.else.i_crit_edge, %if.else.lr.ph.i
  %16 = phi i32 [ %15, %if.else.lr.ph.i ], [ %207, %cleanup.i.if.else.i_crit_edge ]
  %17 = phi i32 [ %14, %if.else.lr.ph.i ], [ %206, %cleanup.i.if.else.i_crit_edge ]
  %status259.i = phi ptr [ %status254.i, %if.else.lr.ph.i ], [ %status2.i, %cleanup.i.if.else.i_crit_edge ]
  %idx.057.i = phi i32 [ %idx.052.i, %if.else.lr.ph.i ], [ %idx.0.i, %cleanup.i.if.else.i_crit_edge ]
  %work.056.i = phi i32 [ 0, %if.else.lr.ph.i ], [ %inc.i, %cleanup.i.if.else.i_crit_edge ]
  %arrayidx58.i = getelementptr %struct.carm_response, ptr %10, i32 %idx.057.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp3.i = icmp sgt i32 %16, -1
  br i1 %cmp3.i, label %if.then4.i, label %if.else8.i

if.then4.i:                                       ; preds = %if.else.i
  %18 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx58.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 16777216
  %conv.i.i = select i1 %cmp.i.i, i8 0, i8 10
  %and.i.i = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 15
  br i1 %cmp1.i.i, label %if.end.i.i, label %do.end.i.i, !prof !170

do.end.i.i:                                       ; preds = %if.then4.i
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44, i32 3
  %23 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.pci_name.exit.i.i_crit_edge

do.end.i.i.pci_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %25 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i.i, %do.end.i.i.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %26, %if.end.i.i.i.i ], [ %24, %do.end.i.i.pci_name.exit.i.i_crit_edge ]
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %retval.0.i.i.i.i, i32 noundef %20) #14
  br label %cleanup.sink.split.i

if.end.i.i:                                       ; preds = %if.then4.i
  %shr9.i.i = lshr i32 %20, 16
  %and10.i.i = and i32 %shr9.i.i, 31
  %27 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tags.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %and10.i.i)
  %cmp.i.i.i = icmp ugt i32 %32, %and10.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.blk_mq_tag_to_rq.exit.i.i_crit_edge

if.end.i.i.blk_mq_tag_to_rq.exit.i.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_mq_tag_to_rq.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rqs.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %34, i32 %and10.i.i
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %36) #11, !srcloc !177
  %37 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr ptr, ptr %38, i32 %and10.i.i
  %39 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx2.i.i.i, align 4
  br label %blk_mq_tag_to_rq.exit.i.i

blk_mq_tag_to_rq.exit.i.i:                        ; preds = %if.then.i.i.i, %if.end.i.i.blk_mq_tag_to_rq.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %40, %if.then.i.i.i ], [ null, %if.end.i.i.blk_mq_tag_to_rq.exit.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 1
  %msg_type.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 1, i32 1
  %41 = ptrtoint ptr %msg_type.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_type.i.i, align 4
  %.off.i.i = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %if.then24.i.i, label %if.end28.i.i

if.then24.i.i:                                    ; preds = %blk_mq_tag_to_rq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %sg.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 1, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i.i, align 4
  %cmd_flags.i.i.i = getelementptr inbounds %struct.request, ptr %retval.0.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %cmd_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmd_flags.i.i.i, align 4
  %and.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.i.not.i.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i.i, ptr noundef %sg.i.i, i32 noundef %46, i32 noundef %cond.i.i.i, i32 noundef 0) #11
  br label %done.i.i

if.end28.i.i:                                     ; preds = %blk_mq_tag_to_rq.exit.i.i
  %49 = ptrtoint ptr %msg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %msg_base.i.i.i, align 4
  %mul.i.i.i = mul nuw nsw i32 %and10.i.i, 288
  %add.ptr.i118.i.i = getelementptr i8, ptr %50, i32 %mul.i.i.i
  %51 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %42, label %if.end28.i.i.do.end51.i.i_crit_edge [
    i32 6, label %sw.bb.i.i
    i32 9, label %sw.bb32.i.i
    i32 8, label %sw.bb43.i.i
  ]

if.end28.i.i.do.end51.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51.i.i

sw.bb.i.i:                                        ; preds = %if.end28.i.i
  %msg_subtype.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 1, i32 2
  %52 = ptrtoint ptr %msg_subtype.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_subtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %53)
  %cond73.i.i = icmp eq i32 %53, 5
  br i1 %cond73.i.i, label %sw.bb31.i.i, label %sw.bb.i.i.do.end51.i.i_crit_edge

sw.bb.i.i.do.end51.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51.i.i

sw.bb31.i.i:                                      ; preds = %sw.bb.i.i
  br i1 %cmp.i.i, label %for.cond.preheader.i.i.i, label %sw.bb31.i.i.out.i.i.i_crit_edge

sw.bb31.i.i.out.i.i.i_crit_edge:                  ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %sw.bb31.i.i
  %add.ptr.i119.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 64
  %54 = ptrtoint ptr %add.ptr.i119.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.i119.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp1.i.i.i = icmp eq i8 %55, 0
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %for.cond.preheader.i.i.i.for.inc.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

if.then3.i.i.i:                                   ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %dev_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dev_present.i.i.i, align 4
  %or.i.i.i = or i32 %57, 1
  store i32 %or.i.i.i, ptr %dev_present.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then3.i.i.i, %for.cond.preheader.i.i.i.for.inc.i.i.i_crit_edge
  %dev_count.1.i.i.i = phi i32 [ 1, %if.then3.i.i.i ], [ 0, %for.cond.preheader.i.i.i.for.inc.i.i.i_crit_edge ]
  %arrayidx.1.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 65
  %58 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp1.1.i.i.i = icmp eq i8 %59, 0
  br i1 %cmp1.1.i.i.i, label %if.then3.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i.i.i

if.then3.1.i.i.i:                                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %dev_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_present.i.i.i, align 4
  %or.1.i.i.i = or i32 %61, 2
  store i32 %or.1.i.i.i, ptr %dev_present.i.i.i, align 4
  %inc.1.i.i.i = add nuw nsw i32 %dev_count.1.i.i.i, 1
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.then3.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %dev_count.1.1.i.i.i = phi i32 [ %inc.1.i.i.i, %if.then3.1.i.i.i ], [ %dev_count.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ]
  %arrayidx.2.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 66
  %62 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp1.2.i.i.i = icmp eq i8 %63, 0
  br i1 %cmp1.2.i.i.i, label %if.then3.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i.i.i

if.then3.2.i.i.i:                                 ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %dev_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dev_present.i.i.i, align 4
  %or.2.i.i.i = or i32 %65, 4
  store i32 %or.2.i.i.i, ptr %dev_present.i.i.i, align 4
  %inc.2.i.i.i = add nuw nsw i32 %dev_count.1.1.i.i.i, 1
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.then3.2.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %dev_count.1.2.i.i.i = phi i32 [ %inc.2.i.i.i, %if.then3.2.i.i.i ], [ %dev_count.1.1.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge ]
  %arrayidx.3.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 67
  %66 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp1.3.i.i.i = icmp eq i8 %67, 0
  br i1 %cmp1.3.i.i.i, label %if.then3.3.i.i.i, label %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge

for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i.i.i

if.then3.3.i.i.i:                                 ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %dev_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dev_present.i.i.i, align 4
  %or.3.i.i.i = or i32 %69, 8
  store i32 %or.3.i.i.i, ptr %dev_present.i.i.i, align 4
  %inc.3.i.i.i = add nuw nsw i32 %dev_count.1.2.i.i.i, 1
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.then3.3.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge
  %dev_count.1.3.i.i.i = phi i32 [ %inc.3.i.i.i, %if.then3.3.i.i.i ], [ %dev_count.1.2.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge ]
  %arrayidx.4.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 68
  %70 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.4.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp1.4.i.i.i = icmp eq i8 %71, 0
  br i1 %cmp1.4.i.i.i, label %if.then3.4.i.i.i, label %for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge

for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge:        ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i.i.i

if.then3.4.i.i.i:                                 ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %dev_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dev_present.i.i.i, align 4
  %or.4.i.i.i = or i32 %73, 16
  store i32 %or.4.i.i.i, ptr %dev_present.i.i.i, align 4
  %inc.4.i.i.i = add nuw nsw i32 %dev_count.1.3.i.i.i, 1
  br label %for.inc.4.i.i.i

for.inc.4.i.i.i:                                  ; preds = %if.then3.4.i.i.i, %for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge
  %dev_count.1.4.i.i.i = phi i32 [ %inc.4.i.i.i, %if.then3.4.i.i.i ], [ %dev_count.1.3.i.i.i, %for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge ]
  %arrayidx.5.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 69
  %74 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.5.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp1.5.i.i.i = icmp eq i8 %75, 0
  br i1 %cmp1.5.i.i.i, label %if.then3.5.i.i.i, label %for.inc.4.i.i.i.for.inc.5.i.i.i_crit_edge

for.inc.4.i.i.i.for.inc.5.i.i.i_crit_edge:        ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5.i.i.i

if.then3.5.i.i.i:                                 ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %dev_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dev_present.i.i.i, align 4
  %or.5.i.i.i = or i32 %77, 32
  store i32 %or.5.i.i.i, ptr %dev_present.i.i.i, align 4
  %inc.5.i.i.i = add nuw nsw i32 %dev_count.1.4.i.i.i, 1
  br label %for.inc.5.i.i.i

for.inc.5.i.i.i:                                  ; preds = %if.then3.5.i.i.i, %for.inc.4.i.i.i.for.inc.5.i.i.i_crit_edge
  %dev_count.1.5.i.i.i = phi i32 [ %inc.5.i.i.i, %if.then3.5.i.i.i ], [ %dev_count.1.4.i.i.i, %for.inc.4.i.i.i.for.inc.5.i.i.i_crit_edge ]
  %arrayidx.6.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 70
  %78 = ptrtoint ptr %arrayidx.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.6.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp1.6.i.i.i = icmp eq i8 %79, 0
  br i1 %cmp1.6.i.i.i, label %if.then3.6.i.i.i, label %for.inc.5.i.i.i.for.inc.6.i.i.i_crit_edge

for.inc.5.i.i.i.for.inc.6.i.i.i_crit_edge:        ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6.i.i.i

if.then3.6.i.i.i:                                 ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %dev_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dev_present.i.i.i, align 4
  %or.6.i.i.i = or i32 %81, 64
  store i32 %or.6.i.i.i, ptr %dev_present.i.i.i, align 4
  %inc.6.i.i.i = add nuw nsw i32 %dev_count.1.5.i.i.i, 1
  br label %for.inc.6.i.i.i

for.inc.6.i.i.i:                                  ; preds = %if.then3.6.i.i.i, %for.inc.5.i.i.i.for.inc.6.i.i.i_crit_edge
  %dev_count.1.6.i.i.i = phi i32 [ %inc.6.i.i.i, %if.then3.6.i.i.i ], [ %dev_count.1.5.i.i.i, %for.inc.5.i.i.i.for.inc.6.i.i.i_crit_edge ]
  %arrayidx.7.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 71
  %82 = ptrtoint ptr %arrayidx.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.7.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp1.7.i.i.i = icmp eq i8 %83, 0
  br i1 %cmp1.7.i.i.i, label %if.then3.7.i.i.i, label %for.inc.6.i.i.i.for.inc.7.i.i.i_crit_edge

for.inc.6.i.i.i.for.inc.7.i.i.i_crit_edge:        ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7.i.i.i

if.then3.7.i.i.i:                                 ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %dev_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dev_present.i.i.i, align 4
  %or.7.i.i.i = or i32 %85, 128
  store i32 %or.7.i.i.i, ptr %dev_present.i.i.i, align 4
  %inc.7.i.i.i = add nuw nsw i32 %dev_count.1.6.i.i.i, 1
  br label %for.inc.7.i.i.i

for.inc.7.i.i.i:                                  ; preds = %if.then3.7.i.i.i, %for.inc.6.i.i.i.for.inc.7.i.i.i_crit_edge
  %dev_count.1.7.i.i.i = phi i32 [ %inc.7.i.i.i, %if.then3.7.i.i.i ], [ %dev_count.1.6.i.i.i, %for.inc.6.i.i.i.for.inc.7.i.i.i_crit_edge ]
  %86 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev.i, align 4
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44, i32 3
  %88 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.inc.7.i.i.i.pci_name.exit.i.i.i_crit_edge

for.inc.7.i.i.i.pci_name.exit.i.i.i_crit_edge:    ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %90 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i.i.i.i, align 4
  br label %pci_name.exit.i.i.i

pci_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %for.inc.7.i.i.i.pci_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %91, %if.end.i.i.i.i.i ], [ %89, %for.inc.7.i.i.i.pci_name.exit.i.i.i_crit_edge ]
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %retval.0.i.i.i.i.i, i32 noundef %dev_count.1.7.i.i.i) #14
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %pci_name.exit.i.i.i, %sw.bb31.i.i.out.i.i.i_crit_edge
  %new_state.0.i.i.i = phi i32 [ 4, %pci_name.exit.i.i.i ], [ 2, %sw.bb31.i.i.out.i.i.i_crit_edge ]
  %92 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp7.not.i.i.i = icmp eq i32 %93, 3
  br i1 %cmp7.not.i.i.i, label %out.i.i.i.carm_handle_scan_chan.exit.i.i_crit_edge, label %do.end15.i.i.i, !prof !170

out.i.i.i.carm_handle_scan_chan.exit.i.i_crit_edge: ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_handle_scan_chan.exit.i.i

do.end15.i.i.i:                                   ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.46, i32 noundef 887) #14
  br label %carm_handle_scan_chan.exit.i.i

carm_handle_scan_chan.exit.i.i:                   ; preds = %do.end15.i.i.i, %out.i.i.i.carm_handle_scan_chan.exit.i.i_crit_edge
  %94 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %new_state.0.i.i.i, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %95 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %95, ptr noundef %fsm_task.i153.i.i) #11
  br label %done.i.i

sw.bb32.i.i:                                      ; preds = %if.end28.i.i
  %msg_subtype33.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 1, i32 2
  %96 = ptrtoint ptr %msg_subtype33.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %msg_subtype33.i.i, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %97, label %sw.bb32.i.i.do.end51.i.i_crit_edge [
    i32 3, label %sw.bb34.i.i
    i32 5, label %sw.bb35.i.i
    i32 2, label %sw.bb36.i.i
  ]

sw.bb32.i.i.do.end51.i.i_crit_edge:               ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51.i.i

sw.bb34.i.i:                                      ; preds = %sw.bb32.i.i
  %99 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp.not.i.i.i = icmp eq i32 %100, 1
  br i1 %cmp.not.i.i.i, label %sw.bb34.i.i.carm_handle_generic.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !170

sw.bb34.i.i.carm_handle_generic.exit.i.i_crit_edge: ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_handle_generic.exit.i.i

do.end.i.i.i:                                     ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50, i32 noundef 898) #14
  br label %carm_handle_generic.exit.i.i

carm_handle_generic.exit.i.i:                     ; preds = %do.end.i.i.i, %sw.bb34.i.i.carm_handle_generic.exit.i.i_crit_edge
  %next_state..i.i.i = select i1 %cmp.i.i, i32 9, i32 2
  %101 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %next_state..i.i.i, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %102 = load ptr, ptr @system_wq, align 4
  %call.i.i.i122.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %102, ptr noundef %fsm_task.i153.i.i) #11
  br label %done.i.i

sw.bb35.i.i:                                      ; preds = %sw.bb32.i.i
  %103 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %104)
  %cmp.not.i124.i.i = icmp eq i32 %104, 9
  br i1 %cmp.not.i124.i.i, label %sw.bb35.i.i.carm_handle_generic.exit130.i.i_crit_edge, label %do.end.i126.i.i, !prof !170

sw.bb35.i.i.carm_handle_generic.exit130.i.i_crit_edge: ; preds = %sw.bb35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_handle_generic.exit130.i.i

do.end.i126.i.i:                                  ; preds = %sw.bb35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i125.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50, i32 noundef 898) #14
  br label %carm_handle_generic.exit130.i.i

carm_handle_generic.exit130.i.i:                  ; preds = %do.end.i126.i.i, %sw.bb35.i.i.carm_handle_generic.exit130.i.i_crit_edge
  %next_state..i127.i.i = select i1 %cmp.i.i, i32 10, i32 2
  %105 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %next_state..i127.i.i, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %106 = load ptr, ptr @system_wq, align 4
  %call.i.i.i129.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %106, ptr noundef %fsm_task.i153.i.i) #11
  br label %done.i.i

sw.bb36.i.i:                                      ; preds = %sw.bb32.i.i
  br i1 %cmp.i.i, label %if.then38.i.i, label %sw.bb36.i.i.if.end41.i.i_crit_edge

sw.bb36.i.i.if.end41.i.i_crit_edge:               ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i.i

if.then38.i.i:                                    ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 16
  %107 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %add.ptr.i.i, align 1
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #11
  %110 = ptrtoint ptr %fw_ver.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %fw_ver.i.i, align 4
  %features.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 20
  %111 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %features.i.i, align 1
  %113 = and i8 %112, 6
  %and40.i.i = zext i8 %113 to i32
  %114 = ptrtoint ptr %__host to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %__host, align 8
  %or.i.i = or i32 %115, %and40.i.i
  store i32 %or.i.i, ptr %__host, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then38.i.i, %sw.bb36.i.i.if.end41.i.i_crit_edge
  %116 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %117)
  %cmp.not.i132.i.i = icmp eq i32 %117, 10
  br i1 %cmp.not.i132.i.i, label %if.end41.i.i.carm_handle_generic.exit138.i.i_crit_edge, label %do.end.i134.i.i, !prof !170

if.end41.i.i.carm_handle_generic.exit138.i.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_handle_generic.exit138.i.i

do.end.i134.i.i:                                  ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i133.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50, i32 noundef 898) #14
  br label %carm_handle_generic.exit138.i.i

carm_handle_generic.exit138.i.i:                  ; preds = %do.end.i134.i.i, %if.end41.i.i.carm_handle_generic.exit138.i.i_crit_edge
  %next_state..i135.i.i = select i1 %cmp.i.i, i32 3, i32 2
  %118 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %next_state..i135.i.i, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %119 = load ptr, ptr @system_wq, align 4
  %call.i.i.i137.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %119, ptr noundef %fsm_task.i153.i.i) #11
  br label %done.i.i

sw.bb43.i.i:                                      ; preds = %if.end28.i.i
  %msg_subtype44.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 1, i32 2
  %120 = ptrtoint ptr %msg_subtype44.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %msg_subtype44.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cond71.i.i = icmp eq i32 %121, 0
  br i1 %cond71.i.i, label %sw.bb45.i.i, label %sw.bb43.i.i.do.end51.i.i_crit_edge

sw.bb43.i.i.do.end51.i.i_crit_edge:               ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51.i.i

sw.bb45.i.i:                                      ; preds = %sw.bb43.i.i
  %add.ptr.i139.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 68
  br i1 %cmp.i.i, label %if.end.i.i.i, label %sw.bb45.i.i.out.i152.i.i_crit_edge

sw.bb45.i.i.out.i152.i.i_crit_edge:               ; preds = %sw.bb45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i152.i.i

if.end.i.i.i:                                     ; preds = %sw.bb45.i.i
  %array_status.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 132
  %122 = ptrtoint ptr %array_status.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %array_status.i.i.i, align 1
  %.mask.i.i.i = and i32 %123, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end3.i.i.i, label %if.end.i.i.i.out.i152.i.i_crit_edge

if.end.i.i.i.out.i152.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i152.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %124 = ptrtoint ptr %cur_scan_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cur_scan_dev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %125)
  %126 = icmp ugt i32 %125, 7
  br i1 %126, label %do.end.i141.i.i, label %if.end6.i.i.i

do.end.i141.i.i:                                  ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %array_id.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 90
  %127 = ptrtoint ptr %array_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %array_id.i.i.i, align 1
  %conv.i.i.i = zext i8 %128 to i32
  %call.i140.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %125, i32 noundef %conv.i.i.i) #14
  br label %out.i152.i.i

if.end6.i.i.i:                                    ; preds = %if.end3.i.i.i
  %arrayidx.i142.i.i = getelementptr %struct.carm_host, ptr %__host, i32 0, i32 24, i32 %125
  %129 = ptrtoint ptr %add.ptr.i139.i.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %add.ptr.i139.i.i, align 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #11
  %conv8.i.i.i = zext i32 %131 to i64
  %size_hi.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 72
  %132 = ptrtoint ptr %size_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %size_hi.i.i.i, align 1
  %134 = tail call i16 @llvm.bswap.i16(i16 %133) #11
  %conv9.i.i.i = zext i16 %134 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv9.i.i.i, 32
  %or.i143.i.i = or i64 %shl.i.i.i, %conv8.i.i.i
  %capacity.i.i.i = getelementptr %struct.carm_host, ptr %__host, i32 0, i32 24, i32 %125, i32 3
  %135 = ptrtoint ptr %capacity.i.i.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %or.i143.i.i, ptr %capacity.i.i.i, align 8
  %head.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 86
  %136 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %head.i.i.i, align 1
  %138 = tail call i16 @llvm.bswap.i16(i16 %137) #11
  %dev_geom_head.i.i.i = getelementptr %struct.carm_host, ptr %__host, i32 0, i32 24, i32 %125, i32 5
  %139 = ptrtoint ptr %dev_geom_head.i.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %dev_geom_head.i.i.i, align 2
  %sect.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 88
  %140 = ptrtoint ptr %sect.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %sect.i.i.i, align 1
  %142 = tail call i16 @llvm.bswap.i16(i16 %141) #11
  %dev_geom_sect.i.i.i = getelementptr %struct.carm_host, ptr %__host, i32 0, i32 24, i32 %125, i32 6
  %143 = ptrtoint ptr %dev_geom_sect.i.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %dev_geom_sect.i.i.i, align 4
  %cyl.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 84
  %144 = ptrtoint ptr %cyl.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %cyl.i.i.i, align 1
  %146 = tail call i16 @llvm.bswap.i16(i16 %145) #11
  %dev_geom_cyl.i.i.i = getelementptr %struct.carm_host, ptr %__host, i32 0, i32 24, i32 %125, i32 7
  %147 = ptrtoint ptr %dev_geom_cyl.i.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %dev_geom_cyl.i.i.i, align 2
  %shl10.i.i.i = shl nuw nsw i32 1, %125
  %148 = ptrtoint ptr %dev_active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dev_active.i.i.i, align 8
  %or11.i.i.i = or i32 %149, %shl10.i.i.i
  store i32 %or11.i.i.i, ptr %dev_active.i.i.i, align 8
  %name.i.i.i = getelementptr %struct.carm_host, ptr %__host, i32 0, i32 24, i32 %125, i32 4
  %name12.i.i.i = getelementptr i8, ptr %add.ptr.i118.i.i, i32 92
  %call14.i.i.i = tail call ptr @strncpy(ptr noundef %name.i.i.i, ptr noundef %name12.i.i.i, i32 noundef 41) #11
  %arrayidx16.i.i.i = getelementptr %struct.carm_host, ptr %__host, i32 0, i32 24, i32 %125, i32 4, i32 40
  %150 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %arrayidx16.i.i.i, align 8
  %call19.i.i.i = tail call i32 @strlen(ptr noundef %name.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %tobool20.not7.i.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool20.not7.i.i.i, label %if.end6.i.i.i.do.end31.i.i.i_crit_edge, label %if.end6.i.i.i.land.rhs.i.i.i_crit_edge

if.end6.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  br label %land.rhs.i.i.i

if.end6.i.i.i.do.end31.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %if.end6.i.i.i.land.rhs.i.i.i_crit_edge
  %slen.08.i.i.i = phi i32 [ %sub.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %call19.i.i.i, %if.end6.i.i.i.land.rhs.i.i.i_crit_edge ]
  %sub.i.i.i = add i32 %slen.08.i.i.i, -1
  %arrayidx22.i.i.i = getelementptr %struct.carm_host, ptr %__host, i32 0, i32 24, i32 %125, i32 4, i32 %sub.i.i.i
  %151 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx22.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %152)
  %cmp24.i.i.i = icmp eq i8 %152, 32
  br i1 %cmp24.i.i.i, label %while.body.i.i.i, label %land.rhs.i.i.i.do.end31.i.i.i_crit_edge

land.rhs.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %153 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %arrayidx22.i.i.i, align 1
  %tobool20.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %while.body.i.i.i.do.end31.i.i.i_crit_edge, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i

while.body.i.i.i.do.end31.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %while.body.i.i.i.do.end31.i.i.i_crit_edge, %land.rhs.i.i.i.do.end31.i.i.i_crit_edge, %if.end6.i.i.i.do.end31.i.i.i_crit_edge
  %154 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdev.i, align 4
  %init_name.i.i.i145.i.i = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44, i32 3
  %156 = ptrtoint ptr %init_name.i.i.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %init_name.i.i.i145.i.i, align 8
  %tobool.not.i.i.i146.i.i = icmp eq ptr %157, null
  br i1 %tobool.not.i.i.i146.i.i, label %if.end.i.i.i148.i.i, label %do.end31.i.i.i.pci_name.exit.i150.i.i_crit_edge

do.end31.i.i.i.pci_name.exit.i150.i.i_crit_edge:  ; preds = %do.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i150.i.i

if.end.i.i.i148.i.i:                              ; preds = %do.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i147.i.i = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44
  %158 = ptrtoint ptr %dev.i.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev.i.i147.i.i, align 4
  br label %pci_name.exit.i150.i.i

pci_name.exit.i150.i.i:                           ; preds = %if.end.i.i.i148.i.i, %do.end31.i.i.i.pci_name.exit.i150.i.i_crit_edge
  %retval.0.i.i.i149.i.i = phi ptr [ %159, %if.end.i.i.i148.i.i ], [ %157, %do.end31.i.i.i.pci_name.exit.i150.i.i_crit_edge ]
  %160 = ptrtoint ptr %arrayidx.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.i142.i.i, align 8
  %162 = ptrtoint ptr %capacity.i.i.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %capacity.i.i.i, align 8
  %call35.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %retval.0.i.i.i149.i.i, i32 noundef %161, i64 noundef %163) #14
  %164 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pdev.i, align 4
  %init_name.i.i1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 44, i32 3
  %166 = ptrtoint ptr %init_name.i.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %init_name.i.i1.i.i.i, align 8
  %tobool.not.i.i2.i.i.i = icmp eq ptr %167, null
  br i1 %tobool.not.i.i2.i.i.i, label %if.end.i.i4.i.i.i, label %pci_name.exit.i150.i.i.pci_name.exit6.i.i.i_crit_edge

pci_name.exit.i150.i.i.pci_name.exit6.i.i.i_crit_edge: ; preds = %pci_name.exit.i150.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit6.i.i.i

if.end.i.i4.i.i.i:                                ; preds = %pci_name.exit.i150.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i3.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 44
  %168 = ptrtoint ptr %dev.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i3.i.i.i, align 4
  br label %pci_name.exit6.i.i.i

pci_name.exit6.i.i.i:                             ; preds = %if.end.i.i4.i.i.i, %pci_name.exit.i150.i.i.pci_name.exit6.i.i.i_crit_edge
  %retval.0.i.i5.i.i.i = phi ptr [ %169, %if.end.i.i4.i.i.i ], [ %167, %pci_name.exit.i150.i.i.pci_name.exit6.i.i.i_crit_edge ]
  %170 = ptrtoint ptr %arrayidx.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx.i142.i.i, align 8
  %call45.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %retval.0.i.i5.i.i.i, i32 noundef %171, ptr noundef %name.i.i.i) #14
  br label %out.i152.i.i

out.i152.i.i:                                     ; preds = %pci_name.exit6.i.i.i, %do.end.i141.i.i, %if.end.i.i.i.out.i152.i.i_crit_edge, %sw.bb45.i.i.out.i152.i.i_crit_edge
  %172 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %173)
  %cmp46.not.i.i.i = icmp eq i32 %173, 5
  br i1 %cmp46.not.i.i.i, label %out.i152.i.i.carm_handle_array_info.exit.i.i_crit_edge, label %do.end54.i.i.i, !prof !170

out.i152.i.i.carm_handle_array_info.exit.i.i_crit_edge: ; preds = %out.i152.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_handle_array_info.exit.i.i

do.end54.i.i.i:                                   ; preds = %out.i152.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call56.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.53, i32 noundef 857) #14
  br label %carm_handle_array_info.exit.i.i

carm_handle_array_info.exit.i.i:                  ; preds = %do.end54.i.i.i, %out.i152.i.i.carm_handle_array_info.exit.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %174 = load ptr, ptr @system_wq, align 4
  %call.i.i.i154.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %174, ptr noundef %fsm_task.i153.i.i) #11
  br label %cleanup.sink.split.i

do.end51.i.i:                                     ; preds = %sw.bb43.i.i.do.end51.i.i_crit_edge, %sw.bb32.i.i.do.end51.i.i_crit_edge, %sw.bb.i.i.do.end51.i.i_crit_edge, %if.end28.i.i.do.end51.i.i_crit_edge
  %175 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pdev.i, align 4
  %init_name.i.i155.i.i = getelementptr inbounds %struct.pci_dev, ptr %176, i32 0, i32 44, i32 3
  %177 = ptrtoint ptr %init_name.i.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %init_name.i.i155.i.i, align 8
  %tobool.not.i.i156.i.i = icmp eq ptr %178, null
  br i1 %tobool.not.i.i156.i.i, label %if.end.i.i158.i.i, label %do.end51.i.i.pci_name.exit160.i.i_crit_edge

do.end51.i.i.pci_name.exit160.i.i_crit_edge:      ; preds = %do.end51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit160.i.i

if.end.i.i158.i.i:                                ; preds = %do.end51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i157.i.i = getelementptr inbounds %struct.pci_dev, ptr %176, i32 0, i32 44
  %179 = ptrtoint ptr %dev.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev.i157.i.i, align 4
  br label %pci_name.exit160.i.i

pci_name.exit160.i.i:                             ; preds = %if.end.i.i158.i.i, %do.end51.i.i.pci_name.exit160.i.i_crit_edge
  %retval.0.i.i159.i.i = phi ptr [ %180, %if.end.i.i158.i.i ], [ %178, %do.end51.i.i.pci_name.exit160.i.i_crit_edge ]
  %msg_subtype56.i.i = getelementptr %struct.request, ptr %retval.0.i.i.i, i32 1, i32 2
  %181 = ptrtoint ptr %msg_subtype56.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %msg_subtype56.i.i, align 4
  %call57.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %retval.0.i.i159.i.i, i32 noundef %42, i32 noundef %182) #14
  br label %done.i.i

done.i.i:                                         ; preds = %pci_name.exit160.i.i, %carm_handle_generic.exit138.i.i, %carm_handle_generic.exit130.i.i, %carm_handle_generic.exit.i.i, %carm_handle_scan_chan.exit.i.i, %if.then24.i.i
  %error.0.i.i = phi i8 [ %conv.i.i, %if.then24.i.i ], [ 10, %pci_name.exit160.i.i ], [ %conv.i.i, %carm_handle_generic.exit138.i.i ], [ %conv.i.i, %carm_handle_generic.exit130.i.i ], [ %conv.i.i, %carm_handle_generic.exit.i.i ], [ %conv.i.i, %carm_handle_scan_chan.exit.i.i ]
  %183 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %add.ptr.i.i.i, align 4
  %185 = ptrtoint ptr %hw_sg_used.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %hw_sg_used.i.i, align 8
  %sub.i.i = sub i32 %186, %184
  store i32 %sub.i.i, ptr %hw_sg_used.i.i, align 8
  tail call void @blk_mq_end_request(ptr noundef %retval.0.i.i.i, i8 noundef zeroext %error.0.i.i) #11
  %187 = ptrtoint ptr %hw_sg_used.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %hw_sg_used.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 151, i32 %188)
  %cmp61.i.i = icmp ult i32 %188, 151
  br i1 %cmp61.i.i, label %if.then63.i.i, label %done.i.i.cleanup.sink.split.i_crit_edge

done.i.i.cleanup.sink.split.i_crit_edge:          ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.then63.i.i:                                    ; preds = %done.i.i
  %189 = ptrtoint ptr %wait_q_prod.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %wait_q_prod.i.i.i.i, align 8
  %191 = ptrtoint ptr %wait_q_cons.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %wait_q_cons.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %192)
  %cmp.i.i.i.i = icmp eq i32 %190, %192
  br i1 %cmp.i.i.i.i, label %if.then63.i.i.cleanup.sink.split.i_crit_edge, label %carm_pop_q.exit.i.i.i

if.then63.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

carm_pop_q.exit.i.i.i:                            ; preds = %if.then63.i.i
  %rem.i.i.i.i = urem i32 %192, 9
  %inc.i.i.i.i = add i32 %192, 1
  %193 = ptrtoint ptr %wait_q_cons.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %inc.i.i.i.i, ptr %wait_q_cons.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.carm_host, ptr %__host, i32 0, i32 18, i32 %rem.i.i.i.i
  %194 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %195, null
  br i1 %tobool.not.i.i.i, label %carm_pop_q.exit.i.i.i.cleanup.sink.split.i_crit_edge, label %if.then.i162.i.i

carm_pop_q.exit.i.i.i.cleanup.sink.split.i_crit_edge: ; preds = %carm_pop_q.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.then.i162.i.i:                                 ; preds = %carm_pop_q.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_mq_start_hw_queues(ptr noundef nonnull %195) #11
  br label %cleanup.sink.split.i

if.else8.i:                                       ; preds = %if.else.i
  %and9.i = and i32 %16, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and9.i)
  %cmp10.i = icmp eq i32 %and9.i, -2147483648
  br i1 %cmp10.i, label %if.then11.i, label %if.else8.i.cleanup.i_crit_edge

if.else8.i.cleanup.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then11.i:                                      ; preds = %if.else8.i
  %196 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx58.i, align 1
  %198 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pdev.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %199, i32 0, i32 44, i32 3
  %200 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i43.i = icmp eq ptr %201, null
  br i1 %tobool.not.i.i43.i, label %if.end.i.i45.i, label %if.then11.i.pci_name.exit.i_crit_edge

if.then11.i.pci_name.exit.i_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i

if.end.i.i45.i:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i44.i = getelementptr inbounds %struct.pci_dev, ptr %199, i32 0, i32 44
  %202 = ptrtoint ptr %dev.i44.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i44.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i45.i, %if.then11.i.pci_name.exit.i_crit_edge
  %retval.0.i.i46.i = phi ptr [ %203, %if.end.i.i45.i ], [ %201, %if.then11.i.pci_name.exit.i_crit_edge ]
  %conv.i = zext i8 %197 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i46.i, i32 noundef %conv.i) #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %pci_name.exit.i, %if.then.i162.i.i, %carm_pop_q.exit.i.i.i.cleanup.sink.split.i_crit_edge, %if.then63.i.i.cleanup.sink.split.i_crit_edge, %done.i.i.cleanup.sink.split.i_crit_edge, %carm_handle_array_info.exit.i.i, %pci_name.exit.i.i
  %204 = ptrtoint ptr %status259.i to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 -1, ptr %status259.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %if.else8.i.cleanup.i_crit_edge
  %add.i = add nuw nsw i32 %idx.057.i, 1
  %inc.i = add i32 %work.056.i, 1
  %idx.0.i = urem i32 %add.i, 48
  %status2.i = getelementptr %struct.carm_response, ptr %10, i32 %idx.0.i, i32 1
  %205 = ptrtoint ptr %status2.i to i32
  call void @__asan_loadN_noabort(i32 %205, i32 4)
  %206 = load i32, ptr %status2.i, align 1
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #11
  %cmp.i = icmp eq i32 %206, -1
  br i1 %cmp.i, label %cleanup.i.carm_handle_responses.exit_crit_edge, label %cleanup.i.if.else.i_crit_edge

cleanup.i.if.else.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

cleanup.i.carm_handle_responses.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %carm_handle_responses.exit

carm_handle_responses.exit:                       ; preds = %cleanup.i.carm_handle_responses.exit_crit_edge, %if.then30.carm_handle_responses.exit_crit_edge
  %work.0.lcssa.i = phi i32 [ 0, %if.then30.carm_handle_responses.exit_crit_edge ], [ %inc.i, %cleanup.i.carm_handle_responses.exit_crit_edge ]
  %idx.0.lcssa.i = phi i32 [ %idx.052.i, %if.then30.carm_handle_responses.exit_crit_edge ], [ %idx.0.i, %cleanup.i.carm_handle_responses.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @arm_heavy_mb() #11
  %shl.i = shl nuw nsw i32 %idx.0.lcssa.i, 3
  %208 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %add.ptr.i = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %208) #11, !srcloc !175
  %209 = ptrtoint ptr %resp_idx.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %resp_idx.i, align 4
  %add23.i = add i32 %210, %work.0.lcssa.i
  store i32 %add23.i, ptr %resp_idx.i, align 4
  br label %out

out:                                              ; preds = %carm_handle_responses.exit, %if.end21.out_crit_edge, %do.body1.out_crit_edge, %do.body1.out_crit_edge48
  %tobool33.not = phi i32 [ 1, %carm_handle_responses.exit ], [ 0, %if.end21.out_crit_edge ], [ 0, %do.body1.out_crit_edge ], [ 0, %do.body1.out_crit_edge48 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %tobool33.not, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carm_init_host(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio1 = getelementptr inbounds %struct.carm_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !179
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !175
  %add.ptr2 = getelementptr i8, ptr %1, i32 181
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #11, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and6 = and i8 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %and6) #11, !srcloc !183
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #11, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @msleep(i32 noundef 5000) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr20 = getelementptr i8, ptr %1, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !172
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  %and24 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end.if.end31_crit_edge, label %if.then26

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then26:                                        ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %if.then26
  %i.023.i = phi i32 [ 0, %if.then26 ], [ %inc.i, %if.end9.i.for.body.i_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #11
  %9 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.i.not = icmp eq i32 %9, 0
  br i1 %cmp3.i.not, label %if.end9.i, label %for.body.i.if.end31_crit_edge

for.body.i.if.end31_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end9.i:                                        ; preds = %for.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 1238, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50000
  br i1 %exitcond.not.i, label %carm_init_wait.exit, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

carm_init_wait.exit:                              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef 4, ptr noundef nonnull @.str.67) #14
  br label %cleanup

if.end31:                                         ; preds = %for.body.i.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %and32 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end39_crit_edge, label %if.then34

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34:                                        ; preds = %if.end31
  %add.ptr.i156 = getelementptr i8, ptr %1, i32 72
  br label %for.body.i159

for.body.i159:                                    ; preds = %if.end9.i164.for.body.i159_crit_edge, %if.then34
  %i.023.i157 = phi i32 [ 0, %if.then34 ], [ %inc.i162, %if.end9.i164.for.body.i159_crit_edge ]
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #11, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 21474800) #11
  %12 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.i160.not = icmp eq i32 %12, 0
  br i1 %cmp3.i160.not, label %if.end9.i164, label %for.body.i159.if.end39_crit_edge

for.body.i159.if.end39_crit_edge:                 ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end9.i164:                                     ; preds = %for.body.i159
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 1238, i32 noundef 0) #11
  %call.i.i161 = tail call i32 @__cond_resched() #11
  %inc.i162 = add nuw nsw i32 %i.023.i157, 1
  %exitcond.not.i163 = icmp eq i32 %inc.i162, 50000
  br i1 %exitcond.not.i163, label %carm_init_wait.exit168, label %if.end9.i164.for.body.i159_crit_edge

if.end9.i164.for.body.i159_crit_edge:             ; preds = %if.end9.i164
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i159

carm_init_wait.exit168:                           ; preds = %if.end9.i164
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef 2, ptr noundef nonnull @.str.67) #14
  br label %cleanup

if.end39:                                         ; preds = %for.body.i159.if.end39_crit_edge, %if.end31.if.end39_crit_edge
  %and40 = and i32 %6, -7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %and40)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #11, !srcloc !175
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  %add.ptr.i169 = getelementptr i8, ptr %1, i32 72
  br label %for.body.i172

for.body.i172:                                    ; preds = %if.end9.i176.for.body.i172_crit_edge, %if.end39
  %i.023.i170 = phi i32 [ 0, %if.end39 ], [ %inc.i174, %if.end9.i176.for.body.i172_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #11, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #11
  %17 = and i32 %15, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.i = icmp eq i32 %17, 0
  br i1 %cmp6.i, label %if.end54, label %if.end9.i176

if.end9.i176:                                     ; preds = %for.body.i172
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 1238, i32 noundef 0) #11
  %call.i.i173 = tail call i32 @__cond_resched() #11
  %inc.i174 = add nuw nsw i32 %i.023.i170, 1
  %exitcond.not.i175 = icmp eq i32 %inc.i174, 50000
  br i1 %exitcond.not.i175, label %carm_init_wait.exit180, label %if.end9.i176.for.body.i172_crit_edge

if.end9.i176.for.body.i172_crit_edge:             ; preds = %if.end9.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i172

carm_init_wait.exit180:                           ; preds = %if.end9.i176
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef 6, ptr noundef nonnull @.str.68) #14
  br label %cleanup

if.end54:                                         ; preds = %for.body.i172
  %add.ptr.i181 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 536870912) #11, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  %add.ptr1.1.i = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1.i, i32 1073741824) #11, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  %add.ptr1.2.i = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.2.i, i32 -2147483648) #11, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  %add.ptr1.3.i = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.3.i, i32 536936448) #11, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %shm_dma = getelementptr inbounds %struct.carm_host, ptr %host, i32 0, i32 3
  %18 = ptrtoint ptr %shm_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shm_dma, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add.ptr59 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %20) #11, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  %add.ptr65 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #11, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !192
  tail call void @arm_heavy_mb() #11
  %add.ptr69 = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 -2147418112) #11, !srcloc !175
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  %22 = or i32 %21, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %22) #11, !srcloc !175
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !195
  br label %for.body.i185

for.body.i185:                                    ; preds = %if.end9.i190.for.body.i185_crit_edge, %if.end54
  %i.023.i183 = phi i32 [ 0, %if.end54 ], [ %inc.i188, %if.end9.i190.for.body.i185_crit_edge ]
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #11, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #11
  %26 = and i32 %24, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %26)
  %cmp3.i186 = icmp eq i32 %26, 100663296
  br i1 %cmp3.i186, label %do.body90, label %if.end9.i190

if.end9.i190:                                     ; preds = %for.body.i185
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 1238, i32 noundef 0) #11
  %call.i.i187 = tail call i32 @__cond_resched() #11
  %inc.i188 = add nuw nsw i32 %i.023.i183, 1
  %exitcond.not.i189 = icmp eq i32 %inc.i188, 50000
  br i1 %exitcond.not.i189, label %carm_init_wait.exit194, label %if.end9.i190.for.body.i185_crit_edge

if.end9.i190.for.body.i185_crit_edge:             ; preds = %if.end9.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i185

carm_init_wait.exit194:                           ; preds = %if.end9.i190
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef 6, ptr noundef nonnull @.str.67) #14
  br label %cleanup

do.body90:                                        ; preds = %for.body.i185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @arm_heavy_mb() #11
  %add.ptr93 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 0) #11, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -167772161) #11, !srcloc !175
  %27 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio1, align 4
  %shm.i = getelementptr inbounds %struct.carm_host, ptr %host, i32 0, i32 2
  %29 = ptrtoint ptr %shm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shm.i, align 8
  %status.i = getelementptr %struct.carm_response, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 -1, ptr %status.i, align 1
  %status.1.i = getelementptr %struct.carm_response, ptr %30, i32 1, i32 1
  %32 = ptrtoint ptr %status.1.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 -1, ptr %status.1.i, align 1
  %status.2.i = getelementptr %struct.carm_response, ptr %30, i32 2, i32 1
  %33 = ptrtoint ptr %status.2.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 -1, ptr %status.2.i, align 1
  %status.3.i = getelementptr %struct.carm_response, ptr %30, i32 3, i32 1
  %34 = ptrtoint ptr %status.3.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 -1, ptr %status.3.i, align 1
  %status.4.i = getelementptr %struct.carm_response, ptr %30, i32 4, i32 1
  %35 = ptrtoint ptr %status.4.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 -1, ptr %status.4.i, align 1
  %status.5.i = getelementptr %struct.carm_response, ptr %30, i32 5, i32 1
  %36 = ptrtoint ptr %status.5.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 -1, ptr %status.5.i, align 1
  %status.6.i = getelementptr %struct.carm_response, ptr %30, i32 6, i32 1
  %37 = ptrtoint ptr %status.6.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 -1, ptr %status.6.i, align 1
  %status.7.i = getelementptr %struct.carm_response, ptr %30, i32 7, i32 1
  %38 = ptrtoint ptr %status.7.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 -1, ptr %status.7.i, align 1
  %status.8.i = getelementptr %struct.carm_response, ptr %30, i32 8, i32 1
  %39 = ptrtoint ptr %status.8.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 -1, ptr %status.8.i, align 1
  %status.9.i = getelementptr %struct.carm_response, ptr %30, i32 9, i32 1
  %40 = ptrtoint ptr %status.9.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 -1, ptr %status.9.i, align 1
  %status.10.i = getelementptr %struct.carm_response, ptr %30, i32 10, i32 1
  %41 = ptrtoint ptr %status.10.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 -1, ptr %status.10.i, align 1
  %status.11.i = getelementptr %struct.carm_response, ptr %30, i32 11, i32 1
  %42 = ptrtoint ptr %status.11.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 -1, ptr %status.11.i, align 1
  %status.12.i = getelementptr %struct.carm_response, ptr %30, i32 12, i32 1
  %43 = ptrtoint ptr %status.12.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 -1, ptr %status.12.i, align 1
  %status.13.i = getelementptr %struct.carm_response, ptr %30, i32 13, i32 1
  %44 = ptrtoint ptr %status.13.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 -1, ptr %status.13.i, align 1
  %status.14.i = getelementptr %struct.carm_response, ptr %30, i32 14, i32 1
  %45 = ptrtoint ptr %status.14.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 -1, ptr %status.14.i, align 1
  %status.15.i = getelementptr %struct.carm_response, ptr %30, i32 15, i32 1
  %46 = ptrtoint ptr %status.15.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 -1, ptr %status.15.i, align 1
  %status.16.i = getelementptr %struct.carm_response, ptr %30, i32 16, i32 1
  %47 = ptrtoint ptr %status.16.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 -1, ptr %status.16.i, align 1
  %status.17.i = getelementptr %struct.carm_response, ptr %30, i32 17, i32 1
  %48 = ptrtoint ptr %status.17.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 -1, ptr %status.17.i, align 1
  %status.18.i = getelementptr %struct.carm_response, ptr %30, i32 18, i32 1
  %49 = ptrtoint ptr %status.18.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 -1, ptr %status.18.i, align 1
  %status.19.i = getelementptr %struct.carm_response, ptr %30, i32 19, i32 1
  %50 = ptrtoint ptr %status.19.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 -1, ptr %status.19.i, align 1
  %status.20.i = getelementptr %struct.carm_response, ptr %30, i32 20, i32 1
  %51 = ptrtoint ptr %status.20.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 -1, ptr %status.20.i, align 1
  %status.21.i = getelementptr %struct.carm_response, ptr %30, i32 21, i32 1
  %52 = ptrtoint ptr %status.21.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 -1, ptr %status.21.i, align 1
  %status.22.i = getelementptr %struct.carm_response, ptr %30, i32 22, i32 1
  %53 = ptrtoint ptr %status.22.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 -1, ptr %status.22.i, align 1
  %status.23.i = getelementptr %struct.carm_response, ptr %30, i32 23, i32 1
  %54 = ptrtoint ptr %status.23.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 -1, ptr %status.23.i, align 1
  %status.24.i = getelementptr %struct.carm_response, ptr %30, i32 24, i32 1
  %55 = ptrtoint ptr %status.24.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 -1, ptr %status.24.i, align 1
  %status.25.i = getelementptr %struct.carm_response, ptr %30, i32 25, i32 1
  %56 = ptrtoint ptr %status.25.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 -1, ptr %status.25.i, align 1
  %status.26.i = getelementptr %struct.carm_response, ptr %30, i32 26, i32 1
  %57 = ptrtoint ptr %status.26.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 -1, ptr %status.26.i, align 1
  %status.27.i = getelementptr %struct.carm_response, ptr %30, i32 27, i32 1
  %58 = ptrtoint ptr %status.27.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 -1, ptr %status.27.i, align 1
  %status.28.i = getelementptr %struct.carm_response, ptr %30, i32 28, i32 1
  %59 = ptrtoint ptr %status.28.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 -1, ptr %status.28.i, align 1
  %status.29.i = getelementptr %struct.carm_response, ptr %30, i32 29, i32 1
  %60 = ptrtoint ptr %status.29.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 -1, ptr %status.29.i, align 1
  %status.30.i = getelementptr %struct.carm_response, ptr %30, i32 30, i32 1
  %61 = ptrtoint ptr %status.30.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 -1, ptr %status.30.i, align 1
  %status.31.i = getelementptr %struct.carm_response, ptr %30, i32 31, i32 1
  %62 = ptrtoint ptr %status.31.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 -1, ptr %status.31.i, align 1
  %status.32.i = getelementptr %struct.carm_response, ptr %30, i32 32, i32 1
  %63 = ptrtoint ptr %status.32.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 -1, ptr %status.32.i, align 1
  %status.33.i = getelementptr %struct.carm_response, ptr %30, i32 33, i32 1
  %64 = ptrtoint ptr %status.33.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 -1, ptr %status.33.i, align 1
  %status.34.i = getelementptr %struct.carm_response, ptr %30, i32 34, i32 1
  %65 = ptrtoint ptr %status.34.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 -1, ptr %status.34.i, align 1
  %status.35.i = getelementptr %struct.carm_response, ptr %30, i32 35, i32 1
  %66 = ptrtoint ptr %status.35.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 -1, ptr %status.35.i, align 1
  %status.36.i = getelementptr %struct.carm_response, ptr %30, i32 36, i32 1
  %67 = ptrtoint ptr %status.36.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 -1, ptr %status.36.i, align 1
  %status.37.i = getelementptr %struct.carm_response, ptr %30, i32 37, i32 1
  %68 = ptrtoint ptr %status.37.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 -1, ptr %status.37.i, align 1
  %status.38.i = getelementptr %struct.carm_response, ptr %30, i32 38, i32 1
  %69 = ptrtoint ptr %status.38.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 -1, ptr %status.38.i, align 1
  %status.39.i = getelementptr %struct.carm_response, ptr %30, i32 39, i32 1
  %70 = ptrtoint ptr %status.39.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 -1, ptr %status.39.i, align 1
  %status.40.i = getelementptr %struct.carm_response, ptr %30, i32 40, i32 1
  %71 = ptrtoint ptr %status.40.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 -1, ptr %status.40.i, align 1
  %status.41.i = getelementptr %struct.carm_response, ptr %30, i32 41, i32 1
  %72 = ptrtoint ptr %status.41.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 -1, ptr %status.41.i, align 1
  %status.42.i = getelementptr %struct.carm_response, ptr %30, i32 42, i32 1
  %73 = ptrtoint ptr %status.42.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 -1, ptr %status.42.i, align 1
  %status.43.i = getelementptr %struct.carm_response, ptr %30, i32 43, i32 1
  %74 = ptrtoint ptr %status.43.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 -1, ptr %status.43.i, align 1
  %status.44.i = getelementptr %struct.carm_response, ptr %30, i32 44, i32 1
  %75 = ptrtoint ptr %status.44.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 -1, ptr %status.44.i, align 1
  %status.45.i = getelementptr %struct.carm_response, ptr %30, i32 45, i32 1
  %76 = ptrtoint ptr %status.45.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 -1, ptr %status.45.i, align 1
  %status.46.i = getelementptr %struct.carm_response, ptr %30, i32 46, i32 1
  %77 = ptrtoint ptr %status.46.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 -1, ptr %status.46.i, align 1
  %status.47.i = getelementptr %struct.carm_response, ptr %30, i32 47, i32 1
  %78 = ptrtoint ptr %status.47.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 -1, ptr %status.47.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %add.ptr.i195 = getelementptr i8, ptr %28, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 0) #11, !srcloc !175
  %lock = getelementptr inbounds %struct.carm_host, ptr %host, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %state = getelementptr inbounds %struct.carm_host, ptr %host, i32 0, i32 9
  %79 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.not = icmp eq i32 %80, 0
  br i1 %cmp.not, label %do.body90.if.end108_crit_edge, label %do.end105, !prof !170

do.body90.if.end108_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

do.end105:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.63, i32 noundef 1331) #14
  br label %if.end108

if.end108:                                        ; preds = %do.end105, %do.body90.if.end108_crit_edge
  %81 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 8, ptr %state, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %fsm_task = getelementptr inbounds %struct.carm_host, ptr %host, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %82 = load ptr, ptr @system_wq, align 4
  %call.i.i196 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %82, ptr noundef %fsm_task) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %carm_init_wait.exit194, %carm_init_wait.exit180, %carm_init_wait.exit168, %carm_init_wait.exit
  %retval.0 = phi i32 [ 0, %if.end108 ], [ -16, %carm_init_wait.exit ], [ -16, %carm_init_wait.exit168 ], [ -16, %carm_init_wait.exit180 ], [ -16, %carm_init_wait.exit194 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_execute_rq_nowait(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @carm_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  %last_sg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %2 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd, align 4
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queuedata, align 4
  %host2 = getelementptr inbounds %struct.carm_port, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host2, align 8
  %add.ptr.i = getelementptr %struct.request, ptr %3, i32 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %add.ptr.i, align 4
  %sg4 = getelementptr %struct.request, ptr %3, i32 1, i32 4
  tail call void @sg_init_table(ptr noundef %sg4, i32 noundef 32) #11
  tail call void @blk_mq_start_request(ptr noundef %3) #11
  %lock = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %cmd_flags = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %and)
  %cmp = icmp eq i32 %and, 35
  br i1 %cmp, label %entry.send_msg_crit_edge, label %if.end

entry.send_msg_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_msg

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i) #11
  %11 = ptrtoint ptr %last_sg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %last_sg.i, align 4
  %call.i = call i32 @__blk_rq_map_sg(ptr noundef %1, ptr noundef %3, ptr noundef %sg4, ptr noundef nonnull %last_sg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 1
  br i1 %cmp7, label %if.end.out_ioerr_crit_edge, label %if.end9

if.end.out_ioerr_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_ioerr

if.end9:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_flags, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 2, i32 1
  %call11 = call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %sg4, i32 noundef %call.i, i32 noundef %cond.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %if.end9.out_ioerr_crit_edge, label %if.end14

if.end9.out_ioerr_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_ioerr

if.end14:                                         ; preds = %if.end9
  %hw_sg_used = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 14
  %16 = ptrtoint ptr %hw_sg_used to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_sg_used, align 8
  %sub = sub nsw i32 600, %call11
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub)
  %cmp15.not = icmp ult i32 %17, %sub
  br i1 %cmp15.not, label %if.end17, label %if.end14.out_resource_crit_edge

if.end14.out_resource_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_resource

if.end17:                                         ; preds = %if.end14
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call11, ptr %add.ptr.i, align 4
  %19 = ptrtoint ptr %hw_sg_used to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_sg_used, align 8
  %add = add i32 %20, %call11
  store i32 %add, ptr %hw_sg_used, align 8
  %tag = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tag, align 4
  %msg_base.i = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 19
  %23 = ptrtoint ptr %msg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msg_base.i, align 4
  %mul.i = mul i32 %22, 288
  %add.ptr.i151 = getelementptr i8, ptr %24, i32 %mul.i
  %25 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i8 1, i8 2
  %spec.select167 = select i1 %tobool.i.not, i32 1, i32 2
  %27 = ptrtoint ptr %add.ptr.i151 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select, ptr %add.ptr.i151, align 1
  %28 = getelementptr %struct.request, ptr %3, i32 1, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select167, ptr %28, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %5, align 8
  %conv = trunc i32 %31 to i8
  %id = getelementptr inbounds %struct.carm_msg_rw, ptr %add.ptr.i151, i32 0, i32 1
  %32 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %id, align 1
  %conv29 = trunc i32 %call11 to i8
  %sg_count = getelementptr inbounds %struct.carm_msg_rw, ptr %add.ptr.i151, i32 0, i32 2
  %33 = ptrtoint ptr %sg_count to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv29, ptr %sg_count, align 1
  %sg_type = getelementptr inbounds %struct.carm_msg_rw, ptr %add.ptr.i151, i32 0, i32 3
  %34 = ptrtoint ptr %sg_type to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %sg_type, align 1
  %35 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tag, align 4
  %shl = shl i32 %36, 16
  %or = or i32 %shl, 15
  %37 = call i32 @llvm.bswap.i32(i32 %or)
  %handle = getelementptr inbounds %struct.carm_msg_rw, ptr %add.ptr.i151, i32 0, i32 4
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %handle, align 1
  %__sector.i = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %__sector.i, align 8
  %conv33 = trunc i64 %40 to i32
  %41 = call i32 @llvm.bswap.i32(i32 %conv33)
  %lba = getelementptr inbounds %struct.carm_msg_rw, ptr %add.ptr.i151, i32 0, i32 5
  %42 = ptrtoint ptr %lba to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %lba, align 1
  %43 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %__sector.i, align 8
  %shr = lshr i64 %44, 32
  %conv37 = trunc i64 %shr to i16
  %45 = call i16 @llvm.bswap.i16(i16 %conv37)
  %lba_high = getelementptr inbounds %struct.carm_msg_rw, ptr %add.ptr.i151, i32 0, i32 7
  %46 = ptrtoint ptr %lba_high to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %lba_high, align 1
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 8
  %47 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %48, 9
  %conv39 = trunc i32 %shr.i to i16
  %49 = call i16 @llvm.bswap.i16(i16 %conv39)
  %lba_count = getelementptr inbounds %struct.carm_msg_rw, ptr %add.ptr.i151, i32 0, i32 6
  %50 = ptrtoint ptr %lba_count to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %lba_count, align 1
  %51 = shl i32 %call11, 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17
  %i.0165 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end17 ]
  %arrayidx43 = getelementptr %struct.carm_msg_rw, ptr %add.ptr.i151, i32 0, i32 8, i32 %i.0165
  %dma_address = getelementptr %struct.carm_request, ptr %add.ptr.i, i32 0, i32 4, i32 %i.0165, i32 3
  %52 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_address, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %arrayidx43, align 1
  %dma_length = getelementptr %struct.carm_request, ptr %add.ptr.i, i32 0, i32 4, i32 %i.0165, i32 4
  %56 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_length, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %len = getelementptr %struct.carm_msg_rw, ptr %add.ptr.i151, i32 0, i32 8, i32 %i.0165, i32 1
  %59 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %len, align 1
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, %call11
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %60 = add i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %60)
  %cmp1.not.i = icmp ugt i32 %60, 32
  br i1 %cmp1.not.i, label %for.inc.i, label %for.end.do.end60_crit_edge

for.end.do.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

for.inc.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %60)
  %cmp1.not.1.i = icmp ugt i32 %60, 64
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.do.end60_crit_edge

for.inc.i.do.end60_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %60)
  %cmp1.not.2.i = icmp ugt i32 %60, 128
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.do.end60_crit_edge

for.inc.1.i.do.end60_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %60)
  %cmp1.not.3.i = icmp ugt i32 %60, 288
  br i1 %cmp1.not.3.i, label %do.body54, label %for.inc.2.i.do.end60_crit_edge

for.inc.2.i.do.end60_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

do.body54:                                        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/sx8.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 777, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

do.end60:                                         ; preds = %for.inc.2.i.do.end60_crit_edge, %for.inc.1.i.do.end60_crit_edge, %for.inc.i.do.end60_crit_edge, %for.end.do.end60_crit_edge
  %retval.0.i.ph = phi i32 [ 3, %for.inc.2.i.do.end60_crit_edge ], [ 2, %for.inc.1.i.do.end60_crit_edge ], [ 1, %for.inc.i.do.end60_crit_edge ], [ 0, %for.end.do.end60_crit_edge ]
  %msg_bucket = getelementptr %struct.request, ptr %3, i32 1, i32 3
  %61 = ptrtoint ptr %msg_bucket to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.ph, ptr %msg_bucket, align 4
  br label %send_msg

send_msg:                                         ; preds = %do.end60, %entry.send_msg_crit_edge
  %n_elem.0 = phi i32 [ 0, %entry.send_msg_crit_edge ], [ %call11, %do.end60 ]
  %tag61 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 5
  %62 = ptrtoint ptr %tag61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tag61, align 4
  %mmio1.i = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 1
  %64 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio1.i, align 4
  %msg_dma.i.i = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 20
  %66 = ptrtoint ptr %msg_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_dma.i.i, align 8
  %msg_bucket.i = getelementptr %struct.request, ptr %3, i32 1, i32 3
  %68 = ptrtoint ptr %msg_bucket.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %msg_bucket.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %65, i32 24
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #11, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !200
  %71 = and i32 %70, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i, label %if.end67, label %if.then64

if.then64:                                        ; preds = %send_msg
  call void @__sanitizer_cov_trace_pc() #13
  %hw_sg_used65 = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 14
  %72 = ptrtoint ptr %hw_sg_used65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hw_sg_used65, align 8
  %sub66 = sub i32 %73, %n_elem.0
  store i32 %sub66, ptr %hw_sg_used65, align 8
  br label %out_resource

if.end67:                                         ; preds = %send_msg
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i = mul i32 %63, 288
  %add.i.i = add i32 %67, %mul.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  call void @arm_heavy_mb() #11
  %shl.i = shl i32 %69, 1
  %or.i = or i32 %shl.i, %add.i.i
  %74 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  %add.ptr5.i = getelementptr i8, ptr %65, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %74) #11, !srcloc !175
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #11, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  br label %cleanup

out_resource:                                     ; preds = %if.then64, %if.end14.out_resource_crit_edge
  %n_elem.1 = phi i32 [ %n_elem.0, %if.then64 ], [ %call11, %if.end14.out_resource_crit_edge ]
  %pdev69 = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 8
  %76 = ptrtoint ptr %pdev69 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev69, align 4
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %78 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cmd_flags, align 4
  %and.i.i155 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i155)
  %tobool.i.not.i156 = icmp eq i32 %and.i.i155, 0
  %cond.i157 = select i1 %tobool.i.not.i156, i32 2, i32 1
  call void @dma_unmap_sg_attrs(ptr noundef %dev70, ptr noundef %sg4, i32 noundef %n_elem.1, i32 noundef %cond.i157, i32 noundef 0) #11
  %wait_q_prod.i = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 16
  %80 = ptrtoint ptr %wait_q_prod.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wait_q_prod.i, align 8
  %rem.i = urem i32 %81, 9
  call void @blk_mq_stop_hw_queues(ptr noundef %1) #11
  %arrayidx.i = getelementptr %struct.carm_host, ptr %7, i32 0, i32 18, i32 %rem.i
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %1, ptr %arrayidx.i, align 4
  %83 = ptrtoint ptr %wait_q_prod.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wait_q_prod.i, align 8
  %inc.i = add i32 %84, 1
  store i32 %inc.i, ptr %wait_q_prod.i, align 8
  %wait_q_cons.i = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 17
  %85 = ptrtoint ptr %wait_q_cons.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %wait_q_cons.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %86)
  %cmp.i = icmp eq i32 %inc.i, %86
  br i1 %cmp.i, label %do.body4.i, label %out_resource.cleanup_crit_edge, !prof !171

out_resource.cleanup_crit_edge:                   ; preds = %out_resource
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body4.i:                                       ; preds = %out_resource
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/sx8.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 673, 0\0A.popsection", ""() #11, !srcloc !203
  unreachable

out_ioerr:                                        ; preds = %if.end9.out_ioerr_crit_edge, %if.end.out_ioerr_crit_edge
  %wait_q_prod.i.i = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 16
  %87 = ptrtoint ptr %wait_q_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wait_q_prod.i.i, align 8
  %wait_q_cons.i.i = getelementptr inbounds %struct.carm_host, ptr %7, i32 0, i32 17
  %89 = ptrtoint ptr %wait_q_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %wait_q_cons.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp.i.i = icmp eq i32 %88, %90
  br i1 %cmp.i.i, label %out_ioerr.cleanup_crit_edge, label %carm_pop_q.exit.i

out_ioerr.cleanup_crit_edge:                      ; preds = %out_ioerr
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

carm_pop_q.exit.i:                                ; preds = %out_ioerr
  %rem.i.i = urem i32 %90, 9
  %inc.i.i = add i32 %90, 1
  %91 = ptrtoint ptr %wait_q_cons.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %inc.i.i, ptr %wait_q_cons.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.carm_host, ptr %7, i32 0, i32 18, i32 %rem.i.i
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i158 = icmp eq ptr %93, null
  br i1 %tobool.not.i158, label %carm_pop_q.exit.i.cleanup_crit_edge, label %if.then.i

carm_pop_q.exit.i.cleanup_crit_edge:              ; preds = %carm_pop_q.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %carm_pop_q.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_mq_start_hw_queues(ptr noundef nonnull %93) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %carm_pop_q.exit.i.cleanup_crit_edge, %out_ioerr.cleanup_crit_edge, %out_resource.cleanup_crit_edge, %if.end67
  %retval.0 = phi i8 [ 0, %if.end67 ], [ 13, %out_resource.cleanup_crit_edge ], [ 10, %out_ioerr.cleanup_crit_edge ], [ 10, %carm_pop_q.exit.i.cleanup_crit_edge ], [ 10, %if.then.i ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_stop_hw_queues(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_hw_queues(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_segment_boundary(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @carm_bdev_getgeo(ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %geo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %dev_geom_head = getelementptr inbounds %struct.carm_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_geom_head to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_geom_head, align 2
  %conv = trunc i16 %5 to i8
  %6 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %geo, align 4
  %dev_geom_sect = getelementptr inbounds %struct.carm_port, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %dev_geom_sect to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dev_geom_sect, align 4
  %conv1 = trunc i16 %8 to i8
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %9 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1, ptr %sectors, align 1
  %dev_geom_cyl = getelementptr inbounds %struct.carm_port, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %dev_geom_cyl to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dev_geom_cyl, align 2
  %cylinders = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %12 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %cylinders, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !155, !156, !158, !159, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__UNIQUE_ID_author286, !1, !"__UNIQUE_ID_author286", i1 false, i1 false}
!1 = !{!"../drivers/block/sx8.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_file287, !3, !"__UNIQUE_ID_file287", i1 false, i1 false}
!3 = !{!"../drivers/block/sx8.c", i32 48, i32 1}
!4 = !{ptr @__UNIQUE_ID_license288, !3, !"__UNIQUE_ID_license288", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description289, !6, !"__UNIQUE_ID_description289", i1 false, i1 false}
!6 = !{!"../drivers/block/sx8.c", i32 49, i32 1}
!7 = !{ptr @__UNIQUE_ID_version290, !8, !"__UNIQUE_ID_version290", i1 false, i1 false}
!8 = !{!"../drivers/block/sx8.c", i32 50, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_max_queue, !14, !"__param_max_queue", i1 false, i1 false}
!14 = !{!"../drivers/block/sx8.c", i32 69, i32 1}
!15 = !{ptr @__UNIQUE_ID_max_queuetype291, !14, !"__UNIQUE_ID_max_queuetype291", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_max_queue292, !17, !"__UNIQUE_ID_max_queue292", i1 false, i1 false}
!17 = !{!"../drivers/block/sx8.c", i32 70, i32 1}
!18 = !{ptr @__initcall__kmod_sx8__293_1582_carm_driver_init6, !19, !"__initcall__kmod_sx8__293_1582_carm_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/block/sx8.c", i32 1582, i32 1}
!20 = !{ptr @__exitcall_carm_driver_exit, !19, !"__exitcall_carm_driver_exit", i1 false, i1 false}
!21 = !{ptr @__param_str_max_queue, !14, !"__param_str_max_queue", i1 false, i1 false}
!22 = !{ptr @max_queue, !23, !"max_queue", i1 false, i1 false}
!23 = !{!"../drivers/block/sx8.c", i32 68, i32 12}
!24 = !{ptr @carm_driver, !25, !"carm_driver", i1 false, i1 false}
!25 = !{!"../drivers/block/sx8.c", i32 414, i32 26}
!26 = !{ptr @carm_pci_tbl, !27, !"carm_pci_tbl", i1 false, i1 false}
!27 = !{!"../drivers/block/sx8.c", i32 407, i32 35}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/block/sx8.c", i32 1406, i32 2}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @carm_init_one._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @carm_init_one._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/block/sx8.c", i32 1418, i32 3}
!37 = !{ptr @carm_init_one._entry.6, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @carm_init_one._entry_ptr.8, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @carm_init_one.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/block/sx8.c", i32 1430, i32 2}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @carm_init_one.__key.10, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/block/sx8.c", i32 1431, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/block/sx8.c", i32 1437, i32 3}
!47 = !{ptr @carm_init_one._entry.12, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @carm_init_one._entry_ptr.14, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/block/sx8.c", i32 1445, i32 3}
!51 = !{ptr @carm_init_one._entry.15, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @carm_init_one._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/block/sx8.c", i32 1484, i32 22}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/block/sx8.c", i32 1502, i32 3}
!57 = !{ptr @carm_init_one._entry.19, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @carm_init_one._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/block/sx8.c", i32 1519, i32 2}
!61 = !{ptr @carm_init_one._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @carm_init_one._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/block/sx8.c", i32 1192, i32 3}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @carm_fsm_task._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @carm_fsm_task._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/block/sx8.c", i32 1208, i32 3}
!70 = !{ptr @carm_fsm_task._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @carm_fsm_task._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/block/sx8.c", i32 1209, i32 3}
!74 = !{ptr @carm_fsm_task._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @carm_fsm_task._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"msg_sizes", i1 false, i1 false}
!78 = !{!"../drivers/block/sx8.c", i32 441, i32 18}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/block/sx8.c", i32 538, i32 2}
!81 = !{ptr @carm_array_info._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @carm_array_info._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @init_completion.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/completion.h", i32 87, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @carm_mq_ops, !88, !"carm_mq_ops", i1 false, i1 false}
!88 = !{!"../drivers/block/sx8.c", i32 1340, i32 32}
!89 = !{ptr @carm_major_alloc, !90, !"carm_major_alloc", i1 false, i1 false}
!90 = !{!"../drivers/block/sx8.c", i32 427, i32 22}
!91 = !{ptr @carm_host_id, !92, !"carm_host_id", i1 false, i1 false}
!92 = !{!"../drivers/block/sx8.c", i32 426, i32 21}
!93 = !{ptr @carm_init_disk.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/block/sx8.c", i32 1352, i32 9}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/block/sx8.c", i32 1357, i32 27}
!97 = !{ptr @carm_bd_ops, !98, !"carm_bd_ops", i1 false, i1 false}
!98 = !{!"../drivers/block/sx8.c", i32 421, i32 45}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/block/sx8.c", i32 1039, i32 4}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @carm_handle_responses._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @carm_handle_responses._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/block/sx8.c", i32 919, i32 3}
!106 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @carm_handle_resp._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @carm_handle_resp._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/block/sx8.c", i32 1001, i32 2}
!111 = !{ptr @carm_handle_resp._entry.42, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @carm_handle_resp._entry_ptr.44, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/block/sx8.c", i32 883, i32 2}
!115 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @carm_handle_scan_chan._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @carm_handle_scan_chan._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @carm_handle_scan_chan._entry.47, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/block/sx8.c", i32 887, i32 2}
!120 = !{ptr @carm_handle_scan_chan._entry_ptr.48, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/block/sx8.c", i32 898, i32 2}
!124 = !{ptr @carm_handle_generic._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @carm_handle_generic._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/block/sx8.c", i32 825, i32 3}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @carm_handle_array_info._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @carm_handle_array_info._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/block/sx8.c", i32 850, i32 2}
!134 = !{ptr @carm_handle_array_info._entry.54, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @carm_handle_array_info._entry_ptr.56, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/block/sx8.c", i32 853, i32 2}
!138 = !{ptr @carm_handle_array_info._entry.57, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @carm_handle_array_info._entry_ptr.59, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @carm_handle_array_info._entry.60, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/block/sx8.c", i32 857, i32 2}
!142 = !{ptr @carm_handle_array_info._entry_ptr.61, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/block/sx8.c", i32 1331, i32 2}
!146 = !{ptr @carm_init_host._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @carm_init_host._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/block/sx8.c", i32 1241, i32 2}
!151 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @carm_init_wait._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @carm_init_wait._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/block/sx8.c", i32 1560, i32 3}
!158 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @carm_remove_one._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @carm_remove_one._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"branch_weights", i32 2000, i32 1}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{i64 5016340}
!173 = !{i64 2154970040}
!174 = !{i64 2154970258}
!175 = !{i64 5015922}
!176 = !{!"branch_weights", i32 2002, i32 2000}
!177 = !{i64 743296}
!178 = !{i64 2154967185}
!179 = !{i64 2154980859}
!180 = !{i64 5016120}
!181 = !{i64 2154981263}
!182 = !{i64 2154981478}
!183 = !{i64 5015725}
!184 = !{i64 2154981764}
!185 = !{i64 2154982246}
!186 = !{i64 2154977736}
!187 = !{i64 2154982459}
!188 = !{i64 2154983115}
!189 = !{i64 2154934467}
!190 = !{i64 2154983354}
!191 = !{i64 2154983840}
!192 = !{i64 2154984310}
!193 = !{i64 2154984984}
!194 = !{i64 2154985197}
!195 = !{i64 2154985853}
!196 = !{i64 2154986065}
!197 = !{i64 2154986460}
!198 = !{i64 2154980472}
!199 = !{i64 2154948081, i64 2154948565, i64 2154948118, i64 2154948174, i64 2154948208, i64 2154948232, i64 2154948273, i64 2154948294, i64 2154948322, i64 2154948356}
!200 = !{i64 2154935498}
!201 = !{i64 2154935733}
!202 = !{i64 2154936446}
!203 = !{i64 2154944773, i64 2154945257, i64 2154944810, i64 2154944866, i64 2154944900, i64 2154944924, i64 2154944965, i64 2154944986, i64 2154945014, i64 2154945048}
