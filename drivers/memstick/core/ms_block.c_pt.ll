; ModuleID = '/llk/IR_all_yes/drivers/memstick/core/ms_block.c_pt.bc'
source_filename = "../drivers/memstick/core/ms_block.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.memstick_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.memstick_device_id = type { i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.chs_entry = type { i32, i8, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.memstick_dev = type { %struct.memstick_device_id, ptr, %struct.ms_register_addr, %struct.completion, %struct.memstick_request, ptr, ptr, ptr, ptr, %struct.device }
%struct.ms_register_addr = type { i8, i8, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.memstick_request = type { i8, i8, i8, i32, %union.anon.78 }
%union.anon.78 = type { %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.msb_data = type { i32, ptr, ptr, ptr, %struct.spinlock, %struct.blk_mq_tag_set, %struct.hd_geometry, %struct.attribute_group, ptr, i32, i32, ptr, i8, %struct.work_struct, i8, ptr, [2 x i16], i32, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, [16 x i32], i8, ptr, i32, i32, i8, %struct.timer_list, ptr, [33 x %struct.scatterlist], %struct.ms_register_addr, i8, i8, i8, ptr, i32, %struct.ms_register, i32, i32, i32, i8, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ms_register = type { %struct.ms_status_register, %struct.ms_id_register, [8 x i8], %struct.ms_param_register, %struct.ms_extra_data_register }
%struct.ms_status_register = type { i8, i8, i8, i8 }
%struct.ms_id_register = type { i8, i8, i8, i8 }
%struct.ms_param_register = type { i8, i8, i16, i8, i8 }
%struct.ms_extra_data_register = type { i8, i8, i16 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.memstick_host = type { %struct.mutex, i32, i32, %struct.work_struct, %struct.device, ptr, i32, i8, ptr, ptr, [60 x i8], [0 x i32] }
%struct.ms_boot_page = type { %struct.ms_boot_header, %struct.ms_system_entry, %struct.ms_boot_attr_info }
%struct.ms_boot_header = type { i16, i16, [184 x i8], i8, [179 x i8] }
%struct.ms_system_entry = type { %struct.ms_system_item, %struct.ms_system_item, [24 x i8] }
%struct.ms_system_item = type { i32, i32, i8, [3 x i8] }
%struct.ms_boot_attr_info = type { i8, i8, i16, i16, i16, i16, i8, i8, [8 x i8], i8, [3 x i8], i8, [3 x i8], i16, i16, i16, [2 x i8], i8, i8, i16, i16, [9 x i8], i8, i16, i8, i8, i8, [22 x i8], [2 x i8], [15 x i8] }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.anon.79 = type { i8, [15 x i8] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.blk_mq_hw_ctx = type { %struct.anon.84, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.84 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }

@msb_driver = internal global { %struct.memstick_driver, [32 x i8] } { %struct.memstick_driver { ptr @msb_id_tbl, ptr @msb_probe, ptr @msb_remove, ptr @msb_suspend, ptr @msb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [32 x i8] zeroinitializer }, align 32
@msb_disk_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.275, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ms_block__284_2357_msb_init6 = internal global ptr @msb_init, section ".initcall6.init", align 4
@__exitcall_msb_exit = internal global ptr @msb_exit, section ".exitcall.exit", align 4
@__param_str_cache_flush_timeout = internal constant [29 x i8] c"ms_block.cache_flush_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cache_flush_timeout = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_cache_flush_timeout = internal constant %struct.kernel_param { ptr @__param_str_cache_flush_timeout, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @cache_flush_timeout } }, section "__param", align 4
@__UNIQUE_ID_cache_flush_timeouttype285 = internal constant [42 x i8] c"ms_block.parmtype=cache_flush_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cache_flush_timeout286 = internal constant [77 x i8] c"ms_block.parm=cache_flush_timeout:Cache flush timeout in msec (1000 default)\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"ms_block.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype287 = internal constant [28 x i8] c"ms_block.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug288 = internal constant [38 x i8] c"ms_block.parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@__param_str_verify_writes = internal constant [23 x i8] c"ms_block.verify_writes\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@verify_writes = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_verify_writes = internal constant %struct.kernel_param { ptr @__param_str_verify_writes, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @verify_writes } }, section "__param", align 4
@__UNIQUE_ID_verify_writestype289 = internal constant [37 x i8] c"ms_block.parmtype=verify_writes:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_verify_writes290 = internal constant [73 x i8] c"ms_block.parm=verify_writes:Read back and check all data that is written\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"ms_block.file=drivers/memstick/core/ms_block\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"ms_block.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [31 x i8] c"ms_block.author=Maxim Levitsky\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [58 x i8] c"ms_block.description=Sony MemoryStick block device driver\00", section ".modinfo", align 1
@msb_id_tbl = internal global { [6 x %struct.memstick_device_id], [40 x i8] } { [6 x %struct.memstick_device_id] [%struct.memstick_device_id { i8 1, i8 -1, i8 -1, i8 -1 }, %struct.memstick_device_id { i8 1, i8 -1, i8 -1, i8 1 }, %struct.memstick_device_id { i8 1, i8 -1, i8 -1, i8 2 }, %struct.memstick_device_id { i8 1, i8 -1, i8 -1, i8 3 }, %struct.memstick_device_id { i8 1, i8 0, i8 0, i8 0 }, %struct.memstick_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ms_block\00", [23 x i8] zeroinitializer }, align 32
@msb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&msb->q_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msb_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ms_block: device page %d size isn't supported\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msb_init_card\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/memstick/core/ms_block.c\00", [63 x i8] zeroinitializer }, align 32
@msb_init_card._entry_ptr = internal global ptr @msb_init_card._entry, section ".printk_index", align 4
@chs_table = internal constant { [7 x %struct.chs_entry], [44 x i8] } { [7 x %struct.chs_entry] [%struct.chs_entry { i32 4, i8 16, i16 247, i8 2 }, %struct.chs_entry { i32 8, i8 16, i16 495, i8 2 }, %struct.chs_entry { i32 16, i8 16, i16 495, i8 4 }, %struct.chs_entry { i32 32, i8 16, i16 991, i8 4 }, %struct.chs_entry { i32 64, i8 16, i16 991, i8 8 }, %struct.chs_entry { i32 128, i8 16, i16 991, i8 16 }, %struct.chs_entry zeroinitializer], [44 x i8] zeroinitializer }, align 32
@msb_init_card._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ms_block: Total block count = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@msb_init_card._entry_ptr.7 = internal global ptr @msb_init_card._entry.5, section ".printk_index", align 4
@msb_init_card._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ms_block: Each block consists of %d pages\0A\00", [51 x i8] zeroinitializer }, align 32
@msb_init_card._entry_ptr.10 = internal global ptr @msb_init_card._entry.8, section ".printk_index", align 4
@msb_init_card._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ms_block: Page size = %d bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@msb_init_card._entry_ptr.13 = internal global ptr @msb_init_card._entry.11, section ".printk_index", align 4
@msb_init_card._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ms_block: Parallel mode supported: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@msb_init_card._entry_ptr.16 = internal global ptr @msb_init_card._entry.14, section ".printk_index", align 4
@msb_init_card._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013ms_block: Read only: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@msb_init_card._entry_ptr.19 = internal global ptr @msb_init_card._entry.17, section ".printk_index", align 4
@msb_init_card._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013ms_block: failed to read bad block table from primary boot block, trying from backup\0A\00", [40 x i8] zeroinitializer }, align 32
@msb_init_card._entry_ptr.22 = internal global ptr @msb_init_card._entry.20, section ".printk_index", align 4
@msb_init_card._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ms_block: Scan of media failed\00", [63 x i8] zeroinitializer }, align 32
@msb_init_card._entry_ptr.25 = internal global ptr @msb_init_card._entry.23, section ".printk_index", align 4
@msb_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ms_block: Failed to reset the host controller\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msb_reset\00", [22 x i8] zeroinitializer }, align 32
@msb_reset._entry_ptr = internal global ptr @msb_reset._entry, section ".printk_index", align 4
@msb_reset._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ms_block: Failed to reset the card\0A\00", [58 x i8] zeroinitializer }, align 32
@msb_reset._entry_ptr.30 = internal global ptr @msb_reset._entry.28, section ".printk_index", align 4
@msb_switch_to_parallel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ms_block: Switch to parallel failed\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msb_switch_to_parallel\00", [41 x i8] zeroinitializer }, align 32
@msb_switch_to_parallel._entry_ptr = internal global ptr @msb_switch_to_parallel._entry, section ".printk_index", align 4
@h_msb_parallel_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ms_block: parallel_switch: error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"h_msb_parallel_switch\00", [42 x i8] zeroinitializer }, align 32
@h_msb_parallel_switch._entry_ptr = internal global ptr @h_msb_parallel_switch._entry, section ".printk_index", align 4
@msb_read_boot_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ms_block: Start of a scan for the boot blocks\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msb_read_boot_blocks\00", [43 x i8] zeroinitializer }, align 32
@msb_read_boot_blocks._entry_ptr = internal global ptr @msb_read_boot_blocks._entry, section ".printk_index", align 4
@msb_read_boot_blocks._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ms_block: boot scan: can't read pba %d\0A\00", [54 x i8] zeroinitializer }, align 32
@msb_read_boot_blocks._entry_ptr.39 = internal global ptr @msb_read_boot_blocks._entry.37, section ".printk_index", align 4
@msb_read_boot_blocks._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.4, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013ms_block: management flag doesn't indicate boot block %d\0A\00", [36 x i8] zeroinitializer }, align 32
@msb_read_boot_blocks._entry_ptr.42 = internal global ptr @msb_read_boot_blocks._entry.40, section ".printk_index", align 4
@msb_read_boot_blocks._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.4, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ms_block: the pba at %d doesn't contain boot block ID\0A\00", [39 x i8] zeroinitializer }, align 32
@msb_read_boot_blocks._entry_ptr.45 = internal global ptr @msb_read_boot_blocks._entry.43, section ".printk_index", align 4
@msb_read_boot_blocks._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.4, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ms_block: media doesn't contain master page, aborting\00", [40 x i8] zeroinitializer }, align 32
@msb_read_boot_blocks._entry_ptr.48 = internal global ptr @msb_read_boot_blocks._entry.46, section ".printk_index", align 4
@msb_read_boot_blocks._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.36, ptr @.str.4, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ms_block: End of scan for boot blocks\0A\00", [55 x i8] zeroinitializer }, align 32
@msb_read_boot_blocks._entry_ptr.51 = internal global ptr @msb_read_boot_blocks._entry.49, section ".printk_index", align 4
@msb_read_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ms_block: read unmapped sector. returning 0xFF\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msb_read_page\00", [18 x i8] zeroinitializer }, align 32
@msb_read_page._entry_ptr = internal global ptr @msb_read_page._entry, section ".printk_index", align 4
@msb_read_page._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013ms_block: BUG: attempt to read beyond the end of the card at pba %d\00", [58 x i8] zeroinitializer }, align 32
@msb_read_page._entry_ptr.56 = internal global ptr @msb_read_page._entry.54, section ".printk_index", align 4
@msb_read_page._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.4, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015ms_block: correctable error on pba %d, page %d\00", [47 x i8] zeroinitializer }, align 32
@msb_read_page._entry_ptr.59 = internal global ptr @msb_read_page._entry.57, section ".printk_index", align 4
@msb_read_page._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.4, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ms_block: uncorrectable error on read of pba %d, page %d\00", [37 x i8] zeroinitializer }, align 32
@msb_read_page._entry_ptr.62 = internal global ptr @msb_read_page._entry.60, section ".printk_index", align 4
@msb_read_page._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.4, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ms_block: read of pba %d, page %d failed with error %d\00", [39 x i8] zeroinitializer }, align 32
@msb_read_page._entry_ptr.65 = internal global ptr @msb_read_page._entry.63, section ".printk_index", align 4
@h_msb_read_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ms_block: read_page, unknown error\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"h_msb_read_page\00", [16 x i8] zeroinitializer }, align 32
@h_msb_read_page._entry_ptr = internal global ptr @h_msb_read_page._entry, section ".printk_index", align 4
@h_msb_read_page._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ms_block: read_page: uncorrectable error\0A\00", [52 x i8] zeroinitializer }, align 32
@h_msb_read_page._entry_ptr.70 = internal global ptr @h_msb_read_page._entry.68, section ".printk_index", align 4
@h_msb_read_page._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.4, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ms_block: read_page: correctable error\0A\00", [54 x i8] zeroinitializer }, align 32
@h_msb_read_page._entry_ptr.73 = internal global ptr @h_msb_read_page._entry.71, section ".printk_index", align 4
@h_msb_read_page._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.4, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013ms_block: read_page: INT error, but no status error bits\0A\00", [36 x i8] zeroinitializer }, align 32
@h_msb_read_page._entry_ptr.76 = internal global ptr @h_msb_read_page._entry.74, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@msb_mark_page_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ms_block: marking page %d of pba %d as bad\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msb_mark_page_bad\00", [46 x i8] zeroinitializer }, align 32
@msb_mark_page_bad._entry_ptr = internal global ptr @msb_mark_page_bad._entry, section ".printk_index", align 4
@msb_set_overwrite_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013ms_block: changing overwrite flag to %02x for sector %d, page %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msb_set_overwrite_flag\00", [41 x i8] zeroinitializer }, align 32
@msb_set_overwrite_flag._entry_ptr = internal global ptr @msb_set_overwrite_flag._entry, section ".printk_index", align 4
@h_msb_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.4, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ms_block: send_command: unknown error\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"h_msb_send_command\00", [45 x i8] zeroinitializer }, align 32
@h_msb_send_command._entry_ptr = internal global ptr @h_msb_send_command._entry, section ".printk_index", align 4
@msb_cache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&msb->cache_flush_timer)\00", [38 x i8] zeroinitializer }, align 32
@msb_cache_discard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.4, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ms_block: Discarding the write cache\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msb_cache_discard\00", [46 x i8] zeroinitializer }, align 32
@msb_cache_discard._entry_ptr = internal global ptr @msb_cache_discard._entry, section ".printk_index", align 4
@msb_ftl_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.4, i32 1365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013ms_block: initial FTL tables created. Zone count = %d, Logical block count = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msb_ftl_initialize\00", [45 x i8] zeroinitializer }, align 32
@msb_ftl_initialize._entry_ptr = internal global ptr @msb_ftl_initialize._entry, section ".printk_index", align 4
@msb_read_bad_block_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013ms_block: reading bad block of boot block at pba %d, offset %d len %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msb_read_bad_block_table\00", [39 x i8] zeroinitializer }, align 32
@msb_read_bad_block_table._entry_ptr = internal global ptr @msb_read_bad_block_table._entry, section ".printk_index", align 4
@msb_read_bad_block_table._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.4, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ms_block: bad block table extends beyond the boot block\00", [38 x i8] zeroinitializer }, align 32
@msb_read_bad_block_table._entry_ptr.92 = internal global ptr @msb_read_bad_block_table._entry.90, section ".printk_index", align 4
@msb_read_bad_block_table._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.4, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013ms_block: bad block table contains invalid block %d\0A\00", [41 x i8] zeroinitializer }, align 32
@msb_read_bad_block_table._entry_ptr.95 = internal global ptr @msb_read_bad_block_table._entry.93, section ".printk_index", align 4
@msb_read_bad_block_table._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.89, ptr @.str.4, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ms_block: duplicate bad block %d in the table\0A\00", [47 x i8] zeroinitializer }, align 32
@msb_read_bad_block_table._entry_ptr.98 = internal global ptr @msb_read_bad_block_table._entry.96, section ".printk_index", align 4
@msb_read_bad_block_table._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.89, ptr @.str.4, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ms_block: block %d is marked as factory bad\0A\00", [49 x i8] zeroinitializer }, align 32
@msb_read_bad_block_table._entry_ptr.101 = internal global ptr @msb_read_bad_block_table._entry.99, section ".printk_index", align 4
@msb_mark_block_used._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ms_block: BUG: attempt to mark already used pba %d as used\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msb_mark_block_used\00", [44 x i8] zeroinitializer }, align 32
@msb_mark_block_used._entry_ptr = internal global ptr @msb_mark_block_used._entry, section ".printk_index", align 4
@msb_validate_used_block_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.4, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ms_block: BUG: free block counts don't match the bitmap\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"msb_validate_used_block_bitmap\00", [33 x i8] zeroinitializer }, align 32
@msb_validate_used_block_bitmap._entry_ptr = internal global ptr @msb_validate_used_block_bitmap._entry, section ".printk_index", align 4
@msb_ftl_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.4, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ms_block: Start of media scanning\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msb_ftl_scan\00", [19 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr = internal global ptr @msb_ftl_scan._entry, section ".printk_index", align 4
@msb_ftl_scan._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.4, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ms_block: pba %05d -> [boot block]\0A\00", [58 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.110 = internal global ptr @msb_ftl_scan._entry.108, section ".printk_index", align 4
@msb_ftl_scan._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.4, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ms_block: pba %05d -> [factory bad]\0A\00", [57 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.113 = internal global ptr @msb_ftl_scan._entry.111, section ".printk_index", align 4
@msb_ftl_scan._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.4, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015ms_block: oob of pba %d damaged, will try to erase it\00", [40 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.116 = internal global ptr @msb_ftl_scan._entry.114, section ".printk_index", align 4
@msb_ftl_scan._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.4, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013ms_block: unknown error %d on read of oob of pba %d - aborting\00", [63 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.119 = internal global ptr @msb_ftl_scan._entry.117, section ".printk_index", align 4
@msb_ftl_scan._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.107, ptr @.str.4, i32 1422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013ms_block: pba %05d -> [BAD]\0A\00", [33 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.122 = internal global ptr @msb_ftl_scan._entry.120, section ".printk_index", align 4
@msb_ftl_scan._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.107, ptr @.str.4, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ms_block: pba %05d -> [reserved management flag %02x]\0A\00", [39 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.125 = internal global ptr @msb_ftl_scan._entry.123, section ".printk_index", align 4
@msb_ftl_scan._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.107, ptr @.str.4, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ms_block: pba %05d -> [temp table] - will erase\0A\00", [45 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.128 = internal global ptr @msb_ftl_scan._entry.126, section ".printk_index", align 4
@msb_ftl_scan._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.107, ptr @.str.4, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ms_block: pba %05d -> [free]\0A\00", [32 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.131 = internal global ptr @msb_ftl_scan._entry.129, section ".printk_index", align 4
@msb_ftl_scan._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.107, ptr @.str.4, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015ms_block: pba %05d -> [bad lba %05d] - will erase\00", [44 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.134 = internal global ptr @msb_ftl_scan._entry.132, section ".printk_index", align 4
@msb_ftl_scan._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.107, ptr @.str.4, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ms_block: pba %05d -> [lba %05d]\0A\00", [60 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.137 = internal global ptr @msb_ftl_scan._entry.135, section ".printk_index", align 4
@msb_ftl_scan._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.107, ptr @.str.4, i32 1471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015ms_block: Collision between pba %d and pba %d\00", [48 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.140 = internal global ptr @msb_ftl_scan._entry.138, section ".printk_index", align 4
@msb_ftl_scan._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.107, ptr @.str.4, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015ms_block: pba %d is marked as stable, use it\00", [49 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.143 = internal global ptr @msb_ftl_scan._entry.141, section ".printk_index", align 4
@msb_ftl_scan._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.107, ptr @.str.4, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.145 = internal global ptr @msb_ftl_scan._entry.144, section ".printk_index", align 4
@msb_ftl_scan._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.107, ptr @.str.4, i32 1488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\015ms_block: collision between blocks %d and %d, without stable flag set on both, erasing pba %d\00", [32 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.148 = internal global ptr @msb_ftl_scan._entry.146, section ".printk_index", align 4
@msb_ftl_scan._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.107, ptr @.str.4, i32 1494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ms_block: End of media scanning\0A\00", [61 x i8] zeroinitializer }, align 32
@msb_ftl_scan._entry_ptr.151 = internal global ptr @msb_ftl_scan._entry.149, section ".printk_index", align 4
@msb_read_oob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.4, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ms_block: BUG: attempt to read beyond the end of card at pba %d\00", [62 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msb_read_oob\00", [19 x i8] zeroinitializer }, align 32
@msb_read_oob._entry_ptr = internal global ptr @msb_read_oob._entry, section ".printk_index", align 4
@msb_read_oob._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.153, ptr @.str.4, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@msb_read_oob._entry_ptr.155 = internal global ptr @msb_read_oob._entry.154, section ".printk_index", align 4
@msb_erase_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.4, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ms_block: erasing pba %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msb_erase_block\00", [16 x i8] zeroinitializer }, align 32
@msb_erase_block._entry_ptr = internal global ptr @msb_erase_block._entry, section ".printk_index", align 4
@msb_erase_block._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.4, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ms_block: erase failed, marking pba %d as bad\00", [48 x i8] zeroinitializer }, align 32
@msb_erase_block._entry_ptr.160 = internal global ptr @msb_erase_block._entry.158, section ".printk_index", align 4
@msb_erase_block._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.157, ptr @.str.4, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ms_block: erase success, marking pba %d as unused\0A\00", [43 x i8] zeroinitializer }, align 32
@msb_erase_block._entry_ptr.163 = internal global ptr @msb_erase_block._entry.161, section ".printk_index", align 4
@msb_mark_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.4, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015ms_block: marking pba %d as bad\00", [62 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msb_mark_bad\00", [19 x i8] zeroinitializer }, align 32
@msb_mark_bad._entry_ptr = internal global ptr @msb_mark_bad._entry, section ".printk_index", align 4
@msb_mark_block_unused._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.4, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013ms_block: BUG: attempt to mark already unused pba %d as unused\00", [63 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msb_mark_block_unused\00", [42 x i8] zeroinitializer }, align 32
@msb_mark_block_unused._entry_ptr = internal global ptr @msb_mark_block_unused._entry, section ".printk_index", align 4
@msb_disk_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.176, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @msb_disk_lock, i64 52), ptr getelementptr (i8, ptr @msb_disk_lock, i64 52) }, ptr @msb_disk_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.177, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@msb_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @msb_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@msb_init_disk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msblk%d\00", [24 x i8] zeroinitializer }, align 32
@msb_bdops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @msb_bd_open, ptr @msb_bd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msb_bd_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@msb_init_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.4, i32 2148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ms_block: Set total disk size to %lu sectors\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msb_init_disk\00", [18 x i8] zeroinitializer }, align 32
@msb_init_disk._entry_ptr = internal global ptr @msb_init_disk._entry, section ".printk_index", align 4
@msb_init_disk.__key.171 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.172 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&msb->io_work)\00", [63 x i8] zeroinitializer }, align 32
@msb_init_disk._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.170, ptr @.str.4, i32 2162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013ms_block: Disk added\0A\00", [40 x i8] zeroinitializer }, align 32
@msb_init_disk._entry_ptr.175 = internal global ptr @msb_init_disk._entry.173, section ".printk_index", align 4
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msb_disk_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msb_disk_lock\00", [18 x i8] zeroinitializer }, align 32
@msb_queue_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.4, i32 2013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ms_block: Submit request\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msb_queue_rq\00", [19 x i8] zeroinitializer }, align 32
@msb_queue_rq._entry_ptr = internal global ptr @msb_queue_rq._entry, section ".printk_index", align 4
@msb_queue_rq._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.4, i32 2018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ms_block: Refusing requests on removed card\0A\00", [49 x i8] zeroinitializer }, align 32
@msb_queue_rq._entry_ptr.182 = internal global ptr @msb_queue_rq._entry.180, section ".printk_index", align 4
@msb_bd_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.4, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013ms_block: block device open\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msb_bd_open\00", [20 x i8] zeroinitializer }, align 32
@msb_bd_open._entry_ptr = internal global ptr @msb_bd_open._entry, section ".printk_index", align 4
@msb_disk_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.4, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ms_block: block device release\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msb_disk_release\00", [47 x i8] zeroinitializer }, align 32
@msb_disk_release._entry_ptr = internal global ptr @msb_disk_release._entry, section ".printk_index", align 4
@msb_io_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.4, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013ms_block: IO: work started\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msb_io_work\00", [20 x i8] zeroinitializer }, align 32
@msb_io_work._entry_ptr = internal global ptr @msb_io_work._entry, section ".printk_index", align 4
@msb_io_work._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.4, i32 1898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ms_block: IO: no more requests exiting\0A\00", [54 x i8] zeroinitializer }, align 32
@msb_io_work._entry_ptr.191 = internal global ptr @msb_io_work._entry.189, section ".printk_index", align 4
@msb_io_work._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.4, i32 1906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ms_block: IO: processing new request\0A\00", [56 x i8] zeroinitializer }, align 32
@msb_io_work._entry_ptr.194 = internal global ptr @msb_io_work._entry.192, section ".printk_index", align 4
@msb_io_work._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.188, ptr @.str.4, i32 1931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ms_block: IO: ending one sector of the request with error\0A\00", [35 x i8] zeroinitializer }, align 32
@msb_io_work._entry_ptr.197 = internal global ptr @msb_io_work._entry.195, section ".printk_index", align 4
@msb_io_work._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.188, ptr @.str.4, i32 1939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ms_block: IO: request still pending\0A\00", [57 x i8] zeroinitializer }, align 32
@msb_io_work._entry_ptr.200 = internal global ptr @msb_io_work._entry.198, section ".printk_index", align 4
@msb_cache_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.4, i32 1550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ms_block: Flushing the write cache of pba %d (LBA %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msb_cache_flush\00", [16 x i8] zeroinitializer }, align 32
@msb_cache_flush._entry_ptr = internal global ptr @msb_cache_flush._entry, section ".printk_index", align 4
@msb_cache_flush._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.4, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ms_block: reading non-present sector %d of cache block %d\0A\00", [35 x i8] zeroinitializer }, align 32
@msb_cache_flush._entry_ptr.205 = internal global ptr @msb_cache_flush._entry.203, section ".printk_index", align 4
@msb_cache_flush._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.202, ptr @.str.4, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013ms_block: read error on sector %d, contents probably damaged\00", [33 x i8] zeroinitializer }, align 32
@msb_cache_flush._entry_ptr.208 = internal global ptr @msb_cache_flush._entry.206, section ".printk_index", align 4
@msb_cache_flush._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.202, ptr @.str.4, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ms_block: page %d is marked as bad\0A\00", [58 x i8] zeroinitializer }, align 32
@msb_cache_flush._entry_ptr.211 = internal global ptr @msb_cache_flush._entry.209, section ".printk_index", align 4
@msb_cache_flush._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.202, ptr @.str.4, i32 1596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ms_block: marking page %d as containing damaged data\0A\00", [40 x i8] zeroinitializer }, align 32
@msb_cache_flush._entry_ptr.214 = internal global ptr @msb_cache_flush._entry.212, section ".printk_index", align 4
@msb_update_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.4, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ms_block: start of a block update at lba  %d, pba %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msb_update_block\00", [47 x i8] zeroinitializer }, align 32
@msb_update_block._entry_ptr = internal global ptr @msb_update_block._entry, section ".printk_index", align 4
@msb_update_block._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.216, ptr @.str.4, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ms_block: setting the update flag on the block\0A\00", [46 x i8] zeroinitializer }, align 32
@msb_update_block._entry_ptr.219 = internal global ptr @msb_update_block._entry.217, section ".printk_index", align 4
@msb_update_block._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.216, ptr @.str.4, i32 1142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013ms_block: block update: writing updated block to the pba %d\0A\00", [33 x i8] zeroinitializer }, align 32
@msb_update_block._entry_ptr.222 = internal global ptr @msb_update_block._entry.220, section ".printk_index", align 4
@msb_update_block._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.216, ptr @.str.4, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ms_block: block update: erasing the old block\0A\00", [47 x i8] zeroinitializer }, align 32
@msb_update_block._entry_ptr.225 = internal global ptr @msb_update_block._entry.223, section ".printk_index", align 4
@msb_update_block._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.216, ptr @.str.4, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013ms_block: block update error after %d tries,  switching to r/o mode\00", [58 x i8] zeroinitializer }, align 32
@msb_update_block._entry_ptr.228 = internal global ptr @msb_update_block._entry.226, section ".printk_index", align 4
@msb_get_free_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.230, ptr @.str.4, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\013ms_block: NO free blocks in the zone %d, to use for a write, (media is WORN out) switching to RO mode\00", [56 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msb_get_free_block\00", [45 x i8] zeroinitializer }, align 32
@msb_get_free_block._entry_ptr = internal global ptr @msb_get_free_block._entry, section ".printk_index", align 4
@msb_get_free_block._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.230, ptr @.str.4, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013ms_block: have %d choices for a free block, selected randomly: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@msb_get_free_block._entry_ptr.233 = internal global ptr @msb_get_free_block._entry.231, section ".printk_index", align 4
@msb_get_free_block._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.230, ptr @.str.4, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013ms_block: result of the free blocks scan: pba %d\0A\00", [44 x i8] zeroinitializer }, align 32
@msb_get_free_block._entry_ptr.236 = internal global ptr @msb_get_free_block._entry.234, section ".printk_index", align 4
@msb_get_free_block._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.230, ptr @.str.4, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ms_block: BUG: can't get a free block\00", [56 x i8] zeroinitializer }, align 32
@msb_get_free_block._entry_ptr.239 = internal global ptr @msb_get_free_block._entry.237, section ".printk_index", align 4
@msb_write_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.241, ptr @.str.4, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013ms_block: BUG: write: attempt to write MS_BLOCK_INVALID block\00", [32 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msb_write_block\00", [16 x i8] zeroinitializer }, align 32
@msb_write_block._entry_ptr = internal global ptr @msb_write_block._entry, section ".printk_index", align 4
@msb_write_block._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.241, ptr @.str.4, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ms_block: BUG: write: attempt to write beyond the end of device\00", [62 x i8] zeroinitializer }, align 32
@msb_write_block._entry_ptr.244 = internal global ptr @msb_write_block._entry.242, section ".printk_index", align 4
@msb_write_block._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.241, ptr @.str.4, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ms_block: BUG: write: lba zone mismatch\00", [54 x i8] zeroinitializer }, align 32
@msb_write_block._entry_ptr.247 = internal global ptr @msb_write_block._entry.245, section ".printk_index", align 4
@msb_write_block._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.241, ptr @.str.4, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ms_block: BUG: write: attempt to write to boot blocks!\00", [39 x i8] zeroinitializer }, align 32
@msb_write_block._entry_ptr.250 = internal global ptr @msb_write_block._entry.248, section ".printk_index", align 4
@msb_write_block._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.241, ptr @.str.4, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ms_block: write failed, trying to erase the pba %d\00", [43 x i8] zeroinitializer }, align 32
@msb_write_block._entry_ptr.253 = internal global ptr @msb_write_block._entry.251, section ".printk_index", align 4
@msb_cache_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.255, ptr @.str.4, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ms_block: Read of LBA %d (pba %d) sector %d from cache\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msb_cache_read\00", [17 x i8] zeroinitializer }, align 32
@msb_cache_read._entry_ptr = internal global ptr @msb_cache_read._entry, section ".printk_index", align 4
@msb_cache_read._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.255, ptr @.str.4, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ms_block: Read of LBA %d (pba %d) sector %d from device\0A\00", [37 x i8] zeroinitializer }, align 32
@msb_cache_read._entry_ptr.258 = internal global ptr @msb_cache_read._entry.256, section ".printk_index", align 4
@msb_cache_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.4, i32 1623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ms_block: first flush the cache\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msb_cache_write\00", [16 x i8] zeroinitializer }, align 32
@msb_cache_write._entry_ptr = internal global ptr @msb_cache_write._entry, section ".printk_index", align 4
@msb_cache_write._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.260, ptr @.str.4, i32 1635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ms_block: Write of LBA %d page %d to cache \0A\00", [49 x i8] zeroinitializer }, align 32
@msb_cache_write._entry_ptr.263 = internal global ptr @msb_cache_write._entry.261, section ".printk_index", align 4
@msb_do_write_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.265, ptr @.str.4, i32 1824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ms_block: Writing whole lba %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msb_do_write_request\00", [43 x i8] zeroinitializer }, align 32
@msb_do_write_request._entry_ptr = internal global ptr @msb_do_write_request._entry, section ".printk_index", align 4
@msb_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.4, i32 2054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ms_block: Stopping all msblock IO\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msb_stop\00", [23 x i8] zeroinitializer }, align 32
@msb_stop._entry_ptr = internal global ptr @msb_stop._entry, section ".printk_index", align 4
@msb_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.269, ptr @.str.4, i32 2077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ms_block: Resuming IO from msblock\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msb_start\00", [22 x i8] zeroinitializer }, align 32
@msb_start._entry_ptr = internal global ptr @msb_start._entry, section ".printk_index", align 4
@msb_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.271, ptr @.str.4, i32 2214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ms_block: Removing the disk device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msb_remove\00", [21 x i8] zeroinitializer }, align 32
@msb_remove._entry_ptr = internal global ptr @msb_remove._entry, section ".printk_index", align 4
@msb_resume.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.272 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&new_msb->q_lock\00", [47 x i8] zeroinitializer }, align 32
@msb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.274, ptr @.str.4, i32 2288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ms_block: Card was removed/replaced during suspend\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msb_resume\00", [21 x i8] zeroinitializer }, align 32
@msb_resume._entry_ptr = internal global ptr @msb_resume._entry, section ".printk_index", align 4
@.str.275 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msb_disk_idr.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@msb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.4, i32 2346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ms_block: failed to register memstick driver (error %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msb_init\00", [23 x i8] zeroinitializer }, align 32
@msb_init._entry_ptr = internal global ptr @msb_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.278 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.279 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.281 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.282 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.283 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.284 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.285 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.286 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.287 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.288 = private unnamed_addr constant [11 x i8] c"msb_driver\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2329, i32 31 }
@___asan_gen_.291 = private unnamed_addr constant [13 x i8] c"msb_disk_idr\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c"cache_flush_timeout\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 29, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 28, i32 12 }
@___asan_gen_.300 = private unnamed_addr constant [14 x i8] c"verify_writes\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 30, i32 13 }
@___asan_gen_.303 = private unnamed_addr constant [11 x i8] c"msb_id_tbl\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2309, i32 34 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2331, i32 12 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2186, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1741, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [10 x i8] c"chs_table\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1686, i32 31 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1768, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1769, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1770, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1771, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1772, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1793, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1803, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 752, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 760, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 778, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 686, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1203, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1221, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1226, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1232, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1247, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1251, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 869, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 902, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 917, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 932, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 942, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 344, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 448, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 453, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 457, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 817, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 802, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 593, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1522, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1515, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1364, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1284, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1303, i32 4 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1315, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1321, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1326, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 173, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 162, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1382, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1387, i32 4 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1393, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1402, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1408, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1422, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1430, i32 4 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1438, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1446, i32 4 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1454, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1462, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1470, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1474, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1481, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1487, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1494, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 959, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 967, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 831, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 847, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 851, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 809, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 193, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant [14 x i8] c"msb_disk_lock\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [11 x i8] c"msb_mq_ops\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2105, i32 32 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2128, i32 14 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2141, i32 32 }
@___asan_gen_.765 = private unnamed_addr constant [10 x i8] c"msb_bdops\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2098, i32 45 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2148, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2152, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2162, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1944, i32 8 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2013, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2018, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1951, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1975, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1884, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1898, i32 4 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1906, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1931, i32 4 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1939, i32 4 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1549, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1562, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1568, i32 4 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1577, i32 4 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1595, i32 4 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1124, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1127, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1141, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1152, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1159, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1089, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1096, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1105, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1108, i32 3 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1011, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1017, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1023, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1029, i32 3 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1069, i32 3 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1657, i32 3 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1667, i32 3 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1623, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1635, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1824, i32 4 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2054, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2077, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2214, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2262, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2288, i32 3 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 1943, i32 8 }
@___asan_gen_.1071 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1078 = private constant [36 x i8] c"../drivers/memstick/core/ms_block.c\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1078, i32 2346, i32 3 }
@llvm.compiler.used = appending global [382 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_cache_flush_timeout286, ptr @__UNIQUE_ID_cache_flush_timeouttype285, ptr @__UNIQUE_ID_debug288, ptr @__UNIQUE_ID_debugtype287, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__UNIQUE_ID_verify_writes290, ptr @__UNIQUE_ID_verify_writestype289, ptr @__exitcall_msb_exit, ptr @__initcall__kmod_ms_block__284_2357_msb_init6, ptr @__param_cache_flush_timeout, ptr @__param_debug, ptr @__param_verify_writes, ptr @h_msb_parallel_switch._entry, ptr @h_msb_parallel_switch._entry_ptr, ptr @h_msb_read_page._entry, ptr @h_msb_read_page._entry.68, ptr @h_msb_read_page._entry.71, ptr @h_msb_read_page._entry.74, ptr @h_msb_read_page._entry_ptr, ptr @h_msb_read_page._entry_ptr.70, ptr @h_msb_read_page._entry_ptr.73, ptr @h_msb_read_page._entry_ptr.76, ptr @h_msb_send_command._entry, ptr @h_msb_send_command._entry_ptr, ptr @msb_bd_open._entry, ptr @msb_bd_open._entry_ptr, ptr @msb_cache_discard._entry, ptr @msb_cache_discard._entry_ptr, ptr @msb_cache_flush._entry, ptr @msb_cache_flush._entry.203, ptr @msb_cache_flush._entry.206, ptr @msb_cache_flush._entry.209, ptr @msb_cache_flush._entry.212, ptr @msb_cache_flush._entry_ptr, ptr @msb_cache_flush._entry_ptr.205, ptr @msb_cache_flush._entry_ptr.208, ptr @msb_cache_flush._entry_ptr.211, ptr @msb_cache_flush._entry_ptr.214, ptr @msb_cache_read._entry, ptr @msb_cache_read._entry.256, ptr @msb_cache_read._entry_ptr, ptr @msb_cache_read._entry_ptr.258, ptr @msb_cache_write._entry, ptr @msb_cache_write._entry.261, ptr @msb_cache_write._entry_ptr, ptr @msb_cache_write._entry_ptr.263, ptr @msb_disk_release._entry, ptr @msb_disk_release._entry_ptr, ptr @msb_do_write_request._entry, ptr @msb_do_write_request._entry_ptr, ptr @msb_erase_block._entry, ptr @msb_erase_block._entry.158, ptr @msb_erase_block._entry.161, ptr @msb_erase_block._entry_ptr, ptr @msb_erase_block._entry_ptr.160, ptr @msb_erase_block._entry_ptr.163, ptr @msb_exit, ptr @msb_ftl_initialize._entry, ptr @msb_ftl_initialize._entry_ptr, ptr @msb_ftl_scan._entry, ptr @msb_ftl_scan._entry.108, ptr @msb_ftl_scan._entry.111, ptr @msb_ftl_scan._entry.114, ptr @msb_ftl_scan._entry.117, ptr @msb_ftl_scan._entry.120, ptr @msb_ftl_scan._entry.123, ptr @msb_ftl_scan._entry.126, ptr @msb_ftl_scan._entry.129, ptr @msb_ftl_scan._entry.132, ptr @msb_ftl_scan._entry.135, ptr @msb_ftl_scan._entry.138, ptr @msb_ftl_scan._entry.141, ptr @msb_ftl_scan._entry.144, ptr @msb_ftl_scan._entry.146, ptr @msb_ftl_scan._entry.149, ptr @msb_ftl_scan._entry_ptr, ptr @msb_ftl_scan._entry_ptr.110, ptr @msb_ftl_scan._entry_ptr.113, ptr @msb_ftl_scan._entry_ptr.116, ptr @msb_ftl_scan._entry_ptr.119, ptr @msb_ftl_scan._entry_ptr.122, ptr @msb_ftl_scan._entry_ptr.125, ptr @msb_ftl_scan._entry_ptr.128, ptr @msb_ftl_scan._entry_ptr.131, ptr @msb_ftl_scan._entry_ptr.134, ptr @msb_ftl_scan._entry_ptr.137, ptr @msb_ftl_scan._entry_ptr.140, ptr @msb_ftl_scan._entry_ptr.143, ptr @msb_ftl_scan._entry_ptr.145, ptr @msb_ftl_scan._entry_ptr.148, ptr @msb_ftl_scan._entry_ptr.151, ptr @msb_get_free_block._entry, ptr @msb_get_free_block._entry.231, ptr @msb_get_free_block._entry.234, ptr @msb_get_free_block._entry.237, ptr @msb_get_free_block._entry_ptr, ptr @msb_get_free_block._entry_ptr.233, ptr @msb_get_free_block._entry_ptr.236, ptr @msb_get_free_block._entry_ptr.239, ptr @msb_init._entry, ptr @msb_init._entry_ptr, ptr @msb_init_card._entry, ptr @msb_init_card._entry.11, ptr @msb_init_card._entry.14, ptr @msb_init_card._entry.17, ptr @msb_init_card._entry.20, ptr @msb_init_card._entry.23, ptr @msb_init_card._entry.5, ptr @msb_init_card._entry.8, ptr @msb_init_card._entry_ptr, ptr @msb_init_card._entry_ptr.10, ptr @msb_init_card._entry_ptr.13, ptr @msb_init_card._entry_ptr.16, ptr @msb_init_card._entry_ptr.19, ptr @msb_init_card._entry_ptr.22, ptr @msb_init_card._entry_ptr.25, ptr @msb_init_card._entry_ptr.7, ptr @msb_init_disk._entry, ptr @msb_init_disk._entry.173, ptr @msb_init_disk._entry_ptr, ptr @msb_init_disk._entry_ptr.175, ptr @msb_io_work._entry, ptr @msb_io_work._entry.189, ptr @msb_io_work._entry.192, ptr @msb_io_work._entry.195, ptr @msb_io_work._entry.198, ptr @msb_io_work._entry_ptr, ptr @msb_io_work._entry_ptr.191, ptr @msb_io_work._entry_ptr.194, ptr @msb_io_work._entry_ptr.197, ptr @msb_io_work._entry_ptr.200, ptr @msb_mark_bad._entry, ptr @msb_mark_bad._entry_ptr, ptr @msb_mark_block_unused._entry, ptr @msb_mark_block_unused._entry_ptr, ptr @msb_mark_block_used._entry, ptr @msb_mark_block_used._entry_ptr, ptr @msb_mark_page_bad._entry, ptr @msb_mark_page_bad._entry_ptr, ptr @msb_queue_rq._entry, ptr @msb_queue_rq._entry.180, ptr @msb_queue_rq._entry_ptr, ptr @msb_queue_rq._entry_ptr.182, ptr @msb_read_bad_block_table._entry, ptr @msb_read_bad_block_table._entry.90, ptr @msb_read_bad_block_table._entry.93, ptr @msb_read_bad_block_table._entry.96, ptr @msb_read_bad_block_table._entry.99, ptr @msb_read_bad_block_table._entry_ptr, ptr @msb_read_bad_block_table._entry_ptr.101, ptr @msb_read_bad_block_table._entry_ptr.92, ptr @msb_read_bad_block_table._entry_ptr.95, ptr @msb_read_bad_block_table._entry_ptr.98, ptr @msb_read_boot_blocks._entry, ptr @msb_read_boot_blocks._entry.37, ptr @msb_read_boot_blocks._entry.40, ptr @msb_read_boot_blocks._entry.43, ptr @msb_read_boot_blocks._entry.46, ptr @msb_read_boot_blocks._entry.49, ptr @msb_read_boot_blocks._entry_ptr, ptr @msb_read_boot_blocks._entry_ptr.39, ptr @msb_read_boot_blocks._entry_ptr.42, ptr @msb_read_boot_blocks._entry_ptr.45, ptr @msb_read_boot_blocks._entry_ptr.48, ptr @msb_read_boot_blocks._entry_ptr.51, ptr @msb_read_oob._entry, ptr @msb_read_oob._entry.154, ptr @msb_read_oob._entry_ptr, ptr @msb_read_oob._entry_ptr.155, ptr @msb_read_page._entry, ptr @msb_read_page._entry.54, ptr @msb_read_page._entry.57, ptr @msb_read_page._entry.60, ptr @msb_read_page._entry.63, ptr @msb_read_page._entry_ptr, ptr @msb_read_page._entry_ptr.56, ptr @msb_read_page._entry_ptr.59, ptr @msb_read_page._entry_ptr.62, ptr @msb_read_page._entry_ptr.65, ptr @msb_remove._entry, ptr @msb_remove._entry_ptr, ptr @msb_reset._entry, ptr @msb_reset._entry.28, ptr @msb_reset._entry_ptr, ptr @msb_reset._entry_ptr.30, ptr @msb_resume._entry, ptr @msb_resume._entry_ptr, ptr @msb_set_overwrite_flag._entry, ptr @msb_set_overwrite_flag._entry_ptr, ptr @msb_start._entry, ptr @msb_start._entry_ptr, ptr @msb_stop._entry, ptr @msb_stop._entry_ptr, ptr @msb_switch_to_parallel._entry, ptr @msb_switch_to_parallel._entry_ptr, ptr @msb_update_block._entry, ptr @msb_update_block._entry.217, ptr @msb_update_block._entry.220, ptr @msb_update_block._entry.223, ptr @msb_update_block._entry.226, ptr @msb_update_block._entry_ptr, ptr @msb_update_block._entry_ptr.219, ptr @msb_update_block._entry_ptr.222, ptr @msb_update_block._entry_ptr.225, ptr @msb_update_block._entry_ptr.228, ptr @msb_validate_used_block_bitmap._entry, ptr @msb_validate_used_block_bitmap._entry_ptr, ptr @msb_write_block._entry, ptr @msb_write_block._entry.242, ptr @msb_write_block._entry.245, ptr @msb_write_block._entry.248, ptr @msb_write_block._entry.251, ptr @msb_write_block._entry_ptr, ptr @msb_write_block._entry_ptr.244, ptr @msb_write_block._entry_ptr.247, ptr @msb_write_block._entry_ptr.250, ptr @msb_write_block._entry_ptr.253, ptr @msb_driver, ptr @msb_disk_idr, ptr @cache_flush_timeout, ptr @debug, ptr @verify_writes, ptr @msb_id_tbl, ptr @.str, ptr @msb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @chs_table, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @msb_cache_init.__key, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.147, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @msb_disk_lock, ptr @msb_mq_ops, ptr @msb_init_disk.__key, ptr @.str.168, ptr @msb_bdops, ptr @.str.169, ptr @.str.170, ptr @msb_init_disk.__key.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.229, ptr @.str.230, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @.str.240, ptr @.str.241, ptr @.str.243, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.254, ptr @.str.255, ptr @.str.257, ptr @.str.259, ptr @.str.260, ptr @.str.262, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @msb_resume.__key, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277], section "llvm.metadata"
@0 = internal global [264 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_driver to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_disk_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_flush_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_writes to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_id_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chs_table to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_card._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_card._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_card._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_card._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_card._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_card._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_card._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_reset._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_switch_to_parallel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h_msb_parallel_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_boot_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_boot_blocks._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_boot_blocks._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_boot_blocks._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_boot_blocks._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_boot_blocks._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_page._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_page._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_page._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_page._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h_msb_read_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h_msb_read_page._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h_msb_read_page._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h_msb_read_page._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_mark_page_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_set_overwrite_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h_msb_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_discard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_bad_block_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_bad_block_table._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_bad_block_table._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_bad_block_table._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_bad_block_table._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_mark_block_used._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_validate_used_block_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_ftl_scan._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_oob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_read_oob._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_erase_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_erase_block._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_erase_block._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_mark_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_mark_block_unused._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_disk_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_disk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_bdops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_disk.__key.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init_disk._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_queue_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_queue_rq._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_bd_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_disk_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_io_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_io_work._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_io_work._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_io_work._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_io_work._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_flush._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_flush._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_flush._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_flush._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_update_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_update_block._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_update_block._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_update_block._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_update_block._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_get_free_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_get_free_block._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_get_free_block._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_get_free_block._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_write_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_write_block._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_write_block._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_write_block._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_write_block._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_read._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_cache_write._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_do_write_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_resume.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_unregister_driver(ptr noundef nonnull @msb_driver) #13
  tail call void @idr_destroy(ptr noundef nonnull @msb_disk_idr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @memstick_register_driver(ptr noundef nonnull @msb_driver) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, i32 noundef %call) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msb_probe(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %card1 = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %card1, align 4
  %q_lock = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %q_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @msb_probe.__key, i16 noundef signext 3) #13
  %call3 = tail call fastcc i32 @msb_init_card(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @msb_disk_lock, i32 noundef 0) #13
  %call1.i = tail call i32 @idr_alloc(ptr noundef nonnull @msb_disk_idr, ptr noundef %card, i32 noundef 0, i32 noundef 256, i32 noundef 3264) #13
  %disk_id.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %disk_id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1.i, ptr %disk_id.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @msb_disk_lock) #13
  %6 = ptrtoint ptr %disk_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disk_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %if.end6.out_free_crit_edge, label %if.end.i

if.end6.out_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i:                                         ; preds = %if.end6
  %tag_set.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 5
  %call4.i = tail call i32 @blk_mq_alloc_sq_tag_set(ptr noundef %tag_set.i, ptr noundef nonnull @msb_mq_ops, i32 noundef 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.msb_init_disk.exit_crit_edge

if.end.i.msb_init_disk.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_init_disk.exit

if.end6.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set.i, ptr noundef %card, ptr noundef nonnull @msb_init_disk.__key) #13
  %disk.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %disk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i, ptr %disk.i, align 4
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %call8.i to i32
  br label %out_free_tag_set.i

if.end14.i:                                       ; preds = %if.end6.i
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %call8.i, i32 0, i32 9
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue.i, align 4
  %queue16.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 3
  %12 = ptrtoint ptr %queue16.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %queue16.i, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %11, i32 noundef 131071) #13
  %13 = ptrtoint ptr %queue16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue16.i, align 4
  tail call void @blk_queue_max_segments(ptr noundef %14, i16 noundef zeroext 32) #13
  %15 = ptrtoint ptr %queue16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue16.i, align 4
  %page_size.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 19
  %17 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %page_size.i, align 2
  %conv.i = zext i16 %18 to i32
  %mul.i = mul i32 %conv.i, 131071
  tail call void @blk_queue_max_segment_size(ptr noundef %16, i32 noundef %mul.i) #13
  %19 = ptrtoint ptr %queue16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue16.i, align 4
  %21 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %page_size.i, align 2
  %conv22.i = zext i16 %22 to i32
  tail call void @blk_queue_logical_block_size(ptr noundef %20, i32 noundef %conv22.i) #13
  %23 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %disk.i, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %disk_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %disk_id.i, align 4
  %call25.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name.i, ptr noundef nonnull @.str.168, i32 noundef %26) #13
  %27 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disk.i, align 4
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @msb_bdops, ptr %fops.i, align 8
  %30 = load ptr, ptr %disk.i, align 4
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %4, ptr %private_data.i, align 8
  %pages_in_block.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 21
  %32 = ptrtoint ptr %pages_in_block.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pages_in_block.i, align 4
  %logical_block_count.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 24
  %34 = ptrtoint ptr %logical_block_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %logical_block_count.i, align 4
  %mul28.i = mul i32 %35, %33
  %36 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %page_size.i, align 2
  %38 = lshr i16 %37, 9
  %div.i = zext i16 %38 to i32
  %mul31.i = mul i32 %mul28.i, %div.i
  %39 = load ptr, ptr %disk.i, align 4
  %conv33.i = zext i32 %mul31.i to i64
  tail call void @set_capacity(ptr noundef %39, i64 noundef %conv33.i) #13
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp34.i = icmp sgt i32 %40, 0
  br i1 %cmp34.i, label %do.end.i, label %if.end14.i.do.end42.i_crit_edge

if.end14.i.do.end42.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42.i

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %mul31.i) #16
  br label %do.end42.i

do.end42.i:                                       ; preds = %do.end.i, %if.end14.i.do.end42.i_crit_edge
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %4, align 4
  %call43.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655370, i32 noundef 1) #13
  %io_queue.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 11
  %42 = ptrtoint ptr %io_queue.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call43.i, ptr %io_queue.i, align 4
  %io_work.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 13
  tail call void @__init_work(ptr noundef %io_work.i, i32 noundef 0) #13
  %43 = ptrtoint ptr %io_work.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %io_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.172, ptr noundef nonnull @msb_init_disk.__key.171, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry48.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 13, i32 1
  %44 = ptrtoint ptr %entry48.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry48.i, ptr %entry48.i, align 4
  %prev.i.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 13, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry48.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 13, i32 2
  %46 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @msb_io_work, ptr %func.i, align 4
  %prealloc_sg.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 36
  tail call void @sg_init_table(ptr noundef %prealloc_sg.i, i32 noundef 33) #13
  %read_only.i = getelementptr inbounds %struct.msb_data, ptr %4, i32 0, i32 18
  %47 = ptrtoint ptr %read_only.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %read_only.i, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool53.not.i = icmp eq i8 %48, 0
  br i1 %tobool53.not.i, label %do.end42.i.if.end56.i_crit_edge, label %if.then54.i

do.end42.i.if.end56.i_crit_edge:                  ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

if.then54.i:                                      ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %disk.i, align 4
  tail call void @set_disk_ro(ptr noundef %50, i1 noundef zeroext true) #13
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %do.end42.i.if.end56.i_crit_edge
  tail call void @msb_start(ptr noundef %card) #13
  %dev.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %51 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %disk.i, align 4
  %call58.i = tail call i32 @device_add_disk(ptr noundef %dev.i, ptr noundef %52, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %do.body62.i, label %out_cleanup_disk.i

do.body62.i:                                      ; preds = %if.end56.i
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp63.i = icmp sgt i32 %53, 0
  br i1 %cmp63.i, label %do.end68.i, label %do.body62.i.if.then9_crit_edge

do.body62.i.if.then9_crit_edge:                   ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

do.end68.i:                                       ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #15
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #16
  br label %if.then9

out_cleanup_disk.i:                               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %disk.i, align 4
  tail call void @blk_cleanup_disk(ptr noundef %55) #13
  br label %out_free_tag_set.i

out_free_tag_set.i:                               ; preds = %out_cleanup_disk.i, %if.then11.i
  %rc.0.i = phi i32 [ %9, %if.then11.i ], [ %call58.i, %out_cleanup_disk.i ]
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set.i) #13
  br label %msb_init_disk.exit

msb_init_disk.exit:                               ; preds = %out_free_tag_set.i, %if.end.i.msb_init_disk.exit_crit_edge
  %rc.1.i = phi i32 [ %call4.i, %if.end.i.msb_init_disk.exit_crit_edge ], [ %rc.0.i, %out_free_tag_set.i ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @msb_disk_lock, i32 noundef 0) #13
  %56 = ptrtoint ptr %disk_id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %disk_id.i, align 4
  %call77.i = tail call ptr @idr_remove(ptr noundef nonnull @msb_disk_idr, i32 noundef %57) #13
  tail call void @mutex_unlock(ptr noundef nonnull @msb_disk_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.i)
  %tobool8.not = icmp eq i32 %rc.1.i, 0
  br i1 %tobool8.not, label %msb_init_disk.exit.if.then9_crit_edge, label %msb_init_disk.exit.out_free_crit_edge

msb_init_disk.exit.out_free_crit_edge:            ; preds = %msb_init_disk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

msb_init_disk.exit.if.then9_crit_edge:            ; preds = %msb_init_disk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %msb_init_disk.exit.if.then9_crit_edge, %do.end68.i, %do.body62.i.if.then9_crit_edge
  %check = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 5
  %58 = ptrtoint ptr %check to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @msb_check_card, ptr %check, align 8
  %stop = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 7
  %59 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @msb_stop, ptr %stop, align 8
  %start = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 8
  %60 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @msb_start, ptr %start, align 4
  br label %cleanup

out_free:                                         ; preds = %msb_init_disk.exit.out_free_crit_edge, %if.end6.out_free_crit_edge, %if.end.out_free_crit_edge
  %rc.0 = phi i32 [ %call3, %if.end.out_free_crit_edge ], [ %rc.1.i, %msb_init_disk.exit.out_free_crit_edge ], [ %7, %if.end6.out_free_crit_edge ]
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %driver_data.i.i, align 4
  %boot_page.i = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 15
  %62 = ptrtoint ptr %boot_page.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %boot_page.i, align 4
  tail call void @kfree(ptr noundef %63) #13
  %used_blocks_bitmap.i = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 25
  %64 = ptrtoint ptr %used_blocks_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %used_blocks_bitmap.i, align 8
  tail call void @kfree(ptr noundef %65) #13
  %lba_to_pba_table.i = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 27
  %66 = ptrtoint ptr %lba_to_pba_table.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lba_to_pba_table.i, align 8
  tail call void @kfree(ptr noundef %67) #13
  %cache.i = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 30
  %68 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cache.i, align 8
  tail call void @kfree(ptr noundef %69) #13
  %70 = ptrtoint ptr %card1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %card1, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_free ], [ 0, %if.then9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msb_remove(ptr nocapture noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_queue_stopped = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %io_queue_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %io_queue_stopped, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msb_stop(ptr noundef %card)
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %do.body.do.body8_crit_edge

do.body.do.body8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270) #16
  br label %do.body8

do.body8:                                         ; preds = %do.end, %do.body.do.body8_crit_edge
  %q_lock = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 4
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %card_dead = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %card_dead to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %card_dead, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call12) #13
  %queue = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_start_hw_queues(ptr noundef %7) #13
  %disk = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disk, align 4
  tail call void @del_gendisk(ptr noundef %9) #13
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  tail call void @blk_cleanup_queue(ptr noundef %11) #13
  %tag_set = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 5
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #13
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %queue, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @msb_disk_lock, i32 noundef 0) #13
  %boot_page.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %boot_page.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %boot_page.i, align 4
  tail call void @kfree(ptr noundef %14) #13
  %used_blocks_bitmap.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %used_blocks_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %used_blocks_bitmap.i, align 4
  tail call void @kfree(ptr noundef %16) #13
  %lba_to_pba_table.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 27
  %17 = ptrtoint ptr %lba_to_pba_table.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lba_to_pba_table.i, align 4
  tail call void @kfree(ptr noundef %18) #13
  %cache.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 30
  %19 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cache.i, align 4
  tail call void @kfree(ptr noundef %20) #13
  %card.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %card.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @msb_disk_lock) #13
  %22 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disk, align 4
  tail call fastcc void @msb_disk_release(ptr noundef %23)
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msb_suspend(ptr nocapture noundef readonly %card, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msb_stop(ptr noundef %card)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msb_resume(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1248) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body35_crit_edge, label %if.end

entry.do.body35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body35

if.end:                                           ; preds = %entry
  %card2 = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %card2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %card, ptr %card2, align 4
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %q_lock = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %q_lock, ptr noundef nonnull @.str.272, ptr noundef nonnull @msb_resume.__key, i16 noundef signext 3) #13
  %prealloc_sg = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 36
  tail call void @sg_init_table(ptr noundef %prealloc_sg, i32 noundef 33) #13
  %call4 = tail call fastcc i32 @msb_init_card(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.do.body35_crit_edge

if.end.do.body35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body35

if.end7:                                          ; preds = %if.end
  %block_size = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %block_size, align 4
  %block_size8 = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 20
  %9 = ptrtoint ptr %block_size8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %block_size8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %if.end10, label %if.end7.do.body35_crit_edge

if.end7.do.body35_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body35

if.end10:                                         ; preds = %if.end7
  %boot_page = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %boot_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %boot_page, align 4
  %boot_page11 = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %boot_page11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %boot_page11, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(512) %12, ptr noundef dereferenceable(512) %14, i32 512) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.do.body35_crit_edge

if.end10.do.body35_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body35

if.end15:                                         ; preds = %if.end10
  %logical_block_count = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %logical_block_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %logical_block_count, align 4
  %logical_block_count16 = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 24
  %17 = ptrtoint ptr %logical_block_count16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logical_block_count16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp17.not = icmp eq i32 %16, %18
  br i1 %cmp17.not, label %lor.lhs.false, label %if.end15.do.body35_crit_edge

if.end15.do.body35_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body35

lor.lhs.false:                                    ; preds = %if.end15
  %lba_to_pba_table = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 27
  %19 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lba_to_pba_table, align 4
  %lba_to_pba_table18 = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 27
  %21 = ptrtoint ptr %lba_to_pba_table18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lba_to_pba_table18, align 8
  %bcmp84 = tail call i32 @bcmp(ptr %20, ptr %22, i32 %16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp84)
  %tobool21.not = icmp eq i32 %bcmp84, 0
  br i1 %tobool21.not, label %if.end23, label %lor.lhs.false.do.body35_crit_edge

lor.lhs.false.do.body35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body35

if.end23:                                         ; preds = %lor.lhs.false
  %block_count = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %block_count, align 4
  %block_count24 = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 23
  %25 = ptrtoint ptr %block_count24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %block_count24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp25.not = icmp eq i32 %24, %26
  br i1 %cmp25.not, label %out, label %if.end23.do.body35_crit_edge

if.end23.do.body35_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body35

out:                                              ; preds = %if.end23
  %used_blocks_bitmap = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 25
  %27 = ptrtoint ptr %used_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %used_blocks_bitmap, align 4
  %used_blocks_bitmap27 = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 25
  %29 = ptrtoint ptr %used_blocks_bitmap27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %used_blocks_bitmap27, align 8
  %div = sdiv i32 %24, 8
  %bcmp85 = tail call i32 @bcmp(ptr %28, ptr %30, i32 %div) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp85)
  %tobool30.not.not = icmp eq i32 %bcmp85, 0
  br i1 %tobool30.not.not, label %if.end45.thread, label %out.do.body35_crit_edge

out.do.body35_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body35

if.end45.thread:                                  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %card_dead4792 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 14
  %31 = ptrtoint ptr %card_dead4792 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %card_dead4792, align 4
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %driver_data.i.i, align 4
  br label %if.then49

do.body35:                                        ; preds = %out.do.body35_crit_edge, %if.end23.do.body35_crit_edge, %lor.lhs.false.do.body35_crit_edge, %if.end15.do.body35_crit_edge, %if.end10.do.body35_crit_edge, %if.end7.do.body35_crit_edge, %if.end.do.body35_crit_edge, %entry.do.body35_crit_edge
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp36 = icmp sgt i32 %33, 0
  br i1 %cmp36, label %do.end40, label %do.body35.if.end45_crit_edge

do.body35.if.end45_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

do.end40:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273) #16
  br label %if.end45

if.end45:                                         ; preds = %do.end40, %do.body35.if.end45_crit_edge
  %card_dead47 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %card_dead47 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %card_dead47, align 4
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %1, ptr %driver_data.i.i, align 4
  br i1 %tobool.not, label %if.end45.if.end50_crit_edge, label %if.end45.if.then49_crit_edge

if.end45.if.then49_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then49:                                        ; preds = %if.end45.if.then49_crit_edge, %if.end45.thread
  %boot_page.i = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 15
  %36 = ptrtoint ptr %boot_page.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %boot_page.i, align 4
  tail call void @kfree(ptr noundef %37) #13
  %used_blocks_bitmap.i = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 25
  %38 = ptrtoint ptr %used_blocks_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %used_blocks_bitmap.i, align 8
  tail call void @kfree(ptr noundef %39) #13
  %lba_to_pba_table.i = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 27
  %40 = ptrtoint ptr %lba_to_pba_table.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lba_to_pba_table.i, align 8
  tail call void @kfree(ptr noundef %41) #13
  %cache.i = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 30
  %42 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cache.i, align 8
  tail call void @kfree(ptr noundef %43) #13
  %card.i = getelementptr inbounds %struct.msb_data, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %card.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end45.if.end50_crit_edge
  tail call void @msb_start(ptr noundef %card)
  %45 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host, align 4
  tail call void @mutex_unlock(ptr noundef %46) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_init_card(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  %extra.i = alloca %struct.ms_extra_data_register, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host1 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 1
  %2 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1, align 4
  %caps = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %caps, align 4
  %class = getelementptr inbounds %struct.memstick_device_id, ptr %card, i32 0, i32 3
  %5 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cond = icmp eq i8 %6, 1
  br i1 %cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read_only = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %read_only, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 45
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %state, align 4
  %call8 = tail call fastcc i32 @msb_reset(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %caps11 = getelementptr inbounds %struct.memstick_host, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %caps11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps11, align 32
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  %card1.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card1.i.i, align 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not.i.i = icmp eq i32 %14, -1
  br i1 %cmp.not.i.i, label %if.then13.if.end.i.i_crit_edge, label %do.end.i.i, !prof !524

if.then13.if.end.i.i_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then13.if.end.i.i_crit_edge
  %int_polling.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 47
  %15 = ptrtoint ptr %int_polling.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %int_polling.i.i, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state, align 4
  %exit_error.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %17 = ptrtoint ptr %exit_error.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %exit_error.i.i, align 4
  %current_mrq.i.i = getelementptr inbounds %struct.memstick_dev, ptr %12, i32 0, i32 4
  %18 = call ptr @memset(ptr %current_mrq.i.i, i32 0, i32 28)
  %next_request.i.i = getelementptr inbounds %struct.memstick_dev, ptr %12, i32 0, i32 6
  %19 = ptrtoint ptr %next_request.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @h_msb_parallel_switch, ptr %next_request.i.i, align 4
  %host.i.i = getelementptr inbounds %struct.memstick_dev, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host.i.i, align 4
  tail call void @memstick_new_req(ptr noundef %21) #13
  %mrq_complete.i.i = getelementptr inbounds %struct.memstick_dev, ptr %12, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i.i) #13
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp23.not.i.i = icmp eq i32 %23, -1
  br i1 %cmp23.not.i.i, label %if.end.i.i.msb_run_state_machine.exit.i_crit_edge, label %do.end39.i.i, !prof !524

if.end.i.i.msb_run_state_machine.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_run_state_machine.exit.i

do.end39.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %msb_run_state_machine.exit.i

msb_run_state_machine.exit.i:                     ; preds = %do.end39.i.i, %if.end.i.i.msb_run_state_machine.exit.i_crit_edge
  %24 = ptrtoint ptr %exit_error.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %exit_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %msb_run_state_machine.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #16
  %param.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 3
  %26 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %param.i, align 4
  %28 = and i8 %27, -9
  store i8 %28, ptr %param.i, align 4
  %call3.i = tail call fastcc i32 @msb_reset(ptr noundef %1, i1 noundef zeroext true) #13
  br label %if.end15

if.end.i:                                         ; preds = %msb_run_state_machine.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps, align 4
  %or.i = or i32 %30, 1
  store i32 %or.i, ptr %caps, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end.i, %do.end.i, %if.end10.if.end15_crit_edge
  %page_size = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %page_size to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 512, ptr %page_size, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #13
  %32 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra.i) #13
  %33 = getelementptr inbounds %struct.ms_extra_data_register, ptr %extra.i, i32 0, i32 1
  %boot_block_locations.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %extra.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %extra.i, align 4
  %35 = ptrtoint ptr %boot_block_locations.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %boot_block_locations.i, align 4
  %arrayidx2.i = getelementptr %struct.msb_data, ptr %1, i32 0, i32 16, i32 1
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %arrayidx2.i, align 2
  %boot_block_count.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 17
  %37 = ptrtoint ptr %boot_block_count.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %boot_block_count.i, align 4
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i = icmp sgt i32 %38, 1
  br i1 %cmp.i, label %do.end.i258, label %if.end15.do.end5.i_crit_edge

if.end15.do.end5.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5.i

do.end.i258:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #16
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i258, %if.end15.do.end5.i_crit_edge
  %boot_page.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 15
  %39 = ptrtoint ptr %boot_page.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %boot_page.i, align 4
  %tobool.not.i259 = icmp eq ptr %40, null
  br i1 %tobool.not.i259, label %if.then6.i, label %do.end5.i.if.end13.i_crit_edge

do.end5.i.if.end13.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then6.i:                                       ; preds = %do.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 1024) #17
  %tobool8.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not.i, label %msb_read_boot_blocks.exit.thread273, label %if.end10.i

msb_read_boot_blocks.exit.thread273:              ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #13
  br label %cleanup

if.end10.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %boot_page.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i.i, ptr %boot_page.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end10.i, %do.end5.i.if.end13.i_crit_edge
  %page.0.i = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %40, %do.end5.i.if.end13.i_crit_edge ]
  %block_count.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 23
  %43 = ptrtoint ptr %block_count.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 12, ptr %block_count.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end13.i
  %pba.0124.i = phi i32 [ 0, %if.end13.i ], [ %inc74.i, %for.inc.i.for.body.i_crit_edge ]
  %page.1123.i = phi ptr [ %page.0.i, %if.end13.i ], [ %page.2.i, %for.inc.i.for.body.i_crit_edge ]
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %page.1123.i, i32 noundef 512) #13
  %conv.i = trunc i32 %pba.0124.i to i16
  %call15.i = call fastcc i32 @msb_read_page(ptr noundef %1, i16 noundef zeroext %conv.i, i8 noundef zeroext 0, ptr noundef nonnull %extra.i, ptr noundef nonnull %sg.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end30.i, label %do.body18.i

do.body18.i:                                      ; preds = %for.body.i
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp19.i = icmp sgt i32 %44, 0
  br i1 %cmp19.i, label %do.body18.i.for.inc.sink.split.i_crit_edge, label %do.body18.i.for.inc.i_crit_edge

do.body18.i.for.inc.i_crit_edge:                  ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body18.i.for.inc.sink.split.i_crit_edge:       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split.i

if.end30.i:                                       ; preds = %for.body.i
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %33, align 1
  %47 = and i8 %46, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool32.not.i = icmp eq i8 %47, 0
  br i1 %tobool32.not.i, label %if.end46.i, label %do.body34.i

do.body34.i:                                      ; preds = %if.end30.i
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp35.i = icmp sgt i32 %48, 0
  br i1 %cmp35.i, label %do.body34.i.for.inc.sink.split.i_crit_edge, label %do.body34.i.for.inc.i_crit_edge

do.body34.i.for.inc.i_crit_edge:                  ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body34.i.for.inc.sink.split.i_crit_edge:       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split.i

if.end46.i:                                       ; preds = %if.end30.i
  %49 = ptrtoint ptr %page.1123.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %page.1123.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %50)
  %cmp48.not.i = icmp eq i16 %50, 1
  br i1 %cmp48.not.i, label %if.end63.i, label %do.body51.i

do.body51.i:                                      ; preds = %if.end46.i
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp52.i = icmp sgt i32 %51, 0
  br i1 %cmp52.i, label %do.body51.i.for.inc.sink.split.i_crit_edge, label %do.body51.i.for.inc.i_crit_edge

do.body51.i.for.inc.i_crit_edge:                  ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body51.i.for.inc.sink.split.i_crit_edge:       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split.i

if.end63.i:                                       ; preds = %if.end46.i
  %52 = ptrtoint ptr %boot_block_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %boot_block_count.i, align 4
  %arrayidx67.i = getelementptr %struct.msb_data, ptr %1, i32 0, i32 16, i32 %53
  %54 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i, ptr %arrayidx67.i, align 2
  %incdec.ptr.i = getelementptr %struct.ms_boot_page, ptr %page.1123.i, i32 1
  %55 = load i32, ptr %boot_block_count.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %boot_block_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp70.i = icmp eq i32 %inc.i, 2
  br i1 %cmp70.i, label %if.end63.i.do.body84.i_crit_edge, label %if.end63.i.for.inc.i_crit_edge

if.end63.i.for.inc.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end63.i.do.body84.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body84.i

for.inc.sink.split.i:                             ; preds = %do.body51.i.for.inc.sink.split.i_crit_edge, %do.body34.i.for.inc.sink.split.i_crit_edge, %do.body18.i.for.inc.sink.split.i_crit_edge
  %.str.44.sink.i = phi ptr [ @.str.38, %do.body18.i.for.inc.sink.split.i_crit_edge ], [ @.str.41, %do.body34.i.for.inc.sink.split.i_crit_edge ], [ @.str.44, %do.body51.i.for.inc.sink.split.i_crit_edge ]
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.44.sink.i, i32 noundef %pba.0124.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end63.i.for.inc.i_crit_edge, %do.body51.i.for.inc.i_crit_edge, %do.body34.i.for.inc.i_crit_edge, %do.body18.i.for.inc.i_crit_edge
  %page.2.i = phi ptr [ %page.1123.i, %do.body18.i.for.inc.i_crit_edge ], [ %page.1123.i, %do.body34.i.for.inc.i_crit_edge ], [ %page.1123.i, %do.body51.i.for.inc.i_crit_edge ], [ %incdec.ptr.i, %if.end63.i.for.inc.i_crit_edge ], [ %page.1123.i, %for.inc.sink.split.i ]
  %inc74.i = add nuw nsw i32 %pba.0124.i, 1
  %exitcond.not.i = icmp eq i32 %inc74.i, 12
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %56 = ptrtoint ptr %boot_block_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr.i = load i32, ptr %boot_block_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool76.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool76.not.i, label %msb_read_boot_blocks.exit, label %for.end.i.do.body84.i_crit_edge

for.end.i.do.body84.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body84.i

do.body84.i:                                      ; preds = %for.end.i.do.body84.i_crit_edge, %if.end63.i.do.body84.i_crit_edge
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp85.i = icmp sgt i32 %57, 1
  br i1 %cmp85.i, label %msb_read_boot_blocks.exit.thread276, label %msb_read_boot_blocks.exit.thread

msb_read_boot_blocks.exit.thread276:              ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #15
  %call92.i279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #13
  br label %if.end19

msb_read_boot_blocks.exit.thread:                 ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #13
  br label %if.end19

msb_read_boot_blocks.exit:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #13
  br label %cleanup

if.end19:                                         ; preds = %msb_read_boot_blocks.exit.thread, %msb_read_boot_blocks.exit.thread276
  %58 = ptrtoint ptr %boot_page.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %boot_page.i, align 4
  %number_of_blocks = getelementptr inbounds %struct.ms_boot_page, ptr %59, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %number_of_blocks to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %number_of_blocks, align 1
  %conv20 = zext i16 %61 to i32
  %62 = ptrtoint ptr %block_count.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv20, ptr %block_count.i, align 4
  %page_size22 = getelementptr inbounds %struct.ms_boot_page, ptr %59, i32 0, i32 2, i32 5
  %63 = ptrtoint ptr %page_size22 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %page_size22, align 1
  %65 = ptrtoint ptr %page_size to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %page_size, align 2
  %block_size = getelementptr inbounds %struct.ms_boot_page, ptr %59, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %block_size to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %block_size, align 1
  %conv25 = zext i16 %67 to i32
  %mul = shl nuw nsw i32 %conv25, 1
  %pages_in_block = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 21
  %68 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul, ptr %pages_in_block, align 4
  %conv27 = zext i16 %64 to i32
  %mul29 = mul i32 %mul, %conv27
  %block_size30 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 20
  %69 = ptrtoint ptr %block_size30 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul29, ptr %block_size30, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %64)
  %cmp33 = icmp ugt i16 %64, 4096
  br i1 %cmp33, label %do.body, label %if.end8.i.i

do.body:                                          ; preds = %if.end19
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp36 = icmp sgt i32 %70, 0
  br i1 %cmp36, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv27) #16
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end19
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul29, i32 noundef 3520) #19
  %block_buffer = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 35
  %71 = ptrtoint ptr %block_buffer to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call9.i.i, ptr %block_buffer, align 4
  %tobool50.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool50.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end52

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end52:                                         ; preds = %if.end8.i.i
  %72 = ptrtoint ptr %block_size30 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %block_size30, align 4
  %74 = ptrtoint ptr %block_count.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %block_count.i, align 4
  %mul55 = mul i32 %75, %73
  %shr = ashr i32 %mul55, 20
  %76 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end52.for.end_crit_edge [
    i32 4, label %if.end52.if.end63_crit_edge
    i32 8, label %if.end63.fold.split
    i32 16, label %if.end63.fold.split304
    i32 32, label %if.end63.fold.split305
    i32 64, label %if.end63.fold.split306
    i32 128, label %if.end63.fold.split307
  ]

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end63.fold.split:                              ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end63.fold.split304:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end63.fold.split305:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end63.fold.split306:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end63.fold.split307:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end63:                                         ; preds = %if.end63.fold.split307, %if.end63.fold.split306, %if.end63.fold.split305, %if.end63.fold.split304, %if.end63.fold.split, %if.end52.if.end63_crit_edge
  %i.0302.lcssa = phi i32 [ 0, %if.end52.if.end63_crit_edge ], [ 1, %if.end63.fold.split ], [ 2, %if.end63.fold.split304 ], [ 3, %if.end63.fold.split305 ], [ 4, %if.end63.fold.split306 ], [ 5, %if.end63.fold.split307 ]
  %cyl = getelementptr [7 x %struct.chs_entry], ptr @chs_table, i32 0, i32 %i.0302.lcssa, i32 2
  %77 = ptrtoint ptr %cyl to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %cyl, align 2
  %geometry = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 6
  %cylinders = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 6, i32 2
  %79 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %cylinders, align 2
  %head = getelementptr [7 x %struct.chs_entry], ptr @chs_table, i32 0, i32 %i.0302.lcssa, i32 3
  %80 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %head, align 4
  %82 = ptrtoint ptr %geometry to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %geometry, align 4
  %sec = getelementptr [7 x %struct.chs_entry], ptr @chs_table, i32 0, i32 %i.0302.lcssa, i32 1
  %83 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %sec, align 4
  %sectors = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 6, i32 1
  %85 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %sectors, align 1
  br label %for.end

for.end:                                          ; preds = %if.end63, %if.end52.for.end_crit_edge
  %transfer_supporting = getelementptr inbounds %struct.ms_boot_page, ptr %59, i32 0, i32 2, i32 22
  %86 = ptrtoint ptr %transfer_supporting to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %transfer_supporting, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp71 = icmp eq i8 %87, 1
  br i1 %cmp71, label %if.then73, label %for.end.if.end75_crit_edge

for.end.if.end75_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then73:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %caps, align 4
  %or = or i32 %89, 2
  store i32 %or, ptr %caps, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %for.end.if.end75_crit_edge
  %device_type = getelementptr inbounds %struct.ms_boot_page, ptr %59, i32 0, i32 2, i32 26
  %90 = ptrtoint ptr %device_type to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %device_type, align 1
  %92 = and i8 %91, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool79.not = icmp eq i8 %92, 0
  br i1 %tobool79.not, label %if.end75.do.body83_crit_edge, label %if.then80

if.end75.do.body83_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body83

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %read_only81 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 18
  %93 = ptrtoint ptr %read_only81 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %read_only81, align 4
  br label %do.body83

do.body83:                                        ; preds = %if.then80, %if.end75.do.body83_crit_edge
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp84 = icmp sgt i32 %94, 0
  br i1 %cmp84, label %do.body96, label %do.body83.do.end153_crit_edge

do.body83.do.end153_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end153

do.body96:                                        ; preds = %do.body83
  %95 = ptrtoint ptr %block_count.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %block_count.i, align 4
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %96) #16
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp97 = icmp sgt i32 %.pr, 0
  br i1 %cmp97, label %do.body109, label %do.body96.do.end153_crit_edge

do.body96.do.end153_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end153

do.body109:                                       ; preds = %do.body96
  %97 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pages_in_block, align 4
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %98) #16
  %.pr285 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr285)
  %cmp110 = icmp sgt i32 %.pr285, 0
  br i1 %cmp110, label %do.body123, label %do.body109.do.end153_crit_edge

do.body109.do.end153_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end153

do.body123:                                       ; preds = %do.body109
  %99 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %page_size, align 2
  %conv118 = zext i16 %100 to i32
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv118) #16
  %.pr287.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr287.pr)
  %cmp124 = icmp sgt i32 %.pr287.pr, 0
  br i1 %cmp124, label %do.body139, label %do.body123.do.end153_crit_edge

do.body123.do.end153_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end153

do.body139:                                       ; preds = %do.body123
  %101 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %caps, align 4
  %and132 = lshr i32 %102, 1
  %and132.lobit = and i32 %and132, 1
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %and132.lobit) #16
  %.pr289 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr289)
  %cmp140 = icmp sgt i32 %.pr289, 0
  br i1 %cmp140, label %do.end145, label %do.body139.do.end153_crit_edge

do.body139.do.end153_crit_edge:                   ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end153

do.end145:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #15
  %read_only147 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 18
  %103 = ptrtoint ptr %read_only147 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %read_only147, align 4, !range !523
  %105 = zext i8 %104 to i32
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %105) #16
  br label %do.end153

do.end153:                                        ; preds = %do.end145, %do.body139.do.end153_crit_edge, %do.body123.do.end153_crit_edge, %do.body109.do.end153_crit_edge, %do.body96.do.end153_crit_edge, %do.body83.do.end153_crit_edge
  %cache_flush_timer.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 34
  call void @init_timer_key(ptr noundef %cache_flush_timer.i, ptr noundef nonnull @msb_cache_flush_timer, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @msb_cache_init.__key) #13
  %cache.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 30
  %106 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cache.i, align 4
  %tobool.not.i261 = icmp eq ptr %107, null
  br i1 %tobool.not.i261, label %if.end8.i.i.i, label %do.end153.if.end5.i_crit_edge

do.end153.if.end5.i_crit_edge:                    ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.end8.i.i.i:                                    ; preds = %do.end153
  %108 = ptrtoint ptr %block_size30 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %block_size30, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %109, i32 noundef 3520) #19
  %110 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call9.i.i.i, ptr %cache.i, align 4
  %tobool3.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool3.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.if.end5.i_crit_edge

if.end8.i.i.i.if.end5.i_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i:                                        ; preds = %if.end8.i.i.i.if.end5.i_crit_edge, %do.end153.if.end5.i_crit_edge
  %cache_block_lba.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 32
  %111 = ptrtoint ptr %cache_block_lba.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cache_block_lba.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %112)
  %cmp.i.i267 = icmp eq i32 %112, 65535
  br i1 %cmp.i.i267, label %if.end5.i.if.end157_crit_edge, label %if.end.i.i268

if.end5.i.if.end157_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

if.end.i.i268:                                    ; preds = %if.end5.i
  %call.i.i = call i32 @del_timer_sync(ptr noundef %cache_flush_timer.i) #13
  %113 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp1.i.i = icmp sgt i32 %113, 1
  br i1 %cmp1.i.i, label %do.end.i.i269, label %if.end.i.i268.do.end6.i.i_crit_edge

if.end.i.i268.do.end6.i.i_crit_edge:              ; preds = %if.end.i.i268
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6.i.i

do.end.i.i269:                                    ; preds = %if.end.i.i268
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #16
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i269, %if.end.i.i268.do.end6.i.i_crit_edge
  %114 = ptrtoint ptr %cache_block_lba.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 65535, ptr %cache_block_lba.i.i, align 4
  %valid_cache_bitmap.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 31
  %115 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pages_in_block, align 4
  %sub.i.i.i = add i32 %116, 31
  %117 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %117, 536870908
  %118 = call ptr @memset(ptr %valid_cache_bitmap.i.i, i32 0, i32 %mul.i.i.i)
  br label %if.end157

if.end157:                                        ; preds = %do.end6.i.i, %if.end5.i.if.end157_crit_edge
  %call158 = call fastcc i32 @msb_ftl_initialize(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %if.end157.cleanup_crit_edge

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end161:                                        ; preds = %if.end157
  %call162 = call fastcc i32 @msb_read_bad_block_table(ptr noundef %1, i32 noundef 0)
  %119 = zext i32 %call162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %call162, label %do.body168 [
    i32 0, label %if.end161.if.end184_crit_edge
    i32 -12, label %if.end161.cleanup_crit_edge
  ]

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end161.if.end184_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

do.body168:                                       ; preds = %if.end161
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp169 = icmp sgt i32 %120, 0
  br i1 %cmp169, label %do.end174, label %do.body168.if.end181_crit_edge

do.body168.if.end181_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181

do.end174:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  %call176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %if.end181

if.end181:                                        ; preds = %do.end174, %do.body168.if.end181_crit_edge
  %call180 = call fastcc i32 @msb_read_bad_block_table(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool182.not = icmp eq i32 %call180, 0
  br i1 %tobool182.not, label %if.end181.if.end184_crit_edge, label %if.end181.cleanup_crit_edge

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end181.if.end184_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

if.end184:                                        ; preds = %if.end181.if.end184_crit_edge, %if.end161.if.end184_crit_edge
  %call185 = call fastcc i32 @msb_ftl_scan(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end184.cleanup_crit_edge, label %do.end190

if.end184.cleanup_crit_edge:                      ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end190:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #15
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end190, %if.end184.cleanup_crit_edge, %if.end181.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %if.end157.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %msb_read_boot_blocks.exit, %msb_read_boot_blocks.exit.thread273, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call185, %do.end190 ], [ %call8, %if.end.cleanup_crit_edge ], [ -5, %msb_read_boot_blocks.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %call158, %if.end157.cleanup_crit_edge ], [ %call180, %if.end181.cleanup_crit_edge ], [ 0, %if.end184.cleanup_crit_edge ], [ -5, %msb_read_boot_blocks.exit.thread273 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ %call162, %if.end161.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msb_check_card(ptr nocapture noundef readonly %card) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %card_dead = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %card_dead to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %card_dead, align 4, !range !523
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msb_stop(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %queue = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_stop_hw_queues(ptr noundef %4) #13
  %q_lock = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %io_queue_stopped = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %io_queue_stopped to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %io_queue_stopped, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call10) #13
  %cache_flush_timer = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 34
  %call16 = tail call i32 @del_timer_sync(ptr noundef %cache_flush_timer) #13
  %io_queue = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %io_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_queue, align 4
  tail call void @flush_workqueue(ptr noundef %7) #13
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %req = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end4.if.end34_crit_edge, label %if.then31

do.end4.if.end34_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then31:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @blk_mq_requeue_request(ptr noundef nonnull %9, i1 noundef zeroext false) #13
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %req, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %do.end4.if.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call26) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msb_start(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %reg_addr.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %3 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 67372036, ptr %reg_addr.i, align 4
  %4 = ptrtoint ptr %addr_valid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %addr_valid.i, align 4
  %q_lock = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %io_queue_stopped = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %io_queue_stopped to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %io_queue_stopped, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end4.if.then17_crit_edge, label %lor.lhs.false

do.end4.if.then17_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

lor.lhs.false:                                    ; preds = %do.end4
  %card_dead = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %card_dead to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %card_dead, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not = icmp eq i8 %8, 0
  br i1 %tobool15.not, label %if.end19, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %do.end4.if.then17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call10) #13
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call10) #13
  %need_flush_cache = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %need_flush_cache to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %need_flush_cache, align 4
  %10 = ptrtoint ptr %io_queue_stopped to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %io_queue_stopped, align 4
  %queue = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_start_hw_queues(ptr noundef %12) #13
  %io_queue = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %io_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_queue, align 4
  %io_work = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 13
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %io_work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_reset(ptr nocapture noundef %msb, i1 noundef zeroext %full) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3
  %card2 = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 1
  %reg_addr.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 37
  %addr_valid.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 38
  %state.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 45
  %int_polling.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 47
  %exit_error.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 46
  br label %tailrecurse

tailrecurse:                                      ; preds = %do.end.i67, %entry
  %full.tr = phi i1 [ %full, %entry ], [ true, %do.end.i67 ]
  %ret.known.tr = phi i1 [ false, %entry ], [ true, %do.end.i67 ]
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %param, align 4
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %3 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card2, align 4
  %host3 = getelementptr inbounds %struct.memstick_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host3, align 4
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %param, align 4
  br i1 %full.tr, label %if.then, label %tailrecurse.if.end27_crit_edge

tailrecurse.if.end27_crit_edge:                   ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then:                                          ; preds = %tailrecurse
  %set_param = getelementptr inbounds %struct.memstick_host, ptr %6, i32 0, i32 9
  %8 = ptrtoint ptr %set_param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_param, align 64
  %call = tail call i32 %9(ptr noundef %6, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67372036, ptr %reg_addr.i, align 4
  %11 = ptrtoint ptr %addr_valid.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %addr_valid.i, align 4
  %12 = ptrtoint ptr %set_param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_param, align 64
  %call11 = tail call i32 %13(ptr noundef %6, i32 noundef 1, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end14:                                         ; preds = %if.end
  %14 = ptrtoint ptr %set_param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_param, align 64
  %call16 = tail call i32 %15(ptr noundef %6, i32 noundef 2, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.if.end27_crit_edge, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.body:                                          ; preds = %if.end14.do.body_crit_edge, %if.end.do.body_crit_edge, %if.then.do.body_crit_edge
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %do.end, label %do.body.do.end25_crit_edge

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  br label %do.end25

do.end25:                                         ; preds = %do.end, %do.body.do.end25_crit_edge
  %read_only = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 18
  %17 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %read_only, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end14.if.end27_crit_edge, %tailrecurse.if.end27_crit_edge
  %18 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card2, align 4
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.not.i = icmp eq i32 %21, -1
  br i1 %cmp.not.i, label %if.end27.if.end.i_crit_edge, label %do.end.i, !prof !524

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end27.if.end.i_crit_edge
  %22 = ptrtoint ptr %int_polling.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %int_polling.i, align 4
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state.i, align 4
  %24 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %exit_error.i, align 4
  %current_mrq.i = getelementptr inbounds %struct.memstick_dev, ptr %19, i32 0, i32 4
  %25 = call ptr @memset(ptr %current_mrq.i, i32 0, i32 28)
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %19, i32 0, i32 6
  %26 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @h_msb_reset, ptr %next_request.i, align 4
  %host.i = getelementptr inbounds %struct.memstick_dev, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host.i, align 4
  tail call void @memstick_new_req(ptr noundef %28) #13
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %19, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp23.not.i = icmp eq i32 %30, -1
  br i1 %cmp23.not.i, label %if.end.i.msb_run_state_machine.exit_crit_edge, label %do.end39.i, !prof !524

if.end.i.msb_run_state_machine.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_run_state_machine.exit

do.end39.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %msb_run_state_machine.exit

msb_run_state_machine.exit:                       ; preds = %do.end39.i, %if.end.i.msb_run_state_machine.exit_crit_edge
  %31 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %exit_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool29.not = icmp eq i32 %32, 0
  br i1 %tobool29.not, label %if.end44, label %do.body31

do.body31:                                        ; preds = %msb_run_state_machine.exit
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp32 = icmp sgt i32 %33, 0
  br i1 %cmp32, label %do.end37, label %do.body31.do.end42_crit_edge

do.body31.do.end42_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  br label %do.end42

do.end42:                                         ; preds = %do.end37, %do.body31.do.end42_crit_edge
  %read_only43 = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 18
  %34 = ptrtoint ptr %read_only43 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %read_only43, align 4
  br label %cleanup

if.end44:                                         ; preds = %msb_run_state_machine.exit
  br i1 %tobool.not, label %if.end44.cleanup_crit_edge, label %if.then46

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  %35 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card2, align 4
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.not.i71 = icmp eq i32 %38, -1
  br i1 %cmp.not.i71, label %if.then46.if.end.i80_crit_edge, label %do.end.i72, !prof !524

if.then46.if.end.i80_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i80

do.end.i72:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i80

if.end.i80:                                       ; preds = %do.end.i72, %if.then46.if.end.i80_crit_edge
  %39 = ptrtoint ptr %int_polling.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %int_polling.i, align 4
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %state.i, align 4
  %41 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %exit_error.i, align 4
  %current_mrq.i75 = getelementptr inbounds %struct.memstick_dev, ptr %36, i32 0, i32 4
  %42 = call ptr @memset(ptr %current_mrq.i75, i32 0, i32 28)
  %next_request.i76 = getelementptr inbounds %struct.memstick_dev, ptr %36, i32 0, i32 6
  %43 = ptrtoint ptr %next_request.i76 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @h_msb_parallel_switch, ptr %next_request.i76, align 4
  %host.i77 = getelementptr inbounds %struct.memstick_dev, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %host.i77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %host.i77, align 4
  tail call void @memstick_new_req(ptr noundef %45) #13
  %mrq_complete.i78 = getelementptr inbounds %struct.memstick_dev, ptr %36, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i78) #13
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp23.not.i79 = icmp eq i32 %47, -1
  br i1 %cmp23.not.i79, label %if.end.i80.msb_run_state_machine.exit82_crit_edge, label %do.end39.i81, !prof !524

if.end.i80.msb_run_state_machine.exit82_crit_edge: ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_run_state_machine.exit82

do.end39.i81:                                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %msb_run_state_machine.exit82

msb_run_state_machine.exit82:                     ; preds = %do.end39.i81, %if.end.i80.msb_run_state_machine.exit82_crit_edge
  %48 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %exit_error.i, align 4
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.end.i68, label %do.end.i67

do.end.i67:                                       ; preds = %msb_run_state_machine.exit82
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #16
  %50 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %param, align 4
  %52 = and i8 %51, -9
  store i8 %52, ptr %param, align 4
  br label %tailrecurse

if.end.i68:                                       ; preds = %msb_run_state_machine.exit82
  call void @__sanitizer_cov_trace_pc() #15
  %caps.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 9
  %53 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %caps.i, align 4
  %or.i = or i32 %54, 1
  store i32 %or.i, ptr %caps.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i68, %if.end44.cleanup_crit_edge, %do.end42, %do.end25
  %retval.0 = phi i32 [ -14, %do.end25 ], [ -19, %do.end42 ], [ 0, %if.end.i68 ], [ 0, %if.end44.cleanup_crit_edge ]
  %current.ret.tr83 = select i1 %ret.known.tr, i32 0, i32 %retval.0
  ret i32 %current.ret.tr83
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_ftl_initialize(ptr nocapture noundef %msb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ftl_initialized = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 29
  %0 = ptrtoint ptr %ftl_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ftl_initialized, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %block_count = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 23
  %2 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_count, align 4
  %div = sdiv i32 %3, 512
  %zone_count = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 22
  %4 = ptrtoint ptr %zone_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %zone_count, align 4
  %mul = mul nsw i32 %div, 496
  %sub = add nsw i32 %mul, -2
  %logical_block_count = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 24
  %5 = ptrtoint ptr %logical_block_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %logical_block_count, align 4
  %div3 = sdiv i32 %3, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %div3, i32 noundef 3520) #19
  %used_blocks_bitmap = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 25
  %6 = ptrtoint ptr %used_blocks_bitmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %used_blocks_bitmap, align 4
  %7 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %block_count, align 4
  %div5 = sdiv i32 %8, 8
  %call9.i.i85 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %div5, i32 noundef 3520) #19
  %erased_blocks_bitmap = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 26
  %9 = ptrtoint ptr %erased_blocks_bitmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i85, ptr %erased_blocks_bitmap, align 4
  %10 = ptrtoint ptr %logical_block_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logical_block_count, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 2) #13
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !525

kmalloc_array.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %lba_to_pba_table117 = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 27
  %14 = ptrtoint ptr %lba_to_pba_table117 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %lba_to_pba_table117, align 4
  %15 = ptrtoint ptr %used_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %used_blocks_bitmap, align 4
  br label %if.then16

if.end7.i:                                        ; preds = %if.end
  %17 = extractvalue { i32, i1 } %12, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #19
  %lba_to_pba_table = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 27
  %18 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i, ptr %lba_to_pba_table, align 4
  %19 = ptrtoint ptr %used_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %used_blocks_bitmap, align 4
  %tobool10.not = icmp eq ptr %20, null
  %tobool12.not = icmp eq ptr %call8.i, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end7.i.if.then16_crit_edge, label %lor.lhs.false13

if.end7.i.if.then16_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

lor.lhs.false13:                                  ; preds = %if.end7.i
  %21 = ptrtoint ptr %erased_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %erased_blocks_bitmap, align 4
  %tobool15.not = icmp eq ptr %22, null
  br i1 %tobool15.not, label %lor.lhs.false13.if.then16_crit_edge, label %for.cond.preheader

lor.lhs.false13.if.then16_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

for.cond.preheader:                               ; preds = %lor.lhs.false13
  %23 = ptrtoint ptr %zone_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %zone_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp123 = icmp sgt i32 %24, 0
  br i1 %cmp123, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then16:                                        ; preds = %lor.lhs.false13.if.then16_crit_edge, %if.end7.i.if.then16_crit_edge, %kmalloc_array.exit.thread
  %25 = phi ptr [ %16, %kmalloc_array.exit.thread ], [ %20, %lor.lhs.false13.if.then16_crit_edge ], [ %20, %if.end7.i.if.then16_crit_edge ]
  %lba_to_pba_table121 = phi ptr [ %lba_to_pba_table117, %kmalloc_array.exit.thread ], [ %lba_to_pba_table, %lor.lhs.false13.if.then16_crit_edge ], [ %lba_to_pba_table, %if.end7.i.if.then16_crit_edge ]
  tail call void @kfree(ptr noundef %25) #13
  %26 = ptrtoint ptr %lba_to_pba_table121 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lba_to_pba_table121, align 4
  tail call void @kfree(ptr noundef %27) #13
  %28 = ptrtoint ptr %erased_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %erased_blocks_bitmap, align 4
  tail call void @kfree(ptr noundef %29) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0124 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msb_data, ptr %msb, i32 0, i32 28, i32 %i.0124
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 512, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0124, 1
  %31 = ptrtoint ptr %zone_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %zone_count, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %33 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lba_to_pba_table, align 4
  %35 = ptrtoint ptr %logical_block_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %logical_block_count, align 4
  %mul24 = shl i32 %36, 1
  %37 = call ptr @memset(ptr %34, i32 255, i32 %mul24)
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp25 = icmp sgt i32 %38, 0
  br i1 %cmp25, label %do.end, label %for.end.do.end33_crit_edge

for.end.do.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %zone_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %zone_count, align 4
  %41 = ptrtoint ptr %logical_block_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %logical_block_count, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %40, i32 noundef %42) #16
  br label %do.end33

do.end33:                                         ; preds = %do.end, %for.end.do.end33_crit_edge
  %43 = ptrtoint ptr %ftl_initialized to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %ftl_initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end33 ], [ -12, %if.then16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_read_bad_block_table(ptr nocapture noundef %msb, i32 noundef %block_nr) unnamed_addr #2 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #13
  %arrayidx8 = getelementptr %struct.msb_data, ptr %msb, i32 0, i32 16, i32 %block_nr
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx8, align 2
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %cmp11 = icmp eq i16 %2, -1
  br i1 %cmp11, label %entry.cleanup123_crit_edge, label %if.end14

entry.cleanup123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup123

if.end14:                                         ; preds = %entry
  %boot_page = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 15
  %3 = ptrtoint ptr %boot_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %boot_page, align 4
  %entry15 = getelementptr %struct.ms_boot_page, ptr %4, i32 %block_nr, i32 1
  %data_size16 = getelementptr inbounds %struct.ms_system_item, ptr %entry15, i32 0, i32 1
  %5 = ptrtoint ptr %data_size16 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %data_size16, align 1
  %7 = ptrtoint ptr %entry15 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %entry15, align 1
  %add = add i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool19.not = icmp eq i32 %6, 0
  br i1 %tobool19.not, label %if.end14.cleanup123_crit_edge, label %if.end21

if.end14.cleanup123_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup123

if.end21:                                         ; preds = %if.end14
  %page_size = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 19
  %9 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %page_size, align 2
  %conv22 = zext i16 %10 to i32
  %add.frozen = freeze i32 %add
  %conv22.frozen = freeze i32 %conv22
  %div = sdiv i32 %add.frozen, %conv22.frozen
  %11 = mul i32 %div, %conv22.frozen
  %rem.decomposed = sub i32 %add.frozen, %11
  %add25 = add i32 %6, -1
  %add28 = add i32 %add25, %conv22
  %sub = add i32 %add28, %rem.decomposed
  %12 = srem i32 %sub, %conv22
  %mul = sub i32 %sub, %12
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp35 = icmp sgt i32 %13, 0
  br i1 %cmp35, label %do.end40, label %if.end21.if.end8.i.i_crit_edge

if.end21.if.end8.i.i_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

do.end40:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv, i32 noundef %add, i32 noundef %6) #16
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end40, %if.end21.if.end8.i.i_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #19
  %tobool46.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool46.not, label %if.end8.i.i.cleanup123_crit_edge, label %if.end48

if.end8.i.i.cleanup123_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup123

if.end48:                                         ; preds = %if.end8.i.i
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef nonnull %call9.i.i, i32 noundef %mul) #13
  %pages_in_block = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 21
  br label %while.cond

while.cond:                                       ; preds = %if.end55.while.cond_crit_edge, %if.end48
  %page.0 = phi i32 [ %div, %if.end48 ], [ %inc, %if.end55.while.cond_crit_edge ]
  %offset.0 = phi i32 [ 0, %if.end48 ], [ %add58, %if.end55.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %mul)
  %cmp49 = icmp slt i32 %offset.0, %mul
  br i1 %cmp49, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond
  %conv51 = trunc i32 %page.0 to i8
  %call52 = call fastcc i32 @msb_read_page(ptr noundef %msb, i16 noundef zeroext %2, i8 noundef zeroext %conv51, ptr noundef null, ptr noundef nonnull %sg, i32 noundef %offset.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end55:                                         ; preds = %while.body
  %inc = add i32 %page.0, 1
  %14 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %page_size, align 2
  %conv57 = zext i16 %15 to i32
  %add58 = add i32 %offset.0, %conv57
  %16 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pages_in_block, align 4
  %cmp59 = icmp eq i32 %inc, %17
  br i1 %cmp59, label %do.end64, label %if.end55.while.cond_crit_edge

if.end55.while.cond_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #16
  br label %while.end

while.end:                                        ; preds = %do.end64, %while.cond.while.end_crit_edge
  %div68176 = lshr i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %div68176)
  %cmp69183 = icmp ult i32 %rem.decomposed, %div68176
  br i1 %cmp69183, label %for.body.lr.ph, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %while.end
  %block_count = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 23
  %used_blocks_bitmap = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0184 = phi i32 [ %rem.decomposed, %for.body.lr.ph ], [ %inc122, %cleanup.for.body_crit_edge ]
  %arrayidx71 = getelementptr i16, ptr %call9.i.i, i32 %i.0184
  %18 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx71, align 2
  %conv72 = zext i16 %19 to i32
  %20 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %block_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv72)
  %cmp73.not = icmp sgt i32 %21, %conv72
  br i1 %cmp73.not, label %if.end89, label %do.body76

do.body76:                                        ; preds = %for.body
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp77 = icmp sgt i32 %22, 0
  br i1 %cmp77, label %do.end82, label %do.body76.cleanup_crit_edge

do.body76.cleanup_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #15
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv72) #16
  br label %cleanup

if.end89:                                         ; preds = %for.body
  %23 = ptrtoint ptr %used_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %used_blocks_bitmap, align 4
  %div3.i = lshr i32 %conv72, 5
  %arrayidx.i = getelementptr i32, ptr %24, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv72, 31
  %27 = shl nuw i32 1, %and.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool92.not = icmp eq i32 %28, 0
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp109 = icmp sgt i32 %29, 0
  br i1 %tobool92.not, label %do.body108, label %do.body94

do.body94:                                        ; preds = %if.end89
  br i1 %cmp109, label %do.end100, label %do.body94.cleanup_crit_edge

do.body94.cleanup_crit_edge:                      ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end100:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #15
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %conv72) #16
  br label %cleanup

do.body108:                                       ; preds = %if.end89
  br i1 %cmp109, label %do.end114, label %do.body108.do.end120_crit_edge

do.body108.do.end120_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end120

do.end114:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #15
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %conv72) #16
  br label %do.end120

do.end120:                                        ; preds = %do.end114, %do.body108.do.end120_crit_edge
  call fastcc void @msb_mark_block_used(ptr noundef %msb, i32 noundef %conv72)
  br label %cleanup

cleanup:                                          ; preds = %do.end120, %do.end100, %do.body94.cleanup_crit_edge, %do.end82, %do.body76.cleanup_crit_edge
  %inc122 = add nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc122, %div68176
  br i1 %exitcond.not, label %cleanup.out_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %while.end.out_crit_edge, %while.body.out_crit_edge
  %error.2 = phi i32 [ 0, %while.end.out_crit_edge ], [ 0, %cleanup.out_crit_edge ], [ %call52, %while.body.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup123

cleanup123:                                       ; preds = %out, %if.end8.i.i.cleanup123_crit_edge, %if.end14.cleanup123_crit_edge, %entry.cleanup123_crit_edge
  %retval.0 = phi i32 [ %error.2, %out ], [ -22, %entry.cleanup123_crit_edge ], [ 0, %if.end14.cleanup123_crit_edge ], [ -12, %if.end8.i.i.cleanup123_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_ftl_scan(ptr noundef %msb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %block_count = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 23
  %0 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_count, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #19
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %3 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %block_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8374 = icmp sgt i32 %4, 0
  br i1 %cmp8374, label %for.body.lr.ph, label %do.end6.do.body248_crit_edge

do.end6.do.body248_crit_edge:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body248

for.body.lr.ph:                                   ; preds = %do.end6
  %boot_block_locations = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 16
  %arrayidx16 = getelementptr %struct.msb_data, ptr %msb, i32 0, i32 16, i32 1
  %used_blocks_bitmap = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 25
  %block_address.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 2
  %page_address.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 4
  %cp.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 3
  %card1.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 1
  %state.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 45
  %int_polling.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 47
  %exit_error.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 46
  %extra_data.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 4
  %lba_to_pba_table = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi i32 [ %4, %for.body.lr.ph ], [ %65, %for.inc.for.body_crit_edge ]
  %conv378 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %pba.0375 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %boot_block_locations to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %boot_block_locations, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %pba.0375, i16 %7)
  %cmp12 = icmp eq i16 %pba.0375, %7
  br i1 %cmp12, label %for.body.do.body21_crit_edge, label %lor.lhs.false

for.body.do.body21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

lor.lhs.false:                                    ; preds = %for.body
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx16, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %pba.0375, i16 %9)
  %cmp18 = icmp eq i16 %pba.0375, %9
  br i1 %cmp18, label %lor.lhs.false.do.body21_crit_edge, label %if.end35

lor.lhs.false.do.body21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

do.body21:                                        ; preds = %lor.lhs.false.do.body21_crit_edge, %for.body.do.body21_crit_edge
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp22 = icmp sgt i32 %10, 1
  br i1 %cmp22, label %do.end27, label %do.body21.do.end33_crit_edge

do.body21.do.end33_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %conv378) #16
  br label %do.end33

do.end33:                                         ; preds = %do.end27, %do.body21.do.end33_crit_edge
  tail call fastcc void @msb_mark_block_used(ptr noundef %msb, i32 noundef %conv378)
  br label %for.inc

if.end35:                                         ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %used_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %used_blocks_bitmap, align 4
  %div3.i = lshr i32 %conv378, 5
  %arrayidx.i = getelementptr i32, ptr %12, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv378, 31
  %15 = shl nuw i32 1, %and.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool38.not = icmp eq i32 %16, 0
  br i1 %tobool38.not, label %if.end53, label %do.body40

do.body40:                                        ; preds = %if.end35
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp41 = icmp sgt i32 %17, 1
  br i1 %cmp41, label %do.end46, label %do.body40.for.inc_crit_edge

do.body40.for.inc_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %conv378) #16
  br label %for.inc

if.end53:                                         ; preds = %if.end35
  %18 = ptrtoint ptr %block_address.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %pba.0375, ptr %block_address.i, align 2
  %19 = ptrtoint ptr %page_address.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %page_address.i, align 1
  %20 = ptrtoint ptr %cp.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 64, ptr %cp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv378)
  %cmp.i = icmp slt i32 %5, %conv378
  br i1 %cmp.i, label %msb_read_oob.exit.thread, label %if.end21.i

msb_read_oob.exit.thread:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %conv378) #16
  br label %do.end70

if.end21.i:                                       ; preds = %if.end53
  %21 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card1.i.i, align 4
  %23 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.not.i.i = icmp eq i32 %24, -1
  br i1 %cmp.not.i.i, label %if.end21.i.if.end.i.i348_crit_edge, label %do.end.i.i, !prof !524

if.end21.i.if.end.i.i348_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i348

do.end.i.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i348

if.end.i.i348:                                    ; preds = %do.end.i.i, %if.end21.i.if.end.i.i348_crit_edge
  %25 = ptrtoint ptr %int_polling.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %int_polling.i.i, align 4
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %state.i.i, align 4
  %27 = ptrtoint ptr %exit_error.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %exit_error.i.i, align 4
  %current_mrq.i.i = getelementptr inbounds %struct.memstick_dev, ptr %22, i32 0, i32 4
  %28 = call ptr @memset(ptr %current_mrq.i.i, i32 0, i32 28)
  %next_request.i.i = getelementptr inbounds %struct.memstick_dev, ptr %22, i32 0, i32 6
  %29 = ptrtoint ptr %next_request.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @h_msb_read_page, ptr %next_request.i.i, align 4
  %host.i.i = getelementptr inbounds %struct.memstick_dev, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host.i.i, align 4
  tail call void @memstick_new_req(ptr noundef %31) #13
  %mrq_complete.i.i = getelementptr inbounds %struct.memstick_dev, ptr %22, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i.i) #13
  %32 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp23.not.i.i = icmp eq i32 %33, -1
  br i1 %cmp23.not.i.i, label %if.end.i.i348.msb_run_state_machine.exit.i_crit_edge, label %do.end39.i.i, !prof !524

if.end.i.i348.msb_run_state_machine.exit.i_crit_edge: ; preds = %if.end.i.i348
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_run_state_machine.exit.i

do.end39.i.i:                                     ; preds = %if.end.i.i348
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %msb_run_state_machine.exit.i

msb_run_state_machine.exit.i:                     ; preds = %do.end39.i.i, %if.end.i.i348.msb_run_state_machine.exit.i_crit_edge
  %34 = ptrtoint ptr %exit_error.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %exit_error.i.i, align 4
  %36 = ptrtoint ptr %extra_data.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %extra_data.i, align 2
  %extra.sroa.0.0.extract.shift = lshr i32 %37, 24
  %extra.sroa.0.0.extract.trunc = trunc i32 %extra.sroa.0.0.extract.shift to i8
  %extra.sroa.6.0.extract.shift = lshr i32 %37, 16
  %extra.sroa.8.0.extract.trunc = trunc i32 %37 to i16
  %38 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.279)
  switch i32 %35, label %msb_run_state_machine.exit.i.do.end70_crit_edge [
    i32 -117, label %msb_read_oob.exit.thread360
    i32 -74, label %do.end60
    i32 0, label %msb_run_state_machine.exit.i.if.end75_crit_edge
  ]

msb_run_state_machine.exit.i.if.end75_crit_edge:  ; preds = %msb_run_state_machine.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

msb_run_state_machine.exit.i.do.end70_crit_edge:  ; preds = %msb_run_state_machine.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

msb_read_oob.exit.thread360:                      ; preds = %msb_run_state_machine.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv378, i32 noundef 0) #16
  br label %if.end75

do.end60:                                         ; preds = %msb_run_state_machine.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %conv378) #16
  tail call fastcc void @msb_mark_block_used(ptr noundef %msb, i32 noundef %conv378)
  %call65 = tail call fastcc i32 @msb_erase_block(ptr noundef %msb, i16 noundef zeroext %pba.0375)
  br label %for.inc

do.end70:                                         ; preds = %msb_run_state_machine.exit.i.do.end70_crit_edge, %msb_read_oob.exit.thread
  %retval.0.i359 = phi i32 [ -22, %msb_read_oob.exit.thread ], [ %35, %msb_run_state_machine.exit.i.do.end70_crit_edge ]
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %retval.0.i359, i32 noundef %conv378) #16
  br label %cleanup.sink.split

if.end75:                                         ; preds = %msb_read_oob.exit.thread360, %msb_run_state_machine.exit.i.if.end75_crit_edge
  %arrayidx78 = getelementptr i8, ptr %call9.i.i, i32 %conv378
  %39 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %extra.sroa.0.0.extract.trunc, ptr %arrayidx78, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %tobool80.not = icmp sgt i32 %37, -1
  br i1 %tobool80.not, label %do.body82, label %if.end96

do.body82:                                        ; preds = %if.end75
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp83 = icmp sgt i32 %40, 0
  br i1 %cmp83, label %do.end88, label %do.body82.do.end94_crit_edge

do.body82.do.end94_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end94

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #15
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %conv378) #16
  br label %do.end94

do.end94:                                         ; preds = %do.end88, %do.body82.do.end94_crit_edge
  tail call fastcc void @msb_mark_block_used(ptr noundef %msb, i32 noundef %conv378)
  br label %for.inc

if.end96:                                         ; preds = %if.end75
  %conv97 = and i32 %extra.sroa.6.0.extract.shift, 255
  %41 = and i32 %37, 3407872
  call void @__sanitizer_cov_trace_const_cmp4(i32 3407872, i32 %41)
  %cmp99.not = icmp eq i32 %41, 3407872
  br i1 %cmp99.not, label %if.end117, label %do.body102

do.body102:                                       ; preds = %if.end96
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp103 = icmp sgt i32 %42, 0
  br i1 %cmp103, label %do.end108, label %do.body102.do.end115_crit_edge

do.body102.do.end115_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end115

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #15
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %conv378, i32 noundef %conv97) #16
  br label %do.end115

do.end115:                                        ; preds = %do.end108, %do.body102.do.end115_crit_edge
  tail call fastcc void @msb_mark_block_used(ptr noundef %msb, i32 noundef %conv378)
  br label %for.inc

if.end117:                                        ; preds = %if.end96
  %43 = and i32 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool120.not = icmp eq i32 %43, 0
  br i1 %tobool120.not, label %do.body122, label %if.end137

do.body122:                                       ; preds = %if.end117
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp123 = icmp sgt i32 %44, 0
  br i1 %cmp123, label %do.end128, label %do.body122.do.end134_crit_edge

do.body122.do.end134_crit_edge:                   ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end134

do.end128:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #15
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %conv378) #16
  br label %do.end134

do.end134:                                        ; preds = %do.end128, %do.body122.do.end134_crit_edge
  tail call fastcc void @msb_mark_block_used(ptr noundef %msb, i32 noundef %conv378)
  %call136 = tail call fastcc i32 @msb_erase_block(ptr noundef %msb, i16 noundef zeroext %pba.0375)
  br label %for.inc

if.end137:                                        ; preds = %if.end117
  %conv138 = and i32 %37, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %extra.sroa.8.0.extract.trunc)
  %cmp139 = icmp eq i16 %extra.sroa.8.0.extract.trunc, -1
  br i1 %cmp139, label %do.body142, label %if.end155

do.body142:                                       ; preds = %if.end137
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp143 = icmp sgt i32 %45, 1
  br i1 %cmp143, label %do.end148, label %do.body142.for.inc_crit_edge

do.body142.for.inc_crit_edge:                     ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end148:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #15
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %conv378) #16
  br label %for.inc

if.end155:                                        ; preds = %if.end137
  tail call fastcc void @msb_mark_block_used(ptr noundef %msb, i32 noundef %conv378)
  call void @__sanitizer_cov_trace_const_cmp4(i32 494, i32 %conv138)
  %cmp.i349 = icmp ult i32 %conv138, 494
  %sub.i = add nsw i32 %conv138, -494
  %div.i = sdiv i32 %sub.i, 496
  %add.i = add nuw nsw i32 %div.i, 1
  %retval.0.i350 = select i1 %cmp.i349, i32 0, i32 %add.i
  %div.i351368369370 = lshr i16 %pba.0375, 9
  %div.i351368.zext = zext i16 %div.i351368369370 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i350, i32 %div.i351368.zext)
  %cmp161.not = icmp eq i32 %retval.0.i350, %div.i351368.zext
  br i1 %cmp161.not, label %if.end172, label %do.end166

do.end166:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %conv378, i32 noundef %conv138) #16
  %call171 = tail call fastcc i32 @msb_erase_block(ptr noundef %msb, i16 noundef zeroext %pba.0375)
  br label %for.inc

if.end172:                                        ; preds = %if.end155
  %46 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lba_to_pba_table, align 4
  %arrayidx174 = getelementptr i16, ptr %47, i32 %conv138
  %48 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx174, align 2
  %conv175 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %49)
  %cmp176 = icmp eq i16 %49, -1
  br i1 %cmp176, label %do.body179, label %if.end196

do.body179:                                       ; preds = %if.end172
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp180 = icmp sgt i32 %50, 1
  br i1 %cmp180, label %do.end185, label %do.body179.do.end192_crit_edge

do.body179.do.end192_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end192

do.end185:                                        ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #15
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %conv378, i32 noundef %conv138) #16
  br label %do.end192

do.end192:                                        ; preds = %do.end185, %do.body179.do.end192_crit_edge
  %51 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lba_to_pba_table, align 4
  %arrayidx195 = getelementptr i16, ptr %52, i32 %conv138
  %53 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %pba.0375, ptr %arrayidx195, align 2
  br label %for.inc

if.end196:                                        ; preds = %if.end172
  %arrayidx201 = getelementptr i8, ptr %call9.i.i, i32 %conv175
  %54 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx201, align 1
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %conv378, i32 noundef %conv175) #16
  %56 = and i32 %37, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool211.not = icmp eq i32 %56, 0
  br i1 %tobool211.not, label %do.end215, label %if.end223

do.end215:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %conv378) #16
  %call219 = tail call fastcc i32 @msb_erase_block(ptr noundef %msb, i16 noundef zeroext %49)
  %57 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lba_to_pba_table, align 4
  %arrayidx222 = getelementptr i16, ptr %58, i32 %conv138
  %59 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %pba.0375, ptr %arrayidx222, align 2
  br label %for.inc

if.end223:                                        ; preds = %if.end196
  %60 = and i8 %55, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool226.not = icmp eq i8 %60, 0
  br i1 %tobool226.not, label %do.end230, label %do.end238

do.end230:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #15
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %conv175) #16
  %call234 = tail call fastcc i32 @msb_erase_block(ptr noundef %msb, i16 noundef zeroext %pba.0375)
  br label %for.inc

do.end238:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #15
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %conv378, i32 noundef %conv175, i32 noundef %conv175) #16
  %call244 = tail call fastcc i32 @msb_erase_block(ptr noundef %msb, i16 noundef zeroext %49)
  %61 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lba_to_pba_table, align 4
  %arrayidx247 = getelementptr i16, ptr %62, i32 %conv138
  %63 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %pba.0375, ptr %arrayidx247, align 2
  br label %for.inc

for.inc:                                          ; preds = %do.end238, %do.end230, %do.end215, %do.end192, %do.end166, %do.end148, %do.body142.for.inc_crit_edge, %do.end134, %do.end115, %do.end94, %do.end60, %do.end46, %do.body40.for.inc_crit_edge, %do.end33
  %inc = add i16 %pba.0375, 1
  %conv = zext i16 %inc to i32
  %64 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %block_count, align 4
  %cmp8 = icmp sgt i32 %65, %conv
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.do.body248_crit_edge

for.inc.do.body248_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body248

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body248:                                       ; preds = %for.inc.do.body248_crit_edge, %do.end6.do.body248_crit_edge
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp249 = icmp sgt i32 %66, 0
  br i1 %cmp249, label %do.end254, label %do.body248.cleanup.sink.split_crit_edge

do.body248.cleanup.sink.split_crit_edge:          ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.end254:                                        ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #15
  %call256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end254, %do.body248.cleanup.sink.split_crit_edge, %do.end70
  %retval.0.ph = phi i32 [ %retval.0.i359, %do.end70 ], [ 0, %do.end254 ], [ 0, %do.body248.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_msb_reset(ptr noundef %card, ptr nocapture noundef writeonly %out_mrq) #2 align 64 {
entry:
  %command = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command) #13
  %0 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 60, ptr %command, align 1
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  %3 = ptrtoint ptr %out_mrq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %current_mrq, ptr %out_mrq, align 4
  %error = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %state = getelementptr inbounds %struct.msb_data, ptr %2, i32 0, i32 45
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  br i1 %cmp.i, label %do.end.i, label %if.then.msb_exit_state_machine.exit_crit_edge, !prof !525

if.then.msb_exit_state_machine.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit

msb_exit_state_machine.exit:                      ; preds = %do.end.i, %if.then.msb_exit_state_machine.exit_crit_edge
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %state, align 4
  %exit_error.i = getelementptr inbounds %struct.msb_data, ptr %2, i32 0, i32 46
  %9 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %exit_error.i, align 4
  %card.i = getelementptr inbounds %struct.msb_data, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @h_msb_default_bad, ptr %next_request.i, align 4
  %reg_addr.i.i = getelementptr inbounds %struct.msb_data, ptr %2, i32 0, i32 37
  %addr_valid.i.i = getelementptr inbounds %struct.msb_data, ptr %2, i32 0, i32 38
  %13 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 67372036, ptr %reg_addr.i.i, align 4
  %14 = ptrtoint ptr %addr_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %addr_valid.i.i, align 4
  %15 = load ptr, ptr %card.i, align 4
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %15, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %7, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %msb_exit_state_machine.exit26
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @memstick_init_req(ptr noundef %current_mrq, i8 noundef zeroext 14, ptr noundef nonnull %command, i32 noundef 1) #13
  %need_card_int = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %need_card_int to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %need_card_int, align 1
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %need_card_int, align 1
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state, align 4
  br label %cleanup

msb_exit_state_machine.exit26:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %state, align 4
  %exit_error.i21 = getelementptr inbounds %struct.msb_data, ptr %2, i32 0, i32 46
  %20 = ptrtoint ptr %exit_error.i21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %exit_error.i21, align 4
  %card.i22 = getelementptr inbounds %struct.msb_data, ptr %2, i32 0, i32 1
  %21 = ptrtoint ptr %card.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i22, align 4
  %next_request.i23 = getelementptr inbounds %struct.memstick_dev, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %next_request.i23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @h_msb_default_bad, ptr %next_request.i23, align 4
  %24 = load ptr, ptr %card.i22, align 4
  %mrq_complete.i25 = getelementptr inbounds %struct.memstick_dev, ptr %24, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i25) #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/memstick/core/ms_block.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 674, 0\0A.popsection", ""() #13, !srcloc !526
  unreachable

cleanup:                                          ; preds = %msb_exit_state_machine.exit26, %sw.bb, %msb_exit_state_machine.exit
  %retval.0 = phi i32 [ -6, %msb_exit_state_machine.exit ], [ -6, %msb_exit_state_machine.exit26 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_new_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msb_exit_state_machine(ptr nocapture noundef %msb, i32 noundef %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 45
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !525

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %state, align 4
  %exit_error = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 46
  %3 = ptrtoint ptr %exit_error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %error, ptr %exit_error, align 4
  %card = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 1
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %next_request = getelementptr inbounds %struct.memstick_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %next_request to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @h_msb_default_bad, ptr %next_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool20.not = icmp eq i32 %error, 0
  br i1 %tobool20.not, label %if.end.if.end22_crit_edge, label %if.then21

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %reg_addr.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 37
  %addr_valid.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 38
  %7 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67372036, ptr %reg_addr.i, align 4
  %8 = ptrtoint ptr %addr_valid.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %addr_valid.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, ptr %10, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_init_req(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h_msb_default_bad(ptr nocapture noundef readnone %card, ptr nocapture noundef readnone %mrq) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_msb_parallel_switch(ptr noundef %card, ptr nocapture noundef writeonly %out_mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  %2 = ptrtoint ptr %out_mrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %current_mrq, ptr %out_mrq, align 4
  %host1 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 1
  %3 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host1, align 4
  %error = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %param = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 3
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %param, align 4
  %10 = and i8 %9, -9
  store i8 %10, ptr %param, align 4
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  %state.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 45
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i = icmp eq i32 %14, -1
  br i1 %cmp.i, label %do.end.i, label %do.end6.if.end.i_crit_edge, !prof !525

do.end6.if.end.i_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end6.if.end.i_crit_edge
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %state.i, align 4
  %exit_error.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %16 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %12, ptr %exit_error.i, align 4
  %card.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @h_msb_default_bad, ptr %next_request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not.i = icmp eq i32 %12, 0
  br i1 %tobool20.not.i, label %if.end.i.msb_exit_state_machine.exit_crit_edge, label %if.then21.i

if.end.i.msb_exit_state_machine.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_addr.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %20 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67372036, ptr %reg_addr.i.i, align 4
  %21 = ptrtoint ptr %addr_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %addr_valid.i.i, align 4
  br label %msb_exit_state_machine.exit

msb_exit_state_machine.exit:                      ; preds = %if.then21.i, %if.end.i.msb_exit_state_machine.exit_crit_edge
  %22 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i, align 4
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %23, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i) #13
  br label %cleanup

if.end10:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 45
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.281)
  switch i32 %25, label %do.body28 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %msb_exit_state_machine.exit59
  ]

sw.bb:                                            ; preds = %if.end10
  %param12 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 3
  %27 = ptrtoint ptr %param12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %param12, align 4
  %29 = or i8 %28, 8
  store i8 %29, ptr %param12, align 4
  %card.i49 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %card.i49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i49, align 4
  %current_mrq.i = getelementptr inbounds %struct.memstick_dev, ptr %31, i32 0, i32 4
  %reg_addr.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %w_offset.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 2
  %32 = ptrtoint ptr %w_offset.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %w_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %33)
  %cmp.not.i = icmp eq i8 %33, 16
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.msb_write_regs.exit.thread_crit_edge

sw.bb.msb_write_regs.exit.thread_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

lor.lhs.false.i:                                  ; preds = %sw.bb
  %w_length.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %34 = ptrtoint ptr %w_length.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %w_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp4.not.i = icmp eq i8 %35, 1
  br i1 %cmp4.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge

lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %addr_valid.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %36 = ptrtoint ptr %addr_valid.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr_valid.i, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge, label %if.end21

lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

msb_write_regs.exit.thread:                       ; preds = %lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge, %lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge, %sw.bb.msb_write_regs.exit.thread_crit_edge
  %38 = ptrtoint ptr %w_offset.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %w_offset.i, align 2
  %w_length12.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %39 = ptrtoint ptr %w_length12.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %w_length12.i, align 1
  %addr_valid13.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %40 = ptrtoint ptr %addr_valid13.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %addr_valid13.i, align 4
  tail call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 8, ptr noundef %reg_addr.i, i32 noundef 4) #13
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 11, ptr noundef %param12, i32 noundef 1) #13
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %state, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %set_param = getelementptr inbounds %struct.memstick_host, ptr %4, i32 0, i32 9
  %42 = ptrtoint ptr %set_param to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_param, align 64
  %call24 = tail call i32 %43(ptr noundef %4, i32 noundef 2, i32 noundef 1) #13
  tail call void @memstick_init_req(ptr noundef %current_mrq, i8 noundef zeroext 7, ptr noundef null, i32 noundef 1) #13
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %state, align 4
  br label %cleanup

msb_exit_state_machine.exit59:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %state, align 4
  %exit_error.i54 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %46 = ptrtoint ptr %exit_error.i54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %exit_error.i54, align 4
  %card.i55 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %card.i55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card.i55, align 4
  %next_request.i56 = getelementptr inbounds %struct.memstick_dev, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %next_request.i56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @h_msb_default_bad, ptr %next_request.i56, align 4
  %50 = load ptr, ptr %card.i55, align 4
  %mrq_complete.i58 = getelementptr inbounds %struct.memstick_dev, ptr %50, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i58) #13
  br label %cleanup

do.body28:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/memstick/core/ms_block.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 718, 0\0A.popsection", ""() #13, !srcloc !527
  unreachable

cleanup:                                          ; preds = %msb_exit_state_machine.exit59, %sw.bb23, %if.end21, %msb_write_regs.exit.thread, %msb_exit_state_machine.exit
  %retval.0 = phi i32 [ -6, %msb_exit_state_machine.exit ], [ -6, %msb_exit_state_machine.exit59 ], [ 0, %sw.bb23 ], [ 0, %if.end21 ], [ 0, %msb_write_regs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_read_page(ptr nocapture noundef %msb, i16 noundef zeroext %pba, i8 noundef zeroext %page, ptr noundef writeonly %extra, ptr noundef %sg, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %miter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %pba to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %pba)
  %cmp = icmp eq i16 %pba, -1
  br i1 %cmp, label %if.then, label %if.end85

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter) #13
  %0 = call ptr @memset(ptr %miter, i32 255, i32 44)
  %page_size = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 19
  %1 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %page_size, align 2
  %conv2 = zext i16 %2 to i32
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3 = icmp sgt i32 %3, 1
  br i1 %cmp3, label %do.end, label %if.then.do.body10_crit_edge

if.then.do.body10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #16
  br label %do.body10

do.body10:                                        ; preds = %do.end, %if.then.do.body10_crit_edge
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !528
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then24, label %do.body10.do.end27_crit_edge

do.body10.do.end27_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body10.do.end27_crit_edge
  %call28 = tail call i32 @sg_nents(ptr noundef %sg) #13
  call void @sg_miter_start(ptr noundef nonnull %miter, ptr noundef %sg, i32 noundef %call28, i32 noundef 3) #13
  %call29209 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #13
  %call29.not210 = xor i1 %call29209, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp31.not211 = icmp eq i16 %2, 0
  %or.cond212 = select i1 %call29.not210, i1 true, i1 %cmp31.not211
  br i1 %or.cond212, label %do.end27.while.end_crit_edge, label %while.body.lr.ph

do.end27.while.end_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end27
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.0214 = phi i32 [ %offset, %while.body.lr.ph ], [ %offset.addr.1, %cleanup.while.body_crit_edge ]
  %len.0213 = phi i32 [ %conv2, %while.body.lr.ph ], [ %len.1, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.addr.0214)
  %tobool33.not = icmp eq i32 %offset.addr.0214, 0
  br i1 %tobool33.not, label %while.body.if.end38_crit_edge, label %land.lhs.true

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true:                                    ; preds = %while.body
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.0214, i32 %6)
  %cmp34.not = icmp ult i32 %offset.addr.0214, %6
  br i1 %cmp34.not, label %land.lhs.true.if.end38_crit_edge, label %if.then36

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %offset.addr.0214, %6
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %while.body.if.end38_crit_edge
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %sub40 = sub i32 %8, %offset.addr.0214
  %9 = call i32 @llvm.umin.i32(i32 %sub40, i32 %len.0213)
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %offset.addr.0214
  %12 = call ptr @memset(ptr %add.ptr, i32 255, i32 %9)
  %sub44 = sub i32 %len.0213, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then36
  %len.1 = phi i32 [ %len.0213, %if.then36 ], [ %sub44, %if.end38 ]
  %offset.addr.1 = phi i32 [ %sub, %if.then36 ], [ 0, %if.end38 ]
  %call29 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #13
  %call29.not = xor i1 %call29, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp31.not = icmp eq i32 %len.1, 0
  %or.cond = select i1 %call29.not, i1 true, i1 %cmp31.not
  br i1 %or.cond, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end27.while.end_crit_edge
  %offset.addr.0.lcssa = phi i32 [ %offset, %do.end27.while.end_crit_edge ], [ %offset.addr.1, %cleanup.while.end_crit_edge ]
  call void @sg_miter_stop(ptr noundef nonnull %miter) #13
  br i1 %tobool.not, label %if.then54, label %while.end.do.body56_crit_edge

while.end.do.body56_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body56

if.then54:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @trace_hardirqs_on() #13
  br label %do.body56

do.body56:                                        ; preds = %if.then54, %while.end.do.body56_crit_edge
  %13 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !529
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool64.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool64.not, label %if.then68, label %do.body56.do.end71_crit_edge, !prof !525

do.body56.do.end71_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end71

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %do.body56.do.end71_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #13, !srcloc !530
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.addr.0.lcssa)
  %tobool76.not = icmp eq i32 %offset.addr.0.lcssa, 0
  br i1 %tobool76.not, label %if.end78, label %do.end71.cleanup82_crit_edge

do.end71.cleanup82_crit_edge:                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup82

if.end78:                                         ; preds = %do.end71
  %tobool79.not = icmp eq ptr %extra, null
  br i1 %tobool79.not, label %if.end78.cleanup82_crit_edge, label %if.then80

if.end78.cleanup82_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup82

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %extra to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 -1, ptr %extra, align 1
  br label %cleanup82

cleanup82:                                        ; preds = %if.then80, %if.end78.cleanup82_crit_edge, %do.end71.cleanup82_crit_edge
  %retval.0 = phi i32 [ -14, %do.end71.cleanup82_crit_edge ], [ 0, %if.then80 ], [ 0, %if.end78.cleanup82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter) #13
  br label %cleanup156

if.end85:                                         ; preds = %entry
  %block_count = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 23
  %15 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %block_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp87.not = icmp sgt i32 %16, %conv
  br i1 %cmp87.not, label %for.cond.preheader, label %do.end92

for.cond.preheader:                               ; preds = %if.end85
  %block_address = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 2
  %page_address = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 4
  %cp = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 3
  %current_sg = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 41
  %current_sg_offset = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 42
  %card1.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 45
  %int_polling.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 47
  %exit_error.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 46
  %conv112 = zext i8 %page to i32
  %tobool117.not = icmp ne ptr %extra, null
  %extra_data = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 4
  %17 = ptrtoint ptr %block_address to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %pba, ptr %block_address, align 2
  %18 = ptrtoint ptr %page_address to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %page, ptr %page_address, align 1
  %19 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %cp, align 4
  %20 = ptrtoint ptr %current_sg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sg, ptr %current_sg, align 4
  %21 = ptrtoint ptr %current_sg_offset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %offset, ptr %current_sg_offset, align 4
  %22 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card1.i, align 4
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.not.i = icmp eq i32 %25, -1
  br i1 %cmp.not.i, label %for.cond.preheader.if.end.i_crit_edge, label %do.end.i, !prof !524

for.cond.preheader.if.end.i_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv) #16
  br label %cleanup156

for.cond:                                         ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %block_address to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %pba, ptr %block_address, align 2
  %27 = ptrtoint ptr %page_address to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %page, ptr %page_address, align 1
  %28 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 32, ptr %cp, align 4
  %29 = ptrtoint ptr %current_sg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sg, ptr %current_sg, align 4
  %30 = ptrtoint ptr %current_sg_offset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %offset, ptr %current_sg_offset, align 4
  %31 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card1.i, align 4
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.not.i.1 = icmp eq i32 %34, -1
  br i1 %cmp.not.i.1, label %for.cond.if.end.i.1_crit_edge, label %do.end.i.1, !prof !524

for.cond.if.end.i.1_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.1

do.end.i.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %do.end.i.1, %for.cond.if.end.i.1_crit_edge
  %35 = ptrtoint ptr %int_polling.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %int_polling.i, align 4
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %state.i, align 4
  %37 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %exit_error.i, align 4
  %current_mrq.i.1 = getelementptr inbounds %struct.memstick_dev, ptr %32, i32 0, i32 4
  %38 = call ptr @memset(ptr %current_mrq.i.1, i32 0, i32 28)
  %next_request.i.1 = getelementptr inbounds %struct.memstick_dev, ptr %32, i32 0, i32 6
  %39 = ptrtoint ptr %next_request.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @h_msb_read_page, ptr %next_request.i.1, align 4
  %host.i.1 = getelementptr inbounds %struct.memstick_dev, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %host.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host.i.1, align 4
  tail call void @memstick_new_req(ptr noundef %41) #13
  %mrq_complete.i.1 = getelementptr inbounds %struct.memstick_dev, ptr %32, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i.1) #13
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp23.not.i.1 = icmp eq i32 %43, -1
  br i1 %cmp23.not.i.1, label %if.end.i.1.msb_run_state_machine.exit.1_crit_edge, label %do.end39.i.1, !prof !524

if.end.i.1.msb_run_state_machine.exit.1_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_run_state_machine.exit.1

do.end39.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %msb_run_state_machine.exit.1

msb_run_state_machine.exit.1:                     ; preds = %do.end39.i.1, %if.end.i.1.msb_run_state_machine.exit.1_crit_edge
  %44 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %exit_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %45)
  %cmp104.1 = icmp eq i32 %45, -117
  br i1 %cmp104.1, label %do.end109.1, label %msb_run_state_machine.exit.1.if.end114.1_crit_edge

msb_run_state_machine.exit.1.if.end114.1_crit_edge: ; preds = %msb_run_state_machine.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114.1

do.end109.1:                                      ; preds = %msb_run_state_machine.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  %call113.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %conv112) #16
  br label %if.end114.1

if.end114.1:                                      ; preds = %do.end109.1, %msb_run_state_machine.exit.1.if.end114.1_crit_edge
  %error.1.1 = phi i32 [ 0, %do.end109.1 ], [ %45, %msb_run_state_machine.exit.1.if.end114.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.1)
  %tobool115.not.1 = icmp eq i32 %error.1.1, 0
  %46 = and i1 %tobool117.not, %tobool115.not.1
  br i1 %46, label %if.then118.1, label %if.end114.1.if.end120.1_crit_edge

if.end114.1.if.end120.1_crit_edge:                ; preds = %if.end114.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120.1

if.then118.1:                                     ; preds = %if.end114.1
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %extra_data to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %extra_data, align 2
  %49 = ptrtoint ptr %extra to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %extra, align 1
  br label %if.end120.1

if.end120.1:                                      ; preds = %if.then118.1, %if.end114.1.if.end120.1_crit_edge
  br i1 %tobool115.not.1, label %if.end120.1.cleanup156_crit_edge, label %lor.lhs.false.1

if.end120.1.cleanup156_crit_edge:                 ; preds = %if.end120.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup156

lor.lhs.false.1:                                  ; preds = %if.end120.1
  call void @__sanitizer_cov_trace_pc() #15
  %call122.1 = tail call fastcc i32 @msb_reset(ptr noundef %msb, i1 noundef zeroext true)
  br label %for.end

do.end.i:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.cond.preheader.if.end.i_crit_edge
  %50 = ptrtoint ptr %int_polling.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %int_polling.i, align 4
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %state.i, align 4
  %52 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %exit_error.i, align 4
  %current_mrq.i = getelementptr inbounds %struct.memstick_dev, ptr %23, i32 0, i32 4
  %53 = call ptr @memset(ptr %current_mrq.i, i32 0, i32 28)
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %23, i32 0, i32 6
  %54 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @h_msb_read_page, ptr %next_request.i, align 4
  %host.i = getelementptr inbounds %struct.memstick_dev, ptr %23, i32 0, i32 1
  %55 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host.i, align 4
  tail call void @memstick_new_req(ptr noundef %56) #13
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %23, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %57 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp23.not.i = icmp eq i32 %58, -1
  br i1 %cmp23.not.i, label %if.end.i.msb_run_state_machine.exit_crit_edge, label %do.end39.i, !prof !524

if.end.i.msb_run_state_machine.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_run_state_machine.exit

do.end39.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %msb_run_state_machine.exit

msb_run_state_machine.exit:                       ; preds = %do.end39.i, %if.end.i.msb_run_state_machine.exit_crit_edge
  %59 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %exit_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %60)
  %cmp104 = icmp eq i32 %60, -117
  br i1 %cmp104, label %do.end109, label %msb_run_state_machine.exit.if.end114_crit_edge

msb_run_state_machine.exit.if.end114_crit_edge:   ; preds = %msb_run_state_machine.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

do.end109:                                        ; preds = %msb_run_state_machine.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %conv112) #16
  br label %if.end114

if.end114:                                        ; preds = %do.end109, %msb_run_state_machine.exit.if.end114_crit_edge
  %error.1 = phi i32 [ 0, %do.end109 ], [ %60, %msb_run_state_machine.exit.if.end114_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool115.not = icmp eq i32 %error.1, 0
  %61 = and i1 %tobool117.not, %tobool115.not
  br i1 %61, label %if.then118, label %if.end114.if.end120_crit_edge

if.end114.if.end120_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %extra_data to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %extra_data, align 2
  %64 = ptrtoint ptr %extra to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %extra, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end114.if.end120_crit_edge
  br i1 %tobool115.not, label %if.end120.cleanup156_crit_edge, label %lor.lhs.false

if.end120.cleanup156_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup156

lor.lhs.false:                                    ; preds = %if.end120
  %call122 = tail call fastcc i32 @msb_reset(ptr noundef %msb, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %for.cond, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %lor.lhs.false.for.end_crit_edge, %lor.lhs.false.1
  %error.1.lcssa216 = phi i32 [ %error.1, %lor.lhs.false.for.end_crit_edge ], [ %error.1.1, %lor.lhs.false.1 ]
  %65 = zext i32 %error.1.lcssa216 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.282)
  switch i32 %error.1.lcssa216, label %do.end150 [
    i32 -74, label %do.end131
    i32 0, label %for.end.cleanup156_crit_edge
  ]

for.end.cleanup156_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup156

do.end131:                                        ; preds = %for.end
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %conv, i32 noundef %conv112) #16
  %66 = ptrtoint ptr %extra_data to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %extra_data, align 2
  %68 = and i8 %67, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool139.not = icmp eq i8 %68, 0
  br i1 %tobool139.not, label %do.end131.cleanup156_crit_edge, label %if.then140

do.end131.cleanup156_crit_edge:                   ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup156

if.then140:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @msb_mark_page_bad(ptr noundef %msb, i32 noundef %conv, i32 noundef %conv112)
  br label %cleanup156

do.end150:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv, i32 noundef %conv112, i32 noundef %error.1.lcssa216) #16
  br label %cleanup156

cleanup156:                                       ; preds = %do.end150, %if.then140, %do.end131.cleanup156_crit_edge, %for.end.cleanup156_crit_edge, %if.end120.cleanup156_crit_edge, %if.end120.1.cleanup156_crit_edge, %do.end92, %cleanup82
  %retval.1 = phi i32 [ %retval.0, %cleanup82 ], [ -22, %do.end92 ], [ -74, %if.then140 ], [ -74, %do.end131.cleanup156_crit_edge ], [ %error.1.lcssa216, %for.end.cleanup156_crit_edge ], [ %error.1.lcssa216, %do.end150 ], [ 0, %if.end120.1.cleanup156_crit_edge ], [ 0, %if.end120.cleanup156_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_msb_read_page(ptr noundef %card, ptr nocapture noundef writeonly %out_mrq) #2 align 64 {
entry:
  %sg = alloca [2 x %struct.scatterlist], align 4
  %command = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  %2 = ptrtoint ptr %out_mrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %current_mrq, ptr %out_mrq, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg) #13
  %3 = call ptr @memset(ptr %sg, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command) #13
  %error = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %again.preheader, label %do.body

again.preheader:                                  ; preds = %entry
  %state = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 45
  %extra_data = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 4
  %6 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 4
  %data57 = getelementptr inbounds %struct.anon.79, ptr %6, i32 0, i32 1
  %cp = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 3, i32 3
  %interrupt = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 0, i32 1
  %int_polling = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 47
  br label %again

do.body:                                          ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %do.end, label %do.body.do.end5_crit_edge

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %error, align 4
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %9 = phi i32 [ %.pr, %do.end ], [ %5, %do.body.do.end5_crit_edge ]
  %state.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 45
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp eq i32 %11, -1
  br i1 %cmp.i, label %do.end.i, label %do.end5.if.end.i_crit_edge, !prof !525

do.end5.if.end.i_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end5.if.end.i_crit_edge
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %state.i, align 4
  %exit_error.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %13 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %exit_error.i, align 4
  %card.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card.i, align 4
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @h_msb_default_bad, ptr %next_request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not.i = icmp eq i32 %9, 0
  br i1 %tobool20.not.i, label %if.end.i.msb_exit_state_machine.exit_crit_edge, label %if.then21.i

if.end.i.msb_exit_state_machine.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_addr.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %17 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67372036, ptr %reg_addr.i.i, align 4
  %18 = ptrtoint ptr %addr_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %addr_valid.i.i, align 4
  br label %msb_exit_state_machine.exit

msb_exit_state_machine.exit:                      ; preds = %if.then21.i, %if.end.i.msb_exit_state_machine.exit_crit_edge
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i, align 4
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %20, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i) #13
  br label %cleanup

again:                                            ; preds = %again.backedge, %again.preheader
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.283)
  switch i32 %22, label %do.body145 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb16
    i32 3, label %again.sw.bb22_crit_edge
    i32 4, label %sw.bb38
    i32 5, label %sw.bb44
    i32 6, label %again.sw.bb49_crit_edge
    i32 7, label %sw.bb55
    i32 8, label %again.sw.bb60_crit_edge
    i32 9, label %sw.bb75
  ]

again.sw.bb60_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb60

again.sw.bb49_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb49

again.sw.bb22_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb22

sw.bb:                                            ; preds = %again
  %param = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 3
  %card.i202 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %card.i202 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card.i202, align 4
  %current_mrq.i = getelementptr inbounds %struct.memstick_dev, ptr %25, i32 0, i32 4
  %reg_addr.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %w_offset.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 2
  %26 = ptrtoint ptr %w_offset.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %w_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %27)
  %cmp.not.i = icmp eq i8 %27, 16
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.msb_write_regs.exit.thread_crit_edge

sw.bb.msb_write_regs.exit.thread_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

lor.lhs.false.i:                                  ; preds = %sw.bb
  %w_length.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %28 = ptrtoint ptr %w_length.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %w_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp4.not.i = icmp eq i8 %29, 6
  br i1 %cmp4.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge

lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %addr_valid.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %30 = ptrtoint ptr %addr_valid.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr_valid.i, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge, label %if.end12

lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

msb_write_regs.exit.thread:                       ; preds = %lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge, %lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge, %sw.bb.msb_write_regs.exit.thread_crit_edge
  %32 = ptrtoint ptr %w_offset.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 16, ptr %w_offset.i, align 2
  %w_length12.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %33 = ptrtoint ptr %w_length12.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 6, ptr %w_length12.i, align 1
  %addr_valid13.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %34 = ptrtoint ptr %addr_valid13.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %addr_valid13.i, align 4
  tail call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 8, ptr noundef %reg_addr.i, i32 noundef 4) #13
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 11, ptr noundef %param, i32 noundef 6) #13
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %state, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -86, ptr %command, align 1
  call void @memstick_init_req(ptr noundef %current_mrq, i8 noundef zeroext 14, ptr noundef nonnull %command, i32 noundef 1) #13
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %state, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %again
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %state, align 4
  %call18 = tail call fastcc i32 @msb_read_int_reg(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %sw.bb16.sw.bb22_crit_edge, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb16.sw.bb22_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb22

sw.bb22:                                          ; preds = %sw.bb16.sw.bb22_crit_edge, %again.sw.bb22_crit_edge
  %39 = ptrtoint ptr %data57 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data57, align 1
  %41 = ptrtoint ptr %interrupt to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %interrupt, align 1
  %conv = zext i8 %40 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %sw.bb22
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i205 = icmp eq i32 %43, -1
  br i1 %cmp.i205, label %do.end.i206, label %if.then25.msb_exit_state_machine.exit215_crit_edge, !prof !525

if.then25.msb_exit_state_machine.exit215_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit215

do.end.i206:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit215

msb_exit_state_machine.exit215:                   ; preds = %do.end.i206, %if.then25.msb_exit_state_machine.exit215_crit_edge
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %state, align 4
  %exit_error.i207 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %45 = ptrtoint ptr %exit_error.i207 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -5, ptr %exit_error.i207, align 4
  %card.i208 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %card.i208 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card.i208, align 4
  %next_request.i209 = getelementptr inbounds %struct.memstick_dev, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %next_request.i209 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @h_msb_default_bad, ptr %next_request.i209, align 4
  %reg_addr.i.i211 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i212 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %49 = ptrtoint ptr %reg_addr.i.i211 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 67372036, ptr %reg_addr.i.i211, align 4
  %50 = ptrtoint ptr %addr_valid.i.i212 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %addr_valid.i.i212, align 4
  %51 = load ptr, ptr %card.i208, align 4
  %mrq_complete.i214 = getelementptr inbounds %struct.memstick_dev, ptr %51, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i214) #13
  br label %cleanup

if.end27:                                         ; preds = %sw.bb22
  %and29 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.again.backedge_crit_edge, label %if.end33

if.end27.again.backedge_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

again.backedge:                                   ; preds = %sw.bb60.again.backedge_crit_edge, %if.end33, %if.end27.again.backedge_crit_edge
  %.sink = phi i32 [ %cond, %if.end33 ], [ 9, %sw.bb60.again.backedge_crit_edge ], [ 2, %if.end27.again.backedge_crit_edge ]
  %52 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink, ptr %state, align 4
  br label %again

if.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %int_polling to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %int_polling, align 4
  %and35 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %cond = select i1 %tobool36.not, i32 6, i32 4
  br label %again.backedge

sw.bb38:                                          ; preds = %again
  %card.i216 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %card.i216 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i216, align 4
  %current_mrq.i217 = getelementptr inbounds %struct.memstick_dev, ptr %55, i32 0, i32 4
  %reg_addr.i218 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %56 = ptrtoint ptr %reg_addr.i218 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %reg_addr.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp.not.i220 = icmp eq i8 %57, 0
  br i1 %cmp.not.i220, label %lor.lhs.false.i222, label %sw.bb38.msb_read_regs.exit.thread_crit_edge

sw.bb38.msb_read_regs.exit.thread_crit_edge:      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_read_regs.exit.thread

lor.lhs.false.i222:                               ; preds = %sw.bb38
  %r_length.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 1
  %58 = ptrtoint ptr %r_length.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %r_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %59)
  %cmp4.not.i221 = icmp eq i8 %59, 4
  br i1 %cmp4.not.i221, label %lor.lhs.false6.i225, label %lor.lhs.false.i222.msb_read_regs.exit.thread_crit_edge

lor.lhs.false.i222.msb_read_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false.i222
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_read_regs.exit.thread

lor.lhs.false6.i225:                              ; preds = %lor.lhs.false.i222
  %addr_valid.i223 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %60 = ptrtoint ptr %addr_valid.i223 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %addr_valid.i223, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i224 = icmp eq i8 %61, 0
  br i1 %tobool.not.i224, label %lor.lhs.false6.i225.msb_read_regs.exit.thread_crit_edge, label %if.end42

lor.lhs.false6.i225.msb_read_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false6.i225
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_read_regs.exit.thread

msb_read_regs.exit.thread:                        ; preds = %lor.lhs.false6.i225.msb_read_regs.exit.thread_crit_edge, %lor.lhs.false.i222.msb_read_regs.exit.thread_crit_edge, %sw.bb38.msb_read_regs.exit.thread_crit_edge
  %62 = ptrtoint ptr %reg_addr.i218 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %reg_addr.i218, align 4
  %r_length12.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 1
  %63 = ptrtoint ptr %r_length12.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 4, ptr %r_length12.i, align 1
  %addr_valid13.i226 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %64 = ptrtoint ptr %addr_valid13.i226 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %addr_valid13.i226, align 4
  tail call void @memstick_init_req(ptr noundef %current_mrq.i217, i8 noundef zeroext 8, ptr noundef %reg_addr.i218, i32 noundef 4) #13
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false6.i225
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_init_req(ptr noundef %current_mrq.i217, i8 noundef zeroext 4, ptr noundef null, i32 noundef 4) #13
  %65 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 5, ptr %state, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  %regs45 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43
  %66 = ptrtoint ptr %data57 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %data57, align 1
  %68 = ptrtoint ptr %regs45 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %regs45, align 4
  %69 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 6, ptr %state, align 4
  br label %sw.bb49

sw.bb49:                                          ; preds = %sw.bb44, %again.sw.bb49_crit_edge
  %card.i230 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %card.i230 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card.i230, align 4
  %current_mrq.i231 = getelementptr inbounds %struct.memstick_dev, ptr %71, i32 0, i32 4
  %reg_addr.i232 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %72 = ptrtoint ptr %reg_addr.i232 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %reg_addr.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %73)
  %cmp.not.i234 = icmp eq i8 %73, 22
  br i1 %cmp.not.i234, label %lor.lhs.false.i237, label %sw.bb49.msb_read_regs.exit246.thread_crit_edge

sw.bb49.msb_read_regs.exit246.thread_crit_edge:   ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_read_regs.exit246.thread

lor.lhs.false.i237:                               ; preds = %sw.bb49
  %r_length.i235 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 1
  %74 = ptrtoint ptr %r_length.i235 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %r_length.i235, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %75)
  %cmp4.not.i236 = icmp eq i8 %75, 4
  br i1 %cmp4.not.i236, label %lor.lhs.false6.i240, label %lor.lhs.false.i237.msb_read_regs.exit246.thread_crit_edge

lor.lhs.false.i237.msb_read_regs.exit246.thread_crit_edge: ; preds = %lor.lhs.false.i237
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_read_regs.exit246.thread

lor.lhs.false6.i240:                              ; preds = %lor.lhs.false.i237
  %addr_valid.i238 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %76 = ptrtoint ptr %addr_valid.i238 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %addr_valid.i238, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i239 = icmp eq i8 %77, 0
  br i1 %tobool.not.i239, label %lor.lhs.false6.i240.msb_read_regs.exit246.thread_crit_edge, label %if.end53

lor.lhs.false6.i240.msb_read_regs.exit246.thread_crit_edge: ; preds = %lor.lhs.false6.i240
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_read_regs.exit246.thread

msb_read_regs.exit246.thread:                     ; preds = %lor.lhs.false6.i240.msb_read_regs.exit246.thread_crit_edge, %lor.lhs.false.i237.msb_read_regs.exit246.thread_crit_edge, %sw.bb49.msb_read_regs.exit246.thread_crit_edge
  %78 = ptrtoint ptr %reg_addr.i232 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 22, ptr %reg_addr.i232, align 4
  %r_length12.i241 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 1
  %79 = ptrtoint ptr %r_length12.i241 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 4, ptr %r_length12.i241, align 1
  %addr_valid13.i242 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %80 = ptrtoint ptr %addr_valid13.i242 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %addr_valid13.i242, align 4
  tail call void @memstick_init_req(ptr noundef %current_mrq.i231, i8 noundef zeroext 8, ptr noundef %reg_addr.i232, i32 noundef 4) #13
  br label %cleanup

if.end53:                                         ; preds = %lor.lhs.false6.i240
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_init_req(ptr noundef %current_mrq.i231, i8 noundef zeroext 4, ptr noundef null, i32 noundef 4) #13
  %81 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 7, ptr %state, align 4
  br label %cleanup

sw.bb55:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %data57 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %data57, align 1
  %84 = ptrtoint ptr %extra_data to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %83, ptr %extra_data, align 2
  %85 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 8, ptr %state, align 4
  br label %sw.bb60

sw.bb60:                                          ; preds = %sw.bb55, %again.sw.bb60_crit_edge
  %86 = ptrtoint ptr %cp to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %cp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %87)
  %cmp64 = icmp eq i8 %87, 64
  br i1 %cmp64, label %sw.bb60.again.backedge_crit_edge, label %if.end68

sw.bb60.again.backedge_crit_edge:                 ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

if.end68:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #15
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 2) #13
  %current_sg = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 41
  %88 = ptrtoint ptr %current_sg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %current_sg, align 4
  %current_sg_offset = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 42
  %90 = ptrtoint ptr %current_sg_offset to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %current_sg_offset, align 4
  %page_size = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 19
  %92 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %page_size, align 2
  %conv71 = zext i16 %93 to i32
  %call72 = call fastcc i32 @msb_sg_copy(ptr noundef %89, ptr noundef nonnull %sg, i32 noundef 2, i32 noundef %91, i32 noundef %conv71)
  call void @memstick_init_req_sg(ptr noundef %current_mrq, i8 noundef zeroext 2, ptr noundef nonnull %sg) #13
  %94 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 9, ptr %state, align 4
  br label %cleanup

sw.bb75:                                          ; preds = %again
  %95 = ptrtoint ptr %interrupt to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %interrupt, align 1
  %97 = and i8 %96, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool81.not = icmp eq i8 %97, 0
  br i1 %tobool81.not, label %if.then82, label %if.end87

if.then82:                                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #15
  %page_size83 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 19
  %98 = ptrtoint ptr %page_size83 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %page_size83, align 2
  %conv84 = zext i16 %99 to i32
  %current_sg_offset85 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 42
  %100 = ptrtoint ptr %current_sg_offset85 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %current_sg_offset85, align 4
  %add = add i32 %101, %conv84
  store i32 %add, ptr %current_sg_offset85, align 4
  tail call fastcc void @msb_exit_state_machine(ptr noundef %1, i32 noundef 0)
  br label %cleanup

if.end87:                                         ; preds = %sw.bb75
  %status1 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 0, i32 3
  %102 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %status1, align 1
  %conv90 = zext i8 %103 to i32
  %and91 = and i32 %conv90, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end107, label %do.body94

do.body94:                                        ; preds = %if.end87
  %104 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp95 = icmp sgt i32 %104, 0
  br i1 %cmp95, label %do.end100, label %do.body94.do.end105_crit_edge

do.body94.do.end105_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end105

do.end100:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #15
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #16
  br label %do.end105

do.end105:                                        ; preds = %do.end100, %do.body94.do.end105_crit_edge
  tail call fastcc void @msb_exit_state_machine(ptr noundef %1, i32 noundef -74)
  br label %cleanup

if.end107:                                        ; preds = %if.end87
  %and112 = and i32 %conv90, 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  %105 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp133 = icmp sgt i32 %105, 0
  br i1 %tobool113.not, label %do.body132, label %do.body115

do.body115:                                       ; preds = %if.end107
  br i1 %cmp133, label %do.end121, label %do.body115.do.end126_crit_edge

do.body115.do.end126_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end126

do.end121:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #15
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #16
  br label %do.end126

do.end126:                                        ; preds = %do.end121, %do.body115.do.end126_crit_edge
  %page_size127 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 19
  %106 = ptrtoint ptr %page_size127 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %page_size127, align 2
  %conv128 = zext i16 %107 to i32
  %current_sg_offset129 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 42
  %108 = ptrtoint ptr %current_sg_offset129 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %current_sg_offset129, align 4
  %add130 = add i32 %109, %conv128
  store i32 %add130, ptr %current_sg_offset129, align 4
  tail call fastcc void @msb_exit_state_machine(ptr noundef %1, i32 noundef -117)
  br label %cleanup

do.body132:                                       ; preds = %if.end107
  br i1 %cmp133, label %do.end138, label %do.body132.do.end143_crit_edge

do.body132.do.end143_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end143

do.end138:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #16
  br label %do.end143

do.end143:                                        ; preds = %do.end138, %do.body132.do.end143_crit_edge
  tail call fastcc void @msb_exit_state_machine(ptr noundef %1, i32 noundef -5)
  br label %cleanup

do.body145:                                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/memstick/core/ms_block.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #13, !srcloc !531
  unreachable

cleanup:                                          ; preds = %do.end143, %do.end126, %do.end105, %if.then82, %if.end68, %if.end53, %msb_read_regs.exit246.thread, %if.end42, %msb_read_regs.exit.thread, %msb_exit_state_machine.exit215, %sw.bb16.cleanup_crit_edge, %sw.bb14, %if.end12, %msb_write_regs.exit.thread, %msb_exit_state_machine.exit
  %retval.0 = phi i32 [ -6, %msb_exit_state_machine.exit ], [ -6, %do.end105 ], [ -6, %do.end126 ], [ -6, %do.end143 ], [ -6, %if.then82 ], [ 0, %if.end68 ], [ 0, %if.end53 ], [ 0, %if.end42 ], [ -6, %msb_exit_state_machine.exit215 ], [ 0, %sw.bb14 ], [ 0, %if.end12 ], [ 0, %msb_write_regs.exit.thread ], [ 0, %msb_read_regs.exit.thread ], [ 0, %msb_read_regs.exit246.thread ], [ 0, %sw.bb16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msb_mark_page_bad(ptr nocapture noundef %msb, i32 noundef %pba, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %page, i32 noundef %pba) #16
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call fastcc i32 @msb_reset(ptr noundef %msb, i1 noundef zeroext true)
  %conv = trunc i32 %pba to i16
  %conv4 = trunc i32 %page to i8
  tail call fastcc void @msb_set_overwrite_flag(ptr noundef %msb, i16 noundef zeroext %conv, i8 noundef zeroext %conv4, i8 noundef zeroext -65)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_read_int_reg(ptr nocapture noundef %msb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %1, i32 0, i32 4
  %state = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 45
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !525

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 259, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %int_polling = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 47
  %4 = ptrtoint ptr %int_polling to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %int_polling, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool19.not = icmp eq i8 %5, 0
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 50
  %int_timeout = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 48
  %7 = ptrtoint ptr %int_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %int_timeout, align 4
  %8 = ptrtoint ptr %int_polling to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %int_polling, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end
  %int_timeout23 = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 48
  %9 = ptrtoint ptr %int_timeout23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %int_timeout23, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp24 = icmp slt i32 %sub, 0
  br i1 %cmp24, label %if.then25, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %12 = getelementptr inbounds %struct.memstick_dev, ptr %1, i32 0, i32 4, i32 4
  %data = getelementptr inbounds %struct.anon.79, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %data, align 1
  br label %cleanup

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.then20
  %caps = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 9
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end27.if.else38_crit_edge, label %land.lhs.true

if.end27.if.else38_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else38

land.lhs.true:                                    ; preds = %if.end27
  %need_card_int = getelementptr inbounds %struct.memstick_dev, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %need_card_int to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %need_card_int, align 1
  %17 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %land.lhs.true.if.else38_crit_edge, label %land.lhs.true30

land.lhs.true.if.else38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else38

land.lhs.true30:                                  ; preds = %land.lhs.true
  %error = getelementptr inbounds %struct.memstick_dev, ptr %1, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool31.not = icmp eq i32 %19, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true30.if.else38_crit_edge

land.lhs.true30.if.else38_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else38

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  %int_reg = getelementptr inbounds %struct.memstick_dev, ptr %1, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %int_reg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %int_reg, align 2
  %22 = getelementptr inbounds %struct.memstick_dev, ptr %1, i32 0, i32 4, i32 4
  %data33 = getelementptr inbounds %struct.anon.79, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data33 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %data33, align 1
  %bf.clear37 = and i8 %bf.load, -65
  %24 = ptrtoint ptr %need_card_int to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.clear37, ptr %need_card_int, align 1
  br label %cleanup

if.else38:                                        ; preds = %land.lhs.true30.if.else38_crit_edge, %land.lhs.true.if.else38_crit_edge, %if.end27.if.else38_crit_edge
  tail call void @memstick_init_req(ptr noundef %current_mrq, i8 noundef zeroext 7, ptr noundef null, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %if.then32, %if.then25
  %retval.0 = phi i32 [ 0, %if.then25 ], [ 1, %if.else38 ], [ 0, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_sg_copy(ptr noundef %sg_from, ptr noundef %sg_to, i32 noundef %to_nents, i32 noundef %offset, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp.not163175 = icmp eq i32 %offset, 0
  br i1 %cmp.not163175, label %entry.while.cond17.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond17.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond17.preheader

while.cond17.preheader:                           ; preds = %if.end14, %if.end.while.cond17.preheader_crit_edge, %entry.while.cond17.preheader_crit_edge
  %sg_to.addr.0.ph.lcssa162 = phi ptr [ %call15, %if.end14 ], [ %sg_to, %entry.while.cond17.preheader_crit_edge ], [ %sg_to, %if.end.while.cond17.preheader_crit_edge ]
  %to_nents.addr.0.ph.lcssa158 = phi i32 [ %dec, %if.end14 ], [ %to_nents, %entry.while.cond17.preheader_crit_edge ], [ %to_nents, %if.end.while.cond17.preheader_crit_edge ]
  %len.addr.0.ph.lcssa154 = phi i32 [ %sub11, %if.end14 ], [ %len, %entry.while.cond17.preheader_crit_edge ], [ %len, %if.end.while.cond17.preheader_crit_edge ]
  %copied.0.ph.lcssa150 = phi i32 [ %6, %if.end14 ], [ 0, %entry.while.cond17.preheader_crit_edge ], [ 0, %if.end.while.cond17.preheader_crit_edge ]
  %sg_from.addr.0.lcssa = phi ptr [ %call16, %if.end14 ], [ %sg_from, %entry.while.cond17.preheader_crit_edge ], [ %call4, %if.end.while.cond17.preheader_crit_edge ]
  %length18187 = getelementptr inbounds %struct.scatterlist, ptr %sg_from.addr.0.lcssa, i32 0, i32 2
  %0 = ptrtoint ptr %length18187 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length18187, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.ph.lcssa154, i32 %1)
  %cmp19188 = icmp ugt i32 %len.addr.0.ph.lcssa154, %1
  br i1 %cmp19188, label %while.cond17.preheader.land.rhs_crit_edge, label %while.cond17.preheader.while.end37_crit_edge

while.cond17.preheader.while.end37_crit_edge:     ; preds = %while.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end37

while.cond17.preheader.land.rhs_crit_edge:        ; preds = %while.cond17.preheader
  br label %land.rhs

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %offset.addr.0165 = phi i32 [ %sub, %if.end.while.body_crit_edge ], [ %offset, %entry.while.body_crit_edge ]
  %sg_from.addr.0164 = phi ptr [ %call4, %if.end.while.body_crit_edge ], [ %sg_from, %entry.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg_from.addr.0164, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.0165, i32 %3)
  %cmp1.not = icmp ult i32 %offset.addr.0165, %3
  br i1 %cmp1.not, label %if.end5, label %if.then

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %sg_from.addr.0164 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_from.addr.0164, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sub = sub i32 %offset.addr.0165, %3
  %call4 = tail call ptr @sg_next(ptr noundef %sg_from.addr.0164) #13
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end.while.cond17.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.while.cond17.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond17.preheader

if.end5:                                          ; preds = %while.body
  %sub7 = sub i32 %3, %offset.addr.0165
  %6 = tail call i32 @llvm.umin.i32(i32 %len, i32 %sub7)
  %7 = ptrtoint ptr %sg_from.addr.0164 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sg_from.addr.0164, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !524

do.body2.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !532
  unreachable

sg_page.exit:                                     ; preds = %if.end5
  %9 = ptrtoint ptr %sg_to to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sg_to, align 4
  %and.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !524

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !533
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  %offset10 = getelementptr inbounds %struct.scatterlist, ptr %sg_from.addr.0164, i32 0, i32 1
  %11 = ptrtoint ptr %offset10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset10, align 4
  %add = add i32 %12, %offset.addr.0165
  %and.i91 = and i32 %8, -4
  %and.i.i92 = and i32 %10, 3
  %or.i.i = or i32 %and.i.i92, %and.i91
  %13 = ptrtoint ptr %sg_to to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i, ptr %sg_to, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg_to, i32 0, i32 1
  %14 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg_to, i32 0, i32 2
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %6, ptr %length.i, align 4
  %sub11 = sub i32 %len, %6
  %16 = ptrtoint ptr %sg_from.addr.0164 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_from.addr.0164, align 4
  %and.i93 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool.i94 = icmp ne i32 %and.i93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %tobool.not = icmp eq i32 %sub11, 0
  %or.cond = select i1 %tobool.i94, i1 true, i1 %tobool.not
  br i1 %or.cond, label %sg_set_page.exit.out_crit_edge, label %if.end14

sg_set_page.exit.out_crit_edge:                   ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end14:                                         ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call ptr @sg_next(ptr noundef %sg_to) #13
  %dec = add i32 %to_nents, -1
  %call16 = tail call ptr @sg_next(ptr noundef %sg_from.addr.0164) #13
  br label %while.cond17.preheader

land.rhs:                                         ; preds = %if.end34.land.rhs_crit_edge, %while.cond17.preheader.land.rhs_crit_edge
  %18 = phi i32 [ %31, %if.end34.land.rhs_crit_edge ], [ %1, %while.cond17.preheader.land.rhs_crit_edge ]
  %copied.1193 = phi i32 [ %add26, %if.end34.land.rhs_crit_edge ], [ %copied.0.ph.lcssa150, %while.cond17.preheader.land.rhs_crit_edge ]
  %len.addr.1192 = phi i32 [ %sub24, %if.end34.land.rhs_crit_edge ], [ %len.addr.0.ph.lcssa154, %while.cond17.preheader.land.rhs_crit_edge ]
  %to_nents.addr.1191 = phi i32 [ %dec20, %if.end34.land.rhs_crit_edge ], [ %to_nents.addr.0.ph.lcssa158, %while.cond17.preheader.land.rhs_crit_edge ]
  %sg_to.addr.1190 = phi ptr [ %call36, %if.end34.land.rhs_crit_edge ], [ %sg_to.addr.0.ph.lcssa162, %while.cond17.preheader.land.rhs_crit_edge ]
  %sg_from.addr.1189 = phi ptr [ %call35, %if.end34.land.rhs_crit_edge ], [ %sg_from.addr.0.lcssa, %while.cond17.preheader.land.rhs_crit_edge ]
  %dec20 = add i32 %to_nents.addr.1191, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_nents.addr.1191)
  %tobool21.not = icmp eq i32 %to_nents.addr.1191, 0
  br i1 %tobool21.not, label %land.rhs.while.end37_crit_edge, label %while.body22

land.rhs.while.end37_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end37

while.body22:                                     ; preds = %land.rhs
  %sub24 = sub i32 %len.addr.1192, %18
  %add26 = add i32 %18, %copied.1193
  %19 = ptrtoint ptr %sg_from.addr.1189 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_from.addr.1189, align 4
  %and.i.i95 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95)
  %tobool.i.not.i96 = icmp eq i32 %and.i.i95, 0
  br i1 %tobool.i.not.i96, label %sg_page.exit99, label %do.body2.i97, !prof !524

do.body2.i97:                                     ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !532
  unreachable

sg_page.exit99:                                   ; preds = %while.body22
  %21 = ptrtoint ptr %sg_to.addr.1190 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg_to.addr.1190, align 4
  %and.i.i.i100 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i100)
  %tobool.i.not.i.i101 = icmp eq i32 %and.i.i.i100, 0
  br i1 %tobool.i.not.i.i101, label %sg_set_page.exit107, label %do.body19.i.i102, !prof !524

do.body19.i.i102:                                 ; preds = %sg_page.exit99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !533
  unreachable

sg_set_page.exit107:                              ; preds = %sg_page.exit99
  %offset29 = getelementptr inbounds %struct.scatterlist, ptr %sg_from.addr.1189, i32 0, i32 1
  %23 = ptrtoint ptr %offset29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset29, align 4
  %and.i98 = and i32 %20, -4
  %and.i.i103 = and i32 %22, 3
  %or.i.i104 = or i32 %and.i.i103, %and.i98
  %25 = ptrtoint ptr %sg_to.addr.1190 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i104, ptr %sg_to.addr.1190, align 4
  %offset1.i105 = getelementptr inbounds %struct.scatterlist, ptr %sg_to.addr.1190, i32 0, i32 1
  %26 = ptrtoint ptr %offset1.i105 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %offset1.i105, align 4
  %length.i106 = getelementptr inbounds %struct.scatterlist, ptr %sg_to.addr.1190, i32 0, i32 2
  %27 = ptrtoint ptr %length.i106 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %18, ptr %length.i106, align 4
  %28 = ptrtoint ptr %sg_from.addr.1189 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_from.addr.1189, align 4
  %and.i108 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.i109 = icmp ne i32 %and.i108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24)
  %tobool32.not = icmp eq i32 %sub24, 0
  %or.cond89 = select i1 %tobool.i109, i1 true, i1 %tobool32.not
  br i1 %or.cond89, label %sg_set_page.exit107.out_crit_edge, label %if.end34

sg_set_page.exit107.out_crit_edge:                ; preds = %sg_set_page.exit107
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end34:                                         ; preds = %sg_set_page.exit107
  %call35 = tail call ptr @sg_next(ptr noundef %sg_from.addr.1189) #13
  %call36 = tail call ptr @sg_next(ptr noundef %sg_to.addr.1190) #13
  %length18 = getelementptr inbounds %struct.scatterlist, ptr %call35, i32 0, i32 2
  %30 = ptrtoint ptr %length18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length18, align 4
  %cmp19 = icmp ugt i32 %sub24, %31
  br i1 %cmp19, label %if.end34.land.rhs_crit_edge, label %if.end34.while.end37_crit_edge

if.end34.while.end37_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end37

if.end34.land.rhs_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.end37:                                      ; preds = %if.end34.while.end37_crit_edge, %land.rhs.while.end37_crit_edge, %while.cond17.preheader.while.end37_crit_edge
  %sg_from.addr.1.lcssa = phi ptr [ %sg_from.addr.0.lcssa, %while.cond17.preheader.while.end37_crit_edge ], [ %call35, %if.end34.while.end37_crit_edge ], [ %sg_from.addr.1189, %land.rhs.while.end37_crit_edge ]
  %sg_to.addr.1.lcssa = phi ptr [ %sg_to.addr.0.ph.lcssa162, %while.cond17.preheader.while.end37_crit_edge ], [ %call36, %if.end34.while.end37_crit_edge ], [ %sg_to.addr.1190, %land.rhs.while.end37_crit_edge ]
  %len.addr.1.lcssa = phi i32 [ %len.addr.0.ph.lcssa154, %while.cond17.preheader.while.end37_crit_edge ], [ %sub24, %if.end34.while.end37_crit_edge ], [ %len.addr.1192, %land.rhs.while.end37_crit_edge ]
  %copied.1.lcssa = phi i32 [ %copied.0.ph.lcssa150, %while.cond17.preheader.while.end37_crit_edge ], [ %add26, %if.end34.while.end37_crit_edge ], [ %copied.1193, %land.rhs.while.end37_crit_edge ]
  %to_nents.addr.2 = phi i32 [ %to_nents.addr.0.ph.lcssa158, %while.cond17.preheader.while.end37_crit_edge ], [ %dec20, %if.end34.while.end37_crit_edge ], [ -1, %land.rhs.while.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.lcssa)
  %tobool38.not = icmp eq i32 %len.addr.1.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_nents.addr.2)
  %tobool39.not = icmp eq i32 %to_nents.addr.2, 0
  %or.cond90 = select i1 %tobool38.not, i1 true, i1 %tobool39.not
  br i1 %or.cond90, label %while.end37.out_crit_edge, label %if.then40

while.end37.out_crit_edge:                        ; preds = %while.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then40:                                        ; preds = %while.end37
  %32 = ptrtoint ptr %sg_from.addr.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_from.addr.1.lcssa, align 4
  %and.i.i110 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i110)
  %tobool.i.not.i111 = icmp eq i32 %and.i.i110, 0
  br i1 %tobool.i.not.i111, label %sg_page.exit114, label %do.body2.i112, !prof !524

do.body2.i112:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !532
  unreachable

sg_page.exit114:                                  ; preds = %if.then40
  %34 = ptrtoint ptr %sg_to.addr.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg_to.addr.1.lcssa, align 4
  %and.i.i.i115 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i115)
  %tobool.i.not.i.i116 = icmp eq i32 %and.i.i.i115, 0
  br i1 %tobool.i.not.i.i116, label %sg_set_page.exit122, label %do.body19.i.i117, !prof !524

do.body19.i.i117:                                 ; preds = %sg_page.exit114
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !533
  unreachable

sg_set_page.exit122:                              ; preds = %sg_page.exit114
  call void @__sanitizer_cov_trace_pc() #15
  %offset42 = getelementptr inbounds %struct.scatterlist, ptr %sg_from.addr.1.lcssa, i32 0, i32 1
  %36 = ptrtoint ptr %offset42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset42, align 4
  %and.i113 = and i32 %33, -4
  %and.i.i118 = and i32 %35, 3
  %or.i.i119 = or i32 %and.i.i118, %and.i113
  %38 = ptrtoint ptr %sg_to.addr.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i119, ptr %sg_to.addr.1.lcssa, align 4
  %offset1.i120 = getelementptr inbounds %struct.scatterlist, ptr %sg_to.addr.1.lcssa, i32 0, i32 1
  %39 = ptrtoint ptr %offset1.i120 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %offset1.i120, align 4
  %length.i121 = getelementptr inbounds %struct.scatterlist, ptr %sg_to.addr.1.lcssa, i32 0, i32 2
  %40 = ptrtoint ptr %length.i121 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %len.addr.1.lcssa, ptr %length.i121, align 4
  %add43 = add i32 %copied.1.lcssa, %len.addr.1.lcssa
  br label %out

out:                                              ; preds = %sg_set_page.exit122, %while.end37.out_crit_edge, %sg_set_page.exit107.out_crit_edge, %sg_set_page.exit.out_crit_edge
  %sg_to.addr.2 = phi ptr [ %sg_to.addr.1.lcssa, %sg_set_page.exit122 ], [ %sg_to.addr.1.lcssa, %while.end37.out_crit_edge ], [ %sg_to, %sg_set_page.exit.out_crit_edge ], [ %sg_to.addr.1190, %sg_set_page.exit107.out_crit_edge ]
  %copied.2 = phi i32 [ %add43, %sg_set_page.exit122 ], [ %copied.1.lcssa, %while.end37.out_crit_edge ], [ %6, %sg_set_page.exit.out_crit_edge ], [ %add26, %sg_set_page.exit107.out_crit_edge ]
  %41 = ptrtoint ptr %sg_to.addr.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sg_to.addr.2, align 4
  %or.i = and i32 %42, -4
  %and.i123 = or i32 %or.i, 2
  store i32 %and.i123, ptr %sg_to.addr.2, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %copied.2, %out ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_init_req_sg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msb_set_overwrite_flag(ptr nocapture noundef %msb, i16 noundef zeroext %pba, i8 noundef zeroext %page, i8 noundef zeroext %flag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %read_only = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 18
  %0 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_only, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %block_address = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 2
  %2 = ptrtoint ptr %block_address to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %pba, ptr %block_address, align 2
  %page_address = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 4
  %3 = ptrtoint ptr %page_address to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %page, ptr %page_address, align 1
  %cp = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 3
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %cp, align 4
  %extra_data = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 4
  %5 = ptrtoint ptr %extra_data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %flag, ptr %extra_data, align 2
  %command_value = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 39
  %6 = ptrtoint ptr %command_value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 85, ptr %command_value, align 1
  %command_need_oob = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 40
  %7 = ptrtoint ptr %command_need_oob to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %command_need_oob, align 2
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %do.end, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %flag to i32
  %conv8 = zext i16 %pba to i32
  %conv9 = zext i8 %page to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv9) #16
  br label %do.end11

do.end11:                                         ; preds = %do.end, %if.end.do.end11_crit_edge
  %card1.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 1
  %9 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card1.i, align 4
  %state.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 45
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.not.i = icmp eq i32 %12, -1
  br i1 %cmp.not.i, label %do.end11.if.end.i_crit_edge, label %do.end.i, !prof !524

do.end11.if.end.i_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end11.if.end.i_crit_edge
  %int_polling.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 47
  %13 = ptrtoint ptr %int_polling.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %int_polling.i, align 4
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state.i, align 4
  %exit_error.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 46
  %15 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %exit_error.i, align 4
  %current_mrq.i = getelementptr inbounds %struct.memstick_dev, ptr %10, i32 0, i32 4
  %16 = call ptr @memset(ptr %current_mrq.i, i32 0, i32 28)
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @h_msb_send_command, ptr %next_request.i, align 4
  %host.i = getelementptr inbounds %struct.memstick_dev, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i, align 4
  tail call void @memstick_new_req(ptr noundef %19) #13
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %10, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp23.not.i = icmp eq i32 %21, -1
  br i1 %cmp23.not.i, label %if.end.i.return_crit_edge, label %do.end39.i, !prof !524

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end39.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %return

return:                                           ; preds = %do.end39.i, %if.end.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_msb_send_command(ptr noundef %card, ptr nocapture noundef writeonly %out_mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  %2 = ptrtoint ptr %out_mrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %current_mrq, ptr %out_mrq, align 4
  %error = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %again.preheader, label %do.body

again.preheader:                                  ; preds = %entry
  %state = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 45
  %5 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 4
  %data = getelementptr inbounds %struct.anon.79, ptr %5, i32 0, i32 1
  %command_need_oob = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 40
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr147 = load i32, ptr %state, align 4
  br label %again

do.body:                                          ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %do.end, label %do.body.do.end5_crit_edge

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #16
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %error, align 4
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %9 = phi i32 [ %.pr, %do.end ], [ %4, %do.body.do.end5_crit_edge ]
  %state.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 45
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp eq i32 %11, -1
  br i1 %cmp.i, label %do.end.i, label %do.end5.if.end.i_crit_edge, !prof !525

do.end5.if.end.i_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end5.if.end.i_crit_edge
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %state.i, align 4
  %exit_error.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %13 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %exit_error.i, align 4
  %card.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card.i, align 4
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @h_msb_default_bad, ptr %next_request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not.i = icmp eq i32 %9, 0
  br i1 %tobool20.not.i, label %if.end.i.msb_exit_state_machine.exit_crit_edge, label %if.then21.i

if.end.i.msb_exit_state_machine.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %reg_addr.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %17 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67372036, ptr %reg_addr.i.i, align 4
  %18 = ptrtoint ptr %addr_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %addr_valid.i.i, align 4
  br label %msb_exit_state_machine.exit

msb_exit_state_machine.exit:                      ; preds = %if.then21.i, %if.end.i.msb_exit_state_machine.exit_crit_edge
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i, align 4
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %20, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i) #13
  br label %cleanup

again:                                            ; preds = %again.backedge, %again.preheader
  %21 = phi i32 [ %storemerge, %again.backedge ], [ %.pr147, %again.preheader ]
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.284)
  switch i32 %21, label %do.body51 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb25
    i32 3, label %sw.bb27
    i32 4, label %again.sw.bb33_crit_edge
  ]

again.sw.bb33_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

sw.bb:                                            ; preds = %again
  %param = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 3
  %card.i82 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %card.i82 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card.i82, align 4
  %current_mrq.i = getelementptr inbounds %struct.memstick_dev, ptr %24, i32 0, i32 4
  %reg_addr.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %w_offset.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 2
  %25 = ptrtoint ptr %w_offset.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %w_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %26)
  %cmp.not.i = icmp eq i8 %26, 16
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.msb_write_regs.exit.thread_crit_edge

sw.bb.msb_write_regs.exit.thread_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

lor.lhs.false.i:                                  ; preds = %sw.bb
  %w_length.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %27 = ptrtoint ptr %w_length.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %w_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %28)
  %cmp4.not.i = icmp eq i8 %28, 6
  br i1 %cmp4.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge

lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %addr_valid.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %29 = ptrtoint ptr %addr_valid.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %addr_valid.i, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge, label %if.end12

lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

msb_write_regs.exit.thread:                       ; preds = %lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge, %lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge, %sw.bb.msb_write_regs.exit.thread_crit_edge
  %31 = ptrtoint ptr %w_offset.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 16, ptr %w_offset.i, align 2
  %w_length12.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %32 = ptrtoint ptr %w_length12.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 6, ptr %w_length12.i, align 1
  %addr_valid13.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %33 = ptrtoint ptr %addr_valid13.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %addr_valid13.i, align 4
  tail call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 8, ptr noundef %reg_addr.i, i32 noundef 4) #13
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 11, ptr noundef %param, i32 noundef 6) #13
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %state, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %again
  %35 = ptrtoint ptr %command_need_oob to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %command_need_oob, align 2, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool15.not = icmp eq i8 %36, 0
  br i1 %tobool15.not, label %sw.bb14.again.backedge_crit_edge, label %if.end18

sw.bb14.again.backedge_crit_edge:                 ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

again.backedge:                                   ; preds = %if.end43.again.backedge_crit_edge, %sw.bb14.again.backedge_crit_edge
  %storemerge = phi i32 [ 2, %sw.bb14.again.backedge_crit_edge ], [ 3, %if.end43.again.backedge_crit_edge ]
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge, ptr %state, align 4
  br label %again

if.end18:                                         ; preds = %sw.bb14
  %extra_data = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 4
  %card.i84 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %card.i84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card.i84, align 4
  %current_mrq.i85 = getelementptr inbounds %struct.memstick_dev, ptr %39, i32 0, i32 4
  %reg_addr.i86 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %w_offset.i87 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 2
  %40 = ptrtoint ptr %w_offset.i87 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %w_offset.i87, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %41)
  %cmp.not.i89 = icmp eq i8 %41, 22
  br i1 %cmp.not.i89, label %lor.lhs.false.i93, label %if.end18.msb_write_regs.exit102.thread_crit_edge

if.end18.msb_write_regs.exit102.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit102.thread

lor.lhs.false.i93:                                ; preds = %if.end18
  %w_length.i90 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %42 = ptrtoint ptr %w_length.i90 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %w_length.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp4.not.i92 = icmp eq i8 %43, 4
  br i1 %cmp4.not.i92, label %lor.lhs.false6.i96, label %lor.lhs.false.i93.msb_write_regs.exit102.thread_crit_edge

lor.lhs.false.i93.msb_write_regs.exit102.thread_crit_edge: ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit102.thread

lor.lhs.false6.i96:                               ; preds = %lor.lhs.false.i93
  %addr_valid.i94 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %44 = ptrtoint ptr %addr_valid.i94 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %addr_valid.i94, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i95 = icmp eq i8 %45, 0
  br i1 %tobool.not.i95, label %lor.lhs.false6.i96.msb_write_regs.exit102.thread_crit_edge, label %if.end23

lor.lhs.false6.i96.msb_write_regs.exit102.thread_crit_edge: ; preds = %lor.lhs.false6.i96
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit102.thread

msb_write_regs.exit102.thread:                    ; preds = %lor.lhs.false6.i96.msb_write_regs.exit102.thread_crit_edge, %lor.lhs.false.i93.msb_write_regs.exit102.thread_crit_edge, %if.end18.msb_write_regs.exit102.thread_crit_edge
  %46 = ptrtoint ptr %w_offset.i87 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 22, ptr %w_offset.i87, align 2
  %w_length12.i97 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %47 = ptrtoint ptr %w_length12.i97 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %w_length12.i97, align 1
  %addr_valid13.i98 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %48 = ptrtoint ptr %addr_valid13.i98 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %addr_valid13.i98, align 4
  tail call void @memstick_init_req(ptr noundef %current_mrq.i85, i8 noundef zeroext 8, ptr noundef %reg_addr.i86, i32 noundef 4) #13
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false6.i96
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_init_req(ptr noundef %current_mrq.i85, i8 noundef zeroext 11, ptr noundef %extra_data, i32 noundef 4) #13
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %state, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  %command_value = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 39
  tail call void @memstick_init_req(ptr noundef %current_mrq, i8 noundef zeroext 14, ptr noundef %command_value, i32 noundef 1) #13
  %50 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %state, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %again
  %51 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %state, align 4
  %call29 = tail call fastcc i32 @msb_read_int_reg(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %sw.bb27.sw.bb33_crit_edge, label %sw.bb27.cleanup_crit_edge

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb27.sw.bb33_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb27.sw.bb33_crit_edge, %again.sw.bb33_crit_edge
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %data, align 1
  %conv = zext i8 %53 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %sw.bb33
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i104 = icmp eq i32 %55, -1
  br i1 %cmp.i104, label %do.end.i105, label %if.then35.msb_exit_state_machine.exit114_crit_edge, !prof !525

if.then35.msb_exit_state_machine.exit114_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit114

do.end.i105:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit114

msb_exit_state_machine.exit114:                   ; preds = %do.end.i105, %if.then35.msb_exit_state_machine.exit114_crit_edge
  %56 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %state, align 4
  %exit_error.i106 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %57 = ptrtoint ptr %exit_error.i106 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -5, ptr %exit_error.i106, align 4
  %card.i107 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %card.i107 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card.i107, align 4
  %next_request.i108 = getelementptr inbounds %struct.memstick_dev, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %next_request.i108 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @h_msb_default_bad, ptr %next_request.i108, align 4
  %reg_addr.i.i110 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i111 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %61 = ptrtoint ptr %reg_addr.i.i110 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 67372036, ptr %reg_addr.i.i110, align 4
  %62 = ptrtoint ptr %addr_valid.i.i111 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %addr_valid.i.i111, align 4
  %63 = load ptr, ptr %card.i107, align 4
  %mrq_complete.i113 = getelementptr inbounds %struct.memstick_dev, ptr %63, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i113) #13
  br label %cleanup

if.end37:                                         ; preds = %sw.bb33
  %and39 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end37
  %64 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp.i116 = icmp eq i32 %65, -1
  br i1 %cmp.i116, label %do.end.i117, label %if.then41.msb_exit_state_machine.exit126_crit_edge, !prof !525

if.then41.msb_exit_state_machine.exit126_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit126

do.end.i117:                                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit126

msb_exit_state_machine.exit126:                   ; preds = %do.end.i117, %if.then41.msb_exit_state_machine.exit126_crit_edge
  %66 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %state, align 4
  %exit_error.i118 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %67 = ptrtoint ptr %exit_error.i118 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -74, ptr %exit_error.i118, align 4
  %card.i119 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %card.i119 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card.i119, align 4
  %next_request.i120 = getelementptr inbounds %struct.memstick_dev, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %next_request.i120 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @h_msb_default_bad, ptr %next_request.i120, align 4
  %reg_addr.i.i122 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i123 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %71 = ptrtoint ptr %reg_addr.i.i122 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 67372036, ptr %reg_addr.i.i122, align 4
  %72 = ptrtoint ptr %addr_valid.i.i123 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %addr_valid.i.i123, align 4
  %73 = load ptr, ptr %card.i119, align 4
  %mrq_complete.i125 = getelementptr inbounds %struct.memstick_dev, ptr %73, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i125) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %and45 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.again.backedge_crit_edge, label %if.end49

if.end43.again.backedge_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

if.end49:                                         ; preds = %if.end43
  %74 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp.i128 = icmp eq i32 %75, -1
  br i1 %cmp.i128, label %do.end.i129, label %if.end49.msb_exit_state_machine.exit135_crit_edge, !prof !525

if.end49.msb_exit_state_machine.exit135_crit_edge: ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit135

do.end.i129:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit135

msb_exit_state_machine.exit135:                   ; preds = %do.end.i129, %if.end49.msb_exit_state_machine.exit135_crit_edge
  %76 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %state, align 4
  %exit_error.i130 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %77 = ptrtoint ptr %exit_error.i130 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %exit_error.i130, align 4
  %card.i131 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %78 = ptrtoint ptr %card.i131 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card.i131, align 4
  %next_request.i132 = getelementptr inbounds %struct.memstick_dev, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %next_request.i132 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @h_msb_default_bad, ptr %next_request.i132, align 4
  %81 = load ptr, ptr %card.i131, align 4
  %mrq_complete.i134 = getelementptr inbounds %struct.memstick_dev, ptr %81, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i134) #13
  br label %cleanup

do.body51:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/memstick/core/ms_block.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 651, 0\0A.popsection", ""() #13, !srcloc !534
  unreachable

cleanup:                                          ; preds = %msb_exit_state_machine.exit135, %msb_exit_state_machine.exit126, %msb_exit_state_machine.exit114, %sw.bb27.cleanup_crit_edge, %sw.bb25, %if.end23, %msb_write_regs.exit102.thread, %if.end12, %msb_write_regs.exit.thread, %msb_exit_state_machine.exit
  %retval.0 = phi i32 [ -6, %msb_exit_state_machine.exit ], [ -6, %msb_exit_state_machine.exit114 ], [ -6, %msb_exit_state_machine.exit126 ], [ -6, %msb_exit_state_machine.exit135 ], [ 0, %sw.bb25 ], [ 0, %if.end23 ], [ 0, %if.end12 ], [ 0, %msb_write_regs.exit.thread ], [ 0, %msb_write_regs.exit102.thread ], [ 0, %sw.bb27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msb_cache_flush_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %need_flush_cache = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %need_flush_cache to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %need_flush_cache, align 4
  %io_queue = getelementptr i8, ptr %t, i32 -188
  %1 = ptrtoint ptr %io_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_queue, align 4
  %io_work = getelementptr i8, ptr %t, i32 -180
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %io_work) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msb_mark_block_used(ptr nocapture noundef %msb, i32 noundef %pba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %div.i = sdiv i32 %pba, 512
  %used_blocks_bitmap = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 25
  %0 = ptrtoint ptr %used_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %used_blocks_bitmap, align 4
  %div3.i = lshr i32 %pba, 5
  %arrayidx.i = getelementptr i32, ptr %1, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %pba, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %pba) #16
  %read_only = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 18
  %6 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %read_only, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %for.cond.preheader.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

for.cond.preheader.i:                             ; preds = %if.end
  %zone_count.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 22
  %8 = ptrtoint ptr %zone_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zone_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15.i = icmp sgt i32 %9, 0
  br i1 %cmp15.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %total_free_blocks.016.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i15 = getelementptr %struct.msb_data, ptr %msb, i32 0, i32 28, i32 %i.017.i
  %10 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i15, align 4
  %add.i = add i32 %11, %total_free_blocks.016.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %total_free_blocks.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %block_count.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 23
  %12 = ptrtoint ptr %block_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block_count.i, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %1, i32 noundef %13) #13
  %sub.i = sub i32 %13, %call4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %total_free_blocks.0.lcssa.i)
  %cmp2.i = icmp eq i32 %sub.i, %total_free_blocks.0.lcssa.i
  br i1 %cmp2.i, label %for.end.i.if.end6_crit_edge, label %msb_validate_used_block_bitmap.exit

for.end.i.if.end6_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

msb_validate_used_block_bitmap.exit:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #16
  %read_only.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 18
  %14 = ptrtoint ptr %read_only.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %read_only.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %for.end.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %15 = ptrtoint ptr %used_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %used_blocks_bitmap, align 4
  %add.ptr.i = getelementptr i32, ptr %16, i32 %div3.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %18, %4
  store i32 %or.i, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.msb_data, ptr %msb, i32 0, i32 28, i32 %div.i
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %msb_validate_used_block_bitmap.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_erase_block(ptr noundef %msb, i16 noundef zeroext %pba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %read_only = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 18
  %0 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_only, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %do.body.do.end5_crit_edge

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %pba to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %conv) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %block_address = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 2
  %page_address = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 4
  %cp = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 3
  %command_value = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 39
  %command_need_oob = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 40
  %card1.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 45
  %int_polling.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 47
  %exit_error.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 46
  %3 = ptrtoint ptr %block_address to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %pba, ptr %block_address, align 2
  %4 = ptrtoint ptr %page_address to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %page_address, align 1
  %5 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cp, align 4
  %6 = ptrtoint ptr %command_value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -103, ptr %command_value, align 1
  %7 = ptrtoint ptr %command_need_oob to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %command_need_oob, align 2
  %8 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1.i, align 4
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, -1
  br i1 %cmp.not.i, label %do.end5.if.end.i_crit_edge, label %do.end.i, !prof !524

do.end5.if.end.i_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

for.cond:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %block_address to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %pba, ptr %block_address, align 2
  %13 = ptrtoint ptr %page_address to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %page_address, align 1
  %14 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %cp, align 4
  %15 = ptrtoint ptr %command_value to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -103, ptr %command_value, align 1
  %16 = ptrtoint ptr %command_need_oob to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %command_need_oob, align 2
  %17 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card1.i, align 4
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.not.i.1 = icmp eq i32 %20, -1
  br i1 %cmp.not.i.1, label %for.cond.if.end.i.1_crit_edge, label %do.end.i.1, !prof !524

for.cond.if.end.i.1_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.1

do.end.i.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %do.end.i.1, %for.cond.if.end.i.1_crit_edge
  %21 = ptrtoint ptr %int_polling.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %int_polling.i, align 4
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %state.i, align 4
  %23 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %exit_error.i, align 4
  %current_mrq.i.1 = getelementptr inbounds %struct.memstick_dev, ptr %18, i32 0, i32 4
  %24 = call ptr @memset(ptr %current_mrq.i.1, i32 0, i32 28)
  %next_request.i.1 = getelementptr inbounds %struct.memstick_dev, ptr %18, i32 0, i32 6
  %25 = ptrtoint ptr %next_request.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @h_msb_send_command, ptr %next_request.i.1, align 4
  %host.i.1 = getelementptr inbounds %struct.memstick_dev, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %host.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host.i.1, align 4
  tail call void @memstick_new_req(ptr noundef %27) #13
  %mrq_complete.i.1 = getelementptr inbounds %struct.memstick_dev, ptr %18, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i.1) #13
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp23.not.i.1 = icmp eq i32 %29, -1
  br i1 %cmp23.not.i.1, label %if.end.i.1.msb_run_state_machine.exit.1_crit_edge, label %do.end39.i.1, !prof !524

if.end.i.1.msb_run_state_machine.exit.1_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_run_state_machine.exit.1

do.end39.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %msb_run_state_machine.exit.1

msb_run_state_machine.exit.1:                     ; preds = %do.end39.i.1, %if.end.i.1.msb_run_state_machine.exit.1_crit_edge
  %30 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %exit_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool13.not.1 = icmp eq i32 %31, 0
  br i1 %tobool13.not.1, label %msb_run_state_machine.exit.1.do.body29_crit_edge, label %lor.lhs.false.1

msb_run_state_machine.exit.1.do.body29_crit_edge: ; preds = %msb_run_state_machine.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body29

lor.lhs.false.1:                                  ; preds = %msb_run_state_machine.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  %call14.1 = tail call fastcc i32 @msb_reset(ptr noundef %msb, i1 noundef zeroext true)
  br label %do.end22

do.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end5.if.end.i_crit_edge
  %32 = ptrtoint ptr %int_polling.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %int_polling.i, align 4
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %state.i, align 4
  %34 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %exit_error.i, align 4
  %current_mrq.i = getelementptr inbounds %struct.memstick_dev, ptr %9, i32 0, i32 4
  %35 = call ptr @memset(ptr %current_mrq.i, i32 0, i32 28)
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @h_msb_send_command, ptr %next_request.i, align 4
  %host.i = getelementptr inbounds %struct.memstick_dev, ptr %9, i32 0, i32 1
  %37 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host.i, align 4
  tail call void @memstick_new_req(ptr noundef %38) #13
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %9, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp23.not.i = icmp eq i32 %40, -1
  br i1 %cmp23.not.i, label %if.end.i.msb_run_state_machine.exit_crit_edge, label %do.end39.i, !prof !524

if.end.i.msb_run_state_machine.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_run_state_machine.exit

do.end39.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %msb_run_state_machine.exit

msb_run_state_machine.exit:                       ; preds = %do.end39.i, %if.end.i.msb_run_state_machine.exit_crit_edge
  %41 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %exit_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool13.not = icmp eq i32 %42, 0
  br i1 %tobool13.not, label %msb_run_state_machine.exit.do.body29_crit_edge, label %lor.lhs.false

msb_run_state_machine.exit.do.body29_crit_edge:   ; preds = %msb_run_state_machine.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body29

lor.lhs.false:                                    ; preds = %msb_run_state_machine.exit
  %call14 = tail call fastcc i32 @msb_reset(ptr noundef %msb, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond, label %lor.lhs.false.do.end22_crit_edge

lor.lhs.false.do.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

do.end22:                                         ; preds = %lor.lhs.false.do.end22_crit_edge, %lor.lhs.false.1
  %.lcssa74 = phi i32 [ %42, %lor.lhs.false.do.end22_crit_edge ], [ %31, %lor.lhs.false.1 ]
  %conv24 = zext i16 %pba to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %conv24) #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %conv24) #16
  %call1.i = tail call fastcc i32 @msb_reset(ptr noundef %msb, i1 noundef zeroext true) #13
  tail call fastcc void @msb_set_overwrite_flag(ptr noundef %msb, i16 noundef zeroext %pba, i8 noundef zeroext 0, i8 noundef zeroext 127) #13
  br label %do.body29

do.body29:                                        ; preds = %do.end22, %msb_run_state_machine.exit.do.body29_crit_edge, %msb_run_state_machine.exit.1.do.body29_crit_edge
  %error.169 = phi i32 [ %.lcssa74, %do.end22 ], [ 0, %msb_run_state_machine.exit.1.do.body29_crit_edge ], [ 0, %msb_run_state_machine.exit.do.body29_crit_edge ]
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp30 = icmp sgt i32 %43, 1
  %conv37 = zext i16 %pba to i32
  br i1 %cmp30, label %do.end35, label %do.body29.do.end41_crit_edge

do.body29.do.end41_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef %conv37) #16
  br label %do.end41

do.end41:                                         ; preds = %do.end35, %do.body29.do.end41_crit_edge
  %div.i.i707172 = lshr i16 %pba, 9
  %div.i.i70.zext = zext i16 %div.i.i707172 to i32
  %used_blocks_bitmap.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 25
  %44 = ptrtoint ptr %used_blocks_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %used_blocks_bitmap.i, align 4
  %div3.i.i = lshr i32 %conv37, 5
  %arrayidx.i.i = getelementptr i32, ptr %45, i32 %div3.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv37, 31
  %48 = shl nuw i32 1, %and.i.i
  %49 = and i32 %47, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %do.end.i64, label %if.end.i65

do.end.i64:                                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %conv37) #16
  %50 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %read_only, align 4
  br label %msb_mark_block_unused.exit

if.end.i65:                                       ; preds = %do.end41
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i, label %if.end.i65.if.end6.i_crit_edge, label %for.cond.preheader.i.i

if.end.i65.if.end6.i_crit_edge:                   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

for.cond.preheader.i.i:                           ; preds = %if.end.i65
  %zone_count.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 22
  %52 = ptrtoint ptr %zone_count.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %zone_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp15.i.i = icmp sgt i32 %53, 0
  br i1 %cmp15.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.017.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %total_free_blocks.016.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i16.i = getelementptr %struct.msb_data, ptr %msb, i32 0, i32 28, i32 %i.017.i.i
  %54 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i16.i, align 4
  %add.i.i = add i32 %55, %total_free_blocks.016.i.i
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %53
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %total_free_blocks.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %add.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %block_count.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 23
  %56 = ptrtoint ptr %block_count.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %block_count.i.i, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %45, i32 noundef %57) #13
  %sub.i.i = sub i32 %57, %call4.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %total_free_blocks.0.lcssa.i.i)
  %cmp2.i.i = icmp eq i32 %sub.i.i, %total_free_blocks.0.lcssa.i.i
  br i1 %cmp2.i.i, label %for.end.i.i.if.end6.i_crit_edge, label %msb_validate_used_block_bitmap.exit.i

for.end.i.i.if.end6.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

msb_validate_used_block_bitmap.exit.i:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #16
  %58 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %read_only, align 4
  br label %msb_mark_block_unused.exit

if.end6.i:                                        ; preds = %for.end.i.i.if.end6.i_crit_edge, %if.end.i65.if.end6.i_crit_edge
  %59 = ptrtoint ptr %used_blocks_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %used_blocks_bitmap.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %60, i32 %div3.i.i
  %neg.i.i = xor i32 %48, -1
  %61 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i, align 4
  %and.i15.i = and i32 %62, %neg.i.i
  store i32 %and.i15.i, ptr %add.ptr.i.i, align 4
  %arrayidx.i = getelementptr %struct.msb_data, ptr %msb, i32 0, i32 28, i32 %div.i.i70.zext
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %64, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  br label %msb_mark_block_unused.exit

msb_mark_block_unused.exit:                       ; preds = %if.end6.i, %msb_validate_used_block_bitmap.exit.i, %do.end.i64
  %erased_blocks_bitmap = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 26
  %65 = ptrtoint ptr %erased_blocks_bitmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %erased_blocks_bitmap, align 4
  %add.ptr.i = getelementptr i32, ptr %66, i32 %div3.i.i
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %68, %48
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %msb_mark_block_unused.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.169, %msb_mark_block_unused.exit ], [ -30, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_sq_tag_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segment_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msb_io_work(ptr noundef %work) #2 align 64 {
entry:
  %sg_tmp.i.i = alloca [10 x %struct.scatterlist], align 4
  %last_sg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -292
  %prealloc_sg = getelementptr i8, ptr %work, i32 232
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %req10 = getelementptr i8, ptr %work, i32 -20
  %q_lock = getelementptr i8, ptr %work, i32 -276
  %need_flush_cache = getelementptr i8, ptr %work, i32 176
  %queue = getelementptr i8, ptr %work, i32 -280
  %page_size = getelementptr i8, ptr %work, i32 62
  %pages_in_block = getelementptr i8, ptr %work, i32 68
  %block_size.i = getelementptr i8, ptr %work, i32 64
  %cache_block_lba.i = getelementptr i8, ptr %work, i32 172
  %cache_flush_timer.i.i = getelementptr i8, ptr %work, i32 180
  %valid_cache_bitmap.i.i739 = getelementptr i8, ptr %work, i32 168
  %lba_to_pba_table.i.i = getelementptr i8, ptr %work, i32 92
  %cache.i.i = getelementptr i8, ptr %work, i32 164
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %do.end4
  call void @_raw_spin_lock_irq(ptr noundef %q_lock) #13
  %1 = ptrtoint ptr %need_flush_cache to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %need_flush_cache, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %need_flush_cache to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %need_flush_cache, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  %call8 = call fastcc i32 @msb_cache_flush(ptr noundef %add.ptr)
  br label %while.cond.backedge

if.end9:                                          ; preds = %while.cond
  %4 = ptrtoint ptr %req10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req10, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.body13, label %if.end25

do.body13:                                        ; preds = %if.end9
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp14 = icmp sgt i32 %6, 1
  br i1 %cmp14, label %do.end18, label %do.body13.do.end23_crit_edge

do.body13.do.end23_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190) #16
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body13.do.end23_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  ret void

if.end25:                                         ; preds = %if.end9
  call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp28 = icmp sgt i32 %7, 1
  br i1 %cmp28, label %do.end32, label %if.end25.do.end37_crit_edge

if.end25.do.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #16
  br label %do.end37

do.end37:                                         ; preds = %do.end32, %if.end25.do.end37_crit_edge
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i) #13
  %10 = ptrtoint ptr %last_sg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %last_sg.i, align 4
  %call.i = call i32 @__blk_rq_map_sg(ptr noundef %9, ptr noundef nonnull %5, ptr noundef %prealloc_sg, ptr noundef nonnull %last_sg.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i) #13
  %__sector.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 9
  %11 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %__sector.i, align 8
  %13 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %page_size, align 2
  %15 = lshr i16 %14, 9
  %div = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %12)
  %cmp212 = icmp ult i64 %12, 4294967296
  br i1 %cmp212, label %if.then216, label %if.else222, !prof !524

if.then216:                                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %conv217 = trunc i64 %12 to i32
  %div220 = udiv i32 %conv217, %div
  %conv221 = zext i32 %div220 to i64
  br label %if.end226

if.else222:                                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %16 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %12) #20, !srcloc !535
  %asmresult1.i = extractvalue { i64, i64 } %16, 1
  br label %if.end226

if.end226:                                        ; preds = %if.else222, %if.then216
  %lba.0 = phi i64 [ %conv221, %if.then216 ], [ %asmresult1.i, %if.else222 ]
  %17 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pages_in_block, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %lba.0)
  %cmp429 = icmp ult i64 %lba.0, 4294967296
  br i1 %cmp429, label %if.then437, label %if.else443, !prof !524

if.then437:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #15
  %conv438 = trunc i64 %lba.0 to i32
  %conv438.frozen = freeze i32 %conv438
  %.frozen = freeze i32 %18
  %div441 = udiv i32 %conv438.frozen, %.frozen
  %19 = mul i32 %div441, %.frozen
  %rem439.decomposed = sub i32 %conv438.frozen, %19
  br label %if.end447

if.else443:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #15
  %20 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %lba.0) #20, !srcloc !535
  %asmresult.i732 = extractvalue { i64, i64 } %20, 0
  %asmresult1.i733 = extractvalue { i64, i64 } %20, 1
  %shr.i734 = lshr i64 %asmresult.i732, 32
  %conv.i735 = trunc i64 %shr.i734 to i32
  %extract.t811 = trunc i64 %asmresult1.i733 to i32
  br label %if.end447

if.end447:                                        ; preds = %if.else443, %if.then437
  %lba.1.off0 = phi i32 [ %div441, %if.then437 ], [ %extract.t811, %if.else443 ]
  %__rem229.0 = phi i32 [ %rem439.decomposed, %if.then437 ], [ %conv.i735, %if.else443 ]
  %21 = ptrtoint ptr %req10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req10, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd_flags, align 4
  %and.i736 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i736)
  %tobool.i.not = icmp eq i32 %and.i736, 0
  %__data_len.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 8
  %25 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %__data_len.i, align 8
  br i1 %tobool.i.not, label %if.then456, label %if.else460

if.then456:                                       ; preds = %if.end447
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp23.i = icmp sgt i32 %26, 0
  br i1 %cmp23.i, label %if.then456.while.body.i_crit_edge, label %if.then456.if.end494_crit_edge

if.then456.if.end494_crit_edge:                   ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end494

if.then456.while.body.i_crit_edge:                ; preds = %if.then456
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then456.while.body.i_crit_edge
  %len.0 = phi i32 [ %add3.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.then456.while.body.i_crit_edge ]
  %offset.030.i = phi i32 [ %add.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.then456.while.body.i_crit_edge ]
  %lba.addr.029.i = phi i32 [ %spec.select20.i, %if.end.i.while.body.i_crit_edge ], [ %lba.1.off0, %if.then456.while.body.i_crit_edge ]
  %page.addr.024.i = phi i32 [ %spec.select.i, %if.end.i.while.body.i_crit_edge ], [ %__rem229.0, %if.then456.while.body.i_crit_edge ]
  %27 = ptrtoint ptr %lba_to_pba_table.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lba_to_pba_table.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %28, i32 %lba.addr.029.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %30 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %sg_tmp.i.i) #13
  %31 = call ptr @memset(ptr %sg_tmp.i.i, i32 255, i32 200)
  %32 = ptrtoint ptr %cache_block_lba.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cache_block_lba.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %lba.addr.029.i)
  %cmp.i.i = icmp eq i32 %33, %lba.addr.029.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %while.body.i.do.body20.i.i_crit_edge

while.body.i.do.body20.i.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body20.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i
  %div3.i.i.i = lshr i32 %page.addr.024.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %valid_cache_bitmap.i.i739, i32 %div3.i.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %page.addr.024.i, 31
  %36 = shl nuw i32 1, %and.i.i.i
  %37 = and i32 %35, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body20.i.i_crit_edge, label %do.body.i.i

land.lhs.true.i.i.do.body20.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body20.i.i

do.body.i.i:                                      ; preds = %land.lhs.true.i.i
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp2.i.i = icmp sgt i32 %38, 1
  br i1 %cmp2.i.i, label %do.end.i.i, label %do.body.i.i.do.end8.i.i_crit_edge

do.body.i.i.do.end8.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, i32 noundef %lba.addr.029.i, i32 noundef %conv.i.i, i32 noundef %page.addr.024.i) #16
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end8.i.i_crit_edge
  call void @sg_init_table(ptr noundef nonnull %sg_tmp.i.i, i32 noundef 10) #13
  %39 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %page_size, align 2
  %conv10.i.i = zext i16 %40 to i32
  %call11.i.i = call fastcc i32 @msb_sg_copy(ptr noundef %prealloc_sg, ptr noundef nonnull %sg_tmp.i.i, i32 noundef 10, i32 noundef %offset.030.i, i32 noundef %conv10.i.i) #13
  %call14.i.i = call i32 @sg_nents(ptr noundef nonnull %sg_tmp.i.i) #13
  %41 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cache.i.i, align 4
  %43 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %page_size, align 2
  %conv16.i.i = zext i16 %44 to i32
  %mul.i.i = mul i32 %page.addr.024.i, %conv16.i.i
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %mul.i.i
  %call19.i.i = call i32 @sg_copy_from_buffer(ptr noundef nonnull %sg_tmp.i.i, i32 noundef %call14.i.i, ptr noundef %add.ptr.i.i, i32 noundef %conv16.i.i) #13
  br label %if.end.i

do.body20.i.i:                                    ; preds = %land.lhs.true.i.i.do.body20.i.i_crit_edge, %while.body.i.do.body20.i.i_crit_edge
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp21.i.i = icmp sgt i32 %45, 1
  br i1 %cmp21.i.i, label %do.end26.i.i, label %do.body20.i.i.do.end31.i.i_crit_edge

do.body20.i.i.do.end31.i.i_crit_edge:             ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31.i.i

do.end26.i.i:                                     ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, i32 noundef %lba.addr.029.i, i32 noundef %conv.i.i, i32 noundef %page.addr.024.i) #16
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %do.end26.i.i, %do.body20.i.i.do.end31.i.i_crit_edge
  %conv33.i.i = trunc i32 %page.addr.024.i to i8
  %call34.i.i = call fastcc i32 @msb_read_page(ptr noundef %add.ptr, i16 noundef zeroext %30, i8 noundef zeroext %conv33.i.i, ptr noundef null, ptr noundef %prealloc_sg, i32 noundef %offset.030.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end37.i.i, label %msb_cache_read.exit.i

if.end37.i.i:                                     ; preds = %do.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call38.i.i = call fastcc i32 @msb_cache_write(ptr noundef %add.ptr, i32 noundef %lba.addr.029.i, i32 noundef %page.addr.024.i, i1 noundef zeroext true, ptr noundef %prealloc_sg, i32 noundef %offset.030.i) #13
  br label %if.end.i

msb_cache_read.exit.i:                            ; preds = %do.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %sg_tmp.i.i) #13
  br label %if.end464

if.end.i:                                         ; preds = %if.end37.i.i, %do.end8.i.i
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %sg_tmp.i.i) #13
  %46 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %page_size, align 2
  %conv.i737 = zext i16 %47 to i32
  %add.i = add i32 %offset.030.i, %conv.i737
  %add3.i = add i32 %len.0, %conv.i737
  %inc.i = add i32 %page.addr.024.i, 1
  %48 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pages_in_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %49)
  %cmp4.i = icmp eq i32 %inc.i, %49
  %spec.select.i = select i1 %cmp4.i, i32 0, i32 %inc.i
  %inc7.i = zext i1 %cmp4.i to i32
  %spec.select20.i = add i32 %lba.addr.029.i, %inc7.i
  %cmp.i = icmp slt i32 %add.i, %26
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.end464_crit_edge

if.end.i.if.end464_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end464

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.else460:                                       ; preds = %if.end447
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp64.not.i = icmp eq i32 %26, 0
  br i1 %cmp64.not.i, label %if.else460.if.end494_crit_edge, label %if.else460.while.body.i742_crit_edge

if.else460.while.body.i742_crit_edge:             ; preds = %if.else460
  br label %while.body.i742

if.else460.if.end494_crit_edge:                   ; preds = %if.else460
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end494

while.body.i742:                                  ; preds = %while.cond.backedge.i.while.body.i742_crit_edge, %if.else460.while.body.i742_crit_edge
  %len.2 = phi i32 [ %len.3, %while.cond.backedge.i.while.body.i742_crit_edge ], [ 0, %if.else460.while.body.i742_crit_edge ]
  %offset.067.i = phi i32 [ %offset.0.be.i, %while.cond.backedge.i.while.body.i742_crit_edge ], [ 0, %if.else460.while.body.i742_crit_edge ]
  %lba.addr.066.i = phi i32 [ %inc.i749, %while.cond.backedge.i.while.body.i742_crit_edge ], [ %lba.1.off0, %if.else460.while.body.i742_crit_edge ]
  %page.addr.065.i = phi i32 [ %page.addr.0.be.i, %while.cond.backedge.i.while.body.i742_crit_edge ], [ %__rem229.0, %if.else460.while.body.i742_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page.addr.065.i)
  %cmp1.i741 = icmp eq i32 %page.addr.065.i, 0
  br i1 %cmp1.i741, label %land.lhs.true.i, label %while.body.i742.if.end17.i_crit_edge

while.body.i742.if.end17.i_crit_edge:             ; preds = %while.body.i742
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %while.body.i742
  %sub.i743 = sub i32 %26, %offset.067.i
  %50 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %block_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i743, i32 %51)
  %cmp2.not.i = icmp ult i32 %sub.i743, %51
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.end17.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %52 = ptrtoint ptr %cache_block_lba.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cache_block_lba.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %lba.addr.066.i)
  %cmp3.i = icmp ne i32 %53, %lba.addr.066.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %53)
  %cmp.i.i744 = icmp eq i32 %53, 65535
  %or.cond.i = or i1 %cmp3.i, %cmp.i.i744
  br i1 %or.cond.i, label %if.then.i.do.body.i_crit_edge, label %if.end.i.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end.i.i:                                       ; preds = %if.then.i
  %call.i.i = call i32 @del_timer_sync(ptr noundef %cache_flush_timer.i.i) #13
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp1.i.i = icmp sgt i32 %54, 1
  br i1 %cmp1.i.i, label %do.end.i.i745, label %if.end.i.i.do.end6.i.i_crit_edge

if.end.i.i.do.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6.i.i

do.end.i.i745:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #16
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i745, %if.end.i.i.do.end6.i.i_crit_edge
  %55 = ptrtoint ptr %cache_block_lba.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 65535, ptr %cache_block_lba.i, align 4
  %56 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pages_in_block, align 4
  %sub.i.i.i = add i32 %57, 31
  %58 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %58, 536870908
  %59 = call ptr @memset(ptr %valid_cache_bitmap.i.i739, i32 0, i32 %mul.i.i.i)
  br label %do.body.i

do.body.i:                                        ; preds = %do.end6.i.i, %if.then.i.do.body.i_crit_edge
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp5.i = icmp sgt i32 %60, 1
  br i1 %cmp5.i, label %do.end.i, label %do.body.i.do.end10.i_crit_edge

do.body.i.do.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i746 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, i32 noundef %lba.addr.066.i) #16
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %do.body.i.do.end10.i_crit_edge
  %conv.i747 = trunc i32 %lba.addr.066.i to i16
  %call11.i = call fastcc i32 @msb_update_block(ptr noundef %add.ptr, i16 noundef zeroext %conv.i747, ptr noundef %prealloc_sg, i32 noundef %offset.067.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %do.end10.i.if.end464_crit_edge

do.end10.i.if.end464_crit_edge:                   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end464

if.end13.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %block_size.i, align 4
  %add.i748 = add i32 %62, %offset.067.i
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end21.i, %if.end13.i
  %conv22.i.pn = phi i32 [ %conv22.i, %if.end21.i ], [ %62, %if.end13.i ]
  %.sink.i = phi i32 [ %inc31.i, %if.end21.i ], [ 1, %if.end13.i ]
  %page.addr.0.be.i = phi i32 [ %spec.select.i751, %if.end21.i ], [ 0, %if.end13.i ]
  %offset.0.be.i = phi i32 [ %add23.i, %if.end21.i ], [ %add.i748, %if.end13.i ]
  %len.3 = add i32 %conv22.i.pn, %len.2
  %inc.i749 = add i32 %.sink.i, %lba.addr.066.i
  %cmp.i750 = icmp ult i32 %offset.0.be.i, %26
  br i1 %cmp.i750, label %while.cond.backedge.i.while.body.i742_crit_edge, label %while.cond.backedge.i.if.end464_crit_edge

while.cond.backedge.i.if.end464_crit_edge:        ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end464

while.cond.backedge.i.while.body.i742_crit_edge:  ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i742

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %while.body.i742.if.end17.i_crit_edge
  %call18.i = call fastcc i32 @msb_cache_write(ptr noundef %add.ptr, i32 noundef %lba.addr.066.i, i32 noundef %page.addr.065.i, i1 noundef zeroext false, ptr noundef %prealloc_sg, i32 noundef %offset.067.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.if.end464_crit_edge

if.end17.i.if.end464_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end464

if.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %page_size, align 2
  %conv22.i = zext i16 %64 to i32
  %add23.i = add i32 %offset.067.i, %conv22.i
  %inc27.i = add i32 %page.addr.065.i, 1
  %65 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pages_in_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc27.i, i32 %66)
  %cmp28.i = icmp eq i32 %inc27.i, %66
  %spec.select.i751 = select i1 %cmp28.i, i32 0, i32 %inc27.i
  %inc31.i = zext i1 %cmp28.i to i32
  br label %while.cond.backedge.i

if.end464:                                        ; preds = %if.end17.i.if.end464_crit_edge, %while.cond.backedge.i.if.end464_crit_edge, %do.end10.i.if.end464_crit_edge, %if.end.i.if.end464_crit_edge, %msb_cache_read.exit.i
  %len.5 = phi i32 [ %len.0, %msb_cache_read.exit.i ], [ %add3.i, %if.end.i.if.end464_crit_edge ], [ %len.2, %do.end10.i.if.end464_crit_edge ], [ %len.2, %if.end17.i.if.end464_crit_edge ], [ %len.3, %while.cond.backedge.i.if.end464_crit_edge ]
  %error.0 = phi i32 [ %call34.i.i, %msb_cache_read.exit.i ], [ 0, %if.end.i.if.end464_crit_edge ], [ %call11.i, %do.end10.i.if.end464_crit_edge ], [ %call18.i, %if.end17.i.if.end464_crit_edge ], [ 0, %while.cond.backedge.i.if.end464_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.5)
  %tobool465.not = icmp eq i32 %len.5, 0
  br i1 %tobool465.not, label %if.end464.if.end472_crit_edge, label %land.lhs.true466

if.end464.if.end472_crit_edge:                    ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end472

land.lhs.true466:                                 ; preds = %if.end464
  %call467 = call zeroext i1 @blk_update_request(ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %len.5) #13
  br i1 %call467, label %land.lhs.true466.if.end472_crit_edge, label %if.then468

land.lhs.true466.if.end472_crit_edge:             ; preds = %land.lhs.true466
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end472

if.then468:                                       ; preds = %land.lhs.true466
  call void @__sanitizer_cov_trace_pc() #15
  call void @__blk_mq_end_request(ptr noundef nonnull %5, i8 noundef zeroext 0) #13
  call void @_raw_spin_lock_irq(ptr noundef %q_lock) #13
  %67 = ptrtoint ptr %req10 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %req10, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  br label %if.end472

if.end472:                                        ; preds = %if.then468, %land.lhs.true466.if.end472_crit_edge, %if.end464.if.end472_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool473.not = icmp eq i32 %error.0, 0
  br i1 %tobool473.not, label %if.end472.if.end494_crit_edge, label %land.lhs.true474

if.end472.if.end494_crit_edge:                    ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end494

land.lhs.true474:                                 ; preds = %if.end472
  %68 = ptrtoint ptr %req10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %req10, align 4
  %tobool476.not = icmp eq ptr %69, null
  br i1 %tobool476.not, label %land.lhs.true474.while.cond.backedge_crit_edge, label %if.then477

land.lhs.true474.while.cond.backedge_crit_edge:   ; preds = %land.lhs.true474
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.then477:                                       ; preds = %land.lhs.true474
  %call478 = call zeroext i8 @errno_to_blk_status(i32 noundef %error.0) #13
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp480 = icmp sgt i32 %70, 1
  br i1 %cmp480, label %do.end485, label %if.then477.do.end490_crit_edge

if.then477.do.end490_crit_edge:                   ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end490

do.end485:                                        ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #15
  %call487 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #16
  br label %do.end490

do.end490:                                        ; preds = %do.end485, %if.then477.do.end490_crit_edge
  call void @blk_mq_end_request(ptr noundef nonnull %5, i8 noundef zeroext %call478) #13
  call void @_raw_spin_lock_irq(ptr noundef %q_lock) #13
  %71 = ptrtoint ptr %req10 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %req10, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  br label %if.end494

if.end494:                                        ; preds = %do.end490, %if.end472.if.end494_crit_edge, %if.else460.if.end494_crit_edge, %if.then456.if.end494_crit_edge
  %72 = ptrtoint ptr %req10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr = load ptr, ptr %req10, align 4
  %tobool496.not = icmp eq ptr %.pr, null
  br i1 %tobool496.not, label %if.end494.while.cond.backedge_crit_edge, label %do.body498

if.end494.while.cond.backedge_crit_edge:          ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end504, %do.body498.while.cond.backedge_crit_edge, %if.end494.while.cond.backedge_crit_edge, %land.lhs.true474.while.cond.backedge_crit_edge, %if.then5
  br label %while.cond

do.body498:                                       ; preds = %if.end494
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp499 = icmp sgt i32 %73, 1
  br i1 %cmp499, label %do.end504, label %do.body498.while.cond.backedge_crit_edge

do.body498.while.cond.backedge_crit_edge:         ; preds = %do.body498
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

do.end504:                                        ; preds = %do.body498
  call void @__sanitizer_cov_trace_pc() #15
  %call506 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199) #16
  br label %while.cond.backedge
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @msb_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %3, i32 0, i32 9, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %q_lock = getelementptr inbounds %struct.msb_data, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %q_lock) #13
  %card_dead = getelementptr inbounds %struct.msb_data, ptr %5, i32 0, i32 14
  %9 = ptrtoint ptr %card_dead to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %card_dead, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end45, label %do.body6

do.body6:                                         ; preds = %do.end4
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp sgt i32 %11, 0
  br i1 %cmp7, label %do.end11, label %do.body6.do.end16_crit_edge

do.body6.do.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #16
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.body6.do.end16_crit_edge
  %io_queue_stopped = getelementptr inbounds %struct.msb_data, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %io_queue_stopped to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %io_queue_stopped, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  br i1 %tobool17.not, label %do.end30, label %do.end16.if.end36_crit_edge, !prof !525

do.end16.if.end36_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end30:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2020, i32 noundef 9, ptr noundef null) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %do.end16.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  tail call void @blk_mq_start_request(ptr noundef %7) #13
  br label %cleanup

if.end45:                                         ; preds = %do.end4
  %req46 = getelementptr inbounds %struct.msb_data, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %req46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req46, align 4
  %tobool47.not = icmp eq ptr %15, null
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  tail call void @blk_mq_start_request(ptr noundef %7) #13
  %16 = ptrtoint ptr %req46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %7, ptr %req46, align 4
  %io_queue_stopped52 = getelementptr inbounds %struct.msb_data, ptr %5, i32 0, i32 12
  %17 = ptrtoint ptr %io_queue_stopped52 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %io_queue_stopped52, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool53.not = icmp eq i8 %18, 0
  br i1 %tobool53.not, label %if.then54, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %io_queue = getelementptr inbounds %struct.msb_data, ptr %5, i32 0, i32 11
  %19 = ptrtoint ptr %io_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_queue, align 4
  %io_work = getelementptr inbounds %struct.msb_data, ptr %5, i32 0, i32 13
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %io_work) #13
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end50.if.end56_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then48, %if.end36
  %retval.0 = phi i8 [ 10, %if.end36 ], [ 13, %if.then48 ], [ 0, %if.end56 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msb_bd_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @msb_disk_lock, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end3.if.end6_crit_edge, label %land.lhs.true

do.end3.if.end6_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %do.end3
  %card = getelementptr inbounds %struct.msb_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %3, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %do.end3.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @msb_disk_lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msb_bd_release(ptr noundef %disk, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @msb_disk_release(ptr noundef %disk)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msb_bd_getgeo(ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %geo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %geometry = getelementptr inbounds %struct.msb_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %geometry to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %geometry, align 4
  %6 = ptrtoint ptr %geo to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %geo, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msb_disk_release(ptr noundef %disk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @msb_disk_lock, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end3.if.end15_crit_edge, label %if.then4

do.end3.if.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then4:                                         ; preds = %do.end3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.then4.if.then11_crit_edge, label %if.end8

if.then4.if.then11_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.end8:                                          ; preds = %if.then4
  %dec = add i32 %4, -1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %if.end8.if.then11_crit_edge, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end8.if.then11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.then11:                                        ; preds = %if.end8.if.then11_crit_edge, %if.then4.if.then11_crit_edge
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data, align 8
  %disk_id = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %disk_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %disk_id, align 4
  %call13 = tail call ptr @idr_remove(ptr noundef nonnull @msb_disk_idr, i32 noundef %8) #13
  tail call void @put_disk(ptr noundef %disk) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end8.if.end15_crit_edge, %do.end3.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @msb_disk_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_cache_flush(ptr noundef %msb) unnamed_addr #2 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  %extra = alloca %struct.ms_extra_data_register, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #13
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra) #13
  %read_only = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 18
  %1 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %extra, align 4
  %2 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_only, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cache_block_lba = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 32
  %4 = ptrtoint ptr %cache_block_lba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cache_block_lba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp = icmp eq i32 %5, 65535
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %lba_to_pba_table = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 27
  %6 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lba_to_pba_table, align 4
  %idxprom = and i32 %5, 65535
  %arrayidx = getelementptr i16, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp4 = icmp sgt i32 %10, 1
  br i1 %cmp4, label %do.end, label %if.end2.do.end12_crit_edge

if.end2.do.end12_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %conv8 = zext i16 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %conv8, i32 noundef %5) #16
  br label %do.end12

do.end12:                                         ; preds = %do.end, %if.end2.do.end12_crit_edge
  %cache = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 30
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 4
  %block_size = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 20
  %13 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_size, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %12, i32 noundef %14) #13
  %pages_in_block = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 21
  %15 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pages_in_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13152 = icmp sgt i32 %16, 0
  br i1 %cmp13152, label %for.body.lr.ph, label %do.end12.for.end_crit_edge

do.end12.for.end_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end12
  %valid_cache_bitmap = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 31
  %page_size = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %page.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %page.0153, 5
  %arrayidx.i = getelementptr i32, ptr %valid_cache_bitmap, i32 %div3.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %page.0153, 31
  %19 = shl nuw i32 1, %and.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %21 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %page_size, align 2
  %conv19 = zext i16 %22 to i32
  %mul = mul i32 %page.0153, %conv19
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp21 = icmp sgt i32 %23, 1
  br i1 %cmp21, label %do.end26, label %if.end18.do.end32_crit_edge

if.end18.do.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %page.0153, i32 noundef %idxprom) #16
  br label %do.end32

do.end32:                                         ; preds = %do.end26, %if.end18.do.end32_crit_edge
  %conv33 = trunc i32 %page.0153 to i8
  %call34 = call fastcc i32 @msb_read_page(ptr noundef %msb, i16 noundef zeroext %9, i8 noundef zeroext %conv33, ptr noundef nonnull %extra, ptr noundef nonnull %sg, i32 noundef %mul)
  %24 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.285)
  switch i32 %call34, label %do.end32.cleanup_crit_edge [
    i32 -74, label %do.end40
    i32 0, label %if.end46
  ]

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end40:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %page.0153) #16
  br label %for.inc

if.end46:                                         ; preds = %do.end32
  %25 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %extra, align 4
  %27 = and i8 %26, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %27)
  %cmp48.not = icmp eq i8 %27, 96
  br i1 %cmp48.not, label %if.end63, label %do.body51

do.body51:                                        ; preds = %if.end46
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp52 = icmp sgt i32 %28, 0
  br i1 %cmp52, label %do.end57, label %do.body51.for.inc_crit_edge

do.body51.for.inc_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #15
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %page.0153) #16
  br label %for.inc

if.end63:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef %page.0153, ptr noundef %valid_cache_bitmap) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end63, %do.end57, %do.body51.for.inc_crit_edge, %do.end40, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %page.0153, 1
  %29 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pages_in_block, align 4
  %cmp13 = icmp slt i32 %inc, %30
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end12.for.end_crit_edge
  %31 = ptrtoint ptr %cache_block_lba to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cache_block_lba, align 4
  %conv66 = trunc i32 %32 to i16
  %call67 = call fastcc i32 @msb_update_block(ptr noundef %msb, i16 noundef zeroext %conv66, ptr noundef nonnull %sg, i32 noundef 0)
  %33 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lba_to_pba_table, align 4
  %35 = ptrtoint ptr %cache_block_lba to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cache_block_lba, align 4
  %arrayidx70 = getelementptr i16, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx70, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool71.not = icmp eq i32 %call67, 0
  br i1 %tobool71.not, label %for.cond73.preheader, label %for.end.if.end100_crit_edge

for.end.if.end100_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

for.cond73.preheader:                             ; preds = %for.end
  %39 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pages_in_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp75154 = icmp sgt i32 %40, 0
  br i1 %cmp75154, label %for.body77.lr.ph, label %for.cond73.preheader.if.end100thread-pre-split_crit_edge

for.cond73.preheader.if.end100thread-pre-split_crit_edge: ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100thread-pre-split

for.body77.lr.ph:                                 ; preds = %for.cond73.preheader
  %valid_cache_bitmap78 = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 31
  br label %for.body77

for.body77:                                       ; preds = %for.inc97.for.body77_crit_edge, %for.body77.lr.ph
  %page.1155 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc98, %for.inc97.for.body77_crit_edge ]
  %div3.i146 = lshr i32 %page.1155, 5
  %arrayidx.i147 = getelementptr i32, ptr %valid_cache_bitmap78, i32 %div3.i146
  %41 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i147, align 4
  %and.i148 = and i32 %page.1155, 31
  %43 = shl nuw i32 1, %and.i148
  %44 = and i32 %42, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool80.not = icmp eq i32 %44, 0
  br i1 %tobool80.not, label %do.body83, label %for.body77.for.inc97_crit_edge

for.body77.for.inc97_crit_edge:                   ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc97

do.body83:                                        ; preds = %for.body77
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp84 = icmp sgt i32 %45, 0
  br i1 %cmp84, label %do.end89, label %do.body83.do.end94_crit_edge

do.body83.do.end94_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end94

do.end89:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #15
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %page.1155) #16
  br label %do.end94

do.end94:                                         ; preds = %do.end89, %do.body83.do.end94_crit_edge
  %conv95 = trunc i32 %page.1155 to i8
  call fastcc void @msb_set_overwrite_flag(ptr noundef %msb, i16 noundef zeroext %38, i8 noundef zeroext %conv95, i8 noundef zeroext -97)
  br label %for.inc97

for.inc97:                                        ; preds = %do.end94, %for.body77.for.inc97_crit_edge
  %inc98 = add nuw nsw i32 %page.1155, 1
  %46 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pages_in_block, align 4
  %cmp75 = icmp slt i32 %inc98, %47
  br i1 %cmp75, label %for.inc97.for.body77_crit_edge, label %for.inc97.if.end100thread-pre-split_crit_edge

for.inc97.if.end100thread-pre-split_crit_edge:    ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100thread-pre-split

for.inc97.for.body77_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body77

if.end100thread-pre-split:                        ; preds = %for.inc97.if.end100thread-pre-split_crit_edge, %for.cond73.preheader.if.end100thread-pre-split_crit_edge
  %48 = ptrtoint ptr %cache_block_lba to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %cache_block_lba, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.end100thread-pre-split, %for.end.if.end100_crit_edge
  %49 = phi i32 [ %.pr, %if.end100thread-pre-split ], [ %36, %for.end.if.end100_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %49)
  %cmp.i = icmp eq i32 %49, 65535
  br i1 %cmp.i, label %if.end100.cleanup_crit_edge, label %if.end.i

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end100
  %cache_flush_timer.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 34
  %call.i = call i32 @del_timer_sync(ptr noundef %cache_flush_timer.i) #13
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp1.i = icmp sgt i32 %50, 1
  br i1 %cmp1.i, label %do.end.i, label %if.end.i.do.end6.i_crit_edge

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #16
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.end.i.do.end6.i_crit_edge
  %51 = ptrtoint ptr %cache_block_lba to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 65535, ptr %cache_block_lba, align 4
  %valid_cache_bitmap.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 31
  %52 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pages_in_block, align 4
  %sub.i.i = add i32 %53, 31
  %54 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %54, 536870908
  %55 = call ptr @memset(ptr %valid_cache_bitmap.i, i32 0, i32 %mul.i.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end6.i, %if.end100.cleanup_crit_edge, %do.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call67, %if.end100.cleanup_crit_edge ], [ %call67, %do.end6.i ], [ %call34, %do.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_update_block(ptr noundef %msb, i16 noundef zeroext %lba, ptr noundef %sg, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %miter.i.i.i = alloca %struct.sg_mapping_iter, align 4
  %sg.i.i = alloca %struct.scatterlist, align 4
  %pos.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lba_to_pba_table = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 27
  %0 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lba_to_pba_table, align 4
  %idxprom = zext i16 %lba to i32
  %arrayidx = getelementptr i16, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv2 = zext i16 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %idxprom, i32 noundef %conv2) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp6.not = icmp eq i16 %3, -1
  br i1 %cmp6.not, label %do.end4.if.end22_crit_edge, label %do.body9

do.end4.if.end22_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.body9:                                         ; preds = %do.end4
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp10 = icmp sgt i32 %5, 1
  br i1 %cmp10, label %do.end15, label %do.body9.do.end20_crit_edge

do.body9.do.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #16
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %do.body9.do.end20_crit_edge
  tail call fastcc void @msb_set_overwrite_flag(ptr noundef %msb, i16 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext -17)
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %do.end4.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 494, i16 %lba)
  %cmp.i = icmp ult i16 %lba, 494
  %sub.i = add nsw i32 %idxprom, -494
  %div.i = sdiv i32 %sub.i, 496
  %add.i = add nuw nsw i32 %div.i, 1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %add.i
  %mul.i = shl nuw nsw i32 %retval.0.i, 9
  %arrayidx.i = getelementptr %struct.msb_data, ptr %msb, i32 0, i32 28, i32 %retval.0.i
  %used_blocks_bitmap.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 25
  %block_count.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 23
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %page_size.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 19
  %read_only.i111 = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 18
  %logical_block_count.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 24
  %boot_block_locations.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 16
  %arrayidx51.i = getelementptr %struct.msb_data, ptr %msb, i32 0, i32 16, i32 1
  %erased_blocks_bitmap.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 26
  %cp.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 3
  %page_address.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 4
  %block_address.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 3, i32 2
  %extra_data.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 4
  %management_flag.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 4, i32 1
  %logical_address.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 43, i32 4, i32 2
  %current_sg.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 41
  %current_sg_offset.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 42
  %current_page.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 44
  %card1.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 1
  %state.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 45
  %int_polling.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 47
  %exit_error.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 46
  %block_buffer.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 35
  %block_size.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 20
  %pages_in_block.i.i = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 21
  %length.i.i.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter.i.i.i, i32 0, i32 2
  %addr.i.i.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter.i.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.then50.for.body_crit_edge, %if.end22
  %try.0152 = phi i32 [ 0, %if.end22 ], [ %inc, %if.then50.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pos.i) #13
  %6 = ptrtoint ptr %pos.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %pos.i, align 2, !annotation !536
  call void @get_random_bytes(ptr noundef nonnull %pos.i, i32 noundef 2) #13
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, i32 noundef %retval.0.i) #16
  br label %msb_get_free_block.exit.thread

if.end.i:                                         ; preds = %for.body
  %9 = ptrtoint ptr %pos.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pos.i, align 2
  %conv.i = zext i16 %10 to i32
  %rem.i = srem i32 %conv.i, %8
  %conv3.i = trunc i32 %rem.i to i16
  store i16 %conv3.i, ptr %pos.i, align 2
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i106 = icmp sgt i32 %11, 1
  br i1 %cmp.i106, label %do.end9.i, label %if.end.i.do.end17.i_crit_edge

if.end.i.do.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, i32 noundef %8, i32 noundef %rem.i) #16
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end9.i, %if.end.i.do.end17.i_crit_edge
  %12 = ptrtoint ptr %used_blocks_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %used_blocks_bitmap.i, align 4
  %14 = ptrtoint ptr %block_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_count.i, align 4
  %call18.i = call i32 @_find_next_zero_bit_be(ptr noundef %13, i32 noundef %15, i32 noundef %mul.i) #13
  %16 = ptrtoint ptr %pos.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pos.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp2077.not.i = icmp eq i16 %17, 0
  br i1 %cmp2077.not.i, label %do.end17.i.do.body25.i_crit_edge, label %do.end17.i.for.body.i_crit_edge

do.end17.i.for.body.i_crit_edge:                  ; preds = %do.end17.i
  br label %for.body.i

do.end17.i.do.body25.i_crit_edge:                 ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body25.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end17.i.for.body.i_crit_edge
  %pba.079.i = phi i32 [ %call24.i, %for.body.i.for.body.i_crit_edge ], [ %call18.i, %do.end17.i.for.body.i_crit_edge ]
  %i.078.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end17.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %used_blocks_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %used_blocks_bitmap.i, align 4
  %20 = ptrtoint ptr %block_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %block_count.i, align 4
  %add.i107 = add i32 %pba.079.i, 1
  %call24.i = call i32 @_find_next_zero_bit_be(ptr noundef %19, i32 noundef %21, i32 noundef %add.i107) #13
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %22 = ptrtoint ptr %pos.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pos.i, align 2
  %conv19.i = zext i16 %23 to i32
  %cmp20.i = icmp ult i32 %inc.i, %conv19.i
  br i1 %cmp20.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.body25.i_crit_edge

for.body.i.do.body25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body25.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body25.i:                                      ; preds = %for.body.i.do.body25.i_crit_edge, %do.end17.i.do.body25.i_crit_edge
  %pba.0.lcssa.i = phi i32 [ %call18.i, %do.end17.i.do.body25.i_crit_edge ], [ %call24.i, %for.body.i.do.body25.i_crit_edge ]
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp26.i = icmp sgt i32 %24, 1
  br i1 %cmp26.i, label %do.end31.i, label %do.body25.i.do.end36.i_crit_edge

do.body25.i.do.end36.i_crit_edge:                 ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36.i

do.end31.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #15
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, i32 noundef %pba.0.lcssa.i) #16
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end31.i, %do.body25.i.do.end36.i_crit_edge
  %25 = ptrtoint ptr %block_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %block_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pba.0.lcssa.i, i32 %26)
  %cmp38.i = icmp ne i32 %pba.0.lcssa.i, %26
  %div.i.i = sdiv i32 %pba.0.lcssa.i, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %retval.0.i)
  %cmp41.not.i = icmp eq i32 %div.i.i, %retval.0.i
  %or.cond.i = and i1 %cmp41.not.i, %cmp38.i
  br i1 %or.cond.i, label %msb_get_free_block.exit, label %do.end46.i

do.end46.i:                                       ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #16
  br label %msb_get_free_block.exit.thread

msb_get_free_block.exit.thread:                   ; preds = %do.end46.i, %do.end.i
  %27 = ptrtoint ptr %read_only.i111 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %read_only.i111, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pos.i) #13
  br label %do.end76

msb_get_free_block.exit:                          ; preds = %do.end36.i
  call fastcc void @msb_mark_block_used(ptr noundef %msb, i32 noundef %pba.0.lcssa.i) #13
  %conv51.i = trunc i32 %pba.0.lcssa.i to i16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pos.i) #13
  %conv28 = and i32 %pba.0.lcssa.i, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv51.i)
  %cmp29 = icmp eq i16 %conv51.i, -1
  br i1 %cmp29, label %msb_get_free_block.exit.do.end76_crit_edge, label %do.body33

msb_get_free_block.exit.do.end76_crit_edge:       ; preds = %msb_get_free_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

do.body33:                                        ; preds = %msb_get_free_block.exit
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp34 = icmp sgt i32 %28, 1
  br i1 %cmp34, label %do.end39, label %do.body33.do.end45_crit_edge

do.body33.do.end45_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, i32 noundef %conv28) #16
  br label %do.end45

do.end45:                                         ; preds = %do.end39, %do.body33.do.end45_crit_edge
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i, align 4
  %31 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %page_size.i, align 2
  %conv.i109 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i109)
  %cmp.i110 = icmp ult i32 %30, %conv.i109
  br i1 %cmp.i110, label %do.body3.i, label %do.end8.i, !prof !525

do.body3.i:                                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/memstick/core/ms_block.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1005, 0\0A.popsection", ""() #13, !srcloc !537
  unreachable

do.end8.i:                                        ; preds = %do.end45
  %33 = ptrtoint ptr %read_only.i111 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %read_only.i111, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool9.not.i = icmp eq i8 %34, 0
  br i1 %tobool9.not.i, label %if.end19.i, label %do.end8.i.do.end76_crit_edge

do.end8.i.do.end76_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

if.end19.i:                                       ; preds = %do.end8.i
  %35 = ptrtoint ptr %block_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %block_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv28)
  %cmp21.not.i = icmp sgt i32 %36, %conv28
  br i1 %cmp21.not.i, label %lor.lhs.false.i, label %if.end19.i.cleanup.sink.split.i_crit_edge

if.end19.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end19.i
  %37 = ptrtoint ptr %logical_block_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %logical_block_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %idxprom)
  %cmp23.not.i = icmp ugt i32 %38, %idxprom
  br i1 %cmp23.not.i, label %if.end31.i, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end31.i:                                       ; preds = %lor.lhs.false.i
  %div.i146152153154.i = lshr i32 %pba.0.lcssa.i, 9
  %div.i146152.zext.i = and i32 %div.i146152153154.i, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %div.i146152.zext.i)
  %cmp35.not.i = icmp eq i32 %retval.0.i, %div.i146152.zext.i
  br i1 %cmp35.not.i, label %if.end43.i, label %if.end31.i.cleanup.sink.split.i_crit_edge

if.end31.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end43.i:                                       ; preds = %if.end31.i
  %39 = ptrtoint ptr %boot_block_locations.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %boot_block_locations.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %conv51.i)
  %cmp46.i = icmp eq i16 %40, %conv51.i
  br i1 %cmp46.i, label %if.end43.i.cleanup.sink.split.i_crit_edge, label %lor.lhs.false48.i

if.end43.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

lor.lhs.false48.i:                                ; preds = %if.end43.i
  %41 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx51.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %conv51.i)
  %cmp53.i = icmp eq i16 %42, %conv51.i
  br i1 %cmp53.i, label %lor.lhs.false48.i.cleanup.sink.split.i_crit_edge, label %while.cond.preheader.i

lor.lhs.false48.i.cleanup.sink.split.i_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

while.cond.preheader.i:                           ; preds = %lor.lhs.false48.i
  %div3.i.i = lshr i32 %conv28, 5
  %and.i.i = and i32 %pba.0.lcssa.i, 31
  %43 = shl nuw i32 1, %and.i.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end99.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %cmp90.i = phi i1 [ true, %do.end99.i.while.cond.i_crit_edge ], [ false, %while.cond.preheader.i ]
  %44 = ptrtoint ptr %read_only.i111 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %read_only.i111, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool63.not.i = icmp eq i8 %45, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %while.cond.i.do.end76_crit_edge

while.cond.i.do.end76_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

if.end65.i:                                       ; preds = %while.cond.i
  %46 = ptrtoint ptr %cp.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %cp.i, align 4
  %47 = ptrtoint ptr %page_address.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %page_address.i, align 1
  %48 = ptrtoint ptr %block_address.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv51.i, ptr %block_address.i, align 2
  %49 = ptrtoint ptr %management_flag.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %management_flag.i, align 1
  %50 = ptrtoint ptr %extra_data.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -8, ptr %extra_data.i, align 2
  %51 = ptrtoint ptr %logical_address.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %lba, ptr %logical_address.i, align 2
  %52 = ptrtoint ptr %current_sg.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %sg, ptr %current_sg.i, align 4
  %53 = ptrtoint ptr %current_sg_offset.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %offset, ptr %current_sg_offset.i, align 4
  %54 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %current_page.i, align 4
  %55 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card1.i.i, align 4
  %57 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.not.i.i = icmp eq i32 %58, -1
  br i1 %cmp.not.i.i, label %if.end65.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !524

if.end65.i.if.end.i.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end65.i.if.end.i.i_crit_edge
  %59 = ptrtoint ptr %int_polling.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %int_polling.i.i, align 4
  %60 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %state.i.i, align 4
  %61 = ptrtoint ptr %exit_error.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %exit_error.i.i, align 4
  %current_mrq.i.i = getelementptr inbounds %struct.memstick_dev, ptr %56, i32 0, i32 4
  %62 = call ptr @memset(ptr %current_mrq.i.i, i32 0, i32 28)
  %next_request.i.i = getelementptr inbounds %struct.memstick_dev, ptr %56, i32 0, i32 6
  %63 = ptrtoint ptr %next_request.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @h_msb_write_block, ptr %next_request.i.i, align 4
  %host.i.i = getelementptr inbounds %struct.memstick_dev, ptr %56, i32 0, i32 1
  %64 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %host.i.i, align 4
  call void @memstick_new_req(ptr noundef %65) #13
  %mrq_complete.i.i = getelementptr inbounds %struct.memstick_dev, ptr %56, i32 0, i32 3
  call void @wait_for_completion(ptr noundef %mrq_complete.i.i) #13
  %66 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp23.not.i.i = icmp eq i32 %67, -1
  br i1 %cmp23.not.i.i, label %if.end.i.i.msb_run_state_machine.exit.i_crit_edge, label %do.end39.i.i, !prof !524

if.end.i.i.msb_run_state_machine.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_run_state_machine.exit.i

do.end39.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #13
  br label %msb_run_state_machine.exit.i

msb_run_state_machine.exit.i:                     ; preds = %do.end39.i.i, %if.end.i.i.msb_run_state_machine.exit.i_crit_edge
  %68 = ptrtoint ptr %exit_error.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %exit_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool77.not.i = icmp eq i32 %69, 0
  br i1 %tobool77.not.i, label %land.lhs.true.i, label %msb_run_state_machine.exit.i.if.end86.i_crit_edge

msb_run_state_machine.exit.i.if.end86.i_crit_edge: ; preds = %msb_run_state_machine.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86.i

land.lhs.true.i:                                  ; preds = %msb_run_state_machine.exit.i
  %70 = load i8, ptr @verify_writes, align 1, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool78.not.i = icmp eq i8 %70, 0
  br i1 %tobool78.not.i, label %lor.lhs.false80.i, label %land.lhs.true.i.if.then84.i_crit_edge

land.lhs.true.i.if.then84.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then84.i

lor.lhs.false80.i:                                ; preds = %land.lhs.true.i
  %71 = ptrtoint ptr %erased_blocks_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %erased_blocks_bitmap.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %72, i32 %div3.i.i
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %arrayidx.i.i, align 4
  %75 = and i32 %74, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool83.not.i = icmp eq i32 %75, 0
  br i1 %tobool83.not.i, label %lor.lhs.false80.i.if.then84.i_crit_edge, label %lor.lhs.false80.i.do.body56_crit_edge

lor.lhs.false80.i.do.body56_crit_edge:            ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body56

lor.lhs.false80.i.if.then84.i_crit_edge:          ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then84.i

if.then84.i:                                      ; preds = %lor.lhs.false80.i.if.then84.i_crit_edge, %land.lhs.true.i.if.then84.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #13
  %76 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %77 = ptrtoint ptr %block_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %block_buffer.i.i, align 4
  %79 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %block_size.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %78, i32 noundef %80) #13
  %81 = ptrtoint ptr %pages_in_block.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pages_in_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp24.i.i = icmp sgt i32 %82, 0
  br i1 %cmp24.i.i, label %if.then84.i.while.body.i.i_crit_edge, label %if.then84.i.while.end.i.i_crit_edge

if.then84.i.while.end.i.i_crit_edge:              ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

if.then84.i.while.body.i.i_crit_edge:             ; preds = %if.then84.i
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %inc.i.i = add nuw nsw i32 %page.025.i.i, 1
  %83 = ptrtoint ptr %pages_in_block.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pages_in_block.i.i, align 4
  %cmp.i147.i = icmp slt i32 %inc.i.i, %84
  br i1 %cmp.i147.i, label %while.cond.i.i.while.body.i.i_crit_edge, label %while.cond.i.i.while.end.i.i_crit_edge

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %if.then84.i.while.body.i.i_crit_edge
  %page.025.i.i = phi i32 [ %inc.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ 0, %if.then84.i.while.body.i.i_crit_edge ]
  %conv.i.i = trunc i32 %page.025.i.i to i8
  %85 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %page_size.i, align 2
  %conv1.i.i = zext i16 %86 to i32
  %mul.i.i = mul i32 %page.025.i.i, %conv1.i.i
  %call.i.i = call fastcc i32 @msb_read_page(ptr noundef %msb, i16 noundef zeroext %conv51.i, i8 noundef zeroext %conv.i.i, ptr noundef null, ptr noundef nonnull %sg.i.i, i32 noundef %mul.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i, label %while.body.i.i.msb_verify_block.exit.i_crit_edge

while.body.i.i.msb_verify_block.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_verify_block.exit.i

while.end.i.i:                                    ; preds = %while.cond.i.i.while.end.i.i_crit_edge, %if.then84.i.while.end.i.i_crit_edge
  %87 = ptrtoint ptr %block_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %block_buffer.i.i, align 4
  %89 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %block_size.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter.i.i.i) #13
  %91 = call ptr @memset(ptr %miter.i.i.i, i32 255, i32 44)
  %call.i.i.i = call i32 @sg_nents(ptr noundef %sg) #13
  call void @sg_miter_start(ptr noundef nonnull %miter.i.i.i, ptr noundef %sg, i32 noundef %call.i.i.i, i32 noundef 5) #13
  %call23845.i.i.i = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter.i.i.i) #13
  %call2.not3946.i.i.i = xor i1 %call23845.i.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.not47.i.i.i = icmp eq i32 %90, 0
  %or.cond4048.i.i.i = or i1 %cmp.not47.i.i.i, %call2.not3946.i.i.i
  br i1 %or.cond4048.i.i.i, label %while.end.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge, label %while.end.i.i.while.body.lr.ph.i.i.i_crit_edge

while.end.i.i.while.body.lr.ph.i.i.i_crit_edge:   ; preds = %while.end.i.i
  br label %while.body.lr.ph.i.i.i

while.end.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_sg_compare_to_buffer.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end12.i.i.i.while.body.lr.ph.i.i.i_crit_edge, %while.end.i.i.while.body.lr.ph.i.i.i_crit_edge
  %offset.addr.0.ph52.i.i.i = phi i32 [ 0, %if.end12.i.i.i.while.body.lr.ph.i.i.i_crit_edge ], [ %offset, %while.end.i.i.while.body.lr.ph.i.i.i_crit_edge ]
  %retval1.0.ph51.i.i.i = phi i32 [ %cond9.i.i.i, %if.end12.i.i.i.while.body.lr.ph.i.i.i_crit_edge ], [ 0, %while.end.i.i.while.body.lr.ph.i.i.i_crit_edge ]
  %len.addr.0.ph50.i.i.i = phi i32 [ %sub14.i.i.i, %if.end12.i.i.i.while.body.lr.ph.i.i.i_crit_edge ], [ %90, %while.end.i.i.while.body.lr.ph.i.i.i_crit_edge ]
  %buffer.addr.0.ph49.i.i.i = phi ptr [ %add.ptr13.i.i.i, %if.end12.i.i.i.while.body.lr.ph.i.i.i_crit_edge ], [ %88, %while.end.i.i.while.body.lr.ph.i.i.i_crit_edge ]
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.then.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %offset.addr.041.i.i.i = phi i32 [ %offset.addr.0.ph52.i.i.i, %while.body.lr.ph.i.i.i ], [ %sub.i.i.i, %if.then.i.i.i.while.body.i.i.i_crit_edge ]
  %92 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.041.i.i.i, i32 %93)
  %cmp3.not.i.i.i = icmp ult i32 %offset.addr.041.i.i.i, %93
  br i1 %cmp3.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  %sub.i.i.i = sub i32 %offset.addr.041.i.i.i, %93
  %call2.i.i.i = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter.i.i.i) #13
  br i1 %call2.i.i.i, label %if.then.i.i.i.while.body.i.i.i_crit_edge, label %if.then.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge

if.then.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_sg_compare_to_buffer.exit.i.i

if.then.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %sub6.i.i.i = sub i32 %93, %offset.addr.041.i.i.i
  %94 = call i32 @llvm.umin.i32(i32 %sub6.i.i.i, i32 %len.addr.0.ph50.i.i.i) #13
  %95 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %96, i32 %offset.addr.041.i.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr %add.ptr.i.i.i, ptr %buffer.addr.0.ph49.i.i.i, i32 %94) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  %not.tobool.not.i.i.i = xor i1 %tobool.not.i.i.i, true
  %cond9.i.i.i = sext i1 %not.tobool.not.i.i.i to i32
  br i1 %tobool.not.i.i.i, label %if.end12.i.i.i, label %if.end.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge

if.end.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_sg_compare_to_buffer.exit.i.i

if.end12.i.i.i:                                   ; preds = %if.end.i.i.i
  %add.ptr13.i.i.i = getelementptr i8, ptr %buffer.addr.0.ph49.i.i.i, i32 %94
  %sub14.i.i.i = sub i32 %len.addr.0.ph50.i.i.i, %94
  %call238.i.i.i = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter.i.i.i) #13
  %call2.not39.i.i.i = xor i1 %call238.i.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %sub14.i.i.i, 0
  %or.cond40.i.i.i = select i1 %call2.not39.i.i.i, i1 true, i1 %cmp.not.i.i.i
  br i1 %or.cond40.i.i.i, label %if.end12.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge, label %if.end12.i.i.i.while.body.lr.ph.i.i.i_crit_edge

if.end12.i.i.i.while.body.lr.ph.i.i.i_crit_edge:  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph.i.i.i

if.end12.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_sg_compare_to_buffer.exit.i.i

msb_sg_compare_to_buffer.exit.i.i:                ; preds = %if.end12.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge, %if.end.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge, %if.then.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge, %while.end.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge
  %cmp.not35.i.i.i = phi i1 [ %cmp.not47.i.i.i, %while.end.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge ], [ false, %if.then.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge ], [ false, %if.end.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge ], [ %cmp.not.i.i.i, %if.end12.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge ]
  %retval1.1.i.i.i = phi i32 [ 0, %while.end.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge ], [ %retval1.0.ph51.i.i.i, %if.then.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge ], [ %cond9.i.i.i, %if.end.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge ], [ %cond9.i.i.i, %if.end12.i.i.i.msb_sg_compare_to_buffer.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %retval1.1.i.i.i, 0
  call void @sg_miter_stop(ptr noundef nonnull %miter.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter.i.i.i) #13
  %tobool5.not.i.i = select i1 %tobool15.not.i.i.i, i1 %cmp.not35.i.i.i, i1 false
  %..i.i = select i1 %tobool5.not.i.i, i32 0, i32 -5
  br label %msb_verify_block.exit.i

msb_verify_block.exit.i:                          ; preds = %msb_sg_compare_to_buffer.exit.i.i, %while.body.i.i.msb_verify_block.exit.i_crit_edge
  %retval.0.i148.i = phi i32 [ %..i.i, %msb_sg_compare_to_buffer.exit.i.i ], [ %call.i.i, %while.body.i.i.msb_verify_block.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #13
  br label %if.end86.i

if.end86.i:                                       ; preds = %msb_verify_block.exit.i, %msb_run_state_machine.exit.i.if.end86.i_crit_edge
  %error.0.i = phi i32 [ %69, %msb_run_state_machine.exit.i.if.end86.i_crit_edge ], [ %retval.0.i148.i, %msb_verify_block.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool87.not.i = icmp eq i32 %error.0.i, 0
  %brmerge.i = or i1 %cmp90.i, %tobool87.not.i
  br i1 %brmerge.i, label %if.end86.i.msb_write_block.exit_crit_edge, label %lor.lhs.false92.i

if.end86.i.msb_write_block.exit_crit_edge:        ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_block.exit

lor.lhs.false92.i:                                ; preds = %if.end86.i
  %call93.i = call fastcc i32 @msb_reset(ptr noundef %msb, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %do.end99.i, label %lor.lhs.false92.i.msb_write_block.exit_crit_edge

lor.lhs.false92.i.msb_write_block.exit_crit_edge: ; preds = %lor.lhs.false92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_block.exit

do.end99.i:                                       ; preds = %lor.lhs.false92.i
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, i32 noundef %conv28) #16
  %call103.i = call fastcc i32 @msb_erase_block(ptr noundef %msb, i16 noundef zeroext %conv51.i) #13
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %do.end99.i.while.cond.i_crit_edge, label %do.end99.i.msb_write_block.exit_crit_edge

do.end99.i.msb_write_block.exit_crit_edge:        ; preds = %do.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_block.exit

do.end99.i.while.cond.i_crit_edge:                ; preds = %do.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

cleanup.sink.split.i:                             ; preds = %lor.lhs.false48.i.cleanup.sink.split.i_crit_edge, %if.end43.i.cleanup.sink.split.i_crit_edge, %if.end31.i.cleanup.sink.split.i_crit_edge, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %if.end19.i.cleanup.sink.split.i_crit_edge
  %.str.249.sink.i = phi ptr [ @.str.243, %if.end19.i.cleanup.sink.split.i_crit_edge ], [ @.str.243, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge ], [ @.str.246, %if.end31.i.cleanup.sink.split.i_crit_edge ], [ @.str.249, %if.end43.i.cleanup.sink.split.i_crit_edge ], [ @.str.249, %lor.lhs.false48.i.cleanup.sink.split.i_crit_edge ]
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.249.sink.i) #16
  br label %do.end76

msb_write_block.exit:                             ; preds = %do.end99.i.msb_write_block.exit_crit_edge, %lor.lhs.false92.i.msb_write_block.exit_crit_edge, %if.end86.i.msb_write_block.exit_crit_edge
  %retval.0.i114 = phi i32 [ %error.0.i, %if.end86.i.msb_write_block.exit_crit_edge ], [ %call103.i, %do.end99.i.msb_write_block.exit_crit_edge ], [ %error.0.i, %lor.lhs.false92.i.msb_write_block.exit_crit_edge ]
  %97 = zext i32 %retval.0.i114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.286)
  switch i32 %retval.0.i114, label %msb_write_block.exit.do.end76_crit_edge [
    i32 -74, label %if.then50
    i32 0, label %msb_write_block.exit.do.body56_crit_edge
  ]

msb_write_block.exit.do.body56_crit_edge:         ; preds = %msb_write_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body56

msb_write_block.exit.do.end76_crit_edge:          ; preds = %msb_write_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

if.then50:                                        ; preds = %msb_write_block.exit
  %call.i115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %conv28) #16
  %call1.i = call fastcc i32 @msb_reset(ptr noundef %msb, i1 noundef zeroext true) #13
  call fastcc void @msb_set_overwrite_flag(ptr noundef %msb, i16 noundef zeroext %conv51.i, i8 noundef zeroext 0, i8 noundef zeroext 127) #13
  %inc = add nuw nsw i32 %try.0152, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %if.then50.do.end76_crit_edge, label %if.then50.for.body_crit_edge

if.then50.for.body_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.then50.do.end76_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

do.body56:                                        ; preds = %msb_write_block.exit.do.body56_crit_edge, %lor.lhs.false80.i.do.body56_crit_edge
  %conv51.i.le = trunc i32 %pba.0.lcssa.i to i16
  %98 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp57 = icmp sgt i32 %98, 1
  br i1 %cmp57, label %do.end62, label %do.body56.do.end67_crit_edge

do.body56.do.end67_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #16
  br label %do.end67

do.end67:                                         ; preds = %do.end62, %do.body56.do.end67_crit_edge
  %call68 = call fastcc i32 @msb_erase_block(ptr noundef %msb, i16 noundef zeroext %3)
  %99 = ptrtoint ptr %lba_to_pba_table to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lba_to_pba_table, align 4
  %arrayidx71 = getelementptr i16, ptr %100, i32 %idxprom
  %101 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv51.i.le, ptr %arrayidx71, align 2
  br label %cleanup

do.end76:                                         ; preds = %if.then50.do.end76_crit_edge, %msb_write_block.exit.do.end76_crit_edge, %cleanup.sink.split.i, %while.cond.i.do.end76_crit_edge, %do.end8.i.do.end76_crit_edge, %msb_get_free_block.exit.do.end76_crit_edge, %msb_get_free_block.exit.thread
  %try.0137 = phi i32 [ %try.0152, %msb_get_free_block.exit.thread ], [ %try.0152, %cleanup.sink.split.i ], [ %try.0152, %while.cond.i.do.end76_crit_edge ], [ %try.0152, %msb_write_block.exit.do.end76_crit_edge ], [ %try.0152, %msb_get_free_block.exit.do.end76_crit_edge ], [ 3, %if.then50.do.end76_crit_edge ], [ %try.0152, %do.end8.i.do.end76_crit_edge ]
  %error.1 = phi i32 [ -5, %msb_get_free_block.exit.thread ], [ -22, %cleanup.sink.split.i ], [ -30, %while.cond.i.do.end76_crit_edge ], [ %retval.0.i114, %msb_write_block.exit.do.end76_crit_edge ], [ -5, %msb_get_free_block.exit.do.end76_crit_edge ], [ -74, %if.then50.do.end76_crit_edge ], [ -30, %do.end8.i.do.end76_crit_edge ]
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, i32 noundef %try.0137) #16
  %102 = ptrtoint ptr %read_only.i111 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %read_only.i111, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %do.end67
  %retval.0 = phi i32 [ 0, %do.end67 ], [ %error.1, %do.end76 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_msb_write_block(ptr noundef %card, ptr nocapture noundef writeonly %out_mrq) #2 align 64 {
entry:
  %sg = alloca [2 x %struct.scatterlist], align 4
  %command = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  %2 = ptrtoint ptr %out_mrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %current_mrq, ptr %out_mrq, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg) #13
  %3 = call ptr @memset(ptr %sg, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command) #13
  %error = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %state = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 45
  br i1 %tobool.not, label %again.preheader, label %if.then

again.preheader:                                  ; preds = %entry
  %current_page66 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 44
  %page_size67 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 19
  %current_sg_offset69 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 42
  %6 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 4
  %data = getelementptr inbounds %struct.anon.79, ptr %6, i32 0, i32 1
  %interrupt = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 0, i32 1
  %pages_in_block = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 21
  br label %again

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp eq i32 %8, -1
  br i1 %cmp.i, label %do.end.i, label %if.then.msb_exit_state_machine.exit_crit_edge, !prof !525

if.then.msb_exit_state_machine.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit

msb_exit_state_machine.exit:                      ; preds = %do.end.i, %if.then.msb_exit_state_machine.exit_crit_edge
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %state, align 4
  %exit_error.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %10 = ptrtoint ptr %exit_error.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %exit_error.i, align 4
  %card.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i, align 4
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @h_msb_default_bad, ptr %next_request.i, align 4
  %reg_addr.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %14 = ptrtoint ptr %reg_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 67372036, ptr %reg_addr.i.i, align 4
  %15 = ptrtoint ptr %addr_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %addr_valid.i.i, align 4
  %16 = load ptr, ptr %card.i, align 4
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %16, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i) #13
  br label %cleanup

again:                                            ; preds = %again.backedge, %again.preheader
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.287)
  switch i32 %18, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb15
    i32 3, label %sw.bb17
    i32 4, label %again.sw.bb23_crit_edge
    i32 5, label %again.sw.bb52_crit_edge
    i32 6, label %sw.bb65
  ]

again.sw.bb52_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb52

again.sw.bb23_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb23

sw.bb:                                            ; preds = %again
  %param = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 3
  %card.i118 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %card.i118 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i118, align 4
  %current_mrq.i = getelementptr inbounds %struct.memstick_dev, ptr %21, i32 0, i32 4
  %reg_addr.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %w_offset.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 2
  %22 = ptrtoint ptr %w_offset.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %w_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %23)
  %cmp.not.i = icmp eq i8 %23, 16
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.msb_write_regs.exit.thread_crit_edge

sw.bb.msb_write_regs.exit.thread_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

lor.lhs.false.i:                                  ; preds = %sw.bb
  %w_length.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %24 = ptrtoint ptr %w_length.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %w_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %25)
  %cmp4.not.i = icmp eq i8 %25, 6
  br i1 %cmp4.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge

lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %addr_valid.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %26 = ptrtoint ptr %addr_valid.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr_valid.i, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge, label %if.end6

lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit.thread

msb_write_regs.exit.thread:                       ; preds = %lor.lhs.false6.i.msb_write_regs.exit.thread_crit_edge, %lor.lhs.false.i.msb_write_regs.exit.thread_crit_edge, %sw.bb.msb_write_regs.exit.thread_crit_edge
  %28 = ptrtoint ptr %w_offset.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 16, ptr %w_offset.i, align 2
  %w_length12.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %29 = ptrtoint ptr %w_length12.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 6, ptr %w_length12.i, align 1
  %addr_valid13.i = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %30 = ptrtoint ptr %addr_valid13.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %addr_valid13.i, align 4
  tail call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 8, ptr noundef %reg_addr.i, i32 noundef 4) #13
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 11, ptr noundef %param, i32 noundef 6) #13
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %state, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %again
  %extra_data = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 43, i32 4
  %card.i120 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %card.i120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card.i120, align 4
  %current_mrq.i121 = getelementptr inbounds %struct.memstick_dev, ptr %33, i32 0, i32 4
  %reg_addr.i122 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %w_offset.i123 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 2
  %34 = ptrtoint ptr %w_offset.i123 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %w_offset.i123, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %35)
  %cmp.not.i125 = icmp eq i8 %35, 22
  br i1 %cmp.not.i125, label %lor.lhs.false.i129, label %sw.bb8.msb_write_regs.exit138.thread_crit_edge

sw.bb8.msb_write_regs.exit138.thread_crit_edge:   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit138.thread

lor.lhs.false.i129:                               ; preds = %sw.bb8
  %w_length.i126 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %36 = ptrtoint ptr %w_length.i126 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %w_length.i126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %37)
  %cmp4.not.i128 = icmp eq i8 %37, 4
  br i1 %cmp4.not.i128, label %lor.lhs.false6.i132, label %lor.lhs.false.i129.msb_write_regs.exit138.thread_crit_edge

lor.lhs.false.i129.msb_write_regs.exit138.thread_crit_edge: ; preds = %lor.lhs.false.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit138.thread

lor.lhs.false6.i132:                              ; preds = %lor.lhs.false.i129
  %addr_valid.i130 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %38 = ptrtoint ptr %addr_valid.i130 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr_valid.i130, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i131 = icmp eq i8 %39, 0
  br i1 %tobool.not.i131, label %lor.lhs.false6.i132.msb_write_regs.exit138.thread_crit_edge, label %if.end13

lor.lhs.false6.i132.msb_write_regs.exit138.thread_crit_edge: ; preds = %lor.lhs.false6.i132
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_write_regs.exit138.thread

msb_write_regs.exit138.thread:                    ; preds = %lor.lhs.false6.i132.msb_write_regs.exit138.thread_crit_edge, %lor.lhs.false.i129.msb_write_regs.exit138.thread_crit_edge, %sw.bb8.msb_write_regs.exit138.thread_crit_edge
  %40 = ptrtoint ptr %w_offset.i123 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 22, ptr %w_offset.i123, align 2
  %w_length12.i133 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37, i32 3
  %41 = ptrtoint ptr %w_length12.i133 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 4, ptr %w_length12.i133, align 1
  %addr_valid13.i134 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %42 = ptrtoint ptr %addr_valid13.i134 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %addr_valid13.i134, align 4
  tail call void @memstick_init_req(ptr noundef %current_mrq.i121, i8 noundef zeroext 8, ptr noundef %reg_addr.i122, i32 noundef 4) #13
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false6.i132
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_init_req(ptr noundef %current_mrq.i121, i8 noundef zeroext 11, ptr noundef %extra_data, i32 noundef 4) #13
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %state, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 85, ptr %command, align 1
  call void @memstick_init_req(ptr noundef %current_mrq, i8 noundef zeroext 14, ptr noundef nonnull %command, i32 noundef 1) #13
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %state, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %again
  %46 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %state, align 4
  %call19 = tail call fastcc i32 @msb_read_int_reg(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %sw.bb17.sw.bb23_crit_edge, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb17.sw.bb23_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.bb17.sw.bb23_crit_edge, %again.sw.bb23_crit_edge
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data, align 1
  %49 = ptrtoint ptr %interrupt to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %interrupt, align 1
  %conv = zext i8 %48 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %sw.bb23
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp.i140 = icmp eq i32 %51, -1
  br i1 %cmp.i140, label %do.end.i141, label %if.then26.msb_exit_state_machine.exit150_crit_edge, !prof !525

if.then26.msb_exit_state_machine.exit150_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit150

do.end.i141:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit150

msb_exit_state_machine.exit150:                   ; preds = %do.end.i141, %if.then26.msb_exit_state_machine.exit150_crit_edge
  %52 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %state, align 4
  %exit_error.i142 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %53 = ptrtoint ptr %exit_error.i142 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -5, ptr %exit_error.i142, align 4
  %card.i143 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %card.i143 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i143, align 4
  %next_request.i144 = getelementptr inbounds %struct.memstick_dev, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %next_request.i144 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @h_msb_default_bad, ptr %next_request.i144, align 4
  %reg_addr.i.i146 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i147 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %57 = ptrtoint ptr %reg_addr.i.i146 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 67372036, ptr %reg_addr.i.i146, align 4
  %58 = ptrtoint ptr %addr_valid.i.i147 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %addr_valid.i.i147, align 4
  %59 = load ptr, ptr %card.i143, align 4
  %mrq_complete.i149 = getelementptr inbounds %struct.memstick_dev, ptr %59, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i149) #13
  br label %cleanup

if.end28:                                         ; preds = %sw.bb23
  %and30 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end28
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp.i152 = icmp eq i32 %61, -1
  br i1 %cmp.i152, label %do.end.i153, label %if.then32.msb_exit_state_machine.exit162_crit_edge, !prof !525

if.then32.msb_exit_state_machine.exit162_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit162

do.end.i153:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit162

msb_exit_state_machine.exit162:                   ; preds = %do.end.i153, %if.then32.msb_exit_state_machine.exit162_crit_edge
  %62 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %state, align 4
  %exit_error.i154 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %63 = ptrtoint ptr %exit_error.i154 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -74, ptr %exit_error.i154, align 4
  %card.i155 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %card.i155 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card.i155, align 4
  %next_request.i156 = getelementptr inbounds %struct.memstick_dev, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %next_request.i156 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @h_msb_default_bad, ptr %next_request.i156, align 4
  %reg_addr.i.i158 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i159 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %67 = ptrtoint ptr %reg_addr.i.i158 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 67372036, ptr %reg_addr.i.i158, align 4
  %68 = ptrtoint ptr %addr_valid.i.i159 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %addr_valid.i.i159, align 4
  %69 = load ptr, ptr %card.i155, align 4
  %mrq_complete.i161 = getelementptr inbounds %struct.memstick_dev, ptr %69, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i161) #13
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %70 = ptrtoint ptr %current_page66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %current_page66, align 4
  %72 = ptrtoint ptr %pages_in_block to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pages_in_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp = icmp eq i32 %71, %73
  br i1 %cmp, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end34
  %and38 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then36.again.backedge_crit_edge, label %if.then40

if.then36.again.backedge_crit_edge:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

if.then40:                                        ; preds = %if.then36
  %74 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp.i164 = icmp eq i32 %75, -1
  br i1 %cmp.i164, label %do.end.i165, label %if.then40.msb_exit_state_machine.exit171_crit_edge, !prof !525

if.then40.msb_exit_state_machine.exit171_crit_edge: ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit171

do.end.i165:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit171

msb_exit_state_machine.exit171:                   ; preds = %do.end.i165, %if.then40.msb_exit_state_machine.exit171_crit_edge
  %76 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %state, align 4
  %exit_error.i166 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %77 = ptrtoint ptr %exit_error.i166 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %exit_error.i166, align 4
  %card.i167 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %78 = ptrtoint ptr %card.i167 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card.i167, align 4
  %next_request.i168 = getelementptr inbounds %struct.memstick_dev, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %next_request.i168 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @h_msb_default_bad, ptr %next_request.i168, align 4
  %81 = load ptr, ptr %card.i167, align 4
  %mrq_complete.i170 = getelementptr inbounds %struct.memstick_dev, ptr %81, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete.i170) #13
  br label %cleanup

again.backedge:                                   ; preds = %sw.bb65, %if.end44.again.backedge_crit_edge, %if.then36.again.backedge_crit_edge
  %82 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3, ptr %state, align 4
  br label %again

if.end44:                                         ; preds = %if.end34
  %and46 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.again.backedge_crit_edge, label %if.end50

if.end44.again.backedge_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

if.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %int_polling = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 47
  %83 = ptrtoint ptr %int_polling to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %int_polling, align 4
  %84 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 5, ptr %state, align 4
  br label %sw.bb52

sw.bb52:                                          ; preds = %if.end50, %again.sw.bb52_crit_edge
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 2) #13
  %current_sg = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 41
  %85 = ptrtoint ptr %current_sg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %current_sg, align 4
  %87 = ptrtoint ptr %current_sg_offset69 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %current_sg_offset69, align 4
  %89 = ptrtoint ptr %page_size67 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %page_size67, align 2
  %conv54 = zext i16 %90 to i32
  %call55 = call fastcc i32 @msb_sg_copy(ptr noundef %86, ptr noundef nonnull %sg, i32 noundef 2, i32 noundef %88, i32 noundef %conv54)
  %91 = ptrtoint ptr %page_size67 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %page_size67, align 2
  %conv57 = zext i16 %92 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call55, i32 %conv57)
  %cmp58 = icmp ult i32 %call55, %conv57
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %sw.bb52
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp.i173 = icmp eq i32 %94, -1
  br i1 %cmp.i173, label %do.end.i174, label %if.then60.msb_exit_state_machine.exit183_crit_edge, !prof !525

if.then60.msb_exit_state_machine.exit183_crit_edge: ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %msb_exit_state_machine.exit183

do.end.i174:                                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 9, ptr noundef null) #13
  br label %msb_exit_state_machine.exit183

msb_exit_state_machine.exit183:                   ; preds = %do.end.i174, %if.then60.msb_exit_state_machine.exit183_crit_edge
  %95 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %state, align 4
  %exit_error.i175 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 46
  %96 = ptrtoint ptr %exit_error.i175 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -5, ptr %exit_error.i175, align 4
  %card.i176 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 1
  %97 = ptrtoint ptr %card.i176 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card.i176, align 4
  %next_request.i177 = getelementptr inbounds %struct.memstick_dev, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %next_request.i177 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @h_msb_default_bad, ptr %next_request.i177, align 4
  %reg_addr.i.i179 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 37
  %addr_valid.i.i180 = getelementptr inbounds %struct.msb_data, ptr %1, i32 0, i32 38
  %100 = ptrtoint ptr %reg_addr.i.i179 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 67372036, ptr %reg_addr.i.i179, align 4
  %101 = ptrtoint ptr %addr_valid.i.i180 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %addr_valid.i.i180, align 4
  %102 = load ptr, ptr %card.i176, align 4
  %mrq_complete.i182 = getelementptr inbounds %struct.memstick_dev, ptr %102, i32 0, i32 3
  call void @complete(ptr noundef %mrq_complete.i182) #13
  br label %cleanup

if.end62:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #15
  call void @memstick_init_req_sg(ptr noundef %current_mrq, i8 noundef zeroext 13, ptr noundef nonnull %sg) #13
  %need_card_int = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %need_card_int to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load = load i8, ptr %need_card_int, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %need_card_int, align 1
  %104 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 6, ptr %state, align 4
  br label %cleanup

sw.bb65:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %current_page66 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %current_page66, align 4
  %inc = add i32 %106, 1
  store i32 %inc, ptr %current_page66, align 4
  %107 = ptrtoint ptr %page_size67 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %page_size67, align 2
  %conv68 = zext i16 %108 to i32
  %109 = ptrtoint ptr %current_sg_offset69 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %current_sg_offset69, align 4
  %add = add i32 %110, %conv68
  store i32 %add, ptr %current_sg_offset69, align 4
  br label %again.backedge

do.body:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/memstick/core/ms_block.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 575, 0\0A.popsection", ""() #13, !srcloc !538
  unreachable

cleanup:                                          ; preds = %if.end62, %msb_exit_state_machine.exit183, %msb_exit_state_machine.exit171, %msb_exit_state_machine.exit162, %msb_exit_state_machine.exit150, %sw.bb17.cleanup_crit_edge, %sw.bb15, %if.end13, %msb_write_regs.exit138.thread, %if.end6, %msb_write_regs.exit.thread, %msb_exit_state_machine.exit
  %retval.0 = phi i32 [ -6, %msb_exit_state_machine.exit ], [ -6, %msb_exit_state_machine.exit183 ], [ 0, %if.end62 ], [ -6, %msb_exit_state_machine.exit150 ], [ -6, %msb_exit_state_machine.exit162 ], [ -6, %msb_exit_state_machine.exit171 ], [ 0, %sw.bb15 ], [ 0, %if.end13 ], [ 0, %if.end6 ], [ 0, %msb_write_regs.exit.thread ], [ 0, %msb_write_regs.exit138.thread ], [ 0, %sw.bb17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msb_cache_write(ptr noundef %msb, i32 noundef %lba, i32 noundef %page, i1 noundef zeroext %add_to_cache_only, ptr noundef %sg, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %sg_tmp = alloca [10 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %sg_tmp) #13
  %0 = call ptr @memset(ptr %sg_tmp, i32 255, i32 200)
  %read_only = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 18
  %1 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %read_only, align 4, !range !523
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cache_block_lba = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 32
  %3 = ptrtoint ptr %cache_block_lba to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cache_block_lba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp = icmp ne i32 %4, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %lba)
  %cmp2.not = icmp eq i32 %4, %lba
  %or.cond = and i1 %cmp, %cmp2.not
  %add_to_cache_only.not = xor i1 %add_to_cache_only, true
  %brmerge = or i1 %or.cond, %add_to_cache_only.not
  br i1 %brmerge, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp9.not = icmp eq i32 %4, 65535
  %or.cond73 = or i1 %cmp9.not, %cmp2.not
  br i1 %or.cond73, label %if.end7.if.end23_crit_edge, label %do.body

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

do.body:                                          ; preds = %if.end7
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp13 = icmp sgt i32 %5, 1
  br i1 %cmp13, label %do.end, label %do.body.do.end18_crit_edge

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259) #16
  br label %do.end18

do.end18:                                         ; preds = %do.end, %do.body.do.end18_crit_edge
  %call19 = tail call fastcc i32 @msb_cache_flush(ptr noundef %msb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end18.if.end23_crit_edge, label %do.end18.cleanup_crit_edge

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end18.if.end23_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end23:                                         ; preds = %do.end18.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  %6 = ptrtoint ptr %cache_block_lba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_block_lba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp25 = icmp eq i32 %7, 65535
  br i1 %cmp25, label %if.then26, label %if.end23.do.body31_crit_edge

if.end23.do.body31_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %cache_block_lba to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lba, ptr %cache_block_lba, align 4
  %cache_flush_timer = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = load i32, ptr @cache_flush_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %10) #13
  %add = add i32 %call2.i, %9
  %call29 = tail call i32 @mod_timer(ptr noundef %cache_flush_timer, i32 noundef %add) #13
  br label %do.body31

do.body31:                                        ; preds = %if.then26, %if.end23.do.body31_crit_edge
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp32 = icmp sgt i32 %11, 1
  br i1 %cmp32, label %do.end36, label %do.body31.do.end41_crit_edge

do.body31.do.end41_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

do.end36:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, i32 noundef %lba, i32 noundef %page) #16
  br label %do.end41

do.end41:                                         ; preds = %do.end36, %do.body31.do.end41_crit_edge
  call void @sg_init_table(ptr noundef nonnull %sg_tmp, i32 noundef 10) #13
  %page_size = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 19
  %12 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %page_size, align 2
  %conv = zext i16 %13 to i32
  %call43 = call fastcc i32 @msb_sg_copy(ptr noundef %sg, ptr noundef nonnull %sg_tmp, i32 noundef 10, i32 noundef %offset, i32 noundef %conv)
  %call46 = call i32 @sg_nents(ptr noundef nonnull %sg_tmp) #13
  %cache = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 30
  %14 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache, align 4
  %16 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %page_size, align 2
  %conv48 = zext i16 %17 to i32
  %mul = mul i32 %conv48, %page
  %add.ptr = getelementptr i8, ptr %15, i32 %mul
  %call51 = call i32 @sg_copy_to_buffer(ptr noundef nonnull %sg_tmp, i32 noundef %call46, ptr noundef %add.ptr, i32 noundef %conv48) #13
  %valid_cache_bitmap = getelementptr inbounds %struct.msb_data, ptr %msb, i32 0, i32 31
  call void @_set_bit(i32 noundef %page, ptr noundef %valid_cache_bitmap) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end41 ], [ -30, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call19, %do.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %sg_tmp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_stop_hw_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_hw_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 264)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 264)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !285, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !306, !308, !309, !310, !311, !313, !315, !317, !318, !319, !320, !322, !323, !325, !326, !327, !329, !330, !331, !333, !335, !336, !337, !338, !340, !341, !342, !344, !346, !347, !348, !349, !351, !352, !353, !354, !356, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !439, !441, !442, !443, !445, !446, !447, !449, !450, !451, !453, !454, !455, !457, !458, !459, !460, !462, !463, !464, !466, !467, !468, !469, !471, !472, !473, !475, !476, !477, !478, !480, !481, !482, !483, !485, !486, !487, !488, !490, !491, !492, !493, !495, !496, !498, !499, !500, !501, !503, !504, !506, !507, !508, !509, !510, !512, !513}
!llvm.module.flags = !{!514, !515, !516, !517, !518, !519, !520, !521}
!llvm.ident = !{!522}

!0 = !{ptr @__initcall__kmod_ms_block__284_2357_msb_init6, !1, !"__initcall__kmod_ms_block__284_2357_msb_init6", i1 false, i1 false}
!1 = !{!"../drivers/memstick/core/ms_block.c", i32 2357, i32 1}
!2 = !{ptr @__exitcall_msb_exit, !3, !"__exitcall_msb_exit", i1 false, i1 false}
!3 = !{!"../drivers/memstick/core/ms_block.c", i32 2358, i32 1}
!4 = !{ptr @__param_cache_flush_timeout, !5, !"__param_cache_flush_timeout", i1 false, i1 false}
!5 = !{!"../drivers/memstick/core/ms_block.c", i32 2360, i32 1}
!6 = !{ptr @__UNIQUE_ID_cache_flush_timeouttype285, !5, !"__UNIQUE_ID_cache_flush_timeouttype285", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_cache_flush_timeout286, !8, !"__UNIQUE_ID_cache_flush_timeout286", i1 false, i1 false}
!8 = !{!"../drivers/memstick/core/ms_block.c", i32 2361, i32 1}
!9 = !{ptr @__param_debug, !10, !"__param_debug", i1 false, i1 false}
!10 = !{!"../drivers/memstick/core/ms_block.c", i32 2363, i32 1}
!11 = !{ptr @__UNIQUE_ID_debugtype287, !10, !"__UNIQUE_ID_debugtype287", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_debug288, !13, !"__UNIQUE_ID_debug288", i1 false, i1 false}
!13 = !{!"../drivers/memstick/core/ms_block.c", i32 2364, i32 1}
!14 = !{ptr @__param_verify_writes, !15, !"__param_verify_writes", i1 false, i1 false}
!15 = !{!"../drivers/memstick/core/ms_block.c", i32 2366, i32 1}
!16 = !{ptr @__UNIQUE_ID_verify_writestype289, !15, !"__UNIQUE_ID_verify_writestype289", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_verify_writes290, !18, !"__UNIQUE_ID_verify_writes290", i1 false, i1 false}
!18 = !{!"../drivers/memstick/core/ms_block.c", i32 2367, i32 1}
!19 = !{ptr @__UNIQUE_ID_file291, !20, !"__UNIQUE_ID_file291", i1 false, i1 false}
!20 = !{!"../drivers/memstick/core/ms_block.c", i32 2369, i32 1}
!21 = !{ptr @__UNIQUE_ID_license292, !20, !"__UNIQUE_ID_license292", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author293, !23, !"__UNIQUE_ID_author293", i1 false, i1 false}
!23 = !{!"../drivers/memstick/core/ms_block.c", i32 2370, i32 1}
!24 = !{ptr @__UNIQUE_ID_description294, !25, !"__UNIQUE_ID_description294", i1 false, i1 false}
!25 = !{!"../drivers/memstick/core/ms_block.c", i32 2371, i32 1}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/memstick/core/ms_block.c", i32 28, i32 12}
!28 = !{ptr @verify_writes, !29, !"verify_writes", i1 false, i1 false}
!29 = !{!"../drivers/memstick/core/ms_block.c", i32 30, i32 13}
!30 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memstick/core/ms_block.c", i32 2331, i32 12}
!32 = !{ptr @msb_driver, !33, !"msb_driver", i1 false, i1 false}
!33 = !{!"../drivers/memstick/core/ms_block.c", i32 2329, i32 31}
!34 = !{ptr @msb_id_tbl, !35, !"msb_id_tbl", i1 false, i1 false}
!35 = !{!"../drivers/memstick/core/ms_block.c", i32 2309, i32 34}
!36 = !{ptr @msb_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/memstick/core/ms_block.c", i32 2186, i32 2}
!38 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/memstick/core/ms_block.c", i32 1741, i32 3}
!41 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @msb_init_card._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @msb_init_card._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/memstick/core/ms_block.c", i32 1768, i32 2}
!47 = !{ptr @msb_init_card._entry.5, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @msb_init_card._entry_ptr.7, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memstick/core/ms_block.c", i32 1769, i32 2}
!51 = !{ptr @msb_init_card._entry.8, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @msb_init_card._entry_ptr.10, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/memstick/core/ms_block.c", i32 1770, i32 2}
!55 = !{ptr @msb_init_card._entry.11, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @msb_init_card._entry_ptr.13, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memstick/core/ms_block.c", i32 1771, i32 2}
!59 = !{ptr @msb_init_card._entry.14, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @msb_init_card._entry_ptr.16, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memstick/core/ms_block.c", i32 1772, i32 2}
!63 = !{ptr @msb_init_card._entry.17, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @msb_init_card._entry_ptr.19, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/memstick/core/ms_block.c", i32 1793, i32 3}
!67 = !{ptr @msb_init_card._entry.20, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @msb_init_card._entry_ptr.22, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/memstick/core/ms_block.c", i32 1803, i32 3}
!71 = !{ptr @msb_init_card._entry.23, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @msb_init_card._entry_ptr.25, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/memstick/core/ms_block.c", i32 752, i32 4}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @msb_reset._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @msb_reset._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memstick/core/ms_block.c", i32 760, i32 3}
!80 = !{ptr @msb_reset._entry.28, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @msb_reset._entry_ptr.30, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/memstick/core/ms_block.c", i32 778, i32 3}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @msb_switch_to_parallel._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @msb_switch_to_parallel._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/memstick/core/ms_block.c", i32 686, i32 3}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @h_msb_parallel_switch._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @h_msb_parallel_switch._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/memstick/core/ms_block.c", i32 1203, i32 2}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @msb_read_boot_blocks._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @msb_read_boot_blocks._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memstick/core/ms_block.c", i32 1221, i32 4}
!99 = !{ptr @msb_read_boot_blocks._entry.37, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @msb_read_boot_blocks._entry_ptr.39, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memstick/core/ms_block.c", i32 1226, i32 4}
!103 = !{ptr @msb_read_boot_blocks._entry.40, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @msb_read_boot_blocks._entry_ptr.42, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/memstick/core/ms_block.c", i32 1232, i32 4}
!107 = !{ptr @msb_read_boot_blocks._entry.43, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @msb_read_boot_blocks._entry_ptr.45, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/memstick/core/ms_block.c", i32 1247, i32 3}
!111 = !{ptr @msb_read_boot_blocks._entry.46, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @msb_read_boot_blocks._entry_ptr.48, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/memstick/core/ms_block.c", i32 1251, i32 2}
!115 = !{ptr @msb_read_boot_blocks._entry.49, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @msb_read_boot_blocks._entry_ptr.51, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/memstick/core/ms_block.c", i32 869, i32 3}
!119 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @msb_read_page._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @msb_read_page._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/memstick/core/ms_block.c", i32 902, i32 3}
!124 = !{ptr @msb_read_page._entry.54, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @msb_read_page._entry_ptr.56, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/memstick/core/ms_block.c", i32 917, i32 4}
!128 = !{ptr @msb_read_page._entry.57, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @msb_read_page._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/memstick/core/ms_block.c", i32 932, i32 3}
!132 = !{ptr @msb_read_page._entry.60, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @msb_read_page._entry_ptr.62, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/memstick/core/ms_block.c", i32 942, i32 3}
!136 = !{ptr @msb_read_page._entry.63, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @msb_read_page._entry_ptr.65, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/memstick/core/ms_block.c", i32 344, i32 3}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @h_msb_read_page._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @h_msb_read_page._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/memstick/core/ms_block.c", i32 448, i32 4}
!145 = !{ptr @h_msb_read_page._entry.68, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @h_msb_read_page._entry_ptr.70, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/memstick/core/ms_block.c", i32 453, i32 4}
!149 = !{ptr @h_msb_read_page._entry.71, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @h_msb_read_page._entry_ptr.73, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/memstick/core/ms_block.c", i32 457, i32 4}
!153 = !{ptr @h_msb_read_page._entry.74, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @h_msb_read_page._entry_ptr.76, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/memstick/core/ms_block.c", i32 817, i32 2}
!157 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @msb_mark_page_bad._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @msb_mark_page_bad._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/memstick/core/ms_block.c", i32 802, i32 2}
!162 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @msb_set_overwrite_flag._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @msb_set_overwrite_flag._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/memstick/core/ms_block.c", i32 593, i32 3}
!167 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @h_msb_send_command._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @h_msb_send_command._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @chs_table, !171, !"chs_table", i1 false, i1 false}
!171 = !{!"../drivers/memstick/core/ms_block.c", i32 1686, i32 31}
!172 = !{ptr @msb_cache_init.__key, !173, !"__key", i1 false, i1 false}
!173 = !{!"../drivers/memstick/core/ms_block.c", i32 1522, i32 2}
!174 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/memstick/core/ms_block.c", i32 1515, i32 2}
!177 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @msb_cache_discard._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @msb_cache_discard._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/memstick/core/ms_block.c", i32 1364, i32 2}
!182 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @msb_ftl_initialize._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @msb_ftl_initialize._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/memstick/core/ms_block.c", i32 1284, i32 2}
!187 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @msb_read_bad_block_table._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @msb_read_bad_block_table._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/memstick/core/ms_block.c", i32 1303, i32 4}
!192 = !{ptr @msb_read_bad_block_table._entry.90, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @msb_read_bad_block_table._entry_ptr.92, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/memstick/core/ms_block.c", i32 1315, i32 4}
!196 = !{ptr @msb_read_bad_block_table._entry.93, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @msb_read_bad_block_table._entry_ptr.95, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/memstick/core/ms_block.c", i32 1321, i32 4}
!200 = !{ptr @msb_read_bad_block_table._entry.96, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @msb_read_bad_block_table._entry_ptr.98, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/memstick/core/ms_block.c", i32 1326, i32 3}
!204 = !{ptr @msb_read_bad_block_table._entry.99, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @msb_read_bad_block_table._entry_ptr.101, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/memstick/core/ms_block.c", i32 173, i32 3}
!208 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @msb_mark_block_used._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @msb_mark_block_used._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/memstick/core/ms_block.c", i32 162, i32 2}
!213 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @msb_validate_used_block_bitmap._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @msb_validate_used_block_bitmap._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/memstick/core/ms_block.c", i32 1382, i32 2}
!218 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @msb_ftl_scan._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @msb_ftl_scan._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/memstick/core/ms_block.c", i32 1387, i32 4}
!223 = !{ptr @msb_ftl_scan._entry.108, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @msb_ftl_scan._entry_ptr.110, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/memstick/core/ms_block.c", i32 1393, i32 4}
!227 = !{ptr @msb_ftl_scan._entry.111, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @msb_ftl_scan._entry_ptr.113, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/memstick/core/ms_block.c", i32 1402, i32 4}
!231 = !{ptr @msb_ftl_scan._entry.114, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @msb_ftl_scan._entry_ptr.116, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/memstick/core/ms_block.c", i32 1408, i32 4}
!235 = !{ptr @msb_ftl_scan._entry.117, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @msb_ftl_scan._entry_ptr.119, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.121, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/memstick/core/ms_block.c", i32 1422, i32 4}
!239 = !{ptr @msb_ftl_scan._entry.120, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @msb_ftl_scan._entry_ptr.122, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.124, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/memstick/core/ms_block.c", i32 1430, i32 4}
!243 = !{ptr @msb_ftl_scan._entry.123, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @msb_ftl_scan._entry_ptr.125, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.127, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/memstick/core/ms_block.c", i32 1438, i32 4}
!247 = !{ptr @msb_ftl_scan._entry.126, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @msb_ftl_scan._entry_ptr.128, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.130, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/memstick/core/ms_block.c", i32 1446, i32 4}
!251 = !{ptr @msb_ftl_scan._entry.129, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @msb_ftl_scan._entry_ptr.131, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.133, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/memstick/core/ms_block.c", i32 1454, i32 4}
!255 = !{ptr @msb_ftl_scan._entry.132, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @msb_ftl_scan._entry_ptr.134, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.136, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/memstick/core/ms_block.c", i32 1462, i32 4}
!259 = !{ptr @msb_ftl_scan._entry.135, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @msb_ftl_scan._entry_ptr.137, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.139, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/memstick/core/ms_block.c", i32 1470, i32 3}
!263 = !{ptr @msb_ftl_scan._entry.138, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @msb_ftl_scan._entry_ptr.140, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.142, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/memstick/core/ms_block.c", i32 1474, i32 4}
!267 = !{ptr @msb_ftl_scan._entry.141, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @msb_ftl_scan._entry_ptr.143, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @msb_ftl_scan._entry.144, !270, !"_entry", i1 false, i1 false}
!270 = !{!"../drivers/memstick/core/ms_block.c", i32 1481, i32 4}
!271 = !{ptr @msb_ftl_scan._entry_ptr.145, !270, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.147, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/memstick/core/ms_block.c", i32 1487, i32 3}
!274 = !{ptr @msb_ftl_scan._entry.146, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @msb_ftl_scan._entry_ptr.148, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.150, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/memstick/core/ms_block.c", i32 1494, i32 2}
!278 = !{ptr @msb_ftl_scan._entry.149, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @msb_ftl_scan._entry_ptr.151, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.152, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/memstick/core/ms_block.c", i32 959, i32 3}
!282 = !{ptr @.str.153, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @msb_read_oob._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @msb_read_oob._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @msb_read_oob._entry.154, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/memstick/core/ms_block.c", i32 967, i32 3}
!287 = !{ptr @msb_read_oob._entry_ptr.155, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.156, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/memstick/core/ms_block.c", i32 831, i32 2}
!290 = !{ptr @.str.157, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @msb_erase_block._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @msb_erase_block._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.159, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/memstick/core/ms_block.c", i32 847, i32 3}
!295 = !{ptr @msb_erase_block._entry.158, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @msb_erase_block._entry_ptr.160, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.162, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/memstick/core/ms_block.c", i32 851, i32 2}
!299 = !{ptr @msb_erase_block._entry.161, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @msb_erase_block._entry_ptr.163, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.164, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/memstick/core/ms_block.c", i32 809, i32 2}
!303 = !{ptr @.str.165, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @msb_mark_bad._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @msb_mark_bad._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.166, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/memstick/core/ms_block.c", i32 193, i32 3}
!308 = !{ptr @.str.167, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @msb_mark_block_unused._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @msb_mark_block_unused._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @msb_init_disk.__key, !312, !"__key", i1 false, i1 false}
!312 = !{!"../drivers/memstick/core/ms_block.c", i32 2128, i32 14}
!313 = !{ptr @.str.168, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/memstick/core/ms_block.c", i32 2141, i32 32}
!315 = !{ptr @.str.169, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/memstick/core/ms_block.c", i32 2148, i32 2}
!317 = !{ptr @.str.170, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @msb_init_disk._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @msb_init_disk._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @msb_init_disk.__key.171, !321, !"__key", i1 false, i1 false}
!321 = !{!"../drivers/memstick/core/ms_block.c", i32 2152, i32 2}
!322 = !{ptr @.str.172, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.174, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/memstick/core/ms_block.c", i32 2162, i32 2}
!325 = !{ptr @msb_init_disk._entry.173, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @msb_init_disk._entry_ptr.175, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.176, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/memstick/core/ms_block.c", i32 1944, i32 8}
!329 = !{ptr @.str.177, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @msb_disk_lock, !328, !"msb_disk_lock", i1 false, i1 false}
!331 = !{ptr @msb_mq_ops, !332, !"msb_mq_ops", i1 false, i1 false}
!332 = !{!"../drivers/memstick/core/ms_block.c", i32 2105, i32 32}
!333 = !{ptr @.str.178, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/memstick/core/ms_block.c", i32 2013, i32 2}
!335 = !{ptr @.str.179, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @msb_queue_rq._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @msb_queue_rq._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.181, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/memstick/core/ms_block.c", i32 2018, i32 3}
!340 = !{ptr @msb_queue_rq._entry.180, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @msb_queue_rq._entry_ptr.182, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @msb_bdops, !343, !"msb_bdops", i1 false, i1 false}
!343 = !{!"../drivers/memstick/core/ms_block.c", i32 2098, i32 45}
!344 = !{ptr @.str.183, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/memstick/core/ms_block.c", i32 1951, i32 2}
!346 = !{ptr @.str.184, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @msb_bd_open._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @msb_bd_open._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.185, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/memstick/core/ms_block.c", i32 1975, i32 2}
!351 = !{ptr @.str.186, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @msb_disk_release._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @msb_disk_release._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.187, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/memstick/core/ms_block.c", i32 1884, i32 2}
!356 = !{ptr @.str.188, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @msb_io_work._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @msb_io_work._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.190, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/memstick/core/ms_block.c", i32 1898, i32 4}
!361 = !{ptr @msb_io_work._entry.189, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @msb_io_work._entry_ptr.191, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.193, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/memstick/core/ms_block.c", i32 1906, i32 3}
!365 = !{ptr @msb_io_work._entry.192, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @msb_io_work._entry_ptr.194, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.196, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/memstick/core/ms_block.c", i32 1931, i32 4}
!369 = !{ptr @msb_io_work._entry.195, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @msb_io_work._entry_ptr.197, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.199, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/memstick/core/ms_block.c", i32 1939, i32 4}
!373 = !{ptr @msb_io_work._entry.198, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @msb_io_work._entry_ptr.200, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.201, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/memstick/core/ms_block.c", i32 1549, i32 2}
!377 = !{ptr @.str.202, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @msb_cache_flush._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @msb_cache_flush._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.204, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/memstick/core/ms_block.c", i32 1562, i32 3}
!382 = !{ptr @msb_cache_flush._entry.203, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @msb_cache_flush._entry_ptr.205, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.207, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/memstick/core/ms_block.c", i32 1568, i32 4}
!386 = !{ptr @msb_cache_flush._entry.206, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @msb_cache_flush._entry_ptr.208, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.210, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/memstick/core/ms_block.c", i32 1577, i32 4}
!390 = !{ptr @msb_cache_flush._entry.209, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @msb_cache_flush._entry_ptr.211, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.213, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/memstick/core/ms_block.c", i32 1595, i32 4}
!394 = !{ptr @msb_cache_flush._entry.212, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @msb_cache_flush._entry_ptr.214, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.215, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/memstick/core/ms_block.c", i32 1124, i32 2}
!398 = !{ptr @.str.216, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @msb_update_block._entry, !397, !"_entry", i1 false, i1 false}
!400 = !{ptr @msb_update_block._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.218, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/memstick/core/ms_block.c", i32 1127, i32 3}
!403 = !{ptr @msb_update_block._entry.217, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @msb_update_block._entry_ptr.219, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.221, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/memstick/core/ms_block.c", i32 1141, i32 3}
!407 = !{ptr @msb_update_block._entry.220, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @msb_update_block._entry_ptr.222, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.224, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/memstick/core/ms_block.c", i32 1152, i32 3}
!411 = !{ptr @msb_update_block._entry.223, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @msb_update_block._entry_ptr.225, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.227, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/memstick/core/ms_block.c", i32 1159, i32 3}
!415 = !{ptr @msb_update_block._entry.226, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @msb_update_block._entry_ptr.228, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.229, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/memstick/core/ms_block.c", i32 1089, i32 3}
!419 = !{ptr @.str.230, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @msb_get_free_block._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @msb_get_free_block._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.232, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/memstick/core/ms_block.c", i32 1096, i32 2}
!424 = !{ptr @msb_get_free_block._entry.231, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @msb_get_free_block._entry_ptr.233, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.235, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/memstick/core/ms_block.c", i32 1105, i32 2}
!428 = !{ptr @msb_get_free_block._entry.234, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @msb_get_free_block._entry_ptr.236, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.238, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/memstick/core/ms_block.c", i32 1108, i32 3}
!432 = !{ptr @msb_get_free_block._entry.237, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @msb_get_free_block._entry_ptr.239, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.240, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/memstick/core/ms_block.c", i32 1011, i32 3}
!436 = !{ptr @.str.241, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @msb_write_block._entry, !435, !"_entry", i1 false, i1 false}
!438 = !{ptr @msb_write_block._entry_ptr, !435, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.243, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/memstick/core/ms_block.c", i32 1017, i32 3}
!441 = !{ptr @msb_write_block._entry.242, !440, !"_entry", i1 false, i1 false}
!442 = !{ptr @msb_write_block._entry_ptr.244, !440, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.246, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/memstick/core/ms_block.c", i32 1023, i32 3}
!445 = !{ptr @msb_write_block._entry.245, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @msb_write_block._entry_ptr.247, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.249, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/memstick/core/ms_block.c", i32 1029, i32 3}
!449 = !{ptr @msb_write_block._entry.248, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @msb_write_block._entry_ptr.250, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.252, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/memstick/core/ms_block.c", i32 1069, i32 3}
!453 = !{ptr @msb_write_block._entry.251, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @msb_write_block._entry_ptr.253, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.254, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/memstick/core/ms_block.c", i32 1657, i32 3}
!457 = !{ptr @.str.255, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @msb_cache_read._entry, !456, !"_entry", i1 false, i1 false}
!459 = !{ptr @msb_cache_read._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.257, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/memstick/core/ms_block.c", i32 1667, i32 3}
!462 = !{ptr @msb_cache_read._entry.256, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @msb_cache_read._entry_ptr.258, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.259, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/memstick/core/ms_block.c", i32 1623, i32 3}
!466 = !{ptr @.str.260, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @msb_cache_write._entry, !465, !"_entry", i1 false, i1 false}
!468 = !{ptr @msb_cache_write._entry_ptr, !465, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.262, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/memstick/core/ms_block.c", i32 1635, i32 2}
!471 = !{ptr @msb_cache_write._entry.261, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @msb_cache_write._entry_ptr.263, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.264, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/memstick/core/ms_block.c", i32 1824, i32 4}
!475 = !{ptr @.str.265, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @msb_do_write_request._entry, !474, !"_entry", i1 false, i1 false}
!477 = !{ptr @msb_do_write_request._entry_ptr, !474, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.266, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/memstick/core/ms_block.c", i32 2054, i32 2}
!480 = !{ptr @.str.267, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @msb_stop._entry, !479, !"_entry", i1 false, i1 false}
!482 = !{ptr @msb_stop._entry_ptr, !479, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.268, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/memstick/core/ms_block.c", i32 2077, i32 2}
!485 = !{ptr @.str.269, !484, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @msb_start._entry, !484, !"_entry", i1 false, i1 false}
!487 = !{ptr @msb_start._entry_ptr, !484, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @.str.270, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/memstick/core/ms_block.c", i32 2214, i32 2}
!490 = !{ptr @.str.271, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @msb_remove._entry, !489, !"_entry", i1 false, i1 false}
!492 = !{ptr @msb_remove._entry_ptr, !489, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @msb_resume.__key, !494, !"__key", i1 false, i1 false}
!494 = !{!"../drivers/memstick/core/ms_block.c", i32 2262, i32 2}
!495 = !{ptr @.str.272, !494, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @.str.273, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/memstick/core/ms_block.c", i32 2288, i32 3}
!498 = !{ptr @.str.274, !497, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @msb_resume._entry, !497, !"_entry", i1 false, i1 false}
!500 = !{ptr @msb_resume._entry_ptr, !497, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.275, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/memstick/core/ms_block.c", i32 1943, i32 8}
!503 = !{ptr @msb_disk_idr, !502, !"msb_disk_idr", i1 false, i1 false}
!504 = !{ptr @.str.276, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/memstick/core/ms_block.c", i32 2346, i32 3}
!506 = !{ptr @.str.277, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @msb_init._entry, !505, !"_entry", i1 false, i1 false}
!508 = !{ptr @msb_init._entry_ptr, !505, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @__param_str_cache_flush_timeout, !5, !"__param_str_cache_flush_timeout", i1 false, i1 false}
!510 = !{ptr @cache_flush_timeout, !511, !"cache_flush_timeout", i1 false, i1 false}
!511 = !{!"../drivers/memstick/core/ms_block.c", i32 29, i32 12}
!512 = !{ptr @__param_str_debug, !10, !"__param_str_debug", i1 false, i1 false}
!513 = !{ptr @__param_str_verify_writes, !15, !"__param_str_verify_writes", i1 false, i1 false}
!514 = !{i32 1, !"wchar_size", i32 2}
!515 = !{i32 1, !"min_enum_size", i32 4}
!516 = !{i32 8, !"branch-target-enforcement", i32 0}
!517 = !{i32 8, !"sign-return-address", i32 0}
!518 = !{i32 8, !"sign-return-address-all", i32 0}
!519 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!520 = !{i32 7, !"uwtable", i32 1}
!521 = !{i32 7, !"frame-pointer", i32 2}
!522 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!523 = !{i8 0, i8 2}
!524 = !{!"branch_weights", i32 2000, i32 1}
!525 = !{!"branch_weights", i32 1, i32 2000}
!526 = !{i64 2154531032, i64 2154531529, i64 2154531069, i64 2154531125, i64 2154531159, i64 2154531183, i64 2154531224, i64 2154531245, i64 2154531273, i64 2154531307}
!527 = !{i64 2154538581, i64 2154539078, i64 2154538618, i64 2154538674, i64 2154538708, i64 2154538732, i64 2154538773, i64 2154538794, i64 2154538822, i64 2154538856}
!528 = !{i64 799775, i64 799836}
!529 = !{i64 802507}
!530 = !{i64 802792}
!531 = !{i64 2154523399, i64 2154523896, i64 2154523436, i64 2154523492, i64 2154523526, i64 2154523550, i64 2154523591, i64 2154523612, i64 2154523640, i64 2154523674}
!532 = !{i64 2154366020, i64 2154366512, i64 2154366057, i64 2154366113, i64 2154366147, i64 2154366171, i64 2154366212, i64 2154366233, i64 2154366261, i64 2154366295}
!533 = !{i64 2154364072, i64 2154364564, i64 2154364109, i64 2154364165, i64 2154364199, i64 2154364223, i64 2154364264, i64 2154364285, i64 2154364313, i64 2154364347}
!534 = !{i64 2154529515, i64 2154530012, i64 2154529552, i64 2154529608, i64 2154529642, i64 2154529666, i64 2154529707, i64 2154529728, i64 2154529756, i64 2154529790}
!535 = !{i64 2148242499, i64 2148242779, i64 2148243113, i64 2148243447}
!536 = !{!"auto-init"}
!537 = !{i64 2154574983, i64 2154575481, i64 2154575020, i64 2154575076, i64 2154575110, i64 2154575134, i64 2154575175, i64 2154575196, i64 2154575224, i64 2154575258}
!538 = !{i64 2154525829, i64 2154526326, i64 2154525866, i64 2154525922, i64 2154525956, i64 2154525980, i64 2154526021, i64 2154526042, i64 2154526070, i64 2154526104}
